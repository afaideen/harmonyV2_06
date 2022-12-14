// DOM-IGNORE-BEGIN

/*******************************************************************************
 Module for Microchip Graphics Library - Hardware Abstraction Layer

  Company:
    Microchip Technology Inc.

  File Name:
    gfx_hal.h

  Summary:
    Defines MPLAB Harmony Graphics Hardware Abstraction main function table

  Description:
    Type definitions for HAL functions.
*******************************************************************************/

/*******************************************************************************
Copyright (c) 2017 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
*******************************************************************************/
#ifndef GFX_HAL_H
#define GFX_HAL_H
//DOM-IGNORE-END

#include "gfx/hal/inc/gfx_common.h"
#include "gfx/hal/inc/gfx_layer.h"

#if GFX_DRAW_PIPELINE_ENABLED
#include "gfx/hal/inc/gfx_draw.h"
#endif

typedef struct GFX_DriverInfo_t GFX_DriverInfo;
typedef GFX_Bool   (*boolGet_FnPtr)(void);
typedef GFX_Result (*boolSet_FnPtr)(GFX_Bool);

typedef GFX_Result (*initialize_FnPtr)(GFX_Context*);
typedef void       (*destroy_FnPtr)(GFX_Context*);

typedef GFX_Result (*begin_FnPtr)(void);
typedef void       (*end_FnPtr)(void);

typedef GFX_Result (*update_FnPtr)(void);

typedef GFX_Result (*brightnessRangeGet_FnPtr)(uint32_t*, uint32_t*);
                                               
typedef uint32_t   (*brightnessGet_FnPtr)(void);
typedef GFX_Result (*brightnessSet_FnPtr)(uint32_t);

typedef GFX_SyncCallback_FnPtr (*syncCallbackGet_FnPtr)(void);
typedef GFX_Result (*syncCallbackSt_FnPtr)(GFX_SyncCallback_FnPtr);

typedef GFX_SyncCallback_FnPtr (*syncCallbackGet_FnPtr)(void);
typedef GFX_Result (*syncCallbackSet_FnPtr)(GFX_SyncCallback_FnPtr);

typedef GFX_Orientation (*orientationGet_FnPtr)(void);
typedef GFX_Result (*orientationSet_FnPtr)(GFX_Orientation);

typedef GFX_ColorMode (*colorModeGet_FnPtr)(void);
typedef GFX_Result    (*colorModeSet_FnPtr)(GFX_ColorMode);

typedef GFX_GlobalPalette (*globalPaletteGet_FnPtr)(void);
typedef GFX_Result        (*globalPaletteSet_FnPtr)(GFX_GlobalPalette);

typedef uint32_t   (*layerActiveGet_FnPtr)(void);
typedef GFX_Result (*layerActiveSet_FnPtr)(uint32_t);

typedef uint32_t   (*layerBufferCountGet_FnPtr)(void);
typedef GFX_Result (*layerBufferCountSet_FnPtr)(uint32_t);

typedef GFX_Buffer (*layerBufferAddressGet_FnPtr)(uint32_t);
typedef GFX_Result (*layerBufferAddressSet_FnPtr)(uint32_t, GFX_Buffer);
        
typedef GFX_Bool   (*layerBufferCoherentGet_FnPtr)(uint32_t);
typedef GFX_Result (*layerBufferCoherentSet_FnPtr)(uint32_t, GFX_Bool);

typedef GFX_Result (*layerBufferAllocate_FnPtr)(uint32_t);
typedef GFX_Bool   (*layerBufferIsAllocated_FnPtr)(uint32_t);
typedef GFX_Result (*layerBufferFree_FnPtr)(uint32_t);

typedef void       (*layerSwapPending_FnPtr)(GFX_Layer*);
typedef void       (*layerSwapped_FnPtr)(GFX_Layer*);

typedef GFX_Result (*layerPositionGet_FnPtr)(int32_t*, int32_t*);
typedef GFX_Result (*layerPositionSet_FnPtr)(int32_t, int32_t);

typedef GFX_Result (*layerSizeGet_FnPtr)(int32_t* width, int32_t* height);
typedef GFX_Result (*layerSizeSet_FnPtr)(int32_t width, int32_t height);
                         
typedef GFX_Result (*layerEffectSet_FnPtr)(GFX_Bool, GFX_Bool);                        
                                                      
typedef uint32_t   (*layerAlphaAmountGet_FnPtr)(void);
typedef GFX_Result (*layerAlphaAmountSet_FnPtr)(uint32_t, GFX_Bool);

typedef GFX_Color  (*layerMaskColorGet_FnPtr)(void);
typedef GFX_Result (*layerMaskColorSet_FnPtr)(GFX_Color mask, GFX_Bool);
 
