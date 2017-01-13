# 1 "./base/ConvertUTF.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/ConvertUTF.c" 2
# 42 "./base/ConvertUTF.c"
# 1 "./base/ConvertUTF.h" 1
# 94 "./base/ConvertUTF.h"
typedef unsigned long UTF32;
typedef unsigned short UTF16;
typedef unsigned char UTF8;
typedef unsigned char Boolean;
# 106 "./base/ConvertUTF.h"
typedef enum {
        conversionOK,
        sourceExhausted,
        targetExhausted,
        sourceIllegal
} ConversionResult;

typedef enum {
        strictConversion = 0,
        lenientConversion
} ConversionFlags;






ConversionResult ConvertUTF8toUTF16 (
                const UTF8** sourceStart, const UTF8* sourceEnd,
                UTF16** targetStart, UTF16* targetEnd, ConversionFlags flags);

ConversionResult ConvertUTF16toUTF8 (
                const UTF16** sourceStart, const UTF16* sourceEnd,
                UTF8** targetStart, UTF8* targetEnd, ConversionFlags flags);

ConversionResult ConvertUTF8toUTF32 (
                const UTF8** sourceStart, const UTF8* sourceEnd,
                UTF32** targetStart, UTF32* targetEnd, ConversionFlags flags);

ConversionResult ConvertUTF32toUTF8 (
                const UTF32** sourceStart, const UTF32* sourceEnd,
                UTF8** targetStart, UTF8* targetEnd, ConversionFlags flags);

ConversionResult ConvertUTF16toUTF32 (
                const UTF16** sourceStart, const UTF16* sourceEnd,
                UTF32** targetStart, UTF32* targetEnd, ConversionFlags flags);

ConversionResult ConvertUTF32toUTF16 (
                const UTF32** sourceStart, const UTF32* sourceEnd,
                UTF16** targetStart, UTF16* targetEnd, ConversionFlags flags);

Boolean isLegalUTF8Sequence(const UTF8 *source, const UTF8 *sourceEnd);
# 43 "./base/ConvertUTF.c" 2




static const int halfShift = 10;

static const UTF32 halfBase = 0x0010000UL;
static const UTF32 halfMask = 0x3FFUL;
# 61 "./base/ConvertUTF.c"
ConversionResult ConvertUTF32toUTF16 (
        const UTF32** sourceStart, const UTF32* sourceEnd,
        UTF16** targetStart, UTF16* targetEnd, ConversionFlags flags) {
    ConversionResult result = conversionOK;
    const UTF32* source = *sourceStart;
    UTF16* target = *targetStart;
    while (source < sourceEnd) {
        UTF32 ch;
        if (target >= targetEnd) {
            result = targetExhausted; break;
        }
        ch = *source++;
        if (ch <= (UTF32)0x0000FFFF) {

            if (ch >= (UTF32)0xD800 && ch <= (UTF32)0xDFFF) {
                if (flags == strictConversion) {
                    --source;
                    result = sourceIllegal;
                    break;
                } else {
                    *target++ = (UTF32)0x0000FFFD;
                }
            } else {
                *target++ = (UTF16)ch;
            }
        } else if (ch > (UTF32)0x0010FFFF) {
            if (flags == strictConversion) {
                result = sourceIllegal;
            } else {
                *target++ = (UTF32)0x0000FFFD;
            }
        } else {

            if (target + 1 >= targetEnd) {
                --source;
                result = targetExhausted; break;
            }
            ch -= halfBase;
            *target++ = (UTF16)((ch >> halfShift) + (UTF32)0xD800);
            *target++ = (UTF16)((ch & halfMask) + (UTF32)0xDC00);
        }
    }
    *sourceStart = source;
    *targetStart = target;
    return result;
}



