/*********************************************************************
*                 SEGGER Microcontroller Systems LLC                 *
*        Solutions for real time microcontroller applications        *
**********************************************************************
*                                                                    *
*        (c) 1996 - 2017  SEGGER Microcontroller GmbH & Co. KG       *
*                                                                    *
*        Internet: www.segger.com    Support:  support@segger.com    *
*                                                                    *
**********************************************************************

** emWin V5.44 - Graphical user interface for embedded applications **
All  Intellectual Property rights  in the Software belongs to  SEGGER.
emWin is protected by  international copyright laws.  Knowledge of the
source code may not be used to write a similar product.  This file may
only be used in accordance with the following terms:

The  software has  been licensed  to Microchip Technology Inc. for the
purposes  of  creating  libraries  for  16 -bit  PIC microcontrollers,
32-bit  PIC  microntrollers,  dsPIC  digital  signal  controllers  and
microcontrollers   with   part   name   prefix   "PIC16"  and  "PIC18"
commercialized and distributed by Microchip Technology Inc. as part of
the  MPLAB  Integrated  Development  Environment  under  the terms and
conditions  of  an  End  User  License  Agreement  supplied  with  the
libraries. Full source code is available at: www.segger.com

We appreciate your understanding and fairness.
----------------------------------------------------------------------
Licensing information
Licensor:                 SEGGER Microcontroller Systems LLC
Licensed to:              Microchip Technology Inc., 2355 W Chandler Blvd., Chandler, AZ 85224, US
Licensed SEGGER software: emWin
License number:           GUI-00614
License model:            CPU Object Code License, dated Sept. 8, 2015
Licensed product:         Any
Licensed platform:        PIC24, PIC32, dsPIC, PIC16, PIC18 / MPLAB X Integrated Development Evironment, XC16 C Compiler, XC32 C/C++ Compiler
Licensed number of seats: -
----------------------------------------------------------------------
Support and Update Agreement (SUA)
SUA period:               2015-09-28 - 2019-09-29
Contact to extend SUA:    sales@segger.com
----------------------------------------------------------------------
File        : GUIDRV_Lin_Opt_24.h
Purpose     : Optimized routines, included by GUIDRV_Lin_..._24.c
---------------------------END-OF-HEADER------------------------------
*/

