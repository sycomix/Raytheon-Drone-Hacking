.class public interface abstract Lorg/apache/sanselan/formats/png/PngConstants;
.super Ljava/lang/Object;
.source "PngConstants.java"

# interfaces
.implements Lorg/apache/sanselan/SanselanConstants;


# static fields
.field public static final COLOR_TYPE_GREYSCALE:I = 0x0

.field public static final COLOR_TYPE_GREYSCALE_WITH_ALPHA:I = 0x4

.field public static final COLOR_TYPE_INDEXED_COLOR:I = 0x3

.field public static final COLOR_TYPE_TRUE_COLOR:I = 0x2

.field public static final COLOR_TYPE_TRUE_COLOR_WITH_ALPHA:I = 0x6

.field public static final COMPRESSION_DEFLATE_INFLATE:I = 0x0

.field public static final COMPRESSION_TYPE_INFLATE_DEFLATE:B = 0x0t

.field public static final FILTER_METHOD_ADAPTIVE:B = 0x0t

.field public static final FILTER_TYPE_AVERAGE:B = 0x3t

.field public static final FILTER_TYPE_NONE:B = 0x0t

.field public static final FILTER_TYPE_PAETH:B = 0x4t

.field public static final FILTER_TYPE_SUB:B = 0x1t

.field public static final FILTER_TYPE_UP:B = 0x2t

.field public static final IDAT:I

