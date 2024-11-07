#include "show.h"
#include "uart.h"
#include "oled.h"


static int seconds=0;
static int minutes=0;



void show_task(void *pvParameters)
{
   u32 lastWakeTime = getSysTickCnt();
	
	 OLED_Init();
   while(1)
    {	
			oled_show(); 
			//vTaskDelayUntil(&lastWakeTime, F2T(RATE_1_HZ));
			vTaskDelay(500);
    }
}  

void oled_show(void)
{  
    //To DO
	
		//LAB 1
//	  char name[30] = "Jodian Low";
//		char buffer[50];
//		// Clear the OLED display
//    OLED_Clear();
//		sprintf(buffer, "Time: %02u min %02u s", minutes, seconds);
//		if (seconds != 59) {
//			seconds++;
//		} else {
//			seconds = 0;
//			if (minutes != 59) {
//				minutes++;
//			} else {
//				minutes = 0;
//			}
//		}
//		//Display Name
//    OLED_ShowString(0, 10, (uint8_t *)name);
//    // Display the timer
//    OLED_ShowString(0, 20, (uint8_t *)buffer);
		
		
		//LAB 2
		//uint8_t toPC[1];
		
		
		
	 //call some function in oled to display something


	 
	
	}

	

