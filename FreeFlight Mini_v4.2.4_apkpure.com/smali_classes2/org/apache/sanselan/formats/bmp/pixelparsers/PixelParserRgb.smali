.class public Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;
.super Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserSimple;
.source "PixelParserRgb.java"


# instance fields
.field private bytecount:I

.field private cached_bit_count:I

.field private cached_byte:I

.field pixelCount:I


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V
    .locals 1
    .param p1, "bhi"    # Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;
    .param p2, "ColorTable"    # [B
    .param p3, "ImageData"    # [B

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserSimple;-><init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V

    .line 33
    iput v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    .line 34
    iput v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_bit_count:I

    .line 35
    iput v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_byte:I

    .line 37
    iput v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->pixelCount:I

    .line 31
    return-void
.end method


# virtual methods
.method public getNextRGB()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/high16 v12, -0x1000000

    .line 41
    iget v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->pixelCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->pixelCount:I

    .line 43
    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v8, v8, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-eq v8, v10, :cond_0

    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v8, v8, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 46
    :cond_0
    iget v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_bit_count:I

    iget-object v9, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v9, v9, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-ge v8, v9, :cond_2

    .line 48
    iget v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_bit_count:I

    if-eqz v8, :cond_1

    .line 49
    new-instance v8, Lorg/apache/sanselan/ImageReadException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Unexpected leftover bits: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget v10, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_bit_count:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v10, v10, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 52
    :cond_1
    iget v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_bit_count:I

    add-int/lit8 v8, v8, 0x8

    iput v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_bit_count:I

    .line 53
    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->imageData:[B

    iget v9, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    iput v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_byte:I

    .line 55
    iget v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    .line 57
    :cond_2
    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v8, v8, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    shl-int v8, v10, v8

    add-int/lit8 v2, v8, -0x1

    .line 58
    .local v2, "cache_mask":I
    iget v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_byte:I

    iget-object v9, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v9, v9, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    rsub-int/lit8 v9, v9, 0x8

    shr-int/2addr v8, v9

    and-int v7, v2, v8

    .line 59
    .local v7, "sample":I
    iget v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_byte:I

    iget-object v9, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v9, v9, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    shl-int/2addr v8, v9

    and-int/lit16 v8, v8, 0xff

    iput v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_byte:I

    .line 60
    iget v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_bit_count:I

    iget-object v9, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v9, v9, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_bit_count:I

    .line 62
    invoke-virtual {p0, v7}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->getColorTableRGB(I)I

    move-result v6

    .line 111
    .end local v2    # "cache_mask":I
    .end local v7    # "sample":I
    .local v6, "rgb":I
    :goto_0
    return v6

    .line 65
    .end local v6    # "rgb":I
    :cond_3
    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v8, v8, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_4

    .line 67
    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->imageData:[B

    iget v9, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v9, v9, 0x0

    aget-byte v8, v8, v9

    and-int/lit16 v7, v8, 0xff

    .line 69
    .restart local v7    # "sample":I
    invoke-virtual {p0, v7}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->getColorTableRGB(I)I

    move-result v6

    .line 71
    .restart local v6    # "rgb":I
    iget v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    goto :goto_0

    .line 74
    .end local v6    # "rgb":I
    .end local v7    # "sample":I
    :cond_4
    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v8, v8, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v9, 0x10

    if-ne v8, v9, :cond_5

    .line 76
    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v9, "Pixel"

    iget-object v10, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->is:Ljava/io/ByteArrayInputStream;

    const-string v11, "BMP Image Data"

    invoke-virtual {v8, v9, v10, v11}, Lorg/apache/sanselan/common/BinaryFileParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v3

    .line 78
    .local v3, "data":I
    shr-int/lit8 v8, v3, 0x0

    and-int/lit8 v8, v8, 0x1f

    shl-int/lit8 v1, v8, 0x3

    .line 79
    .local v1, "blue":I
    shr-int/lit8 v8, v3, 0x5

    and-int/lit8 v8, v8, 0x1f

    shl-int/lit8 v4, v8, 0x3

    .line 80
    .local v4, "green":I
    shr-int/lit8 v8, v3, 0xa

    and-int/lit8 v8, v8, 0x1f

    shl-int/lit8 v5, v8, 0x3

    .line 81
    .local v5, "red":I
    const/16 v0, 0xff

    .line 83
    .local v0, "alpha":I
    shl-int/lit8 v8, v5, 0x10

    or-int/2addr v8, v12

    shl-int/lit8 v9, v4, 0x8

    or-int/2addr v8, v9

    shl-int/lit8 v9, v1, 0x0

    or-int v6, v8, v9

    .line 85
    .restart local v6    # "rgb":I
    iget v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v8, v8, 0x2

    iput v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    goto :goto_0

    .line 88
    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v3    # "data":I
    .end local v4    # "green":I
    .end local v5    # "red":I
    .end local v6    # "rgb":I
    :cond_5
    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v8, v8, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v9, 0x18

    if-ne v8, v9, :cond_6

    .line 90
    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->imageData:[B

    iget v9, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v9, v9, 0x0

    aget-byte v8, v8, v9

    and-int/lit16 v1, v8, 0xff

    .line 91
    .restart local v1    # "blue":I
    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->imageData:[B

    iget v9, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    and-int/lit16 v4, v8, 0xff

    .line 92
    .restart local v4    # "green":I
    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->imageData:[B

    iget v9, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v9, v9, 0x2

    aget-byte v8, v8, v9

    and-int/lit16 v5, v8, 0xff

    .line 93
    .restart local v5    # "red":I
    const/16 v0, 0xff

    .line 95
    .restart local v0    # "alpha":I
    shl-int/lit8 v8, v5, 0x10

    or-int/2addr v8, v12

    shl-int/lit8 v9, v4, 0x8

    or-int/2addr v8, v9

    shl-int/lit8 v9, v1, 0x0

    or-int v6, v8, v9

    .line 97
    .restart local v6    # "rgb":I
    iget v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v8, v8, 0x3

    iput v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    goto/16 :goto_0

    .line 100
    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v4    # "green":I
    .end local v5    # "red":I
    .end local v6    # "rgb":I
    :cond_6
    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v8, v8, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7

    .line 102
    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->imageData:[B

    iget v9, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v9, v9, 0x0

    aget-byte v8, v8, v9

    and-int/lit16 v1, v8, 0xff

    .line 103
    .restart local v1    # "blue":I
    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->imageData:[B

    iget v9, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    and-int/lit16 v4, v8, 0xff

    .line 104
    .restart local v4    # "green":I
    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->imageData:[B

    iget v9, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v9, v9, 0x2

    aget-byte v8, v8, v9

    and-int/lit16 v5, v8, 0xff

    .line 105
    .restart local v5    # "red":I
    const/16 v0, 0xff

    .line 107
    .restart local v0    # "alpha":I
    shl-int/lit8 v8, v5, 0x10

    or-int/2addr v8, v12

    shl-int/lit8 v9, v4, 0x8

    or-int/2addr v8, v9

    shl-int/lit8 v9, v1, 0x0

    or-int v6, v8, v9

    .line 109
    .restart local v6    # "rgb":I
    iget v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v8, v8, 0x4

    iput v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    goto/16 :goto_0

    .line 114
    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v4    # "green":I
    .end local v5    # "red":I
    .end local v6    # "rgb":I
    :cond_7
    new-instance v8, Lorg/apache/sanselan/ImageReadException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Unknown BitsPerPixel: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v10, v10, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public newline()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->cached_bit_count:I

    .line 122
    :goto_0
    iget v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v1, "Pixel"

    iget-object v2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->is:Ljava/io/ByteArrayInputStream;

    const-string v3, "BMP Image Data"

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/common/BinaryFileParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 125
    iget v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;->bytecount:I

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method
