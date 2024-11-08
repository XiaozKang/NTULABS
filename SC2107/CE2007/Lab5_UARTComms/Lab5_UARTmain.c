// RSLK Self Test via UART

/* This example accompanies the books
   "Embedded Systems: Introduction to the MSP432 Microcontroller",
       ISBN: 978-1512185676, Jonathan Valvano, copyright (c) 2017
   "Embedded Systems: Real-Time Interfacing to the MSP432 Microcontroller",
       ISBN: 978-1514676585, Jonathan Valvano, copyright (c) 2017
   "Embedded Systems: Real-Time Operating Systems for ARM Cortex-M Microcontrollers",
       ISBN: 978-1466468863, , Jonathan Valvano, copyright (c) 2017
 For more information about my classes, my research, and my books, see
 http://users.ece.utexas.edu/~valvano/

Simplified BSD License (FreeBSD License)
Copyright (c) 2017, Jonathan Valvano, All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
   this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

The views and conclusions contained in the software and documentation are
those of the authors and should not be interpreted as representing official
policies, either expressed or implied, of the FreeBSD Project.
*/

#include "msp.h"
#include <stdint.h>
#include <string.h>
#include "..\inc\UART0.h"
#include "..\inc\EUSCIA0.h"
#include "..\inc\FIFO0.h"
#include "..\inc\Clock.h"
//#include "..\inc\SysTick.h"
#include "..\inc\SysTickInts.h"
#include "..\inc\CortexM.h"
#include "..\inc\TimerA1.h"
//#include "..\inc\Bump.h"
#include "..\inc\BumpInt.h"
#include "..\inc\LaunchPad.h"
#include "..\inc\Motor.h"
#include "../inc/IRDistance.h"
#include "../inc/ADC14.h"
#include "../inc/LPF.h"
#include "..\inc\Reflectance.h"
#include "../inc/TA3InputCapture.h"
#include "../inc/Tachometer.h"


#define P2_4 (*((volatile uint8_t *)(0x42098070)))
#define P2_3 (*((volatile uint8_t *)(0x4209806C)))
#define P2_2 (*((volatile uint8_t *)(0x42098068)))
#define P2_1 (*((volatile uint8_t *)(0x42098064)))
#define P2_0 (*((volatile uint8_t *)(0x42098060)))


void RSLK_Reset(void){
    DisableInterrupts();
    Clock_Init48MHz();
    LaunchPad_Init();
    //Initialise modules used e.g. Reflectance Sensor, Bump Switch, Motor, Tachometer etc
    Motor_Init();
    IRSensor_Init();
    EnableInterrupts();
}

//IR SENSOR variables and functions from Lab 4
volatile uint32_t ADCvalue;
volatile uint32_t ADCflag;
volatile uint32_t nr, nc, nl;

void SensorRead_ISR(void)
{  // runs at 2000 Hz
    uint32_t raw17, raw12, raw16;
    P1OUT ^= 0x01;         // profile
    P1OUT ^= 0x01;         // profile
    ADC_In17_12_16(&raw17, &raw12, &raw16);  // sample
    nr = LPF_Calc(raw17);  // right is channel 17 P9.0
    nc = LPF_Calc2(raw12);  // center is channel 12, P4.1
    nl = LPF_Calc3(raw16);  // left is channel 16, P9.1
    ADCflag = 1;           // semaphore
    P1OUT ^= 0x01;         // profile
}

void IRSensor_Init(void)
{
    uint32_t raw17, raw12, raw16;
    uint32_t s;
    ADCflag = 0;
    s = 256; // replace with your choice
    ADC0_InitSWTriggerCh17_12_16();   // initialize channels 17,12,16
    ADC_In17_12_16(&raw17, &raw12, &raw16);  // sample
    LPF_Init(raw17, s);     // P9.0/channel 17
    LPF_Init2(raw12, s);     // P4.1/channel 12
    LPF_Init3(raw16, s);     // P9.1/channel 16
    UART0_Init();          // initialize UART0 115,200 baud rate
    LaunchPad_Init();
    TimerA1_Init(&SensorRead_ISR, 250);    // 2000 Hz sampling
}

//Bump Switch-------------------------------------