ConversionResult ConvertUTF16toUTF32 (
        const UTF16** sourceStart, const UTF16* sourceEnd,
        UTF32** targetStart, UTF32* targetEnd, ConversionFlags flags) {
    ConversionResult result = conversionOK;
    const UTF16* source = *sourceStart;
    UTF32* target = *targetStart;
    UTF32 ch, ch2;
    while (source < sourceEnd) {
        const UTF16* oldSource = source;
        ch = *source++;

        if (ch >= (UTF32)0xD800 && ch <= (UTF32)0xDBFF) {

            if (source < sourceEnd) {
                ch2 = *source;

                if (ch2 >= (UTF32)0xDC00 && ch2 <= (UTF32)0xDFFF) {
                    ch = ((ch - (UTF32)0xD800) << halfShift)
                        + (ch2 - (UTF32)0xDC00) + halfBase;
                    ++source;
                } else if (flags == strictConversion) {
                    --source;
                    result = sourceIllegal;
                    break;
                }
            } else {
                --source;
                result = sourceExhausted;
                break;
            }
        } else if (flags == strictConversion) {

            if (ch >= (UTF32)0xDC00 && ch <= (UTF32)0xDFFF) {
                --source;
                result = sourceIllegal;
                break;
            }
        }
        if (target >= targetEnd) {
            source = oldSource;
            result = targetExhausted; break;
        }
        *target++ = ch;
    }
    *sourceStart = source;
    *targetStart = target;






    return result;
}
# 174 "./base/ConvertUTF.c"
static const char trailingBytesForUTF8[256] = {
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1, 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2, 3,3,3,3,3,3,3,3,4,4,4,4,5,5,5,5
};






static const UTF32 offsetsFromUTF8[6] = { 0x00000000UL, 0x00003080UL, 0x000E2080UL,
                     0x03C82080UL, 0xFA082080UL, 0x82082080UL };
# 200 "./base/ConvertUTF.c"
static const UTF8 firstByteMark[7] = { 0x00, 0x00, 0xC0, 0xE0, 0xF0, 0xF8, 0xFC };
# 214 "./base/ConvertUTF.c"
ConversionResult ConvertUTF16toUTF8 (
        const UTF16** sourceStart, const UTF16* sourceEnd,
        UTF8** targetStart, UTF8* targetEnd, ConversionFlags flags) {
    ConversionResult result = conversionOK;
    const UTF16* source = *sourceStart;
    UTF8* target = *targetStart;
    while (source < sourceEnd) {
        UTF32 ch;
        unsigned short bytesToWrite = 0;
        const UTF32 byteMask = 0xBF;
        const UTF32 byteMark = 0x80;
        const UTF16* oldSource = source;
        ch = *source++;

        if (ch >= (UTF32)0xD800 && ch <= (UTF32)0xDBFF) {

            if (source < sourceEnd) {
                UTF32 ch2 = *source;

                if (ch2 >= (UTF32)0xDC00 && ch2 <= (UTF32)0xDFFF) {
                    ch = ((ch - (UTF32)0xD800) << halfShift)
                        + (ch2 - (UTF32)0xDC00) + halfBase;
                    ++source;
                } else if (flags == strictConversion) {
                    --source;
                    result = sourceIllegal;
                    break;
                }
            } else {
                --source;
                result = sourceExhausted;
                break;
            }
        } else if (flags == strictConversion) {

            if (ch >= (UTF32)0xDC00 && ch <= (UTF32)0xDFFF) {
                --source;
                result = sourceIllegal;
                break;
            }
        }

        if (ch < (UTF32)0x80) { bytesToWrite = 1;
        } else if (ch < (UTF32)0x800) { bytesToWrite = 2;
        } else if (ch < (UTF32)0x10000) { bytesToWrite = 3;
        } else if (ch < (UTF32)0x110000) { bytesToWrite = 4;
        } else { bytesToWrite = 3;
                                            ch = (UTF32)0x0000FFFD;
        }

        target += bytesToWrite;
        if (target > targetEnd) {
            source = oldSource;
            target -= bytesToWrite; result = targetExhausted; break;
        }
        switch (bytesToWrite) {
            case 4: *--target = (UTF8)((ch | byteMark) & byteMask); ch >>= 6;
            case 3: *--target = (UTF8)((ch | byteMark) & byteMask); ch >>= 6;
            case 2: *--target = (UTF8)((ch | byteMark) & byteMask); ch >>= 6;
            case 1: *--target = (UTF8)(ch | firstByteMark[bytesToWrite]);
        }
        target += bytesToWrite;
    }
    *sourceStart = source;
    *targetStart = target;
    return result;
}
# 295 "./base/ConvertUTF.c"
static Boolean isLegalUTF8(const UTF8 *source, int length) {
    UTF8 a;
    const UTF8 *srcptr = source+length;
    switch (length) {
    default: return 0;

    case 4: if ((a = (*--srcptr)) < 0x80 || a > 0xBF) return 0;
    case 3: if ((a = (*--srcptr)) < 0x80 || a > 0xBF) return 0;
    case 2: if ((a = (*--srcptr)) > 0xBF) return 0;

        switch (*source) {

            case 0xE0: if (a < 0xA0) return 0; break;
            case 0xED: if (a > 0x9F) return 0; break;
            case 0xF0: if (a < 0x90) return 0; break;
            case 0xF4: if (a > 0x8F) return 0; break;
            default: if (a < 0x80) return 0;
        }

    case 1: if (*source >= 0x80 && *source < 0xC2) return 0;
    }
    if (*source > 0xF4) return 0;
    return 1;
}







