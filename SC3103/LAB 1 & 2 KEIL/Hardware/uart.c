#include "uart.h"
#include <timers.h>
#include "system.h"
#include "led.h";


int uart_count = 1000;
int counter;
u8 name[20]="Toh Yi Kang\0";
uint16_t  Usart_Receive = 0;


void usart3_send_string(uint8_t *str) {
    while (*str != '\0') {          // Loop until null-terminator
        USART3->DR = *str;          // Send each character
        while ((USART3->SR & 0x40) == 0);  // Wait for the transmission to complete
        str++;                      // Move to the next character
    }
}
void uart_task()
{
	  uart3_Init(115200);
	  counter = 0;
		while(1){
			usart3_send_string(name);
			//if(name[counter] != '\0')counter++;
			//else counter = 0;
			vTaskDelay(uart_count);
		}  
}

void uart3_Init(u32 bound)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;
	NVIC_InitTypeDef NVIC_InitStructure;
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOC, ENABLE);  // Enable the gpio clock
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE); // Enable the Usart clock
	GPIO_PinAFConfig(GPIOC, GPIO_PinSource10, GPIO_AF_USART2);
	GPIO_PinAFConfig(GPIOC, GPIO_PinSource11, GPIO_AF_USART2);
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10 | GPIO_Pin_11;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_Init(GPIOC, &GPIO_InitStructure);
	// UsartNVIC configuration
	NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn;
	// Preempt priority
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 2;
	// Preempt priority
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
	// Enable the IRQ channel
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	// Initialize the VIC register with the specified parameters
	NVIC_Init(&NVIC_InitStructure);
	NVIC_EnableIRQ(USART3_IRQn);
	// USART Initialization Settings
	USART_InitStructure.USART_BaudRate = bound;					// Baud rate
	USART_InitStructure.USART_WordLength = USART_WordLength_8b; // The word length is 8 bit data
	USART_InitStructure.USART_StopBits = USART_StopBits_1;		// A stop bit
	USART_InitStructure.USART_Parity = USART_Parity_No;			// No parity bits
	// No hardware data flow control
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	// Sending and receiving mode
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	USART_Init(USART3, &USART_InitStructure);	   // Initialize serial port 3
	USART_ITConfig(USART3, USART_IT_RXNE, ENABLE); // Open the serial port to accept interrupts
	USART_Cmd(USART3, ENABLE);					   // Enable serial port 3
}

void usart3_send(u8 data){  
    USART3->DR = data;  
    while((USART3->SR&0x40)==0);  
} 

int USART3_IRQHandler(void) {  
        
		u8 time;
		char buffer[20];
	
    if(USART_GetITStatus(USART3, USART_IT_RXNE) != RESET)    
    {   
        Usart_Receive = USART_ReceiveData(USART3); 

				sprintf(buffer, "display: %c", Usart_Receive);
				OLED_ShowString(10, 10, (uint8_t *)buffer);			// USART_Receive is the received data               
			// Convert the received character to a numeric value (e.g., ASCII '1' becomes 1)
			if (Usart_Receive >= '0' && Usart_Receive <= '9') 
			{
					time = Usart_Receive - '0';
				  //Led_Count = (Usart_Receive - '0') *1000; // Multiply by 1000 to convert to milliseconds
					xTimerStop(xAutoTimer1,0);
					xTimerChangePeriod(xAutoTimer1, pdMS_TO_TICKS(time*1000), 1000);
					xTimerStart(xAutoTimer1,0);
			}
			OLED_Refresh_Gram();
		}
    return 0;  
} 