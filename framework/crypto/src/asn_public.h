/**************************************************************************
  Crypto Framework Library Header

  Company:
    Microchip Technology Inc.

  File Name:
    asn_public.h
  
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




#ifndef WOLF_CRYPT_ASN_PUBLIC_H
#define WOLF_CRYPT_ASN_PUBLIC_H

#include "crypto/src/types.h"

#ifdef __cplusplus
    extern "C" {
#endif

/* guard on redeclaration */
#ifndef WC_ECCKEY_TYPE_DEFINED
    typedef struct ecc_key ecc_key;
    #define WC_ECCKEY_TYPE_DEFINED
#endif
#ifndef WC_ED25519KEY_TYPE_DEFINED
    typedef struct ed25519_key ed25519_key;
    #define WC_ED25519KEY_TYPE_DEFINED
#endif
#ifndef WC_RSAKEY_TYPE_DEFINED
    typedef struct RsaKey RsaKey;
    #define WC_RSAKEY_TYPE_DEFINED
#endif
#ifndef WC_RNG_TYPE_DEFINED
    typedef struct WC_RNG WC_RNG;
    #define WC_RNG_TYPE_DEFINED
#endif

/* Certificate file Type */
enum CertType {
    CERT_TYPE       = 0,
    PRIVATEKEY_TYPE,
    DH_PARAM_TYPE,
    DSA_PARAM_TYPE,
    CRL_TYPE,
    CA_TYPE,
    ECC_PRIVATEKEY_TYPE,
    DSA_PRIVATEKEY_TYPE,
    CERTREQ_TYPE,
    DSA_TYPE,
    ECC_TYPE,
    RSA_TYPE,
    PUBLICKEY_TYPE,
    RSA_PUBLICKEY_TYPE,
    ECC_PUBLICKEY_TYPE,
    TRUSTED_PEER_TYPE,
    EDDSA_PRIVATEKEY_TYPE,
    ED25519_TYPE
};


/* Signature type, by OID sum */
enum Ctc_SigType {
    CTC_SHAwDSA      = 517,
    CTC_MD2wRSA      = 646,
    CTC_MD5wRSA      = 648,
    CTC_SHAwRSA      = 649,
    CTC_SHAwECDSA    = 520,
    CTC_SHA224wRSA   = 658,
    CTC_SHA224wECDSA = 523,
    CTC_SHA256wRSA   = 655,
    CTC_SHA256wECDSA = 524,
    CTC_SHA384wRSA   = 656,
    CTC_SHA384wECDSA = 525,
    CTC_SHA512wRSA   = 657,
    CTC_SHA512wECDSA = 526,
    CTC_ED25519      = 256
};

enum Ctc_Encoding {
    CTC_UTF8       = 0x0c, /* utf8      */
    CTC_PRINTABLE  = 0x13  /* printable */
};

enum Ctc_Misc {
    CTC_COUNTRY_SIZE  =     2,
    CTC_NAME_SIZE     =    64,
    CTC_DATE_SIZE     =    32,
    CTC_MAX_ALT_SIZE  = 16384,   /* may be huge */
    CTC_SERIAL_SIZE   =    16,
#ifdef WOLFSSL_CERT_EXT
    /* AKID could contains: hash + (Option) AuthCertIssuer,AuthCertSerialNum
     * We support only hash */
    CTC_MAX_SKID_SIZE = 32, /* SHA256_DIGEST_SIZE */
    CTC_MAX_AKID_SIZE = 32, /* SHA256_DIGEST_SIZE */
    CTC_MAX_CERTPOL_SZ = 64,
    CTC_MAX_CERTPOL_NB = 2 /* Max number of Certificate Policy */
#endif /* WOLFSSL_CERT_EXT */
};


#ifdef WOLFSSL_CERT_GEN

#ifdef WOLFSSL_EKU_OID
    #ifndef CTC_MAX_EKU_NB
        #define CTC_MAX_EKU_NB 1
    #endif
    #ifndef CTC_MAX_EKU_OID_SZ
        #define CTC_MAX_EKU_OID_SZ 30
    #endif
#else
    #undef CTC_MAX_EKU_OID_SZ
    #define CTC_MAX_EKU_OID_SZ 0
#endif


