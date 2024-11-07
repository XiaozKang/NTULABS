#include "play_button.h"
#include "show.h"

int pbutton_Count=100;

static u32 notes[] = {         
2272, // A - 440 Hz         
2024, // B - 494 Hz         
3822, // C - 261 Hz         
3401, // D - 294 Hz         
3030, // E - 330 Hz         
2865, // F - 349 Hz         
2551, // G - 392 Hz         
1136, // a - 880 Hz         
1012, // b - 988 Hz         
1912, // c - 523 Hz         
1703, // d - 587 Hz         
1517, // e - 659 Hz         
1432, // f - 698 Hz         
1275, // g - 784 Hz 
};  

static u8* song = (uint8_t*)"e2,d2,e2,d2,e2,B2,d2,c2,A2_C2,E2,A2,B2_E2,G2,B2,c4_E2,e2,d2,e2,d2,e2,B2,d2 ,c2,A2_C2,E2,A2,B2_E2,c2,B2,A4";  

uint32_t getNote(uint8_t ch) {     
    if (ch >= 'A' && ch <= 'G')         
        return notes[ch - 'A'];      
    if (ch >= 'a' && ch <= 'g')         
        return notes[ch - 'a' + 7];      
    return 0; 
}  

uint32_t getDuration(uint8_t ch) {     
    if (ch < '0' || ch > '9')         
        return 500;     /* number of ms */     
    return (ch - '0') * 250;
}  

uint32_t getPause(uint8_t ch) {     
    switch (ch) {     
        case '+':         
            return 0;     
        case ',':         
            return 5;     
        case '.':         
            return 20;     
        case '_':         
            return 30;     
        default:         
            return 5;     
        }
}      

void playNote(uint32_t note, uint32_t durationMs) 
{     
    uint32_t t = 0;      
    if (note > 0) {         
        while (t < (durationMs*1000)) {             
            PBout(10) = 1;     // Turn on your buzzer (Please Edit)  
            delay_us(note/2);             
            PBout(10) = 0;     // Turn off your buzzer (Please Edit)  
            delay_us(note/2);             
            t += note;         
        }     
    } else {      
        delay_xms(durationMs); // ms timer     
    } 
}  

void playSong(uint8_t *song) {     
    uint32_t note = 0;     
    uint32_t dur  = 0;     
    uint32_t pause = 0;      
    /*      * A song is a collection of tones where each tone is      * a note, duration and pause, e.g.      * "E2,F4,"      */      
    while(*song != '\0') {         
        note = getNote(*song++);         
        if (*song == '\0')             
            break;         
        dur  = getDuration(*song++);         
        if (*song == '\0')             
            break;         
        pause = getPause(*song++);          
        playNote(note, dur);         
        delay_us(pause);     
    } 
} 

//LED initialization
void Play_Button_Init(void)
{
	GPIO_InitTypeDef  GPIO_InitStructure;
	
  RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD, ENABLE);    //Enable APB Clock
	
  GPIO_InitStructure.GPIO_Pin =  PLAY_BUTTON_PIN;                  //USER PIN PD8
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;            //Push pull output
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;        //100MHz
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
  GPIO_Init(PLAY_BUTTON_PORT, &GPIO_InitStructure);                    //Initialize LED GPIO
	GPIO_SetBits(PLAY_BUTTON_PORT,PLAY_BUTTON_PIN);
}

void pbutton_task(void *pvParameters)
{		
		Play_Button_Init();
	  BUZZER_Init();
		PBout(10) = 0; 

    while(1)
    {
        if(GPIO_ReadInputDataBit(PLAY_BUTTON_PORT, PLAY_BUTTON_PIN) == 0)// Button pressed
				{
					playSong(song);  // Play the song when button is pressed
          LED = 0;         // Turn on the LED or perform any other action
				}
        vTaskDelay(pbutton_Count);//delay 0.01s
    }
		
}  