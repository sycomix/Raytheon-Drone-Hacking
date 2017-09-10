.class public Lorg/apache/sanselan/formats/png/ScanExpediterSimple;
.super Lorg/apache/sanselan/formats/png/ScanExpediter;
.source "ScanExpediterSimple.java"


# direct methods
.method public constructor <init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;IIILorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;Lorg/apache/sanselan/formats/png/GammaCorrection;Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "is"    # Ljava/io/InputStream;
    .param p4, "bi"    # Ljava/awt/image/BufferedImage;
    .param p5, "color_type"    # I
    .param p6, "BitDepth"    # I
    .param p7, "bitsPerPixel"    # I
    .param p8, "pngChunkPLTE"    # Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;
    .param p9, "gammaCorrection"    # Lorg/apache/sanselan/formats/png/GammaCorrection;
    .param p10, "transparencyFilter"    # Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    .prologue
    .line 35
    invoke-direct/range {p0 .. p10}, Lorg/apache/sanselan/formats/png/ScanExpediter;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;IIILorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;Lorg/apache/sanselan/formats/png/GammaCorrection;Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;)V

    .line 37
    return-void
.end method


# virtual methods
.method public drive()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget v8, p0, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->bitsPerPixel:I

    iget v9, p0, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->width:I

    mul-int v1, v8, v9

    .line 42
    .local v1, "bitsPerScanLine":I
    invoke-virtual {p0, v1}, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->getBitsToBytesRoundingUp(I)I

    move-result v2

    .line 43
    .local v2, "pixelBytesPerScanLine":I
    const/4 v3, 0x0

    .line 45
    .local v3, "prev":[B
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_0
    iget v8, p0, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->height:I

    if-ge v7, v8, :cond_1

    .line 47
    iget-object v8, p0, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->is:Ljava/io/InputStream;

    iget v9, p0, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->bytesPerPixel:I

    invoke-virtual {p0, v8, v2, v3, v9}, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->getNextScanline(Ljava/io/InputStream;I[BI)[B

    move-result-object v5

    .line 50
    .local v5, "unfiltered":[B
    move-object v3, v5

    .line 52
    new-instance v0, Lorg/apache/sanselan/formats/png/BitParser;

    iget v8, p0, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->bitsPerPixel:I

    iget v9, p0, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->bitDepth:I

    invoke-direct {v0, v5, v8, v9}, Lorg/apache/sanselan/formats/png/BitParser;-><init>([BII)V

    .line 55
    .local v0, "bitParser":Lorg/apache/sanselan/formats/png/BitParser;
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_1
    iget v8, p0, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->width:I

    if-ge v6, v8, :cond_0

    .line 57
    invoke-virtual {p0, v0, v6}, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->getRGB(Lorg/apache/sanselan/formats/png/BitParser;I)I

    move-result v4

    .line 59
    .local v4, "rgb":I
    iget-object v8, p0, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;->bi:Ljava/awt/image/BufferedImage;

    invoke-virtual {v8, v6, v7, v4}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    .line 55
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 45
    .end local v4    # "rgb":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "bitParser":Lorg/apache/sanselan/formats/png/BitParser;
    .end local v5    # "unfiltered":[B
    .end local v6    # "x":I
    :cond_1
    return-void
.end method
