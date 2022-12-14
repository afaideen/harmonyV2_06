#include "gfx/libaria/inc/libaria_widget_drawsurface.h"

#if LA_DRAWSURFACE_WIDGET_ENABLED

#include "gfx/libaria/inc/libaria_context.h"
#include "gfx/libaria/inc/libaria_string.h"
#include "gfx/libaria/inc/libaria_utils.h"
#include "gfx/libaria/inc/libaria_widget.h"

#define DEFAULT_WIDTH           100
#define DEFAULT_HEIGHT          100

void _laDrawSurfaceWidget_Constructor(laDrawSurfaceWidget* sfc)
{
    _laWidget_Constructor((laWidget*)sfc);
    
    sfc->widget.destructor = (laWidget_Destructor_FnPtr)&_laDrawSurfaceWidget_Destructor;

    sfc->widget.type = LA_WIDGET_DRAWSURFACE;

    // override base class methods
    sfc->widget.paint = (laWidget_Paint_FnPtr)&_laDrawSurfaceWidget_Paint;

    sfc->widget.rect.width = DEFAULT_WIDTH;
    sfc->widget.rect.height = DEFAULT_HEIGHT;

    sfc->widget.borderType = LA_WIDGET_BORDER_NONE;
    sfc->widget.backgroundType = LA_WIDGET_BACKGROUND_FILL;

    sfc->cb = NULL;
}

void _laDrawSurfaceWidget_Destructor(laDrawSurfaceWidget* sfc)
{
    _laWidget_Destructor((laWidget*)sfc);
}

/*void _laDrawSurfaceWidget_Update(laDrawSurfaceWidget* sfc)
{

}*/

laDrawSurfaceWidget* laDrawSurfaceWidget_New()
{
    laDrawSurfaceWidget* sfc = NULL;

    if(laContext_GetActive() == NULL)
        return NULL;

    sfc = laContext_GetActive()->memIntf.heap.calloc(1, sizeof(laDrawSurfaceWidget));

    if(sfc == NULL)
        return NULL;
    
    _laDrawSurfaceWidget_Constructor(sfc);

    return sfc;
}

laDrawSurfaceWidget_DrawCallback laDrawSurfaceWidget_GetDrawCallback(laDrawSurfaceWidget* sfc)
{
    if(sfc == NULL)
        return NULL;

    return sfc->cb;
}

laResult laDrawSurfaceWidget_SetDrawCallback(laDrawSurfaceWidget* sfc,
                                                laDrawSurfaceWidget_DrawCallback cb)
{
    if(sfc == NULL)
        return LA_FAILURE;

    if(sfc->cb == cb)
        return LA_SUCCESS;

    sfc->cb = cb;

    laWidget_Invalidate((laWidget*)sfc);
    
    return LA_SUCCESS;
}

#endif // LA_DRAWSURFACE_WIDGET_ENABLED