typedef GFX_Point (*orientPoint_FnPtr)(const GFX_Point* pnt,
                                       const GFX_Rect* rect,
                                       GFX_Orientation ori);

typedef GFX_Point (*mirrorPoint_FnPtr)(const GFX_Point* pnt,
                                       const GFX_Rect* rect,
                                       GFX_Orientation ori);
 
#if GFX_DRAW_PIPELINE_ENABLED

typedef GFX_PipelineMode (*drawPipelineModeGet_FnPtr)(void);
typedef GFX_Result       (*drawPipelineModeSet_FnPtr)(GFX_PipelineMode);

typedef GFX_DrawMode (*drawModeGet_FnPtr)(void);
typedef GFX_Result   (*drawModeSet_FnPtr)(GFX_DrawMode);
                     
typedef GFX_Color  (*drawColorGet_FnPtr)(void);
typedef GFX_Result (*drawColorSet_FnPtr)(GFX_Color);

typedef void       (*drawGradientColorGet_FnPtr)(GFX_Color*,
                                                 GFX_Color*,
                                                 GFX_Color*,
                                                 GFX_Color*);
                                                 
typedef GFX_Result (*drawGradientColorSet_FnPtr)(GFX_Color,
                                                 GFX_Color,
                                                 GFX_Color,
                                                 GFX_Color);

typedef GFX_Result (*drawPaletteGet_FnPtr)(GFX_PixelBuffer*);
typedef GFX_Result (*drawPaletteSet_FnPtr)(const GFX_PixelBuffer*);

typedef GFX_Result (*drawTargetGet_FnPtr)(GFX_PixelBuffer**);
typedef GFX_Result (*drawTargetSet_FnPtr)(const GFX_PixelBuffer*);

typedef GFX_BlendMode (*drawBlendModeGet_FnPtr)(void);
typedef GFX_Result    (*drawBlendModeSet_FnPtr)(GFX_BlendMode);

typedef GFX_ResizeMode (*drawResizeModeGet_FnPtr)(void);
typedef GFX_Result     (*drawResizeModeSet_FnPtr)(GFX_ResizeMode);

typedef GFX_Bool   (*drawAlphaEnableGet_FnPtr)(void);
typedef GFX_Result (*drawAlphaEnableSet_FnPtr)(GFX_Bool);

typedef uint32_t   (*drawAlphaValueGet_FnPtr)(void);
typedef GFX_Result (*drawAlphaValueSet_FnPtr)(uint32_t);

typedef uint32_t   (*drawMaskValueGet_FnPtr)(void);
typedef GFX_Result (*drawMaskValueSet_FnPtr)(uint32_t);

typedef GFX_Bool (*maskColor_FnPtr)(const GFX_DrawState* state,
                                    GFX_Color color);

typedef uint32_t   (*drawThicknessGet_FnPtr)(void);
typedef GFX_Result (*drawThicknessSet_FnPtr)(uint32_t);

typedef GFX_Result (*drawClipRectGet_FnPtr)(GFX_Rect*);
typedef GFX_Result (*drawClipRectSet_FnPtr)(const GFX_Rect*);

typedef GFX_Result (*drawPixel_FnPtr)(const GFX_Point*, const GFX_DrawState*);

typedef GFX_Result (*drawLine_FnPtr)(const GFX_Point*,
                                     const GFX_Point*,
                                     const GFX_DrawState*);
                                          
typedef GFX_Result (*drawRect_FnPtr)(const GFX_Rect*, const GFX_DrawState*);

typedef GFX_Result (*drawCircle_FnPtr)(const GFX_Point*,
                                       int32_t,
                                       const GFX_DrawState*);

typedef GFX_Result (*drawArc_FnPtr)(const GFX_Point*,
                                    uint32_t,
                                    int32_t,
                                    int32_t,
                                    const GFX_DrawState*);

typedef GFX_Result (*drawEllipse_FnPtr)(const GFX_Point*,
                                        int32_t,
                                        int32_t,
                                        int32_t,
                                        int32_t,
                                        int32_t,
                                        const GFX_DrawState*);

typedef GFX_Result (*drawBlit_FnPtr)(const GFX_PixelBuffer*,
                                     const GFX_Rect*,
                                     const GFX_Point*,
                                     const GFX_DrawState*);

typedef GFX_Result (*drawStretchBlit_FnPtr)(const GFX_PixelBuffer*,
                                            const GFX_Rect*,
                                            const GFX_Rect*,
                                            const GFX_DrawState*);                                     

#if GFX_ALPHA_BLENDING_ENABLED

typedef GFX_Color  (*blendGetPoint_FnPtr)(const GFX_PixelBuffer* buffer,
                                          const GFX_Point* pnt,
                                          const GFX_DrawState* state);

