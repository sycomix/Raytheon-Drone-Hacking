.class public abstract Lorg/apache/sanselan/formats/png/ScanExpediter;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "ScanExpediter.java"


# instance fields
.field protected final bi:Ljava/awt/image/BufferedImage;

.field protected final bitDepth:I

.field protected final bitsPerPixel:I

.field protected final bytesPerPixel:I

.field protected final colorType:I

.field protected final gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

.field protected final height:I

.field protected final is:Ljava/io/InputStream;

.field protected final pngChunkPLTE:Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;

.field protected final transparencyFilter:Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

.field protected final width:I


# direct methods
.method public constructor <init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;IIILorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;Lorg/apache/sanselan/formats/png/GammaCorrection;Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "is"    # Ljava/io/InputStream;
    .param p4, "bi"    # Ljava/awt/image/BufferedImage;
    .param p5, "color_type"    # I
    .param p6, "bitDepth"    # I
    .param p7, "bitsPerPixel"    # I
    .param p8, "pngChunkPLTE"    # Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;
    .param p9, "gammaCorrection"    # Lorg/apache/sanselan/formats/png/GammaCorrection;
    .param p10, "transparencyFilter"    # Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    .line 54
    iput p1, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->width:I

    .line 55
    iput p2, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->height:I

    .line 56
    iput-object p3, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->is:Ljava/io/InputStream;

    .line 57
    iput-object p4, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->bi:Ljava/awt/image/BufferedImage;

    .line 58
    iput p5, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->colorType:I

    .line 59
    iput p6, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->bitDepth:I

    .line 60
    invoke-virtual {p0, p7}, Lorg/apache/sanselan/formats/png/ScanExpediter;->getBitsToBytesRoundingUp(I)I

    move-result v0

    iput v0, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->bytesPerPixel:I

    .line 61
    iput p7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->bitsPerPixel:I

    .line 62
    iput-object p8, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->pngChunkPLTE:Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;

    .line 63
    iput-object p9, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    .line 64
    iput-object p10, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    .line 65
    return-void
.end method


# virtual methods
.method public abstract drive()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getBitsToBytesRoundingUp(I)I
    .locals 2
    .param p1, "bits"    # I

    .prologue
    .line 69
    div-int/lit8 v0, p1, 0x8

    .line 70
    .local v0, "bytes":I
    rem-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_0

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    :cond_0
    return v0
.end method