#ifdef WOLFSSL_MULTI_ATTRIB
#ifndef CTC_MAX_ATTRIB
    #define CTC_MAX_ATTRIB 4
#endif

/* ASN Encoded Name field */
typedef struct NameAttrib {
    int  sz;                     /* actual string value length */
    int  id;                     /* id of name */
    int  type;                   /* enc of name */
    char value[CTC_NAME_SIZE];   /* name */
} NameAttrib;
#endif /* WOLFSSL_MULTI_ATTRIB */


typedef struct CertName {
    char country[CTC_NAME_SIZE];
    char countryEnc;
    char state[CTC_NAME_SIZE];
    char stateEnc;
    char locality[CTC_NAME_SIZE];
    char localityEnc;
    char sur[CTC_NAME_SIZE];
    char surEnc;
    char org[CTC_NAME_SIZE];
    char orgEnc;
    char unit[CTC_NAME_SIZE];
    char unitEnc;
    char commonName[CTC_NAME_SIZE];
    char commonNameEnc;
    char email[CTC_NAME_SIZE];  /* !!!! email has to be last !!!! */
#ifdef WOLFSSL_MULTI_ATTRIB
    NameAttrib name[CTC_MAX_ATTRIB];
#endif
} CertName;


/* for user to fill for certificate generation */
typedef struct Cert {
    int      version;                   /* x509 version  */
    byte     serial[CTC_SERIAL_SIZE];   /* serial number */
    int      serialSz;                  /* serial size */
    int      sigType;                   /* signature algo type */
    CertName issuer;                    /* issuer info */
    int      daysValid;                 /* validity days */
    int      selfSigned;                /* self signed flag */
    CertName subject;                   /* subject info */
    int      isCA;                      /* is this going to be a CA */
    /* internal use only */
    int      bodySz;                    /* pre sign total size */
    int      keyType;                   /* public key type of subject */
#ifdef WOLFSSL_ALT_NAMES
    byte     altNames[CTC_MAX_ALT_SIZE]; /* altNames copy */
    int      altNamesSz;                 /* altNames size in bytes */
    byte     beforeDate[CTC_DATE_SIZE];  /* before date copy */
    int      beforeDateSz;               /* size of copy */
    byte     afterDate[CTC_DATE_SIZE];   /* after date copy */
    int      afterDateSz;                /* size of copy */
#endif
#ifdef WOLFSSL_CERT_EXT
    byte    skid[CTC_MAX_SKID_SIZE];     /* Subject Key Identifier */
    int     skidSz;                      /* SKID size in bytes */
    byte    akid[CTC_MAX_AKID_SIZE];     /* Authority Key Identifier */
    int     akidSz;                      /* AKID size in bytes */
    word16  keyUsage;                    /* Key Usage */
    byte    extKeyUsage;                 /* Extended Key Usage */
#ifdef WOLFSSL_EKU_OID
    /* Extended Key Usage OIDs */
    byte    extKeyUsageOID[CTC_MAX_EKU_NB][CTC_MAX_EKU_OID_SZ];
    byte    extKeyUsageOIDSz[CTC_MAX_EKU_NB];
#endif
    char    certPolicies[CTC_MAX_CERTPOL_NB][CTC_MAX_CERTPOL_SZ];
    word16  certPoliciesNb;              /* Number of Cert Policy */
#endif
#ifdef WOLFSSL_CERT_REQ
    char     challengePw[CTC_NAME_SIZE];
#endif
    void*   heap; /* heap hint */
} Cert;


/* Initialize and Set Certificate defaults:
   version    = 3 (0x2)
   serial     = 0 (Will be randomly generated)
   sigType    = SHA_WITH_RSA
   issuer     = blank
   daysValid  = 500
   selfSigned = 1 (true) use subject as issuer
   subject    = blank
   isCA       = 0 (false)
   keyType    = RSA_KEY (default)
*/
WOLFSSL_API int wc_InitCert(Cert*);
WOLFSSL_API int  wc_MakeCert_ex(Cert* cert, byte* derBuffer, word32 derSz,
                                int keyType, void* key, WC_RNG* rng);
WOLFSSL_API int  wc_MakeCert(Cert*, byte* derBuffer, word32 derSz, RsaKey*,
                             ecc_key*, WC_RNG*);
