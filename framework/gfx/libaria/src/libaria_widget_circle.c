#include "gfx/libaria/inc/libaria_widget_circle.h"

#if LA_CIRCLE_WIDGET_ENABLED

#include "gfx/libaria/inc/libaria_context.h"
#include "gfx/libaria/inc/libaria_string.h"
#include "gfx/libaria/inc/libaria_utils.h"
#include "gfx/libaria/inc/libaria_widget.h"

#define DEFAULT_WIDTH           101
#define DEFAULT_HEIGHT          101

#define DEFAULT_ORIGIN_X        50
#define DEFAULT_ORIGIN_Y        50

#define DEFAULT_RADIUS          50

void _laCircleWidget_Constructor(laCircleWidget* cir)
{
    _laWidget_Constructor((laWidget*)cir);

    cir->widget.type = LA_WIDGET_CIRCLE;
    
    cir->widget.destructor = (laWidget_Destructor_FnPtr)&_laCircleWidget_Destructor;

    // override base class methods
    cir->widget.paint = (laWidget_Paint_FnPtr)&_laCircleWidget_Paint;

    cir->widget.rect.width = DEFAULT_WIDTH;
    cir->widget.rect.height = DEFAULT_HEIGHT;

    cir->widget.borderType = LA_WIDGET_BORDER_NONE;
    cir->widget.backgroundType = LA_WIDGET_BACKGROUND_NONE;

    cir->x = DEFAULT_ORIGIN_X;
    cir->y = DEFAULT_ORIGIN_Y;
    cir->radius = DEFAULT_RADIUS;
}

void _laCircleWidget_Destructor(laCircleWidget* cir)
{
    _laWidget_Destructor((laWidget*)cir);
}

laCircleWidget* laCircleWidget_New()
{
    laCircleWidget* cir = NULL;

    if(laContext_GetActive() == NULL)
        return NULL;

    cir = laContext_GetActive()->memIntf.heap.calloc(1, sizeof(laCircleWidget));

    if(cir == NULL)
        return NULL;
    
    _laCircleWidget_Constructor(cir);

    return cir;
}

laResult laCircleWidget_GetOrigin(laCircleWidget* cir, int32_t* x, int32_t* y)
{
    if(cir == NULL || x == NULL || y == NULL)
        return LA_FAILURE;
        
    *x = cir->x;
    *y = cir->y;
        
    return LA_SUCCESS;
}

laResult laCircleWidget_SetOrigin(laCircleWidget* cir, int32_t x, int32_t y)
{
    if(cir == NULL)
        return LA_FAILURE;
        
    if(cir->x == x && cir->y == y)
        return LA_SUCCESS;
        
    cir->x = x;
    cir->y = y;
    
    laWidget_Invalidate((laWidget*)cir);
        
    return LA_SUCCESS;
}

uint32_t laCircleWidget_GetRadius(laCircleWidget* cir)
{
    if(cir == NULL)
        return 0;
        
    return cir->radius;
    
    return LA_SUCCESS;
}

laResult laCircleWidget_SetRadius(laCircleWidget* cir, uint32_t rad)
{
    if(cir == NULL)
        return LA_FAILURE;
        
    if(cir->radius == rad)
        return LA_SUCCESS;
        
    cir->radius = rad;
    
    laWidget_Invalidate((laWidget*)cir);
        
    return LA_SUCCESS;
}

#endif // LA_CIRCLE_WIDGET_ENABLED