.method protected getNextScanline(Ljava/io/InputStream;I[BI)[B
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .param p3, "prev"    # [B
    .param p4, "BytesPerPixel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 235
    .local v0, "filterType":I
    if-gez v0, :cond_0

    .line 236
    new-instance v3, Lorg/apache/sanselan/ImageReadException;

    const-string v4, "PNG: missing filter type"

    invoke-direct {v3, v4}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 238
    :cond_0
    const-string v3, "scanline"

    const-string v4, "PNG: missing image data"

    invoke-virtual {p0, v3, p2, p1, v4}, Lorg/apache/sanselan/formats/png/ScanExpediter;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v1

    .line 241
    .local v1, "scanline":[B
    invoke-virtual {p0, v0, v1, p3, p4}, Lorg/apache/sanselan/formats/png/ScanExpediter;->unfilterScanline(I[B[BI)[B

    move-result-object v2

    .line 244
    .local v2, "unfiltered":[B
    return-object v2
.end method

.method protected final getPixelARGB(IIII)I
    .locals 3
    .param p1, "alpha"    # I
    .param p2, "red"    # I
    .param p3, "green"    # I
    .param p4, "blue"    # I

    .prologue
    .line 77
    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int/lit16 v2, p2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v2, p4, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int v0, v1, v2

    .line 80
    .local v0, "rgb":I
    return v0
.end method

.method protected final getPixelRGB(III)I
    .locals 1
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .prologue
    .line 85
    const/16 v0, 0xff

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/sanselan/formats/png/ScanExpediter;->getPixelARGB(IIII)I

    move-result v0

    return v0
.end method

.method protected getRGB(Lorg/apache/sanselan/formats/png/BitParser;I)I
    .locals 11
    .param p1, "bitParser"    # Lorg/apache/sanselan/formats/png/BitParser;
    .param p2, "pixelIndexInScanline"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 94
    iget v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->colorType:I

    packed-switch v7, :pswitch_data_0

    .line 180
    :pswitch_0
    new-instance v7, Lorg/apache/sanselan/ImageReadException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "PNG: unknown color type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget v9, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->colorType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 98
    :pswitch_1
    invoke-virtual {p1, p2, v8}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v6

    .line 100
    .local v6, "sample":I
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    if-eqz v7, :cond_0

    .line 102
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    invoke-virtual {v7, v6}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v6

    .line 105
    :cond_0
    invoke-virtual {p0, v6, v6, v6}, Lorg/apache/sanselan/formats/png/ScanExpediter;->getPixelRGB(III)I

    move-result v5

    .line 107
    .local v5, "rgb":I
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    if-eqz v7, :cond_1

    .line 108
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    invoke-virtual {v7, v5, v6}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;->filter(II)I

    move-result v5

    .line 177
    .end local v6    # "sample":I
    :cond_1
    :goto_0
    return v5

    .line 115
    .end local v5    # "rgb":I
    :pswitch_2
    invoke-virtual {p1, p2, v8}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v4

    .line 116
    .local v4, "red":I
    invoke-virtual {p1, p2, v9}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v2

    .line 117
    .local v2, "green":I
    invoke-virtual {p1, p2, v10}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v1

    .line 119
    .local v1, "blue":I
    invoke-virtual {p0, v4, v2, v1}, Lorg/apache/sanselan/formats/png/ScanExpediter;->getPixelRGB(III)I

    move-result v5

    .line 121
    .restart local v5    # "rgb":I
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    if-eqz v7, :cond_2

    .line 122
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    const/4 v8, -0x1

    invoke-virtual {v7, v5, v8}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;->filter(II)I

    move-result v5

    .line 124
    :cond_2
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    if-eqz v7, :cond_1

    .line 126
    const/high16 v7, -0x1000000

    and-int/2addr v7, v5

    shr-int/lit8 v0, v7, 0x18

    .line 128
    .local v0, "alpha":I
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    invoke-virtual {v7, v4}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v4

    .line 129
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    invoke-virtual {v7, v2}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v2

    .line 130
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    invoke-virtual {v7, v1}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v1

    .line 131
    invoke-virtual {p0, v0, v4, v2, v1}, Lorg/apache/sanselan/formats/png/ScanExpediter;->getPixelARGB(IIII)I

    move-result v5

    goto :goto_0

    .line 140
    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v2    # "green":I
    .end local v4    # "red":I
    .end local v5    # "rgb":I
    :pswitch_3
    invoke-virtual {p1, p2, v8}, Lorg/apache/sanselan/formats/png/BitParser;->getSample(II)I

    move-result v3

    .line 142
    .local v3, "index":I
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->pngChunkPLTE:Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;

    invoke-virtual {v7, v3}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->getRGB(I)I

    move-result v5

    .line 144
    .restart local v5    # "rgb":I
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    if-eqz v7, :cond_1

    .line 145
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    invoke-virtual {v7, v5, v3}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;->filter(II)I

    move-result v5

    goto :goto_0

    .line 152
    .end local v3    # "index":I
    .end local v5    # "rgb":I
    :pswitch_4
    invoke-virtual {p1, p2, v8}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v6

    .line 153
    .restart local v6    # "sample":I
    invoke-virtual {p1, p2, v9}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v0

    .line 155
    .restart local v0    # "alpha":I
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    if-eqz v7, :cond_3

    .line 156
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    invoke-virtual {v7, v6}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v6

    .line 158
    :cond_3
    invoke-virtual {p0, v0, v6, v6, v6}, Lorg/apache/sanselan/formats/png/ScanExpediter;->getPixelARGB(IIII)I

    move-result v5

    .line 159
    .restart local v5    # "rgb":I
    goto :goto_0

    .line 164
    .end local v0    # "alpha":I
    .end local v5    # "rgb":I
    .end local v6    # "sample":I
    :pswitch_5
    invoke-virtual {p1, p2, v8}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v4

    .line 165
    .restart local v4    # "red":I
    invoke-virtual {p1, p2, v9}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v2

    .line 166
    .restart local v2    # "green":I
    invoke-virtual {p1, p2, v10}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v1

    .line 167
    .restart local v1    # "blue":I
    const/4 v7, 0x3

    invoke-virtual {p1, p2, v7}, Lorg/apache/sanselan/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v0

    .line 169
    .restart local v0    # "alpha":I
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    if-eqz v7, :cond_4

    .line 171
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    invoke-virtual {v7, v4}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v4

    .line 172
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    invoke-virtual {v7, v2}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v2

    .line 173
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    invoke-virtual {v7, v1}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v1

    .line 176
    :cond_4
    invoke-virtual {p0, v0, v4, v2, v1}, Lorg/apache/sanselan/formats/png/ScanExpediter;->getPixelARGB(IIII)I

    move-result v5

    .line 177
    .restart local v5    # "rgb":I
    goto/16 :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected getScanlineFilter(II)Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
    .locals 4
    .param p1, "filter_type"    # I
    .param p2, "BytesPerPixel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    packed-switch p1, :pswitch_data_0

    .line 213
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "PNG: unknown filter_type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :pswitch_0
    new-instance v0, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterNone;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterNone;-><init>()V

    .line 218
    .local v0, "filter":Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
    :goto_0
    return-object v0

    .line 197
    .end local v0    # "filter":Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
    :pswitch_1
    new-instance v0, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterSub;

    invoke-direct {v0, p2}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterSub;-><init>(I)V

    .line 198
    .restart local v0    # "filter":Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
    goto :goto_0

    .line 201
    .end local v0    # "filter":Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
    :pswitch_2
    new-instance v0, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterUp;

    invoke-direct {v0, p2}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterUp;-><init>(I)V

    .line 202
    .restart local v0    # "filter":Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
    goto :goto_0

    .line 205
    .end local v0    # "filter":Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
    :pswitch_3
    new-instance v0, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterAverage;

    invoke-direct {v0, p2}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterAverage;-><init>(I)V

    .line 206
    .restart local v0    # "filter":Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
    goto :goto_0

    .line 209
    .end local v0    # "filter":Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
    :pswitch_4
    new-instance v0, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterPaeth;

    invoke-direct {v0, p2}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterPaeth;-><init>(I)V

    .line 210
    .restart local v0    # "filter":Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected unfilterScanline(I[B[BI)[B
    .locals 3
    .param p1, "filter_type"    # I
    .param p2, "src"    # [B
    .param p3, "prev"    # [B
    .param p4, "BytesPerPixel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0, p1, p4}, Lorg/apache/sanselan/formats/png/ScanExpediter;->getScanlineFilter(II)Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;

    move-result-object v1

    .line 226
    .local v1, "filter":Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
    array-length v2, p2

    new-array v0, v2, [B

    .line 227
    .local v0, "dst":[B
    invoke-virtual {v1, p2, v0, p3}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;->unfilter([B[B[B)V

    .line 228
    return-object v0
.end method