#ifdef WOLFSSL_CERT_REQ
    WOLFSSL_API int  wc_MakeCertReq_ex(Cert*, byte* derBuffer, word32 derSz,
                                       int, void*);
    WOLFSSL_API int  wc_MakeCertReq(Cert*, byte* derBuffer, word32 derSz,
                                    RsaKey*, ecc_key*);
#endif
WOLFSSL_API int  wc_SignCert_ex(int requestSz, int sType, byte* buffer,
                                word32 buffSz, int keyType, void* key,
                                WC_RNG* rng);
WOLFSSL_API int  wc_SignCert(int requestSz, int sigType, byte* derBuffer,
                             word32 derSz, RsaKey*, ecc_key*, WC_RNG*);
WOLFSSL_API int  wc_MakeSelfCert(Cert*, byte* derBuffer, word32 derSz, RsaKey*,
                             WC_RNG*);
WOLFSSL_API int  wc_SetIssuer(Cert*, const char*);
WOLFSSL_API int  wc_SetSubject(Cert*, const char*);
#ifdef WOLFSSL_ALT_NAMES
    WOLFSSL_API int  wc_SetAltNames(Cert*, const char*);
#endif
WOLFSSL_API int  wc_SetIssuerBuffer(Cert*, const byte*, int);
WOLFSSL_API int  wc_SetSubjectBuffer(Cert*, const byte*, int);
WOLFSSL_API int  wc_SetAltNamesBuffer(Cert*, const byte*, int);
WOLFSSL_API int  wc_SetDatesBuffer(Cert*, const byte*, int);

#ifdef WOLFSSL_CERT_EXT
WOLFSSL_API int wc_SetAuthKeyIdFromPublicKey_ex(Cert *cert, int keyType,
                                                void* key);
WOLFSSL_API int wc_SetAuthKeyIdFromPublicKey(Cert *cert, RsaKey *rsakey,
                                             ecc_key *eckey);
WOLFSSL_API int wc_SetAuthKeyIdFromCert(Cert *cert, const byte *der, int derSz);
WOLFSSL_API int wc_SetAuthKeyId(Cert *cert, const char* file);
WOLFSSL_API int wc_SetSubjectKeyIdFromPublicKey_ex(Cert *cert, int keyType,
                                                   void* key);
WOLFSSL_API int wc_SetSubjectKeyIdFromPublicKey(Cert *cert, RsaKey *rsakey,
                                                ecc_key *eckey);
WOLFSSL_API int wc_SetSubjectKeyId(Cert *cert, const char* file);

#ifdef HAVE_NTRU
WOLFSSL_API int wc_SetSubjectKeyIdFromNtruPublicKey(Cert *cert, byte *ntruKey,
                                                    word16 ntruKeySz);
#endif

/* Set the KeyUsage.
 * Value is a string separated tokens with ','. Accepted tokens are :
 * digitalSignature,nonRepudiation,contentCommitment,keyCertSign,cRLSign,
 * dataEncipherment,keyAgreement,keyEncipherment,encipherOnly and decipherOnly.
 *
 * nonRepudiation and contentCommitment are for the same usage.
 */
WOLFSSL_API int wc_SetKeyUsage(Cert *cert, const char *value);

/* Set ExtendedKeyUsage
 * Value is a string separated tokens with ','. Accepted tokens are :
 * any,serverAuth,clientAuth,codeSigning,emailProtection,timeStamping,OCSPSigning
 */
WOLFSSL_API int wc_SetExtKeyUsage(Cert *cert, const char *value);


#ifdef WOLFSSL_EKU_OID
/* Set ExtendedKeyUsage with unique OID
 * oid is expected to be in byte representation
 */
WOLFSSL_API int wc_SetExtKeyUsageOID(Cert *cert, const char *oid, word32 sz,
                                     byte idx, void* heap);
#endif /* WOLFSSL_EKU_OID */
#endif /* WOLFSSL_CERT_EXT */

    #ifdef HAVE_NTRU
        WOLFSSL_API int  wc_MakeNtruCert(Cert*, byte* derBuffer, word32 derSz,
                                     const byte* ntruKey, word16 keySz,
                                     WC_RNG*);
    #endif

#endif /* WOLFSSL_CERT_GEN */

