.class public Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;
.super Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;
.source "PixelParserRle.java"


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V
    .locals 0
    .param p1, "bhi"    # Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;
    .param p2, "ColorTable"    # [B
    .param p3, "ImageData"    # [B

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;-><init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V

    .line 34
    return-void
.end method

.method private convertDataToSamples(I)[I
    .locals 7
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 51
    iget-object v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v3, v3, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 53
    new-array v0, v6, [I

    .line 54
    .local v0, "rgbs":[I
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->getColorTableRGB(I)I

    move-result v3

    aput v3, v0, v5

    .line 70
    :goto_0
    return-object v0

    .line 57
    .end local v0    # "rgbs":[I
    :cond_0
    iget-object v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v3, v3, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 59
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 60
    .restart local v0    # "rgbs":[I
    shr-int/lit8 v1, p1, 0x4

    .line 61
    .local v1, "sample1":I
    and-int/lit8 v2, p1, 0xf

    .line 62
    .local v2, "sample2":I
    invoke-virtual {p0, v1}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->getColorTableRGB(I)I

    move-result v3

    aput v3, v0, v5

    .line 63
    invoke-virtual {p0, v2}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->getColorTableRGB(I)I

    move-result v3

    aput v3, v0, v6

    goto :goto_0

    .line 67
    .end local v0    # "rgbs":[I
    .end local v1    # "sample1":I
    .end local v2    # "sample2":I
    :cond_1
    new-instance v3, Lorg/apache/sanselan/ImageReadException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "BMP RLE: bad BitsPerPixel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v5, v5, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getSamplesPerByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 41
    const/4 v0, 0x2

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "BMP RLE: bad BitsPerPixel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v2, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processByteOfData([IIIIIILjava/awt/image/DataBuffer;Ljava/awt/image/BufferedImage;)I
    .locals 6
    .param p1, "rgbs"    # [I
    .param p2, "repeat"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "db"    # Ljava/awt/image/DataBuffer;
    .param p8, "bi"    # Ljava/awt/image/BufferedImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "pixels_written":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 82
    if-ltz p3, :cond_0

    if-ge p3, p5, :cond_0

    if-ltz p4, :cond_0

    if-ge p4, p6, :cond_0

    .line 86
    array-length v3, p1

    rem-int v3, v0, v3

    aget v2, p1, v3

    .line 88
    .local v2, "rgb":I
    iget-object v3, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v3, v3, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    mul-int/2addr v3, p4

    add-int/2addr v3, p3

    invoke-virtual {p7, v3, v2}, Ljava/awt/image/DataBuffer;->setElem(II)V

    .line 96
    .end local v2    # "rgb":I
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 97
    add-int/lit8 v1, v1, 0x1

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "skipping bad pixel ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_1
    return v1
.end method


# virtual methods
.method public processImage(Ljava/awt/image/BufferedImage;)V
    .locals 29
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v9

    .line 108
    .local v9, "db":Ljava/awt/image/DataBuffer;
    const/16 v23, 0x0

    .line 109
    .local v23, "count":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v7, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    .line 110
    .local v7, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v8, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->height:I

    .line 111
    .local v8, "height":I
    const/4 v5, 0x0

    .local v5, "x":I
    add-int/lit8 v6, v8, -0x1

    .line 115
    .local v6, "y":I
    const/16 v24, 0x0

    .line 116
    .local v24, "done":Z
    :cond_0
    :goto_0
    if-nez v24, :cond_4

    .line 118
    add-int/lit8 v23, v23, 0x1

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "RLE ("

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v13, ","

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v13, ") a"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->is:Ljava/io/ByteArrayInputStream;

    const-string v14, "BMP: Bad RLE"

    invoke-virtual {v2, v10, v13, v14}, Lorg/apache/sanselan/common/BinaryFileParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v12, v2, 0xff

    .line 125
    .local v12, "a":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "RLE ("

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v13, ","

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v13, ")  b"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->is:Ljava/io/ByteArrayInputStream;

    const-string v14, "BMP: Bad RLE"

    invoke-virtual {v2, v10, v13, v14}, Lorg/apache/sanselan/common/BinaryFileParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v20, v0

    .line 129
    .local v20, "b":I
    if-nez v12, :cond_3

    .line 131
    packed-switch v20, :pswitch_data_0

    .line 161
    invoke-direct/range {p0 .. p0}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->getSamplesPerByte()I

    move-result v19

    .line 162
    .local v19, "SamplesPerByte":I
    div-int v27, v20, v19

    .line 163
    .local v27, "size":I
    rem-int v2, v20, v19

    if-lez v2, :cond_1

    .line 164
    add-int/lit8 v27, v27, 0x1

    .line 165
    :cond_1
    rem-int/lit8 v2, v27, 0x2

    if-eqz v2, :cond_2

    .line 166
    add-int/lit8 v27, v27, 0x1

    .line 172
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v10, "bytes"

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->is:Ljava/io/ByteArrayInputStream;

    const-string v14, "RLE: Absolute Mode"

    move/from16 v0, v27

    invoke-virtual {v2, v10, v0, v13, v14}, Lorg/apache/sanselan/common/BinaryFileParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v21

    .line 175
    .local v21, "bytes":[B
    move/from16 v26, v20

    .line 178
    .local v26, "remaining":I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1
    if-lez v26, :cond_0

    .line 181
    aget-byte v2, v21, v25

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->convertDataToSamples(I)[I

    move-result-object v3

    .line 182
    .local v3, "samples":[I
    move/from16 v0, v26

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .local v4, "towrite":I
    move-object/from16 v2, p0

    move-object/from16 v10, p1

    .line 187
    invoke-direct/range {v2 .. v10}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->processByteOfData([IIIIIILjava/awt/image/DataBuffer;Ljava/awt/image/BufferedImage;)I

    move-result v28

    .line 191
    .local v28, "written":I
    add-int v5, v5, v28

    .line 192
    sub-int v26, v26, v28

    .line 178
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 136
    .end local v3    # "samples":[I
    .end local v4    # "towrite":I
    .end local v19    # "SamplesPerByte":I
    .end local v21    # "bytes":[B
    .end local v25    # "i":I
    .end local v26    # "remaining":I
    .end local v27    # "size":I
    .end local v28    # "written":I
    :pswitch_0
    add-int/lit8 v6, v6, -0x1

    .line 137
    const/4 v5, 0x0

    .line 139
    goto/16 :goto_0

    .line 143
    :pswitch_1
    const/16 v24, 0x1

    .line 144
    goto/16 :goto_0

    .line 148
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v10, "RLE c"

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->is:Ljava/io/ByteArrayInputStream;

    const-string v14, "BMP: Bad RLE"

    invoke-virtual {v2, v10, v13, v14}, Lorg/apache/sanselan/common/BinaryFileParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v22, v0

    .line 151
    .local v22, "c":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v10, "RLE d"

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->is:Ljava/io/ByteArrayInputStream;

    const-string v14, "BMP: Bad RLE"

    invoke-virtual {v2, v10, v13, v14}, Lorg/apache/sanselan/common/BinaryFileParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 156
    goto/16 :goto_0

    .line 201
    .end local v22    # "c":I
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->convertDataToSamples(I)[I

    move-result-object v11

    .local v11, "rgbs":[I
    move-object/from16 v10, p0

    move v13, v5

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, p1

    .line 203
    invoke-direct/range {v10 .. v18}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;->processByteOfData([IIIIIILjava/awt/image/DataBuffer;Ljava/awt/image/BufferedImage;)I

    move-result v2

    add-int/2addr v5, v2

    goto/16 :goto_0

    .line 209
    .end local v11    # "rgbs":[I
    .end local v12    # "a":I
    .end local v20    # "b":I
    :cond_4
    return-void

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