typedef GFX_Color  (*blendColor_FnPtr)(GFX_Color source,
                                       GFX_Color dest,
                                       GFX_ColorMode mode);                                     

#endif
                                   
typedef GFX_Result (*drawLock_FnPtr)(void);
typedef GFX_Result (*drawUnlock_FnPtr)(void);                                    

#endif // GFX_DRAW_PIPELINE_ENABLED

typedef GFX_Result (*interrupt_FnPtr)(uint32_t);

typedef GFX_Color  (*pixelGet_FnPtr)(const GFX_PixelBuffer*,
                                     const GFX_Point*); 
                                     
typedef GFX_Result (*pixelGetArray_FnPtr)(GFX_BufferSelection source,
                                          const GFX_Rect*,
                                          GFX_PixelBuffer*);                                 

typedef GFX_Result (*pixelSet_FnPtr)(const GFX_PixelBuffer*,
                                     const GFX_Point*,
                                     GFX_Color color); 

#if GFX_DRAW_PIPELINE_ENABLED
typedef struct GFX_DrawPipeline_t
{
    // draw functions
    drawPixel_FnPtr       drawPixel[GFX_ANTIALIAS_MODE_COUNT];
    drawLine_FnPtr        drawLine[GFX_DRAW_MODE_COUNT][GFX_ANTIALIAS_MODE_COUNT];          
    drawLine_FnPtr        drawHorzLine[GFX_DRAW_MODE_COUNT][GFX_ANTIALIAS_MODE_COUNT];
    drawLine_FnPtr        drawVertLine[GFX_DRAW_MODE_COUNT][GFX_ANTIALIAS_MODE_COUNT];
    drawRect_FnPtr        drawRect[GFX_DRAW_MODE_COUNT][GFX_ANTIALIAS_MODE_COUNT];
    drawCircle_FnPtr      drawCircle[GFX_DRAW_MODE_COUNT][GFX_ANTIALIAS_MODE_COUNT];
    drawArc_FnPtr         drawArc[GFX_DRAW_MODE_COUNT][GFX_ANTIALIAS_MODE_COUNT];
    drawEllipse_FnPtr     drawEllipse[GFX_DRAW_MODE_COUNT][GFX_ANTIALIAS_MODE_COUNT];
    drawBlit_FnPtr        drawBlit;
    drawStretchBlit_FnPtr drawStretchBlit[GFX_RESIZE_MODE_COUNT];
    drawBlit_FnPtr        drawDirectBlit;
    
    pixelGet_FnPtr        pixelGet;
    pixelGetArray_FnPtr   pixelArrayGet;
    pixelSet_FnPtr        pixelSet;
} GFX_DrawPipeline;
#endif

/* Hardware Abstraction Function Table
 *
 * This is the core hardware abtraction table that makes everything work.  Drivers are
 * expected to reroute the functionality of this table to hardware specific implementations
 * to provide accelerated performance and features.
 */ 
