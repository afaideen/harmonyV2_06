#include "gfx/utils/inc/gfxu_image.h"
#include "gfx/utils/inc/gfxu_palette.h"
#include "../third_party/decoder/lodepng/lodepng.h"
#include "gfx/hal/inc/gfx_context.h"

void* lodepng_malloc(size_t size)
{
    return GFX_ActiveContext()->memory.malloc(size);
}

void* lodepng_realloc(void* ptr, size_t new_size)
{
    return GFX_ActiveContext()->memory.realloc(ptr, new_size);
}

void lodepng_free(void* ptr)
{
    if(ptr != NULL)
        GFX_ActiveContext()->memory.free(ptr);
}

GFX_Result GFXU_DrawImagePngInternal(GFXU_ImageAsset* img,
                                     int32_t src_x,
                                     int32_t src_y,
                                     int32_t src_width,
                                     int32_t src_height,
                                     int32_t dest_x,
                                     int32_t dest_y)
{
    LodePNGColorType colorType;
    unsigned bitDepth;
    unsigned error;
    unsigned char* image;
    GFX_PixelBuffer pixBuffer;
    size_t pngsize;
    GFX_Result result = GFX_FAILURE;
    GFX_ColorMode colorMode;
    GFX_Point pnt;
    GFX_Color color;
    GFX_BlendMode blendMode;

    switch(img->colorMode)
    {
        case GFX_COLOR_MODE_INDEX_8:
        {
            colorMode = GFX_COLOR_MODE_RGB_332;
            colorType = LCT_PALETTE;
            bitDepth = 8;
            break;
        }
        case GFX_COLOR_MODE_RGB_888:
        {
            colorMode = img->colorMode;
            colorType = LCT_RGB;
            bitDepth = 8;
            break;
        }
        case GFX_COLOR_MODE_ARGB_8888:
        {
            colorMode = img->colorMode;
            colorType = LCT_RGBA;
            bitDepth = 8;
            break;
        }
        default:
        {
            return result;
        }
    };

    pngsize = img->header.dataSize;

    error = lodepng_decode_memory(&image,
                                 (unsigned*) &img->width,
                                 (unsigned*) &img->height,
                                  img->header.dataAddress,
                                  pngsize, colorType, bitDepth);
#ifndef _WIN32    
    assert(error == 0); // Trap for no memory available for image decode.
#endif

    if (error == 0)
    {
        GFX_PixelBufferCreate(img->bufferWidth,
                              img->bufferHeight,
                              colorMode,
                              image,
                              &pixBuffer);

        for (pnt.y = 0; pnt.y < pixBuffer.size.height; pnt.y++)
        {

            for (pnt.x = 0; pnt.x < pixBuffer.size.width; pnt.x++)
            {
                // get color value/index
                color = GFX_PixelBufferGet(&pixBuffer, &pnt);

                //swap channnels with ARGB
                if (img->colorMode == GFX_COLOR_MODE_ARGB_8888)
                {
                    color = ((color >> 16) & 0xff) |
                        (color & 0xff) << 16 |
                        (color & 0xff00) |
                        (color & 0xff000000);
                }
                else //RGB_888
                {
                    color = ((color >> 16) & 0xff) |
                        (color & 0xff) << 16 |
                        (color & 0xff00);
                }

                GFX_PixelBufferSet(&pixBuffer, &pnt, color);
            }
        }

        GFX_Get(GFXF_DRAW_BLEND_MODE, &blendMode);
        GFX_Set(GFXF_DRAW_BLEND_MODE, blendMode | GFX_BLEND_CHANNEL);

        result = GFX_DrawBlit(&pixBuffer,
                              src_x,
                              src_y,
                              src_width,
                              src_height,
                              dest_x,
                              dest_y);

        GFX_Set(GFXF_DRAW_BLEND_MODE, blendMode);
    }

    GFX_ActiveContext()->memory.free(image);

    return result;
}