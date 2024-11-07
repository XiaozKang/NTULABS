#include "buzzer.h"

int BUZZER_Count=7000;

//BUZZER initialization
void BUZZER_Init(void)
{
	GPIO_InitTypeDef  GPIO_InitStructure;
	
	// GPIOPinB
  RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);    //Enable APB Clock
	
  GPIO_InitStructure.GPIO_Pin =  BUZZER_PIN;                  //BUZZER Pin
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;            //Push pull output
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;        //100MHz
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
  GPIO_Init(BUZZER_PORT, &GPIO_InitStructure);                    //Initialize BUZZER GPIO
	GPIO_SetBits(BUZZER_PORT,BUZZER_PIN);
}

void BUZZER_task(void *pvParameters)
{
		BUZZER_Init(); // Init the buzzer first
	
		while(1) {
			PBout(10) = 0;
			vTaskDelay(BUZZER_Count); //Delay 
			PBout(10) = 1;
			vTaskDelay(BUZZER_Count); //Delay 
		}
		
}  
