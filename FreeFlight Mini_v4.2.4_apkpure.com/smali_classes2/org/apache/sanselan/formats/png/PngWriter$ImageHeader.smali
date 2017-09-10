.class Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;
.super Ljava/lang/Object;
.source "PngWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/png/PngWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageHeader"
.end annotation


# instance fields
.field public final bit_depth:B

.field public final colorType:B

.field public final compressionMethod:B

.field public final filterMethod:B

.field public final height:I

.field public final interlaceMethod:B

.field public final width:I


# direct methods
.method public constructor <init>(IIBBBBB)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bit_depth"    # B
    .param p4, "colorType"    # B
    .param p5, "compressionMethod"    # B
    .param p6, "filterMethod"    # B
    .param p7, "interlaceMethod"    # B

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->width:I

    .line 123
    iput p2, p0, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->height:I

    .line 124
    iput-byte p3, p0, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->bit_depth:B

    .line 125
    iput-byte p4, p0, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->colorType:B

    .line 126
    iput-byte p5, p0, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->compressionMethod:B

    .line 127
    iput-byte p6, p0, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->filterMethod:B

    .line 128
    iput-byte p7, p0, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->interlaceMethod:B

    .line 129
    return-void
.end method