/*********************************************************************
*
*       Static functions
*
**********************************************************************
*/
/*********************************************************************
*
*       _FillRectOpt24
*
* Purpose:
*   Optimized filling routine for 24 bpp
*/
static void _FillRectOpt24(GUI_DEVICE * pDevice, int x0, int y0, int x1, int y1) {
  DRIVER_CONTEXT * pContext;
  U32 Off, Off0, OffLine;
  int RemPixels, NumLines, RemLines, RemItems, Odd;
  U32 Data, Data0, Data1, Data2;
  LCD_PIXELINDEX ColorIndex;

  pContext  = (DRIVER_CONTEXT *)pDevice->u.pContext;
  Off0      = XY2OFF32(pContext->vxSizePhys, x0, y0);
  RemPixels = x1 - x0 + 1;
  Odd       = x0 & 3;
  NumLines  = y1 - y0 + 1;
  OffLine   = (pContext->vxSizePhys + pContext->vxSizePhys +pContext->vxSizePhys) >> 2;
  RemItems  = 0;
  Off       = 0;
#if (LCD_ENDIAN_BIG == 0)
  if (GUI_pContext->DrawMode & LCD_DRAWMODE_XOR) {
    //
    // First triple DWORD
    //
    if (Odd) {
      for (RemLines = NumLines; RemLines; RemLines--) {
        RemItems = RemPixels;
        Off      = Off0 + OffLine * (RemLines - 1);
        Data     = READ_MEM32(pContext->VRAMAddr, Off);
        switch (Odd) {
        case 1:
          Data ^= 0xFF000000;
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          Off++;
          Data  = READ_MEM32(pContext->VRAMAddr, Off);
          Data ^= 0x0000FFFF;
          RemItems--;
          if (!RemItems) {
            WRITE_MEM32(pContext->VRAMAddr, Off, Data);
            break;
          }
          //
          // no break at this position required...
          //
        case 2:
          Data ^= 0xFFFF0000;
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          Off++;
          Data  = READ_MEM32(pContext->VRAMAddr, Off);
          Data ^= 0x000000FF;
          RemItems--;
          if (!RemItems) {
            WRITE_MEM32(pContext->VRAMAddr, Off, Data);
            break;
          }
          //
          // no break at this position required...
          //
        case 3:
          Data ^= 0xFFFFFF00;
          RemItems--;
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          Off++;
        }
      }
      Off0       = Off;
      RemPixels -= (RemPixels - RemItems);
    }
    //
    // Complete triple DWORDS
    //
    if (RemPixels >= 4) {
      for (RemLines = NumLines; RemLines; RemLines--) {
        RemItems = RemPixels;
        Off      = Off0 + OffLine * (RemLines - 1);
        do {
          Data  = READ_MEM32(pContext->VRAMAddr, Off + 0);
          Data ^= 0xFFFFFFFF;
          WRITE_MEM32(pContext->VRAMAddr, Off + 0, Data);
          Data  = READ_MEM32(pContext->VRAMAddr, Off + 1);
          Data ^= 0xFFFFFFFF;
          WRITE_MEM32(pContext->VRAMAddr, Off + 1, Data);
          Data  = READ_MEM32(pContext->VRAMAddr, Off + 2);
          Data ^= 0xFFFFFFFF;
          WRITE_MEM32(pContext->VRAMAddr, Off + 2, Data);
          Off += 3;
        } while ((RemItems -= 4) >= 4);
      }
      Off0       = Off;
      RemPixels -= (RemPixels >> 2) << 2;
    }
    //
    // Last triple DWORD
    //
    if (RemPixels) {
      for (RemLines = NumLines; RemLines; RemLines--) {
        RemItems = RemPixels;
        Off      = Off0 + OffLine * (RemLines - 1);
        Data  = READ_MEM32(pContext->VRAMAddr, Off);
        Data ^= 0x00FFFFFF;
        RemItems--;
        if (!RemItems) {
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          continue;
        }
        Data ^= 0xFF000000;
        WRITE_MEM32(pContext->VRAMAddr, Off, Data);
        Off++;
        Data  = READ_MEM32(pContext->VRAMAddr, Off);
        Data ^= 0x0000FFFF;
        RemItems--;
        if (!RemItems) {
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          continue;
        }
        Data ^= 0xFFFF0000;
        WRITE_MEM32(pContext->VRAMAddr, Off, Data);
        Off++;
        Data  = READ_MEM32(pContext->VRAMAddr, Off);
        Data ^= 0x000000FF;
        WRITE_MEM32(pContext->VRAMAddr, Off, Data);
      }
    }
  } else {
    ColorIndex = LCD__GetColorIndex() & 0xFFFFFF;
    //
    // First triple DWORD
    //
    if (Odd) {
      for (RemLines = NumLines; RemLines; RemLines--) {
        RemItems = RemPixels;
        Off      = Off0 + OffLine * (RemLines - 1);
        Data  = READ_MEM32(pContext->VRAMAddr, Off);
        switch (Odd) {
        case 1:
          Data &= 0x00FFFFFF;
          Data |= ColorIndex << 24;
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          Off++;
          Data  = READ_MEM32(pContext->VRAMAddr, Off);
          Data &= 0xFFFF0000;
          Data |= ColorIndex >> 8;
          RemItems--;
          if (!RemItems) {
            WRITE_MEM32(pContext->VRAMAddr, Off, Data);
            break;
          }
          //
          // no break at this position required...
          //
        case 2:
          Data &= 0x0000FFFF;
          Data |= ColorIndex << 16;
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          Off++;
          Data  = READ_MEM32(pContext->VRAMAddr, Off);
          Data &= 0xFFFFFF00;
          Data |= ColorIndex >> 16;
          RemItems--;
          if (!RemItems) {
            WRITE_MEM32(pContext->VRAMAddr, Off, Data);
            break;
          }
          //
          // no break at this position required...
          //
        case 3:
          Data &= 0x000000FF;
          Data |= ColorIndex << 8;
          RemItems--;
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          Off++;
        }
      }
      Off0       = Off;
      RemPixels -= (RemPixels - RemItems);
    }
    //
    // Complete triple DWORDS
    //
    if (RemPixels >= 4) {
      for (RemLines = NumLines; RemLines; RemLines--) {
        RemItems = RemPixels;
        Off      = Off0 + OffLine * (RemLines - 1);
        Data0 = (ColorIndex      ) | (ColorIndex << 24);
        Data1 = (ColorIndex >>  8) | (ColorIndex << 16);
        Data2 = (ColorIndex >> 16) | (ColorIndex <<  8);
        do {
          WRITE_MEM32(pContext->VRAMAddr, Off + 0, Data0);
          WRITE_MEM32(pContext->VRAMAddr, Off + 1, Data1);
          WRITE_MEM32(pContext->VRAMAddr, Off + 2, Data2);
          Off += 3;
        } while ((RemItems -= 4) >= 4);
      }
      Off0       = Off;
      RemPixels -= (RemPixels >> 2) << 2;
    }
    //
    // Last triple DWORD
    //
    if (RemPixels) {
      for (RemLines = NumLines; RemLines; RemLines--) {
        RemItems = RemPixels;
        Off      = Off0 + OffLine * (RemLines - 1);
        Data  = READ_MEM32(pContext->VRAMAddr, Off);
        Data &= 0xFF000000;
        Data |= ColorIndex;
        RemItems--;
        if (!RemItems) {
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          continue;
        }
        Data &= 0x00FFFFFF;
        Data |= ColorIndex << 24;
        WRITE_MEM32(pContext->VRAMAddr, Off, Data);
        Off++;
        Data  = READ_MEM32(pContext->VRAMAddr, Off);
        Data &= 0xFFFF0000;
        Data |= ColorIndex >> 8;
        RemItems--;
        if (!RemItems) {
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          continue;
        }
        Data &= 0x0000FFFF;
        Data |= ColorIndex << 16;
        WRITE_MEM32(pContext->VRAMAddr, Off, Data);
        Off++;
        Data  = READ_MEM32(pContext->VRAMAddr, Off);
        Data &= 0xFFFFFF00;
        Data |= ColorIndex >> 16;
        WRITE_MEM32(pContext->VRAMAddr, Off, Data);
      }
    }
  }
#else
  if (GUI_pContext->DrawMode & LCD_DRAWMODE_XOR) {
    //
    // First triple DWORD
    //
    if (Odd) {
      for (RemLines = NumLines; RemLines; RemLines--) {
        RemItems = RemPixels;
        Off      = Off0 + OffLine * (RemLines - 1);
        Data     = READ_MEM32(pContext->VRAMAddr, Off);
        switch (Odd) {
        case 1:
          Data ^= 0x000000FF;
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          Off++;
          Data  = READ_MEM32(pContext->VRAMAddr, Off);
          Data ^= 0xFFFF0000;
          RemItems--;
          if (!RemItems) {
            WRITE_MEM32(pContext->VRAMAddr, Off, Data);
            break;
          }
          //
          // no break at this position required...
          //
        case 2:
          Data ^= 0x0000FFFF;
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          Off++;
          Data  = READ_MEM32(pContext->VRAMAddr, Off);
          Data ^= 0xFF000000;
          RemItems--;
          if (!RemItems) {
            WRITE_MEM32(pContext->VRAMAddr, Off, Data);
            break;
          }
          //
          // no break at this position required...
          //
        case 3:
          Data ^= 0x00FFFFFF;
          RemItems--;
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          Off++;
        }
      }
      Off0       = Off;
      RemPixels -= (RemPixels - RemItems);
    }
    //
    // Complete triple DWORDS
    //
    if (RemPixels >= 4) {
      for (RemLines = NumLines; RemLines; RemLines--) {
        RemItems = RemPixels;
        Off      = Off0 + OffLine * (RemLines - 1);
        do {
          Data  = READ_MEM32(pContext->VRAMAddr, Off + 0);
          Data ^= 0xFFFFFFFF;
          WRITE_MEM32(pContext->VRAMAddr, Off + 0, Data);
          Data  = READ_MEM32(pContext->VRAMAddr, Off + 1);
          Data ^= 0xFFFFFFFF;
          WRITE_MEM32(pContext->VRAMAddr, Off + 1, Data);
          Data  = READ_MEM32(pContext->VRAMAddr, Off + 2);
          Data ^= 0xFFFFFFFF;
          WRITE_MEM32(pContext->VRAMAddr, Off + 2, Data);
          Off += 3;
        } while ((RemItems -= 4) >= 4);
      }
      Off0       = Off;
      RemPixels -= (RemPixels >> 2) << 2;
    }
    //
    // Last triple DWORD
    //
    if (RemPixels) {
      for (RemLines = NumLines; RemLines; RemLines--) {
        RemItems = RemPixels;
        Off      = Off0 + OffLine * (RemLines - 1);
        
        Data  = READ_MEM32(pContext->VRAMAddr, Off);
        Data ^= 0xFFFFFF00;
        RemItems--;
        if (!RemItems) {
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          continue;
        }
        Data ^= 0x000000FF;
        WRITE_MEM32(pContext->VRAMAddr, Off, Data);
        Off++;
        Data  = READ_MEM32(pContext->VRAMAddr, Off);
        Data ^= 0xFFFF0000;
        RemItems--;
        if (!RemItems) {
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          continue;
        }
        Data ^= 0x0000FFFF;
        WRITE_MEM32(pContext->VRAMAddr, Off, Data);
        Off++;
        Data  = READ_MEM32(pContext->VRAMAddr, Off);
        Data ^= 0xFF000000;
        WRITE_MEM32(pContext->VRAMAddr, Off, Data);
      }
    }
  } else {
    ColorIndex = LCD__GetColorIndex();
    //
    // First triple DWORD
    //
    if (Odd) {
      for (RemLines = NumLines; RemLines; RemLines--) {
        RemItems = RemPixels;
        Off      = Off0 + OffLine * (RemLines - 1);
        Data  = READ_MEM32(pContext->VRAMAddr, Off);
        switch (Odd) {
        case 1:
          Data &= 0xFFFFFF00;
          Data |= ColorIndex >> 16;
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          Off++;
          Data  = READ_MEM32(pContext->VRAMAddr, Off);
          Data &= 0x0000FFFF;
          Data |= ColorIndex << 16;
          RemItems--;
          if (!RemItems) {
            WRITE_MEM32(pContext->VRAMAddr, Off, Data);
            break;
          }
          //
          // no break at this position required...
          //
        case 2:
          Data &= 0xFFFF0000;
          Data |= ColorIndex >> 8;
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          Off++;
          Data  = READ_MEM32(pContext->VRAMAddr, Off);
          Data &= 0x00FFFFFF;
          Data |= ColorIndex << 24;
          RemItems--;
          if (!RemItems) {
            WRITE_MEM32(pContext->VRAMAddr, Off, Data);
            break;
          }
          //
          // no break at this position required...
          //
        case 3:
          Data &= 0xFF000000;
          Data |= ColorIndex;
          RemItems--;
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          Off++;
        }
      }
      Off0       = Off;
      RemPixels -= (RemPixels - RemItems);
    }
    //
    // Complete triple DWORDS
    //
    if (RemPixels >= 4) {
      for (RemLines = NumLines; RemLines; RemLines--) {
        RemItems = RemPixels;
        Off      = Off0 + OffLine * (RemLines - 1);
        Data0 = (ColorIndex <<  8) | (ColorIndex >> 16);
        Data1 = (ColorIndex << 16) | (ColorIndex >>  8);
        Data2 = (ColorIndex << 24) | (ColorIndex      );
        do {
          WRITE_MEM32(pContext->VRAMAddr, Off + 0, Data0);
          WRITE_MEM32(pContext->VRAMAddr, Off + 1, Data1);
          WRITE_MEM32(pContext->VRAMAddr, Off + 2, Data2);
          Off += 3;
        } while ((RemItems -= 4) >= 4);
      }
      Off0       = Off;
      RemPixels -= (RemPixels >> 2) << 2;
    }
    //
    // Last triple DWORD
    //
    if (RemPixels) {
      for (RemLines = NumLines; RemLines; RemLines--) {
        RemItems = RemPixels;
        Off      = Off0 + OffLine * (RemLines - 1);

        Data  = READ_MEM32(pContext->VRAMAddr, Off);
        Data &= 0x000000FF;
        Data |= (ColorIndex << 8);
        RemItems--;
        if (!RemItems) {
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          continue;
        }
        Data &= 0xFFFFFF00;
        Data |= ColorIndex >> 16;
        WRITE_MEM32(pContext->VRAMAddr, Off, Data);
        Off++;
        Data  = READ_MEM32(pContext->VRAMAddr, Off);
        Data &= 0x0000FFFF;
        Data |= ColorIndex << 16;
        RemItems--;
        if (!RemItems) {
          WRITE_MEM32(pContext->VRAMAddr, Off, Data);
          continue;
        }
        Data &= 0xFFFF0000;
        Data |= ColorIndex >> 8;
        WRITE_MEM32(pContext->VRAMAddr, Off, Data);
        Off++;
        Data  = READ_MEM32(pContext->VRAMAddr, Off);
        Data &= 0x00FFFFFF;
        Data |= ColorIndex << 24;
        WRITE_MEM32(pContext->VRAMAddr, Off, Data);
      }
    }
  }
#endif
}

/*************************** End of file ****************************/