volatile uint8_t CollisionData, CollisionFlag;
void CollisionHandler(uint8_t bumpSensor){
    Motor_Stop(); //stop the motor from moving
    CollisionData = bumpSensor; //update the collision data
    CollisionFlag = 1; //setting the collision flag upon collision with any switch
    P4->IFG &= ~0xED;  //clear flags for pin1 and 4 (reduce possibility of extra interrupt)
}

uint8_t ConvertCollisionData(uint8_t data){
    return data&0x3f;
}




//Tacho from lab4_tachmain.c
uint16_t Period0;              // (1/SMCLK) units = 83.3 ns units
uint16_t First0=0;             // Timer A3 first edge, P10.4
uint32_t Done0=0;              // set each rising

uint16_t Period2;              // (1/SMCLK) units = 83.3 ns units
uint16_t First2=0;             // Timer A3 first edge, P8.2
uint32_t Done2=0;              // set each rising

void PeriodMeasure0(uint16_t time){ //continuous update of Period0 and First0 everytime rising edge occurs
  Period0 = (time - First0)&0xFFFF; // 16 bits, 83.3 ns resolution
  First0 = time;                    // setup for next
  Done0++;                          //increment on rising edge
}

// max period is (2^16-1)*83.3 ns = 5.4612 ms
// min period determined by time to run ISR, which is about 1 us
void PeriodMeasure2(uint16_t time){ //continuous update of Period2 and First2 everytime rising edge occurs
  Period2 = (time - First2)&0xFFFF; // 16 bits, 83.3 ns resolution
  First2 = time;                    // setup for next
  Done2++;                          // increment on rising edge
}

void TimedPause(uint32_t time){
  Clock_Delay1ms(time);         // run for a while and stop
  Motor_Stop();                 // stop the motor
  while(LaunchPad_Input()==0);  // wait for touch
  while(LaunchPad_Input());     // wait for release
}



//--------------------------------

// RSLK Self-Test
// Sample program of how the text based menu can be designed.
// Only one entry (RSLK_Reset) is coded in the switch case. Fill up with other menu entries required for Lab5 assessment.
// Init function to various peripherals are commented off.  For reference only. Not the complete list.