Boolean isLegalUTF8Sequence(const UTF8 *source, const UTF8 *sourceEnd) {
    int length = trailingBytesForUTF8[*source]+1;
    if (source+length > sourceEnd) {
        return 0;
    }
    return isLegalUTF8(source, length);
}



ConversionResult ConvertUTF8toUTF16 (
        const UTF8** sourceStart, const UTF8* sourceEnd,
        UTF16** targetStart, UTF16* targetEnd, ConversionFlags flags) {
    ConversionResult result = conversionOK;
    const UTF8* source = *sourceStart;
    UTF16* target = *targetStart;
    while (source < sourceEnd) {
        UTF32 ch = 0;
        unsigned short extraBytesToRead = trailingBytesForUTF8[*source];
        if (source + extraBytesToRead >= sourceEnd) {
            result = sourceExhausted; break;
        }

        if (! isLegalUTF8(source, extraBytesToRead+1)) {
            result = sourceIllegal;
            break;
        }



        switch (extraBytesToRead) {
            case 5: ch += *source++; ch <<= 6;
            case 4: ch += *source++; ch <<= 6;
            case 3: ch += *source++; ch <<= 6;
            case 2: ch += *source++; ch <<= 6;
            case 1: ch += *source++; ch <<= 6;
            case 0: ch += *source++;
        }
        ch -= offsetsFromUTF8[extraBytesToRead];

        if (target >= targetEnd) {
            source -= (extraBytesToRead+1);
            result = targetExhausted; break;
        }
        if (ch <= (UTF32)0x0000FFFF) {

            if (ch >= (UTF32)0xD800 && ch <= (UTF32)0xDFFF) {
                if (flags == strictConversion) {
                    source -= (extraBytesToRead+1);
                    result = sourceIllegal;
                    break;
                } else {
                    *target++ = (UTF32)0x0000FFFD;
                }
            } else {
                *target++ = (UTF16)ch;
            }
        } else if (ch > (UTF32)0x0010FFFF) {
            if (flags == strictConversion) {
                result = sourceIllegal;
                source -= (extraBytesToRead+1);
                break;
            } else {
                *target++ = (UTF32)0x0000FFFD;
            }
        } else {

            if (target + 1 >= targetEnd) {
                source -= (extraBytesToRead+1);
                result = targetExhausted; break;
            }
            ch -= halfBase;
            *target++ = (UTF16)((ch >> halfShift) + (UTF32)0xD800);
            *target++ = (UTF16)((ch & halfMask) + (UTF32)0xDC00);
        }
    }
    *sourceStart = source;
    *targetStart = target;
    return result;
}



