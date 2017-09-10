.class public Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;
.super Ljava/lang/Object;
.source "BmpHeaderInfo.java"


# instance fields
.field public final bitmapDataOffset:I

.field public final bitmapDataSize:I

.field public final bitmapHeaderSize:I

.field public final bitsPerPixel:I

.field public final colorsImportant:I

.field public final colorsUsed:I

.field public final compression:I

.field public final fileSize:I

.field public final hResolution:I

.field public final height:I

.field public final identifier1:B

.field public final identifier2:B

.field public final planes:I

.field public final reserved:I

.field public final vResolution:I

.field public final width:I


# direct methods
.method public constructor <init>(BBIIIIIIIIIIIIII)V
    .locals 1
    .param p1, "identifier1"    # B
    .param p2, "identifier2"    # B
    .param p3, "fileSize"    # I
    .param p4, "reserved"    # I
    .param p5, "bitmapDataOffset"    # I
    .param p6, "bitmapHeaderSize"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "planes"    # I
    .param p10, "bitsPerPixel"    # I
    .param p11, "compression"    # I
    .param p12, "bitmapDataSize"    # I
    .param p13, "hResolution"    # I
    .param p14, "vResolution"    # I
    .param p15, "colorsUsed"    # I
    .param p16, "colorsImportant"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-byte p1, p0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->identifier1:B

    .line 54
    iput-byte p2, p0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->identifier2:B

    .line 55
    iput p3, p0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->fileSize:I

    .line 56
    iput p4, p0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->reserved:I

    .line 57
    iput p5, p0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    .line 59
    iput p6, p0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitmapHeaderSize:I

    .line 60
    iput p7, p0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    .line 61
    iput p8, p0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->height:I

    .line 62
    iput p9, p0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->planes:I

    .line 63
    iput p10, p0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    .line 64
    iput p11, p0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->compression:I

    .line 65
    iput p12, p0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitmapDataSize:I

    .line 66
    iput p13, p0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->hResolution:I

    .line 67
    iput p14, p0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->vResolution:I

    .line 68
    move/from16 v0, p15

    iput v0, p0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    .line 69
    move/from16 v0, p16

    iput v0, p0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->colorsImportant:I

    .line 70
    return-void
.end method
