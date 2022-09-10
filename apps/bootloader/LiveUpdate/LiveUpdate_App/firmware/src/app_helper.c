

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "system_config.h"
#include "system_definitions.h"

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
    else
    {
        return false;
    }
    return false;
}

bool APP_TIMER_Set(uint32_t * timer)
{
    *timer = SYS_TMR_TickCountGet();
    return true;
}


