/**************************************************************************
  Crypto Framework Library Header

  Company:
    Microchip Technology Inc.

  File Name:
    hmac.h

  Summary:
    Crypto Framework Library header for cryptographic functions.

  Description:
    This header file contains function prototypes and definitions of
    the data types and constants that make up the Cryptographic Framework
    Library for PIC32 families of Microchip microcontrollers.
**************************************************************************/

//DOM-IGNORE-BEGIN
/******************************************************************************
Copyright ? 2013-2017 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED ?AS IS? WITHOUT WARRANTY OF ANY KIND,
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
//DOM-IGNORE-END

#ifndef NO_HMAC

#ifndef WOLF_CRYPT_HMAC_H
#define WOLF_CRYPT_HMAC_H

#include "crypto/src/types.h"
#include "crypto/src/hash.h"

#ifndef NO_MD5
    #include "crypto/src/md5.h"
#endif

#ifndef NO_SHA
#include "crypto/src/sha.h"
#endif

#if !defined(NO_SHA256) || defined(WOLFSSL_SHA224)
    #include "crypto/src/sha256.h"
#endif

#ifdef WOLFSSL_SHA512
    #include "crypto/src/sha512.h"
#endif

#ifdef HAVE_BLAKE2
    #include "crypto/src/blake2.h"
#endif

#ifdef HAVE_FIPS
/* for fips */
    #include "crypto/src/hmac.h"
#endif


