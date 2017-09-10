.class public abstract Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserSimple;
.super Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;
.source "PixelParserSimple.java"


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V
    .locals 0
    .param p1, "bhi"    # Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;
    .param p2, "ColorTable"    # [B
    .param p3, "ImageData"    # [B

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;-><init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V

    .line 31
    return-void
.end method


# virtual methods
.method public abstract getNextRGB()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract newline()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public processImage(Ljava/awt/image/BufferedImage;)V
    .locals 4
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserSimple;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v3, v3, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->height:I

    add-int/lit8 v2, v3, -0x1

    .local v2, "y":I
    :goto_0
    if-ltz v2, :cond_1

    .line 44
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    iget-object v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserSimple;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v3, v3, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    if-ge v1, v3, :cond_0

    .line 46
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserSimple;->getNextRGB()I

    move-result v0

    .line 48
    .local v0, "rgb":I
    invoke-virtual {p1, v1, v2, v0}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51
    .end local v0    # "rgb":I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserSimple;->newline()V

    .line 42
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 53
    .end local v1    # "x":I
    :cond_1
    return-void
.end method