int main(void) {
  uint32_t choice=0xDEAD, menu=0;

  DisableInterrupts();
  Clock_Init48MHz();  // makes SMCLK=12 MHz //CS->CTL1 = 0x20000000 from Clock.c // configure for SMCLK divider /4
  //SysTick_Init(48000,2);  // set up SysTick for 1000 Hz interrupts
   Motor_Init();
  //Motor_Stop();
   LaunchPad_Init(); //enable Launch pad, should be ==1 if in released state
  //Bump_Init_Edge();
  //Bumper_Init();
  BumpInt_Init(&CollisionHandler);
  IRSensor_Init();
  //Tachometer_Init();
  EUSCIA0_Init();     // initialize UART
  EnableInterrupts();

  while(1){                     // Loop forever
      // write this as part of Lab 5
      EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF); //CR represent moving the cursor to the beginning of current line, LF move the cursor to the next line
      EUSCIA0_OutString("RSLK Testing"); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
      EUSCIA0_OutString("[0] RSLK Reset"); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
      EUSCIA0_OutString("[1] Motor Testing System"); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
      EUSCIA0_OutString("[2] IR Sensor Testing System"); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
      EUSCIA0_OutString("[3] Bumper Testing System"); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
      EUSCIA0_OutString("[4] Reflectance Sensor Testing System"); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
      EUSCIA0_OutString("[5] Tachometer Testing System"); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
      EUSCIA0_OutString("[6] Display RPM Values Testing System"); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
      EUSCIA0_OutString("[7] Line Following Testing System"); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
      EUSCIA0_OutString("[8] Obstacle Avoidance Testing System"); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);



      EUSCIA0_OutString("Please key in the input: ");
      choice=EUSCIA0_InUDec(); //take in input for testing system choice selection
      EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);

      switch(choice){
          //[0] RSLK Reset
          case 0:
              EUSCIA0_OutChar(CR);EUSCIA0_OutChar(LF);
              EUSCIA0_OutString("Resetting ......");
              EUSCIA0_OutChar(CR);EUSCIA0_OutChar(LF);
              RSLK_Reset();

              menu =1;
              choice=0xDEAD;
              break;


           //[1] Motor Testing System
          case 1:
              EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              EUSCIA0_OutString("Motor Test Starting... "); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              EUSCIA0_OutString("[0] Go Forward"); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              EUSCIA0_OutString("[1] Go Backward"); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              EUSCIA0_OutString("[2] Turn Left"); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              EUSCIA0_OutString("[3] Turn Right"); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);


              EUSCIA0_OutString("Please key in direction choice: ");
              uint32_t directionChoice =EUSCIA0_InUDec(); //take in input for direction choice selection
              EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);

              switch(directionChoice){
                  case 0:
                      Motor_Forward(3000,3000);
                      Clock_Delay1ms(1000); //instead of using TimedPause() as it requires button input
                      Motor_Stop();
                      break;
                  case 1:
                      Motor_Backward(3000,3000);
                      Clock_Delay1ms(1000);
                      Motor_Stop();
                      break;

                  case 2:
                      Motor_Left(0,3000);
                      Clock_Delay1ms(1000);
                      Motor_Stop();
                      break;

                  case 3:
                      Motor_Right(3000,0);
                      Clock_Delay1ms(1000);
                      Motor_Stop();
                      break;
                  default:
                      break;
              }
              menu = 1;
              choice=0xDEAD;
              break;

          //[2] IR Sensor Testing System
          case 2:
              EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              EUSCIA0_OutString("IR Sensor Test Starting..."); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);

              int32_t n;
                //SMCLK=12Mhz

              EnableInterrupts();
              for(int i = 0; i<20; i++)
              {
                  for(n=0; n<2000; n++){
                      while(ADCflag == 0){};
                      ADCflag = 0; // show every 2000th point
                  }
                  UART0_OutUDec5(LeftConvert(nl));UART0_OutString(" mm,");
                  UART0_OutUDec5(CenterConvert(nc));UART0_OutString(" mm,");
                  UART0_OutUDec5(RightConvert(nr));UART0_OutString(" mm\r\n");
              }

              menu = 1;
              choice=0xDEAD;
              break;


          //[3] Bumper Testing System
          case 3:
              EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              EUSCIA0_OutString("Bump Switches Test Starting..."); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);

              CollisionData = 0x3F;
              CollisionFlag = 0;

              while(1){
                  Motor_Forward(3000,3000);
                  CollisionFlag = 0;
                  WaitForInterrupt(); //waiting for one of the bump switch to be hit
                  if(CollisionFlag==1){
                      uint8_t tmp = CollisionData & 0x3f;
                      for(int i = 0; i<6; i++){
                          int digit = (tmp>>5)& 0x1; //checking bit 6 of collision data by right shifting 5 times and mask it
                          tmp=tmp<<1;   //left shift by 1

                          if(digit == 1){
                              UART0_OutString("1");
                          }
                          else{
                              UART0_OutString("0");
                          }
                      }

                      UART0_OutUDec5(ConvertCollisionData(CollisionData)); //first ConvertCollisionData function to only ensure lower 6 bits are used then print out the collision data
                      break;
                  }

              }
              menu = 1;
              choice = 0xDEAD;
              break;


          //[4]Reflectance Testing System
          case 4:
              EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              EUSCIA0_OutString("Reflectance Test Starting...");EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              uint8_t refData = 0;
              while(LaunchPad_Input()==0){ //wait for touch
                  refData = Reflectance_Read(1000); //reading data from the reflectance sensor
                  for(int i = 0; i<8;i++){ //for the 8 reflectance sensors used
                      //printing out the data from the reflectance sensor starting from the right
                      EUSCIA0_OutUDec(refData%2); //refData%2 to check if data is even or odd, if even means bit 0 is 0 and odd means bit 1 is 1
                      EUSCIA0_OutString("-");
                      refData=refData/2; //technically right shifting the data

                  }
                  EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
                  Clock_Delay1ms(100); //delay for 0.1 second/100 milliseconds, time for robot to update its state and output
              }
              menu = 1;
              choice = 0xDEAD;
              break;


          //[5]Tachometer Testing System
          case 5:
              EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              EUSCIA0_OutString("Tachometer Test Starting..."); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              uint32_t main_count=0; //counter for the rising edges
              TimerA3Capture_Init(&PeriodMeasure0,&PeriodMeasure2); //to enable the timerA3 capture and update the respective period values with the respective functions upon any rising edge detected
              TimedPause(500);  //delay for awhile and then wait for button input to then let the motor start moving
              Motor_Forward(3000,3000);
              while(LaunchPad_Input()==0){ //wait for button input
                  WaitForInterrupt(); //waiting for rising edge to be triggered on PWM signals
                  main_count++; //rising edge triggered
                  if(main_count%1000){ //setting limit of rising edges to 1000 before it stops printing
                      UART0_OutString("Period0 = ");UART0_OutUDec5(Period0);UART0_OutString(" Period2 = ");UART0_OutUDec5(Period2);UART0_OutString(" \r\n");
                  }
              }
              Motor_Stop(); //stop motor upon button input is triggered
              menu = 1;
              choice = 0xDEAD;
              break;


          //[6]Display RPM Values Testing System
          //Counter of Timer-A is 16 bits wide, so the period measurement will have a precision of 16 bits
          //SMCLK at 12 MHz and a prescale of 1 will give 83.33ns of period measurement
          //The maximum period that can be measured is the precision in alternatives times the resolution, at current setting, maximum period that can be measured is 5.4ms
          //360 pulses per rotation, slowest motor speed would be 30 rpm
          //Speed(rpm) = (1/period)(1*10^9 //to convert period to second)(60 //to convert to min)(1/83.33 //to get number of pulses)(1/360 to get number of revolutions)
          case 6:
              EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              EUSCIA0_OutString("RPM Values Test Starting..."); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              main_count=0; //counter for the rising edges
              TimerA3Capture_Init(&PeriodMeasure0,&PeriodMeasure2);//to enable the timerA3 capture and update the respective period values with the respective functions upon any rising edge detected
              TimedPause(500);//delay for awhile and then wait for button input to then let the motor start moving
              Motor_Forward(3000,3000);
              while(LaunchPad_Input()==0){//wait for button input
                  WaitForInterrupt();//waiting for rising edge to be triggered on PWM signals
                  main_count++; //rising edge triggered
                  if(main_count%1000){ //setting limit of rising edges to 1000

                      uint32_t rpm_l = 2000000/Period0;
                      uint32_t rpm_r = 2000000/Period2;
                      UART0_OutString("RpmLeft = ");UART0_OutUDec5(rpm_l);UART0_OutString(" RpmRight = ");UART0_OutUDec5(rpm_r);UART0_OutString(" \r\n");
                  }
              }
              Motor_Stop();
              menu = 1;
              choice = 0xDEAD;
              break;

          //[7] Line Following Testing System
          case 7:
              EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              EUSCIA0_OutString("Line Following Test Starting"); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              int speed = 2500;
              CollisionData = 0x3F;
              CollisionFlag = 0;
              while (LaunchPad_Input() == 0){
                  WaitForInterrupt();
                  if(CollisionFlag==1){
                      uint8_t tmp = CollisionData & 0x3f;
                      for(int i = 0; i<6; i++){
                          int digit = tmp & 1;
                          tmp=tmp>>1;
                          if(digit == 1){
                              UART0_OutString("1");
                          }
                          else{
                              UART0_OutString("0");
                          }
                      }
                      UART0_OutUDec5(ConvertCollisionData(CollisionData));
                      break;
                  }
                  int Data = Reflectance_Read(1000);
                  int Position = Reflectance_Position(Data);
                  Clock_Delay1ms(10);


                  if (Position > -47 && Position < 47){
                      //center
                      Motor_Forward(2000, 2000);
                  }
                  else if (Position <= -47 && Position > -142){
                      //slightly off to the left
                      Motor_Left(speed,speed/2);
                      Clock_Delay1ms(50);
                      Motor_Stop();
                  }
                  else if (Position >= 47 && Position <142){
                      //slightly off to the right
                      Motor_Right(speed/2,speed);
                      Clock_Delay1ms(50);
                      Motor_Stop();
                  }
                  else if (Position <= -142 && Position >-237){
                      //off to the left
                      Motor_Left(speed,speed/2);
                      Clock_Delay1ms(100);
                      Motor_Stop();
                  }
                  else if (Position >= 142 && Position < 237){
                      // off to the right
                      Motor_Right(speed/2,speed);
                      Clock_Delay1ms(100);
                      Motor_Stop();
                  }
                  else if (Position <= -237 && Position > -332){
                      // way off left
                      Motor_Left(speed,speed/2);
                      Clock_Delay1ms(150);
                      Motor_Stop();
                  }
                  else if (Position >= 237 && Position < 332){
                      // line way off right
                      Motor_Right(speed/2,speed);
                      Clock_Delay1ms(150);
                      Motor_Stop();
                  }
              }

              menu = 1;
              choice = 0xDEAD;
              break;


          //[8] Obstacle Avoidance Testing System
          case 8:
              EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              EUSCIA0_OutString("Obstacle Avoidance Test Starting"); EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              EUSCIA0_OutChar(CR); EUSCIA0_OutChar(LF);
              speed = 2000;

              while(LaunchPad_Input()==0){
                  if(CenterConvert(nc)<120 && CenterConvert(nc)>0){
                      Motor_Backward(speed,speed);
                      Clock_Delay1ms(90);
                      if(LeftConvert(nl)<RightConvert(nr)) Motor_Right(speed/2,speed);
                      else Motor_Left(speed,speed/2);
                      Clock_Delay1ms(100);
                      Motor_Stop();
                  }
                  else if(LeftConvert(nl)<120 && LeftConvert(nl)>0){
                      Motor_Right(speed/2,speed);
                      Clock_Delay1ms(100);
                      Motor_Stop();
                  }
                  else if(RightConvert(nr)<120 && RightConvert(nr)>0){
                      Motor_Left(speed,speed/2);
                      Clock_Delay1ms(100);
                      Motor_Stop();
                  }
                  else {
                      Motor_Forward(speed,speed);
                      Clock_Delay1ms(100);
                      Motor_Stop();
                  }
              }
              menu=1;
              choice=0xDEAD;
              break;
