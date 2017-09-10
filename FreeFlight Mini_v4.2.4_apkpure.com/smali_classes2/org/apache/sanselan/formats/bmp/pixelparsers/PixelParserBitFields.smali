.class public Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;
.super Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserSimple;
.source "PixelParserBitFields.java"


# instance fields
.field private final blueMask:I

.field private final blueShift:I

.field private bytecount:I

.field private final greenMask:I

.field private final greenShift:I

.field private final redMask:I

.field private final redShift:I


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V
    .locals 4
    .param p1, "bhi"    # Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;
    .param p2, "ColorTable"    # [B
    .param p3, "ImageData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserSimple;-><init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V

    .line 76
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    .line 42
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 44
    .local v0, "bais":Ljava/io/InputStream;
    iget-object v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v2, "redMask"

    const-string v3, "BMP BI_BITFIELDS Bad Color Table"

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/sanselan/common/BinaryFileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->redMask:I

    .line 46
    iget-object v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v2, "greenMask"

    const-string v3, "BMP BI_BITFIELDS Bad Color Table"

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/sanselan/common/BinaryFileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->greenMask:I

    .line 48
    iget-object v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v2, "blueMask"

    const-string v3, "BMP BI_BITFIELDS Bad Color Table"

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/sanselan/common/BinaryFileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->blueMask:I

    .line 51
    iget v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->redMask:I

    invoke-direct {p0, v1}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->getMaskShift(I)I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->redShift:I

    .line 52
    iget v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->greenMask:I

    invoke-direct {p0, v1}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->getMaskShift(I)I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->greenShift:I

    .line 53
    iget v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->blueMask:I

    invoke-direct {p0, v1}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->getMaskShift(I)I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->blueShift:I

    .line 54
    return-void
.end method

.method private getMaskShift(I)I
    .locals 5
    .param p1, "mask"    # I

    .prologue
    const v4, 0x7fffffff

    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, "trailingZeroes":I
    :goto_0
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_0

    .line 62
    shr-int/lit8 v2, p1, 0x1

    and-int p1, v4, v2

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 68
    .local v0, "maskLength":I
    :goto_1
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 70
    shr-int/lit8 v2, p1, 0x1

    and-int p1, v4, v2

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    :cond_1
    rsub-int/lit8 v2, v0, 0x8

    sub-int v2, v1, v2

    return v2
.end method


# virtual methods
.method public getNextRGB()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v6, v6, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 84
    iget-object v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->imageData:[B

    iget v7, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    add-int/lit8 v7, v7, 0x0

    aget-byte v6, v6, v7

    and-int/lit16 v2, v6, 0xff

    .line 85
    .local v2, "data":I
    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    .line 106
    :goto_0
    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->redMask:I

    and-int v4, v6, v2

    .line 107
    .local v4, "red":I
    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->greenMask:I

    and-int v3, v6, v2

    .line 108
    .local v3, "green":I
    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->blueMask:I

    and-int v1, v6, v2

    .line 110
    .local v1, "blue":I
    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->redShift:I

    if-ltz v6, :cond_4

    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->redShift:I

    shr-int/2addr v4, v6

    .line 111
    :goto_1
    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->greenShift:I

    if-ltz v6, :cond_5

    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->greenShift:I

    shr-int/2addr v3, v6

    .line 112
    :goto_2
    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->blueShift:I

    if-ltz v6, :cond_6

    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->blueShift:I

    shr-int/2addr v1, v6

    .line 114
    :goto_3
    const/16 v0, 0xff

    .line 116
    .local v0, "alpha":I
    const/high16 v6, -0x1000000

    shl-int/lit8 v7, v4, 0x10

    or-int/2addr v6, v7

    shl-int/lit8 v7, v3, 0x8

    or-int/2addr v6, v7

    shl-int/lit8 v7, v1, 0x0

    or-int v5, v6, v7

    .line 118
    .local v5, "rgb":I
    return v5

    .line 87
    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v2    # "data":I
    .end local v3    # "green":I
    .end local v4    # "red":I
    .end local v5    # "rgb":I
    :cond_0
    iget-object v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v6, v6, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v7, 0x18

    if-ne v6, v7, :cond_1

    .line 89
    iget-object v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v7, "Pixel"

    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->is:Ljava/io/ByteArrayInputStream;

    const-string v9, "BMP Image Data"

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/sanselan/common/BinaryFileParser;->read3Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v2

    .line 90
    .restart local v2    # "data":I
    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    add-int/lit8 v6, v6, 0x3

    iput v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    goto :goto_0

    .line 92
    .end local v2    # "data":I
    :cond_1
    iget-object v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v6, v6, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    .line 94
    iget-object v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v7, "Pixel"

    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->is:Ljava/io/ByteArrayInputStream;

    const-string v9, "BMP Image Data"

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/sanselan/common/BinaryFileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v2

    .line 95
    .restart local v2    # "data":I
    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    add-int/lit8 v6, v6, 0x4

    iput v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    goto :goto_0

    .line 97
    .end local v2    # "data":I
    :cond_2
    iget-object v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v6, v6, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v7, 0x10

    if-ne v6, v7, :cond_3

    .line 99
    iget-object v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v7, "Pixel"

    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->is:Ljava/io/ByteArrayInputStream;

    const-string v9, "BMP Image Data"

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/sanselan/common/BinaryFileParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v2

    .line 100
    .restart local v2    # "data":I
    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    goto :goto_0

    .line 103
    .end local v2    # "data":I
    :cond_3
    new-instance v6, Lorg/apache/sanselan/ImageReadException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unknown BitsPerPixel: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    iget v8, v8, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 110
    .restart local v1    # "blue":I
    .restart local v2    # "data":I
    .restart local v3    # "green":I
    .restart local v4    # "red":I
    :cond_4
    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->redShift:I

    neg-int v6, v6

    shl-int/2addr v4, v6

    goto/16 :goto_1

    .line 111
    :cond_5
    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->greenShift:I

    neg-int v6, v6

    shl-int/2addr v3, v6

    goto/16 :goto_2

    .line 112
    :cond_6
    iget v6, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->blueShift:I

    neg-int v6, v6

    shl-int/2addr v1, v6

    goto/16 :goto_3
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
    .line 123
    :goto_0
    iget v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bfp:Lorg/apache/sanselan/common/BinaryFileParser;

    const-string v1, "Pixel"

    iget-object v2, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->is:Ljava/io/ByteArrayInputStream;

    const-string v3, "BMP Image Data"

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/common/BinaryFileParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 126
    iget v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;->bytecount:I

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method
