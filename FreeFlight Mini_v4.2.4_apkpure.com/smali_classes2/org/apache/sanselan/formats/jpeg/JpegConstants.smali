.class public interface abstract Lorg/apache/sanselan/formats/jpeg/JpegConstants;
.super Ljava/lang/Object;
.source "JpegConstants.java"


# static fields
.field public static final CONST_8BIM:[B

.field public static final EOI:[B

.field public static final EXIF_IDENTIFIER_CODE:[B

.field public static final JFIF0_SIGNATURE:[B

.field public static final JFIF0_SIGNATURE_ALTERNATIVE:[B

.field public static final JFIFMarker:I = 0xffe0

.field public static final JPEG_APP0:I = 0xe0

.field public static final JPEG_APP0_Marker:I = 0xffe0

.field public static final JPEG_APP13_Marker:I = 0xffed

.field public static final JPEG_APP14_Marker:I = 0xffee

.field public static final JPEG_APP15_Marker:I = 0xffef

.field public static final JPEG_APP1_Marker:I = 0xffe1

.field public static final JPEG_APP2_Marker:I = 0xffe2

.field public static final MARKERS:[I

.field public static final MAX_SEGMENT_SIZE:I = 0xffff

.field public static final PHOTOSHOP_IDENTIFICATION_STRING:[B

.field public static final SOF0Marker:I = 0xffc0

.field public static final SOF10Marker:I = 0xffca

.field public static final SOF11Marker:I = 0xffcb

.field public static final SOF12Marker:I = 0xffcc

.field public static final SOF13Marker:I = 0xffcd

.field public static final SOF14Marker:I = 0xffce

.field public static final SOF15Marker:I = 0xffcf

.field public static final SOF1Marker:I = 0xffc1

.field public static final SOF2Marker:I = 0xffc2

.field public static final SOF3Marker:I = 0xffc3

.field public static final SOF4Marker:I = 0xffc4

.field public static final SOF5Marker:I = 0xffc5

.field public static final SOF6Marker:I = 0xffc6

.field public static final SOF7Marker:I = 0xffc7

.field public static final SOF8Marker:I = 0xffc8

.field public static final SOF9Marker:I = 0xffc9

.field public static final SOI:[B

.field public static final SOS_Marker:I = 0xffda

.field public static final XMP_IDENTIFIER:[B

.field public static final icc_profile_label:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 23
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/JpegConstants;->JFIF0_SIGNATURE:[B

    .line 30
    new-array v0, v3, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/JpegConstants;->JFIF0_SIGNATURE_ALTERNATIVE:[B

    .line 38
    new-array v0, v2, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/JpegConstants;->EXIF_IDENTIFIER_CODE:[B

    .line 45
    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/JpegConstants;->XMP_IDENTIFIER:[B

    .line 77
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/JpegConstants;->SOI:[B

    .line 78
    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/JpegConstants;->EOI:[B

    .line 111
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/JpegConstants;->MARKERS:[I

    .line 119
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/JpegConstants;->icc_profile_label:[B

    .line 122
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/JpegConstants;->PHOTOSHOP_IDENTIFICATION_STRING:[B

    .line 138
    new-array v0, v2, [B

    fill-array-data v0, :array_9

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/JpegConstants;->CONST_8BIM:[B

    return-void

    .line 23
    :array_0
    .array-data 1
        0x4at
        0x46t
        0x49t
        0x46t
        0x0t
    .end array-data

    .line 30
    nop

    :array_1
    .array-data 1
        0x4at
        0x46t
        0x49t
        0x46t
        0x20t
    .end array-data

    .line 38
    nop

    :array_2
    .array-data 1
        0x45t
        0x78t
        0x69t
        0x66t
    .end array-data

    .line 45
    :array_3
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x3at
        0x2ft
        0x2ft
        0x6et
        0x73t
        0x2et
        0x61t
        0x64t
        0x6ft
        0x62t
        0x65t
        0x2et
        0x63t
        0x6ft
        0x6dt
        0x2ft
        0x78t
        0x61t
        0x70t
        0x2ft
        0x31t
        0x2et
        0x30t
        0x2ft
        0x0t
    .end array-data

    .line 77
    nop

    :array_4
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    .line 78
    nop

    :array_5
    .array-data 1
        -0x1t
        -0x27t
    .end array-data

    .line 111
    nop

    :array_6
    .array-data 4
        0xffda
        0xe0
        0xffe0
        0xffe1
        0xffe2
        0xffed
        0xffee
        0xffef
        0xffe0
        0xffc0
        0xffc1
        0xffc2
        0xffc3
        0xffc4
        0xffc5
        0xffc6
        0xffc7
        0xffc8
        0xffc9
        0xffca
        0xffcb
        0xffcc
        0xffcd
        0xffce
        0xffcf
    .end array-data

    .line 119
    :array_7
    .array-data 1
        0x49t
        0x43t
        0x43t
        0x5ft
        0x50t
        0x52t
        0x4ft
        0x46t
        0x49t
        0x4ct
        0x45t
        0x0t
    .end array-data

    .line 122
    :array_8
    .array-data 1
        0x50t
        0x68t
        0x6ft
        0x74t
        0x6ft
        0x73t
        0x68t
        0x6ft
        0x70t
        0x20t
        0x33t
        0x2et
        0x30t
        0x0t
    .end array-data

    .line 138
    nop

    :array_9
    .array-data 1
        0x38t
        0x42t
        0x49t
        0x4dt
    .end array-data
.end method
