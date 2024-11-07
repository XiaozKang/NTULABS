#include "system.h"
#include "buzzer.h"
#include "show.h"
#include "play_button.h"
#include <timers.h>
#include "uart.h"


#define START_TASK_PRIO		4
#define START_STK_SIZE 		256

TaskHandle_t StartTask_Handler;
TimerHandle_t xAutoTimer1;
void start_task(void *pvParameters);


int main(void) 
{
	
	systemInit();
	
	xTaskCreate(
		(TaskFunction_t	) start_task,
		(const char*		)	"start_task",
		(uint16_t				) START_STK_SIZE,
		(void*					) NULL,
		(UBaseType_t		) START_TASK_PRIO,
		(TaskHandle_t*	) &StartTask_Handler);
		
		
    //if(xTimerStart(xAutoTimer1,0) == pdPASS)
		vTaskStartScheduler();
}


void start_task(void *pvParameters) 
{
	
	taskENTER_CRITICAL();
	
	//create timer task
	xAutoTimer1 = xTimerCreate("timer1", F2T(RATE_1_HZ), pdTRUE, 0 , led_task);
	xTimerStart(xAutoTimer1,0); //Start the timer task
	
	// Create the led_task
	//xTaskCreate(led_task, "led_task", LED_STK_SIZE, NULL, LED_TASK_PRIO, NULL);
	
	// Create the BUZZER_task
	//xTaskCreate(BUZZER_task, "BUZZER_task", BUZZER_STK_SIZE, NULL, BUZZER_TASK_PRIO, NULL);
	
	// Create the show_task
	xTaskCreate(show_task, "show_task", SHOW_STK_SIZE, NULL, SHOW_TASK_PRIO, NULL);
	
	// Create the pbutton_task
	xTaskCreate(pbutton_task, "pbutton_task", PLAY_BUTTON_STK_SIZE , NULL, PLAY_BUTTON_TASK_PRIO, NULL);
	
	// Create the uart_task
	xTaskCreate(uart_task, "uart_task", UART_STK_SIZE, NULL, UART_TASK_PRIO, NULL);

	vTaskDelete(StartTask_Handler);
	
	taskEXIT_CRITICAL();
}