#if defined(WOLFSSL_CERT_EXT) || defined(WOLFSSL_PUB_PEM_TO_DER)
    #ifndef WOLFSSL_PEMPUBKEY_TODER_DEFINED
        #ifndef NO_FILESYSTEM
        /* forward from wolfssl */
        WOLFSSL_API int wolfSSL_PemPubKeyToDer(const char* fileName,
                                               unsigned char* derBuf, int derSz);
        #endif

        /* forward from wolfssl */
        WOLFSSL_API int wolfSSL_PubKeyPemToDer(const unsigned char*, int,
                                               unsigned char*, int);
        #define WOLFSSL_PEMPUBKEY_TODER_DEFINED
    #endif /* WOLFSSL_PEMPUBKEY_TODER_DEFINED */
#endif /* WOLFSSL_CERT_EXT || WOLFSSL_PUB_PEM_TO_DER */

#if defined(WOLFSSL_KEY_GEN) || defined(WOLFSSL_CERT_GEN) || !defined(NO_DSA) \
                             || defined(OPENSSL_EXTRA)
    WOLFSSL_API int wc_DerToPem(const byte* der, word32 derSz, byte* output,
                                word32 outputSz, int type);
    WOLFSSL_API int wc_DerToPemEx(const byte* der, word32 derSz, byte* output,
                                word32 outputSz, byte *cipherIno, int type);
#endif

#ifdef HAVE_ECC
    /* private key helpers */
    WOLFSSL_API int wc_EccPrivateKeyDecode(const byte*, word32*,
                                           ecc_key*, word32);
    WOLFSSL_API int wc_EccKeyToDer(ecc_key*, byte* output, word32 inLen);
    WOLFSSL_API int wc_EccPrivateKeyToDer(ecc_key* key, byte* output,
                                          word32 inLen);
    WOLFSSL_API int wc_EccPrivateKeyToPKCS8(ecc_key* key, byte* output,
                                            word32* outLen);

    /* public key helper */
    WOLFSSL_API int wc_EccPublicKeyDecode(const byte*, word32*,
                                              ecc_key*, word32);
    #if (defined(WOLFSSL_CERT_GEN) || defined(WOLFSSL_KEY_GEN))
        WOLFSSL_API int wc_EccPublicKeyToDer(ecc_key*, byte* output,
                                               word32 inLen, int with_AlgCurve);
    #endif
#endif

#ifdef HAVE_ED25519
    /* private key helpers */
    WOLFSSL_API int wc_Ed25519PrivateKeyDecode(const byte*, word32*,
                                               ed25519_key*, word32);
    WOLFSSL_API int wc_Ed25519KeyToDer(ed25519_key* key, byte* output,
                                       word32 inLen);
    WOLFSSL_API int wc_Ed25519PrivateKeyToDer(ed25519_key* key, byte* output,
                                              word32 inLen);

    /* public key helper */
    WOLFSSL_API int wc_Ed25519PublicKeyDecode(const byte*, word32*,
                                              ed25519_key*, word32);
    #if (defined(WOLFSSL_CERT_GEN) || defined(WOLFSSL_KEY_GEN))
        WOLFSSL_API int wc_Ed25519PublicKeyToDer(ed25519_key*, byte* output,
                                               word32 inLen, int with_AlgCurve);
    #endif
#endif

/* DER encode signature */
WOLFSSL_API word32 wc_EncodeSignature(byte* out, const byte* digest,
                                      word32 digSz, int hashOID);
WOLFSSL_API int wc_GetCTC_HashOID(int type);

WOLFSSL_API int wc_GetPkcs8TraditionalOffset(byte* input,
                                             word32* inOutIdx, word32 sz);
WOLFSSL_API int wc_CreatePKCS8Key(byte* out, word32* outSz,
       byte* key, word32 keySz, int algoID, const byte* curveOID, word32 oidSz);

/* Time */
/* Returns seconds (Epoch/UTC)
 * timePtr: is "time_t", which is typically "long"
 * Example:
    long lTime;
    rc = wc_GetTime(&lTime, (word32)sizeof(lTime));
*/
WOLFSSL_API int wc_GetTime(void* timePtr, word32 timeSize);

#ifdef __cplusplus
    } /* extern "C" */
#endif

#endif /* WOLF_CRYPT_ASN_PUBLIC_H */