.field public static final IDAT_CHUNK_TYPE:[B

.field public static final IEND:I

.field public static final IEND_CHUNK_TYPE:[B

.field public static final IHDR:I

.field public static final IHDR_CHUNK_TYPE:[B

.field public static final INTERLACE_METHOD_ADAM7:B = 0x1t

.field public static final INTERLACE_METHOD_NONE:B = 0x0t

.field public static final PARAM_KEY_PNG_BIT_DEPTH:Ljava/lang/String; = "PNG_BIT_DEPTH"

.field public static final PARAM_KEY_PNG_FORCE_INDEXED_COLOR:Ljava/lang/String; = "PNG_FORCE_INDEXED_COLOR"

.field public static final PARAM_KEY_PNG_FORCE_TRUE_COLOR:Ljava/lang/String; = "PNG_FORCE_TRUE_COLOR"

.field public static final PARAM_KEY_PNG_TEXT_CHUNKS:Ljava/lang/String; = "PNG_TEXT_CHUNKS"

.field public static final PLTE:I

.field public static final PLTE_CHUNK_TYPE:[B

.field public static final PNG_Signature:[B

.field public static final XMP_KEYWORD:Ljava/lang/String; = "XML:com.adobe.xmp"

.field public static final gAMA:I

.field public static final iCCP:I

.field public static final iTXt:I

.field public static final iTXt_CHUNK_TYPE:[B

.field public static final pHYs:I

.field public static final sRGB:I

.field public static final tEXt:I

.field public static final tEXt_CHUNK_TYPE:[B

.field public static final tRNS:I

.field public static final zTXt:I

.field public static final zTXt_CHUNK_TYPE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x44

    const/16 v6, 0x41

    const/16 v5, 0x54

    const/16 v4, 0x74

    const/4 v1, 0x4

    .line 26
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/sanselan/formats/png/PngConstants;->IHDR_CHUNK_TYPE:[B

    .line 27
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/sanselan/formats/png/PngConstants;->PLTE_CHUNK_TYPE:[B

    .line 28
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/sanselan/formats/png/PngConstants;->IEND_CHUNK_TYPE:[B

    .line 29
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/sanselan/formats/png/PngConstants;->IDAT_CHUNK_TYPE:[B

    .line 30
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/sanselan/formats/png/PngConstants;->iTXt_CHUNK_TYPE:[B

    .line 36
    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lorg/apache/sanselan/formats/png/PngConstants;->tEXt_CHUNK_TYPE:[B

    .line 42
    new-array v0, v1, [B

    fill-array-data v0, :array_6

    sput-object v0, Lorg/apache/sanselan/formats/png/PngConstants;->zTXt_CHUNK_TYPE:[B

    .line 49
    const/16 v0, 0x49

    const/16 v1, 0x45

    const/16 v2, 0x4e

    invoke-static {v0, v1, v2, v7}, Lorg/apache/sanselan/formats/png/PngImageParser;->CharsToQuad(CCCC)I

    move-result v0

    sput v0, Lorg/apache/sanselan/formats/png/PngConstants;->IEND:I

    .line 51
    const/16 v0, 0x49

    const/16 v1, 0x48

    const/16 v2, 0x52

    invoke-static {v0, v1, v7, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->CharsToQuad(CCCC)I

    move-result v0

    sput v0, Lorg/apache/sanselan/formats/png/PngConstants;->IHDR:I

    .line 53
    const/16 v0, 0x69

    const/16 v1, 0x43

    const/16 v2, 0x43

    const/16 v3, 0x50

    invoke-static {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/png/PngImageParser;->CharsToQuad(CCCC)I

    move-result v0

    sput v0, Lorg/apache/sanselan/formats/png/PngConstants;->iCCP:I

    .line 55
    const/16 v0, 0x45

    const/16 v1, 0x58

    invoke-static {v4, v0, v1, v4}, Lorg/apache/sanselan/formats/png/PngImageParser;->CharsToQuad(CCCC)I

    move-result v0

    sput v0, Lorg/apache/sanselan/formats/png/PngConstants;->tEXt:I

    .line 57
    const/16 v0, 0x7a

    const/16 v1, 0x58

    invoke-static {v0, v5, v1, v4}, Lorg/apache/sanselan/formats/png/PngImageParser;->CharsToQuad(CCCC)I

    move-result v0

    sput v0, Lorg/apache/sanselan/formats/png/PngConstants;->zTXt:I

    .line 59
    const/16 v0, 0x70

    const/16 v1, 0x48

    const/16 v2, 0x59

    const/16 v3, 0x73

    invoke-static {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/png/PngImageParser;->CharsToQuad(CCCC)I

    move-result v0

    sput v0, Lorg/apache/sanselan/formats/png/PngConstants;->pHYs:I

    .line 61
    const/16 v0, 0x50

    const/16 v1, 0x4c

    const/16 v2, 0x45

    invoke-static {v0, v1, v5, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->CharsToQuad(CCCC)I

    move-result v0

    sput v0, Lorg/apache/sanselan/formats/png/PngConstants;->PLTE:I

    .line 63
    const/16 v0, 0x49

    invoke-static {v0, v7, v6, v5}, Lorg/apache/sanselan/formats/png/PngImageParser;->CharsToQuad(CCCC)I

    move-result v0

    sput v0, Lorg/apache/sanselan/formats/png/PngConstants;->IDAT:I

    .line 65
    const/16 v0, 0x52

    const/16 v1, 0x4e

    const/16 v2, 0x53

    invoke-static {v4, v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->CharsToQuad(CCCC)I

    move-result v0

    sput v0, Lorg/apache/sanselan/formats/png/PngConstants;->tRNS:I

    .line 67
    const/16 v0, 0x67

    const/16 v1, 0x4d

    invoke-static {v0, v6, v1, v6}, Lorg/apache/sanselan/formats/png/PngImageParser;->CharsToQuad(CCCC)I

    move-result v0

    sput v0, Lorg/apache/sanselan/formats/png/PngConstants;->gAMA:I

    .line 69
    const/16 v0, 0x73

    const/16 v1, 0x52

    const/16 v2, 0x47

    const/16 v3, 0x42

    invoke-static {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/png/PngImageParser;->CharsToQuad(CCCC)I

    move-result v0

    sput v0, Lorg/apache/sanselan/formats/png/PngConstants;->sRGB:I

    .line 73
    const/16 v0, 0x69

    const/16 v1, 0x58

    invoke-static {v0, v5, v1, v4}, Lorg/apache/sanselan/formats/png/PngImageParser;->CharsToQuad(CCCC)I

    move-result v0

    sput v0, Lorg/apache/sanselan/formats/png/PngConstants;->iTXt:I

    .line 76
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Lorg/apache/sanselan/formats/png/PngConstants;->PNG_Signature:[B

    return-void

    .line 26
    :array_0
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    .line 27
    :array_1
    .array-data 1
        0x50t
        0x4ct
        0x54t
        0x45t
    .end array-data

    .line 28
    :array_2
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    .line 29
    :array_3
    .array-data 1
        0x49t
        0x44t
        0x41t
        0x54t
    .end array-data

    .line 30
    :array_4
    .array-data 1
        0x69t
        0x54t
        0x58t
        0x74t
    .end array-data

    .line 36
    :array_5
    .array-data 1
        0x74t
        0x45t
        0x58t
        0x74t
    .end array-data

    .line 42
    :array_6
    .array-data 1
        0x7at
        0x54t
        0x58t
        0x74t
    .end array-data

    .line 76
    :array_7
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method