typedef struct GFX_HAL_t
{
    initialize_FnPtr initialize;
    destroy_FnPtr    destroy;
    
    begin_FnPtr      begin;
    end_FnPtr        end;

    update_FnPtr     update;

    brightnessRangeGet_FnPtr brightnessRangeGet;
    brightnessGet_FnPtr      brightnessGet;
    brightnessSet_FnPtr      brightnessSet;
    
    syncCallbackGet_FnPtr vsyncCallbackGet;
    syncCallbackSet_FnPtr vsyncCallbackSet;
    
    syncCallbackGet_FnPtr hsyncCallbackGet;
    syncCallbackSet_FnPtr hsyncCallbackSet;
    
    orientationGet_FnPtr orientationGet;
    orientationSet_FnPtr orientationSet;
  
    boolGet_FnPtr mirroringGet;
    boolSet_FnPtr mirroringSet;
    
    colorModeGet_FnPtr colorModeGet;
    colorModeSet_FnPtr colorModeSet;
    
    globalPaletteGet_FnPtr globalPaletteGet;
    globalPaletteSet_FnPtr globalPaletteSet;

    layerActiveGet_FnPtr layerActiveGet;
    layerActiveSet_FnPtr layerActiveSet;

    boolGet_FnPtr layerEnabledGet;
    boolSet_FnPtr layerEnabledSet;

    layerBufferCountGet_FnPtr layerBufferCountGet;
    layerBufferCountSet_FnPtr layerBufferCountSet;

    layerBufferAddressGet_FnPtr  layerBufferAddressGet;
    layerBufferAddressSet_FnPtr  layerBufferAddressSet;
    
    layerBufferCoherentGet_FnPtr  layerBufferCoherentGet;
    layerBufferCoherentSet_FnPtr  layerBufferCoherentSet;
    
    layerBufferAllocate_FnPtr    layerBufferAllocate;
    layerBufferIsAllocated_FnPtr layerBufferIsAllocated;
    layerBufferFree_FnPtr        layerBufferFree;

    boolGet_FnPtr layerVisibleGet;
    boolSet_FnPtr layerVisibleSet;

    boolGet_FnPtr layerVsyncGet;
    boolSet_FnPtr layerVsyncSet;
    
    boolGet_FnPtr layerInvalidGet;
    boolSet_FnPtr layerInvalidSet;

    boolGet_FnPtr layerSwapSyncGet;
    boolSet_FnPtr layerSwapSyncSet;

    boolGet_FnPtr layerSwapGet;
    boolSet_FnPtr layerSwapSet;
    layerSwapPending_FnPtr layerSwapPending;
    layerSwapped_FnPtr layerSwapped;

    layerPositionGet_FnPtr layerPositionGet;
    layerPositionSet_FnPtr layerPositionSet;

    layerSizeGet_FnPtr layerSizeGet;
    layerSizeSet_FnPtr layerSizeSet;

    boolGet_FnPtr layerAlphaEnableGet;
    layerEffectSet_FnPtr layerAlphaEnableSet;
    
    layerAlphaAmountGet_FnPtr layerAlphaAmountGet;
    layerAlphaAmountSet_FnPtr layerAlphaAmountSet;
    
    layerMaskColorGet_FnPtr layerMaskEnableGet;
    layerMaskColorSet_FnPtr layerMaskEnableSet;
    
    boolGet_FnPtr layerMaskColorGet;
    layerEffectSet_FnPtr layerMaskColorSet;     
    
    orientPoint_FnPtr orientPoint;
    mirrorPoint_FnPtr mirrorPoint;

#if GFX_DRAW_PIPELINE_ENABLED
    drawPipelineModeGet_FnPtr drawPipelineModeGet;
    drawPipelineModeSet_FnPtr drawPipelineModeSet;

    drawModeGet_FnPtr drawModeGet;
    drawModeSet_FnPtr drawModeSet;
                        
    drawColorGet_FnPtr drawColorGet;
    drawColorSet_FnPtr drawColorSet;
    
    drawGradientColorGet_FnPtr drawGradientColorGet;
    drawGradientColorSet_FnPtr drawGradientColorSet;

    drawPaletteGet_FnPtr drawPaletteGet;
    drawPaletteSet_FnPtr drawPaletteSet;

    drawTargetGet_FnPtr drawTargetGet;
    drawTargetSet_FnPtr drawTargetSet;

    drawBlendModeGet_FnPtr drawBlendModeGet;
    drawBlendModeSet_FnPtr drawBlendModeSet;

    drawResizeModeGet_FnPtr drawResizeModeGet;
    drawResizeModeSet_FnPtr drawResizeModeSet;
    
    drawAlphaEnableGet_FnPtr drawAlphaEnableGet;
    drawAlphaEnableSet_FnPtr drawAlphaEnableSet;
    
    drawAlphaValueGet_FnPtr drawAlphaValueGet;
    drawAlphaValueSet_FnPtr drawAlphaValueSet;
    
#if GFX_COLOR_MASKING_ENABLED
    boolGet_FnPtr drawMaskEnableGet;
    boolSet_FnPtr drawMaskEnableSet;
    
    drawMaskValueGet_FnPtr drawMaskValueGet;
    drawMaskValueSet_FnPtr drawMaskValueSet;
    
    maskColor_FnPtr maskColor;
#endif

    boolGet_FnPtr drawAntialiasGet;
    boolSet_FnPtr drawAntialiasSet;

    drawThicknessGet_FnPtr drawThicknessGet;
    drawThicknessSet_FnPtr drawThicknessSet;

    boolGet_FnPtr drawClipEnableGet;
    boolSet_FnPtr drawClipEnableSet;
    
    drawClipRectGet_FnPtr drawClipRectGet;
    drawClipRectSet_FnPtr drawClipRectSet;
    
#if GFX_ALPHA_BLENDING_ENABLED
    blendGetPoint_FnPtr   alphaGetPoint;
    blendColor_FnPtr      alphaChannelBlend;
    blendColor_FnPtr      globalAlphaBlend;
#endif

    GFX_DrawPipeline drawPipeline[GFX_PIPELINE_MODE_COUNT];
    
#endif // GFX_DRAW_PIPELINE_ENABLED
    
    interrupt_FnPtr interrupt;
} GFX_HAL;

#endif /* GFX_HAL_H */

//DOM-IGNORE-END