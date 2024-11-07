#ifndef __BUZZER_H
#define __BUZZER_H
#include "sys.h"
#include "system.h"

#define BUZZER_TASK_PRIO		3     //Task priority 
#define BUZZER_STK_SIZE 		128   //Task stack size 


/*--------BUZZER control pin--------*/
#define BUZZER_PORT GPIOB
#define BUZZER_PIN GPIO_Pin_10
#define BUZZER PBout(10)
/*----------------------------------*/

void BUZZER_Init(void);  
void BUZZER_task(void *pvParameters);
extern int BUZZER_Count;
#endif