//-----------------------------------------------------------------------------------------------
          default:
              menu=1;
              break;
      }

      if(!menu)Clock_Delay1ms(3000);
      else{
          menu=0;
      }

      // ....
      // ....
  }
}

#if 0
//Sample program for using the UART related functions.
int Program5_4(void){
//int main(void){
    // demonstrates features of the EUSCIA0 driver
  char ch;
  char string[20];
  uint32_t n;
  DisableInterrupts();
  Clock_Init48MHz();  // makes SMCLK=12 MHz
  EUSCIA0_Init();     // initialize UART
  EnableInterrupts();
  EUSCIA0_OutString("\nLab 5 Test program for EUSCIA0 driver\n\rEUSCIA0_OutChar examples\n");
  for(ch='A'; ch<='Z'; ch=ch+1){// print the uppercase alphabet
     EUSCIA0_OutChar(ch);
  }
  EUSCIA0_OutChar(LF);
  for(ch='a'; ch<='z'; ch=ch+1){// print the lowercase alphabet
    EUSCIA0_OutChar(ch);
  }
  while(1){
    EUSCIA0_OutString("\n\rInString: ");
    EUSCIA0_InString(string,19); // user enters a string
    EUSCIA0_OutString(" OutString="); EUSCIA0_OutString(string); EUSCIA0_OutChar(LF);

    EUSCIA0_OutString("InUDec: ");   n=EUSCIA0_InUDec();
    EUSCIA0_OutString(" OutUDec=");  EUSCIA0_OutUDec(n); EUSCIA0_OutChar(LF);
    EUSCIA0_OutString(" OutUFix1="); EUSCIA0_OutUFix1(n); EUSCIA0_OutChar(LF);
    EUSCIA0_OutString(" OutUFix2="); EUSCIA0_OutUFix2(n); EUSCIA0_OutChar(LF);

    EUSCIA0_OutString("InUHex: ");   n=EUSCIA0_InUHex();
    EUSCIA0_OutString(" OutUHex=");  EUSCIA0_OutUHex(n); EUSCIA0_OutChar(LF);
  }
}
#endif