ConversionResult ConvertUTF32toUTF8 (
        const UTF32** sourceStart, const UTF32* sourceEnd,
        UTF8** targetStart, UTF8* targetEnd, ConversionFlags flags) {
    ConversionResult result = conversionOK;
    const UTF32* source = *sourceStart;
    UTF8* target = *targetStart;
    while (source < sourceEnd) {
        UTF32 ch;
        unsigned short bytesToWrite = 0;
        const UTF32 byteMask = 0xBF;
        const UTF32 byteMark = 0x80;
        ch = *source++;
        if (flags == strictConversion ) {

            if (ch >= (UTF32)0xD800 && ch <= (UTF32)0xDFFF) {
                --source;
                result = sourceIllegal;
                break;
            }
        }




        if (ch < (UTF32)0x80) { bytesToWrite = 1;
        } else if (ch < (UTF32)0x800) { bytesToWrite = 2;
        } else if (ch < (UTF32)0x10000) { bytesToWrite = 3;
        } else if (ch <= (UTF32)0x0010FFFF) { bytesToWrite = 4;
        } else { bytesToWrite = 3;
                                            ch = (UTF32)0x0000FFFD;
                                            result = sourceIllegal;
        }

        target += bytesToWrite;
        if (target > targetEnd) {
            --source;
            target -= bytesToWrite; result = targetExhausted; break;
        }
        switch (bytesToWrite) {
            case 4: *--target = (UTF8)((ch | byteMark) & byteMask); ch >>= 6;
            case 3: *--target = (UTF8)((ch | byteMark) & byteMask); ch >>= 6;
            case 2: *--target = (UTF8)((ch | byteMark) & byteMask); ch >>= 6;
            case 1: *--target = (UTF8) (ch | firstByteMark[bytesToWrite]);
        }
        target += bytesToWrite;
    }
    *sourceStart = source;
    *targetStart = target;
    return result;
}



ConversionResult ConvertUTF8toUTF32 (
        const UTF8** sourceStart, const UTF8* sourceEnd,
        UTF32** targetStart, UTF32* targetEnd, ConversionFlags flags) {
    ConversionResult result = conversionOK;
    const UTF8* source = *sourceStart;
    UTF32* target = *targetStart;
    while (source < sourceEnd) {
        UTF32 ch = 0;
        unsigned short extraBytesToRead = trailingBytesForUTF8[*source];
        if (source + extraBytesToRead >= sourceEnd) {
            result = sourceExhausted; break;
        }

        if (! isLegalUTF8(source, extraBytesToRead+1)) {
            result = sourceIllegal;
            break;
        }



        switch (extraBytesToRead) {
            case 5: ch += *source++; ch <<= 6;
            case 4: ch += *source++; ch <<= 6;
            case 3: ch += *source++; ch <<= 6;
            case 2: ch += *source++; ch <<= 6;
            case 1: ch += *source++; ch <<= 6;
            case 0: ch += *source++;
        }
        ch -= offsetsFromUTF8[extraBytesToRead];

        if (target >= targetEnd) {
            source -= (extraBytesToRead+1);
            result = targetExhausted; break;
        }
        if (ch <= (UTF32)0x0010FFFF) {




            if (ch >= (UTF32)0xD800 && ch <= (UTF32)0xDFFF) {
                if (flags == strictConversion) {
                    source -= (extraBytesToRead+1);
                    result = sourceIllegal;
                    break;
                } else {
                    *target++ = (UTF32)0x0000FFFD;
                }
            } else {
                *target++ = ch;
            }
        } else {
            result = sourceIllegal;
            *target++ = (UTF32)0x0000FFFD;
        }
    }
    *sourceStart = source;
    *targetStart = target;
    return result;
}
