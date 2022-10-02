

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "system_config.h"
#include "system_definitions.h"

#define CORE_TIMER     SYS_CLK_BUS_PERIPHERAL_3

bool APP_TIMER_Expired_ms(uint32_t * timer, uint32_t mseconds);
bool APP_TIMER_Expired(uint32_t * timer, uint32_t seconds);
bool APP_TIMER_Set(uint32_t * timer);
BSP_SWITCH_STATE APP_SWITCH_Pressed(uint32_t *t, BSP_SWITCH sw, uint32_t t_debouce);
void putsUART(const char* buffer);

void CORETIMER_DelayUs ( uint32_t delay_us)
{
    uint32_t startCount, endCount;

    /* Calculate the end count for the given delay */
    endCount=(CORE_TIMER/1000000)*delay_us;

    startCount=_CP0_GET_COUNT();
    while((_CP0_GET_COUNT()-startCount)<endCount);

}

void CORETIMER_DelayMs ( uint32_t delay_ms)
{
    uint32_t startCount, endCount;

    /* Calculate the end count for the given delay */
    endCount=(CORE_TIMER/1000)*delay_ms;

    startCount=_CP0_GET_COUNT();
    while((_CP0_GET_COUNT()-startCount)<endCount);

}

bool APP_TIMER_Expired(uint32_t * timer, uint32_t seconds)
{
    if((SYS_TMR_TickCountGet() - *timer) > (seconds * 1000))
    {
        return true;
    }
    else
    {
        return false;
    }
    return false;
}

bool APP_TIMER_Expired_ms(uint32_t * timer, uint32_t mseconds)
{
    if((SYS_TMR_TickCountGet() - *timer) > (mseconds)) 
    {
        return true;
    }
    
    return false;
}

bool APP_TIMER_Set(uint32_t * timer)
{
    *timer = SYS_TMR_TickCountGet();
    return true;
}

BSP_SWITCH_STATE APP_SWITCH_Pressed(uint32_t *t, BSP_SWITCH sw, uint32_t t_debouce)
{    
    
    if(BSP_SwitchStateGet(sw) == BSP_SWITCH_STATE_PRESSED)
    {   
        if( APP_TIMER_Expired_ms(t, t_debouce) )  //antibounce
        {
            APP_TIMER_Set(t);
            return BSP_SWITCH_STATE_PRESSED;
        }
    }
    else{
        APP_TIMER_Set(t);
    }
    return BSP_SWITCH_STATE_RELEASED;
}

//UART function
// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************
//#if defined DRV_USART_PERIPHERAL_ID_IDX0 && (DRV_USART_PERIPHERAL_ID_IDX0 == USART_ID_6) 
#if (DRV_USART_PERIPHERAL_ID_IDX0 == USART_ID_6) 
    #define BusyUART6()		(!U6STAbits.TRMT) 
    #define WriteUART6(data)	U6TXREG = (data)
    #define putcUART6(c)           do{while(!U6STAbits.TRMT); WriteUART6((int)(c));}while(0)
#endif
void putsUART(const char* buffer)
{
    /* transmit till NULL character is encountered */
	while(*buffer != '\0')
	{
		while( BusyUART6() );
		putcUART6(*buffer++);
	}
}


