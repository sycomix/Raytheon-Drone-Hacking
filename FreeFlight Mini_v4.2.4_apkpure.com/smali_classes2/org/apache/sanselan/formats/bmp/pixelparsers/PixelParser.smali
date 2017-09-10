.class public abstract Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;
.super Ljava/lang/Object;
.source "PixelParser.java"


# instance fields
.field protected final bfp:Lorg/apache/sanselan/common/BinaryFileParser;

.field public final bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

.field public final colorTable:[B

.field public final imageData:[B

.field protected final is:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V
    .locals 2
    .param p1, "bhi"    # Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;
    .param p2, "ColorTable"    # [B
    .param p3, "ImageData"    # [B

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    .line 39
    iput-object p2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;->colorTable:[B

    .line 40
    iput-object p3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;->imageData:[B

    .line 42
    new-instance v0, Lorg/apache/sanselan/common/BinaryFileParser;

    const/16 v1, 0x49

    invoke-direct {v0, v1}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>(I)V

    iput-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    .line 43
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;->is:Ljava/io/ByteArrayInputStream;

    .line 44
    return-void
.end method


# virtual methods
.method protected getColorTableRGB(I)I
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 51
    mul-int/lit8 p1, p1, 0x4

    .line 52
    iget-object v5, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;->colorTable:[B

    add-int/lit8 v6, p1, 0x0

    aget-byte v5, v5, v6

    and-int/lit16 v1, v5, 0xff

    .line 53
    .local v1, "blue":I
    iget-object v5, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;->colorTable:[B

    add-int/lit8 v6, p1, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v2, v5, 0xff

    .line 54
    .local v2, "green":I
    iget-object v5, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;->colorTable:[B

    add-int/lit8 v6, p1, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v3, v5, 0xff

    .line 55
    .local v3, "red":I
    const/16 v0, 0xff

    .line 57
    .local v0, "alpha":I
    const/high16 v5, -0x1000000

    shl-int/lit8 v6, v3, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x8

    or-int/2addr v5, v6

    shl-int/lit8 v6, v1, 0x0

    or-int v4, v5, v6

    .line 58
    .local v4, "rgb":I
    return v4
.end method

.method public abstract processImage(Ljava/awt/image/BufferedImage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