#ifdef __cplusplus
    extern "C" {
#endif
#ifndef HAVE_FIPS

#ifdef WOLFSSL_ASYNC_CRYPT
    #include "crypto/src/async.h"
#ifndef NO_OLD_WC_NAMES
    #define HMAC_BLOCK_SIZE WC_HMAC_BLOCK_SIZE
#endif
#endif

enum {
    HMAC_FIPS_MIN_KEY = 14,   /* 112 bit key length minimum */

    IPAD    = 0x36,
    OPAD    = 0x5C,

/* If any hash is not enabled, add the ID here. */
#ifdef NO_MD5
    WC_MD5     = 0,
#endif
#ifdef NO_SHA
    WC_SHA     = 1,
#endif
#ifdef NO_SHA256
    WC_SHA256  = 2,
#endif
#ifndef WOLFSSL_SHA512
    WC_SHA512  = 4,
#endif
#ifndef WOLFSSL_SHA384
    WC_SHA384  = 5,
#endif
#ifndef HAVE_BLAKE2
    BLAKE2B_ID = 7,
#endif
#ifndef WOLFSSL_SHA224
    WC_SHA224  = 8,
#endif
#ifndef WOLFSSL_SHA3
    WC_SHA3_224 = 10,
    WC_SHA3_256 = 11,
    WC_SHA3_384 = 12,
    WC_SHA3_512 = 13,
#else
    /* These values are used for HMAC, not SHA-3 directly.
     * They come from from FIPS PUB 202. */
    WC_SHA3_224_BLOCK_SIZE = 144,
    WC_SHA3_256_BLOCK_SIZE = 136,
    WC_SHA3_384_BLOCK_SIZE = 104,
    WC_SHA3_512_BLOCK_SIZE = 72,
#endif

/* Select the largest available hash for the buffer size. */
#if defined(WOLFSSL_SHA3)
    WC_HMAC_BLOCK_SIZE = WC_SHA3_224_BLOCK_SIZE
        /* SHA3-224 has the largest block size */
#elif defined(WOLFSSL_SHA512)
    WC_HMAC_BLOCK_SIZE = WC_SHA512_BLOCK_SIZE,
#elif defined(HAVE_BLAKE2)
    WC_HMAC_BLOCK_SIZE = BLAKE2B_BLOCKBYTES,
#elif defined(WOLFSSL_SHA384)
    WC_HMAC_BLOCK_SIZE = WC_SHA384_BLOCK_SIZE
#elif !defined(NO_SHA256)
    WC_HMAC_BLOCK_SIZE = WC_SHA256_BLOCK_SIZE
#elif defined(WOLFSSL_SHA224)
    WC_HMAC_BLOCK_SIZE = WC_SHA224_BLOCK_SIZE
#elif !defined(NO_SHA)
    WC_HMAC_BLOCK_SIZE = WC_SHA_BLOCK_SIZE,
#elif !defined(NO_MD5)
    WC_HMAC_BLOCK_SIZE = WC_MD5_BLOCK_SIZE,
#else
    #error "You have to have some kind of hash if you want to use HMAC."
#endif
};


/* hash union */
typedef union {
#ifndef NO_MD5
    wc_Md5 md5;
#endif
#ifndef NO_SHA
    wc_Sha sha;
#endif
#ifdef WOLFSSL_SHA224
    wc_Sha224 sha224;
#endif
#ifndef NO_SHA256
    wc_Sha256 sha256;
#endif
#ifdef WOLFSSL_SHA512
#ifdef WOLFSSL_SHA384
    wc_Sha384 sha384;
#endif
    wc_Sha512 sha512;
#endif
#ifdef HAVE_BLAKE2
    Blake2b blake2b;
#endif
#ifdef WOLFSSL_SHA3
    Sha3 sha3;
#endif
} Hash;

/* Hmac digest */
typedef struct Hmac {
    Hash    hash;
    word32  ipad[WC_HMAC_BLOCK_SIZE  / sizeof(word32)];  /* same block size all*/
    word32  opad[WC_HMAC_BLOCK_SIZE  / sizeof(word32)];
    word32  innerHash[WC_MAX_DIGEST_SIZE / sizeof(word32)];
    void*   heap;                 /* heap hint */
    byte    macType;              /* md5 sha or sha256 */
    byte    innerHashKeyed;       /* keyed flag */

#ifdef WOLFSSL_ASYNC_CRYPT
    WC_ASYNC_DEV asyncDev;
    word16       keyLen;          /* hmac key length (key in ipad) */
    #ifdef HAVE_CAVIUM
        byte*    data;            /* buffered input data for one call */
        word16   dataLen;
    #endif /* HAVE_CAVIUM */
#endif /* WOLFSSL_ASYNC_CRYPT */
} Hmac;

#endif /* HAVE_FIPS */

/* does init */
WOLFSSL_API int wc_HmacSetKey(Hmac*, int type, const byte* key, word32 keySz);
WOLFSSL_API int wc_HmacUpdate(Hmac*, const byte*, word32);
WOLFSSL_API int wc_HmacFinal(Hmac*, byte*);
WOLFSSL_API int wc_HmacSizeByType(int type);

WOLFSSL_API int wc_HmacInit(Hmac* hmac, void* heap, int devId);
WOLFSSL_API void wc_HmacFree(Hmac*);

WOLFSSL_API int wolfSSL_GetHmacMaxSize(void);

WOLFSSL_LOCAL int _InitHmac(Hmac* hmac, int type, void* heap);

#ifdef HAVE_HKDF

WOLFSSL_API int wc_HKDF_Extract(int type, const byte* salt, word32 saltSz,
                                const byte* inKey, word32 inKeySz, byte* out);
WOLFSSL_API int wc_HKDF_Expand(int type, const byte* inKey, word32 inKeySz,
                               const byte* info, word32 infoSz,
                               byte* out,        word32 outSz);

WOLFSSL_API int wc_HKDF(int type, const byte* inKey, word32 inKeySz,
                    const byte* salt, word32 saltSz,
                    const byte* info, word32 infoSz,
                    byte* out, word32 outSz);

#endif /* HAVE_HKDF */

#ifdef __cplusplus
    } /* extern "C" */
#endif

#endif /* WOLF_CRYPT_HMAC_H */

#endif /* NO_HMAC */

