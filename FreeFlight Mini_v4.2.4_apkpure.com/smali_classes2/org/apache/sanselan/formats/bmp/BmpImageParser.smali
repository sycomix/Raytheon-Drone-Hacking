.class public Lorg/apache/sanselan/formats/bmp/BmpImageParser;
.super Lorg/apache/sanselan/ImageParser;
.source "BmpImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final BITMAP_FILE_HEADER_SIZE:I = 0xe

.field private static final BITMAP_INFO_HEADER_SIZE:I = 0x28

.field private static final BI_BITFIELDS:I = 0x3

.field private static final BI_RGB:I = 0x0

.field private static final BI_RLE4:I = 0x2

.field private static final BI_RLE8:I = 0x1

.field private static final BMP_HEADER_SIGNATURE:[B

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".bmp"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".bmp"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->BMP_HEADER_SIGNATURE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x42t
        0x4dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/sanselan/ImageParser;-><init>()V

    .line 57
    const/16 v0, 0x49

    invoke-super {p0, v0}, Lorg/apache/sanselan/ImageParser;->setByteOrder(I)V

    .line 58
    return-void
.end method

.method private getBmpTypeDescription(II)Ljava/lang/String;
    .locals 5
    .param p1, "Identifier1"    # I
    .param p2, "Identifier2"    # I

    .prologue
    const/16 v4, 0x50

    const/16 v3, 0x49

    const/16 v2, 0x42

    const/16 v1, 0x43

    .line 451
    if-ne p1, v2, :cond_0

    const/16 v0, 0x4d

    if-ne p2, v0, :cond_0

    .line 452
    const-string v0, "Windows 3.1x, 95, NT,"

    .line 464
    :goto_0
    return-object v0

    .line 453
    :cond_0
    if-ne p1, v2, :cond_1

    const/16 v0, 0x41

    if-ne p2, v0, :cond_1

    .line 454
    const-string v0, "OS/2 Bitmap Array"

    goto :goto_0

    .line 455
    :cond_1
    if-ne p1, v1, :cond_2

    if-ne p2, v3, :cond_2

    .line 456
    const-string v0, "OS/2 Color Icon"

    goto :goto_0

    .line 457
    :cond_2
    if-ne p1, v1, :cond_3

    if-ne p2, v4, :cond_3

    .line 458
    const-string v0, "OS/2 Color Pointer"

    goto :goto_0

    .line 459
    :cond_3
    if-ne p1, v3, :cond_4

    if-ne p2, v1, :cond_4

    .line 460
    const-string v0, "OS/2 Icon"

    goto :goto_0

    .line 461
    :cond_4
    if-ne p1, v4, :cond_5

    const/16 v0, 0x54

    if-ne p2, v0, :cond_5

    .line 462
    const-string v0, "OS/2 Pointer"

    goto :goto_0

    .line 464
    :cond_5
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method private getRLEBytes(Ljava/io/InputStream;I)[B
    .locals 10
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "RLESamplesPerByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 160
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 161
    .local v6, "done":Z
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v6, :cond_3

    .line 163
    const-string v8, "RLE a"

    const-string v9, "BMP: Bad RLE"

    invoke-virtual {p0, v8, p1, v9}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v8

    and-int/lit16 v0, v8, 0xff

    .line 164
    .local v0, "a":I
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 165
    const-string v8, "RLE b"

    const-string v9, "BMP: Bad RLE"

    invoke-virtual {p0, v8, p1, v9}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v8

    and-int/lit16 v1, v8, 0xff

    .line 166
    .local v1, "b":I
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 168
    if-nez v0, :cond_0

    .line 170
    packed-switch v1, :pswitch_data_0

    .line 190
    div-int v7, v1, p2

    .line 191
    .local v7, "size":I
    rem-int v8, v1, p2

    if-lez v8, :cond_1

    .line 192
    add-int/lit8 v7, v7, 0x1

    .line 193
    :cond_1
    rem-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_2

    .line 194
    add-int/lit8 v7, v7, 0x1

    .line 202
    :cond_2
    const-string v8, "bytes"

    const-string v9, "RLE: Absolute Mode"

    invoke-virtual {p0, v8, v7, p1, v9}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v3

    .line 204
    .local v3, "bytes":[B
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 177
    .end local v3    # "bytes":[B
    .end local v7    # "size":I
    :pswitch_1
    const/4 v6, 0x1

    .line 178
    goto :goto_0

    .line 182
    :pswitch_2
    const-string v8, "RLE c"

    const-string v9, "BMP: Bad RLE"

    invoke-virtual {p0, v8, p1, v9}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v8

    and-int/lit16 v4, v8, 0xff

    .line 183
    .local v4, "c":I
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 184
    const-string v8, "RLE d"

    const-string v9, "BMP: Bad RLE"

    invoke-virtual {p0, v8, p1, v9}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v8

    and-int/lit16 v5, v8, 0xff

    .line 185
    .local v5, "d":I
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 211
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v4    # "c":I
    .end local v5    # "d":I
    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    return-object v8

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private readBmpHeaderInfo(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;Z)Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;
    .locals 25
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "formatCompliance"    # Lorg/apache/sanselan/FormatCompliance;
    .param p3, "verbose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const-string v21, "Identifier1"

    const-string v22, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    .line 92
    .local v5, "identifier1":B
    const-string v21, "Identifier2"

    const-string v22, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    .line 94
    .local v6, "identifier2":B
    if-eqz p2, :cond_0

    .line 96
    const-string v21, "Signature"

    sget-object v22, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->BMP_HEADER_SIGNATURE:[B

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v5, v23, v24

    const/16 v24, 0x1

    aput-byte v6, v23, v24

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/FormatCompliance;->compare_bytes(Ljava/lang/String;[B[B)Z

    .line 100
    :cond_0
    const-string v21, "File Size"

    const-string v22, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v7

    .line 101
    .local v7, "fileSize":I
    const-string v21, "Reserved"

    const-string v22, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v8

    .line 102
    .local v8, "reserved":I
    const-string v21, "Bitmap Data Offset"

    const-string v22, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v9

    .line 105
    .local v9, "bitmapDataOffset":I
    const-string v21, "Bitmap Header Size"

    const-string v22, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v10

    .line 107
    .local v10, "bitmapHeaderSize":I
    const-string v21, "Width"

    const-string v22, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v11

    .line 108
    .local v11, "width":I
    const-string v21, "Height"

    const-string v22, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v12

    .line 109
    .local v12, "height":I
    const-string v21, "Planes"

    const-string v22, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v13

    .line 110
    .local v13, "planes":I
    const-string v21, "Bits Per Pixel"

    const-string v22, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v14

    .line 112
    .local v14, "bitsPerPixel":I
    const-string v21, "Compression"

    const-string v22, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v15

    .line 113
    .local v15, "compression":I
    const-string v21, "Bitmap Data Size"

    const-string v22, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v16

    .line 115
    .local v16, "bitmapDataSize":I
    const-string v21, "HResolution"

    const-string v22, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v17

    .line 116
    .local v17, "hResolution":I
    const-string v21, "VResolution"

    const-string v22, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v18

    .line 117
    .local v18, "vResolution":I
    const-string v21, "ColorsUsed"

    const-string v22, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v19

    .line 118
    .local v19, "colorsUsed":I
    const-string v21, "ColorsImportant"

    const-string v22, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v20

    .line 121
    .local v20, "colorsImportant":I
    if-eqz p3, :cond_1

    .line 123
    const-string v21, "identifier1"

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v5, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 124
    const-string v21, "identifier2"

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v6, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 125
    const-string v21, "fileSize"

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 126
    const-string v21, "reserved"

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v8, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 127
    const-string v21, "bitmapDataOffset"

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v9, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 128
    const-string v21, "bitmapHeaderSize"

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v10, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 129
    const-string v21, "width"

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v11, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 130
    const-string v21, "height"

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v12, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 131
    const-string v21, "planes"

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v13, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 132
    const-string v21, "bitsPerPixel"

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v14, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 133
    const-string v21, "compression"

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v15, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 134
    const-string v21, "bitmapDataSize"

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v16

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 135
    const-string v21, "hResolution"

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 136
    const-string v21, "vResolution"

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v18

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 137
    const-string v21, "colorsUsed"

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v19

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 138
    const-string v21, "colorsImportant"

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v20

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 141
    :cond_1
    new-instance v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    invoke-direct/range {v4 .. v20}, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;-><init>(BBIIIIIIIIIIIIII)V

    .line 145
    .local v4, "result":Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;
    return-object v4
.end method

.method private readBmpHeaderInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Z)Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;
    .locals 3
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "verbose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    const/4 v1, 0x0

    .line 383
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 386
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readBmpHeaderInfo(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;Z)Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 391
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 395
    :goto_0
    return-object v2

    .line 392
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 389
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 391
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 395
    :goto_1
    throw v2

    .line 392
    :catch_1
    move-exception v0

    .line 394
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private readImageContents(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;Z)Lorg/apache/sanselan/formats/bmp/ImageContents;
    .locals 22
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "formatCompliance"    # Lorg/apache/sanselan/FormatCompliance;
    .param p3, "verbose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct/range {p0 .. p3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readBmpHeaderInfo(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;Z)Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    move-result-object v4

    .line 220
    .local v4, "bhi":Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;
    iget v6, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    .line 221
    .local v6, "colorTableSize":I
    if-nez v6, :cond_0

    .line 222
    const/16 v18, 0x1

    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    move/from16 v19, v0

    shl-int v6, v18, v19

    .line 224
    :cond_0
    if-eqz p3, :cond_1

    .line 226
    const-string v18, "ColorsUsed"

    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 227
    const-string v18, "BitsPerPixel"

    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 228
    const-string v18, "ColorTableSize"

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v6, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 229
    const-string v18, "bhi.colorsUsed"

    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 230
    const-string v18, "Compression"

    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->compression:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 234
    :cond_1
    const/16 v17, 0x0

    .line 235
    .local v17, "rleSamplesPerByte":I
    const/16 v16, 0x0

    .line 237
    .local v16, "rle":Z
    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->compression:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 284
    new-instance v18, Lorg/apache/sanselan/ImageReadException;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "BMP: Unknown Compression: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->compression:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 240
    :pswitch_0
    if-eqz p3, :cond_2

    .line 241
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "Compression: BI_RGB"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    :cond_2
    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    move/from16 v18, v0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    .line 243
    mul-int/lit8 v13, v6, 0x4

    .line 288
    .local v13, "paletteLength":I
    :goto_0
    const/4 v5, 0x0

    .line 289
    .local v5, "colorTable":[B
    if-lez v13, :cond_3

    .line 290
    const-string v18, "ColorTable"

    const-string v19, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v13, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v5

    .line 293
    :cond_3
    if-eqz p3, :cond_4

    .line 295
    const-string v18, "paletteLength"

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v13, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 296
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "ColorTable: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    if-nez v5, :cond_a

    const-string v18, "null"

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    :cond_4
    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    move/from16 v18, v0

    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->height:I

    move/from16 v19, v0

    mul-int v14, v18, v19

    .line 302
    .local v14, "pixelCount":I
    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    move/from16 v18, v0

    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    add-int/lit8 v18, v18, 0x7

    div-int/lit8 v12, v18, 0x8

    .line 304
    .local v12, "imageLineLength":I
    if-eqz p3, :cond_5

    .line 311
    const-string v18, "bhi.Width"

    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 312
    const-string v18, "bhi.Height"

    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->height:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 313
    const-string v18, "ImageLineLength"

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v12, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 315
    const-string v18, "PixelCount"

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v14, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 318
    :cond_5
    :goto_2
    rem-int/lit8 v18, v12, 0x4

    if-eqz v18, :cond_b

    .line 319
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 245
    .end local v5    # "colorTable":[B
    .end local v12    # "imageLineLength":I
    .end local v13    # "paletteLength":I
    .end local v14    # "pixelCount":I
    :cond_6
    const/4 v13, 0x0

    .line 250
    .restart local v13    # "paletteLength":I
    goto/16 :goto_0

    .line 253
    .end local v13    # "paletteLength":I
    :pswitch_1
    if-eqz p3, :cond_7

    .line 254
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "Compression: BI_RLE4"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    :cond_7
    mul-int/lit8 v13, v6, 0x4

    .line 256
    .restart local v13    # "paletteLength":I
    const/16 v17, 0x2

    .line 258
    const/16 v16, 0x1

    .line 261
    goto/16 :goto_0

    .line 264
    .end local v13    # "paletteLength":I
    :pswitch_2
    if-eqz p3, :cond_8

    .line 265
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "Compression: BI_RLE8"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    :cond_8
    mul-int/lit8 v13, v6, 0x4

    .line 267
    .restart local v13    # "paletteLength":I
    const/16 v17, 0x1

    .line 269
    const/16 v16, 0x1

    .line 272
    goto/16 :goto_0

    .line 275
    .end local v13    # "paletteLength":I
    :pswitch_3
    if-eqz p3, :cond_9

    .line 276
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "Compression: BI_BITFIELDS"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    :cond_9
    const/16 v13, 0xc

    .line 281
    .restart local v13    # "paletteLength":I
    goto/16 :goto_0

    .line 296
    .restart local v5    # "colorTable":[B
    :cond_a
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    array-length v0, v5

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 321
    .restart local v12    # "imageLineLength":I
    .restart local v14    # "pixelCount":I
    :cond_b
    const/16 v9, 0x36

    .line 323
    .local v9, "headerSize":I
    add-int/lit8 v7, v13, 0x36

    .line 325
    .local v7, "expectedDataOffset":I
    if-eqz p3, :cond_c

    .line 327
    const-string v18, "bhi.BitmapDataOffset"

    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 328
    const-string v18, "expectedDataOffset"

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v7, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 330
    :cond_c
    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    move/from16 v18, v0

    sub-int v8, v18, v7

    .line 331
    .local v8, "extraBytes":I
    if-gez v8, :cond_d

    .line 332
    new-instance v18, Lorg/apache/sanselan/ImageReadException;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "BMP has invalid image data offset: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, " (expected: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, ", paletteLength: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, ", headerSize: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const/16 v20, 0x36

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 336
    :cond_d
    if-lez v8, :cond_e

    .line 337
    const-string v18, "BitmapDataOffset"

    const-string v19, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v8, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    .line 340
    :cond_e
    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->height:I

    move/from16 v18, v0

    mul-int v11, v18, v12

    .line 342
    .local v11, "imageDataSize":I
    if-eqz p3, :cond_f

    .line 343
    const-string v18, "imageDataSize"

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v11, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 346
    :cond_f
    if-eqz v16, :cond_11

    .line 347
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->getRLEBytes(Ljava/io/InputStream;I)[B

    move-result-object v10

    .line 352
    .local v10, "imageData":[B
    :goto_3
    if-eqz p3, :cond_10

    .line 353
    const-string v18, "ImageData.length"

    array-length v0, v10

    move/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 357
    :cond_10
    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->compression:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_1

    .line 370
    new-instance v18, Lorg/apache/sanselan/ImageReadException;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "BMP: Unknown Compression: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    iget v0, v4, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->compression:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 349
    .end local v10    # "imageData":[B
    :cond_11
    const-string v18, "ImageData"

    const-string v19, "Not a Valid BMP File"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v11, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v10

    .restart local v10    # "imageData":[B
    goto :goto_3

    .line 361
    :pswitch_4
    new-instance v15, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;

    invoke-direct {v15, v4, v5, v10}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;-><init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V

    .line 374
    .local v15, "pixelParser":Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;
    :goto_4
    new-instance v18, Lorg/apache/sanselan/formats/bmp/ImageContents;

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5, v10, v15}, Lorg/apache/sanselan/formats/bmp/ImageContents;-><init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[BLorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;)V

    return-object v18

    .line 364
    .end local v15    # "pixelParser":Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;
    :pswitch_5
    new-instance v15, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;

    invoke-direct {v15, v4, v5, v10}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;-><init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V

    .line 365
    .restart local v15    # "pixelParser":Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;
    goto :goto_4

    .line 367
    .end local v15    # "pixelParser":Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;
    :pswitch_6
    new-instance v15, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;

    invoke-direct {v15, v4, v5, v10}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;-><init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V

    .line 368
    .restart local v15    # "pixelParser":Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;
    goto :goto_4

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 357
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    const-string v1, "bmp.dumpImageFile"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0

    .line 545
    .local v0, "imageData":Lorg/apache/sanselan/ImageInfo;
    if-nez v0, :cond_0

    .line 546
    const/4 v1, 0x0

    .line 552
    :goto_0
    return v1

    .line 548
    :cond_0
    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/apache/sanselan/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 550
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public embedICCProfile(Ljava/io/File;Ljava/io/File;[B)Z
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;
    .param p3, "profile"    # [B

    .prologue
    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public embedICCProfile([B[B)[B
    .locals 1
    .param p1, "image"    # [B
    .param p2, "profile"    # [B

    .prologue
    .line 435
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/sanselan/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_BMP:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 12
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    if-nez p2, :cond_2

    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "params":Ljava/util/Map;
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 574
    .restart local p2    # "params":Ljava/util/Map;
    :goto_0
    const-string v9, "VERBOSE"

    const/4 v10, 0x0

    invoke-static {p2, v9, v10}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result v7

    .line 577
    .local v7, "verbose":Z
    const-string v9, "VERBOSE"

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 578
    const-string v9, "VERBOSE"

    invoke-interface {p2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    :cond_0
    const-string v9, "BUFFERED_IMAGE_FACTORY"

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 580
    const-string v9, "BUFFERED_IMAGE_FACTORY"

    invoke-interface {p2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 584
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 585
    .local v1, "firstKey":Ljava/lang/Object;
    new-instance v9, Lorg/apache/sanselan/ImageReadException;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Unknown parameter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 572
    .end local v1    # "firstKey":Ljava/lang/Object;
    .end local v7    # "verbose":Z
    :cond_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v9

    goto :goto_0

    .line 588
    .restart local v7    # "verbose":Z
    :cond_3
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v10

    invoke-direct {p0, v9, v10, v7}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readImageContents(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;Z)Lorg/apache/sanselan/formats/bmp/ImageContents;

    move-result-object v4

    .line 590
    .local v4, "ic":Lorg/apache/sanselan/formats/bmp/ImageContents;
    if-nez v4, :cond_4

    .line 591
    new-instance v9, Lorg/apache/sanselan/ImageReadException;

    const-string v10, "Couldn\'t read BMP Data"

    invoke-direct {v9, v10}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 593
    :cond_4
    iget-object v0, v4, Lorg/apache/sanselan/formats/bmp/ImageContents;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    .line 597
    .local v0, "bhi":Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;
    iget v8, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    .line 598
    .local v8, "width":I
    iget v3, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->height:I

    .line 600
    .local v3, "height":I
    const/4 v2, 0x0

    .line 601
    .local v2, "hasAlpha":Z
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/sanselan/common/IBufferedImageFactory;

    move-result-object v9

    invoke-interface {v9, v8, v3, v2}, Lorg/apache/sanselan/common/IBufferedImageFactory;->getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v6

    .line 604
    .local v6, "result":Ljava/awt/image/BufferedImage;
    if-eqz v7, :cond_5

    .line 606
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "width: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 607
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "height: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 608
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "width*height: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    mul-int v11, v8, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 609
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "width*height*4: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    mul-int v11, v8, v3

    mul-int/lit8 v11, v11, 0x4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 612
    :cond_5
    iget-object v5, v4, Lorg/apache/sanselan/formats/bmp/ImageContents;->pixelParser:Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;

    .line 614
    .local v5, "pixelParser":Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;
    invoke-virtual {v5, v6}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;->processImage(Ljava/awt/image/BufferedImage;)V

    .line 616
    return-object v6
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, ".bmp"

    return-object v0
.end method

.method public getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;
    .locals 3
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    const/4 v1, 0x0

    .line 560
    .local v1, "verbose":Z
    new-instance v0, Lorg/apache/sanselan/FormatCompliance;

    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/sanselan/FormatCompliance;-><init>(Ljava/lang/String;)V

    .line 563
    .local v0, "result":Lorg/apache/sanselan/FormatCompliance;
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readImageContents(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;Z)Lorg/apache/sanselan/formats/bmp/ImageContents;

    .line 565
    return-object v0
.end method

.method public getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B
    .locals 1
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 32
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    if-nez p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "params":Ljava/util/Map;
    invoke-direct/range {p2 .. p2}, Ljava/util/HashMap;-><init>()V

    .line 473
    .restart local p2    # "params":Ljava/util/Map;
    :goto_0
    const-string v28, "VERBOSE"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result v27

    .line 476
    .local v27, "verbose":Z
    const-string v28, "VERBOSE"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 477
    const-string v28, "VERBOSE"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v28

    if-lez v28, :cond_2

    .line 481
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    .line 482
    .local v25, "firstKey":Ljava/lang/Object;
    new-instance v28, Lorg/apache/sanselan/ImageReadException;

    new-instance v29, Ljava/lang/StringBuffer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    const-string v30, "Unknown parameter: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 471
    .end local v25    # "firstKey":Ljava/lang/Object;
    .end local v27    # "verbose":Z
    :cond_1
    new-instance v28, Ljava/util/HashMap;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 p2, v28

    goto :goto_0

    .line 485
    .restart local v27    # "verbose":Z
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v28

    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readImageContents(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;Z)Lorg/apache/sanselan/formats/bmp/ImageContents;

    move-result-object v26

    .line 488
    .local v26, "ic":Lorg/apache/sanselan/formats/bmp/ImageContents;
    if-nez v26, :cond_3

    .line 489
    new-instance v28, Lorg/apache/sanselan/ImageReadException;

    const-string v29, "Couldn\'t read BMP Data"

    invoke-direct/range {v28 .. v29}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 491
    :cond_3
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/sanselan/formats/bmp/ImageContents;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    move-object/from16 v23, v0

    .line 492
    .local v23, "bhi":Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/sanselan/formats/bmp/ImageContents;->colorTable:[B

    move-object/from16 v24, v0

    .line 494
    .local v24, "colorTable":[B
    if-nez v23, :cond_4

    .line 495
    new-instance v28, Lorg/apache/sanselan/ImageReadException;

    const-string v29, "BMP: couldn\'t read header"

    invoke-direct/range {v28 .. v29}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 497
    :cond_4
    move-object/from16 v0, v23

    iget v10, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->height:I

    .line 498
    .local v10, "height":I
    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    move/from16 v17, v0

    .line 500
    .local v17, "width":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v7, "comments":Ljava/util/ArrayList;
    move-object/from16 v0, v23

    iget v6, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    .line 504
    .local v6, "bitsPerPixel":I
    sget-object v8, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_BMP:Lorg/apache/sanselan/ImageFormat;

    .line 505
    .local v8, "format":Lorg/apache/sanselan/ImageFormat;
    const-string v9, "BMP Windows Bitmap"

    .line 506
    .local v9, "name":Ljava/lang/String;
    const-string v11, "image/x-ms-bmp"

    .line 508
    .local v11, "mimeType":Ljava/lang/String;
    const/4 v12, -0x1

    .line 510
    .local v12, "numberOfImages":I
    const/16 v18, 0x0

    .line 514
    .local v18, "isProgressive":Z
    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->hResolution:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x408f400000000000L    # 1000.0

    mul-double v28, v28, v30

    const-wide v30, 0x400451eb851eb852L    # 2.54

    div-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v15, v0

    .line 515
    .local v15, "physicalWidthDpi":I
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v28, v0

    int-to-double v0, v15

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v16, v0

    .line 517
    .local v16, "physicalWidthInch":F
    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->vResolution:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x408f400000000000L    # 1000.0

    mul-double v28, v28, v30

    const-wide v30, 0x400451eb851eb852L    # 2.54

    div-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v13, v0

    .line 518
    .local v13, "physicalHeightDpi":I
    int-to-double v0, v10

    move-wide/from16 v28, v0

    int-to-double v0, v13

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v14, v0

    .line 520
    .local v14, "physicalHeightInch":F
    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    const-string v29, "Bmp ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    move-object/from16 v0, v23

    iget-byte v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->identifier1:B

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-char v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v28

    move-object/from16 v0, v23

    iget-byte v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->identifier2:B

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-char v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v28

    const-string v29, ": "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    move-object/from16 v0, v23

    iget-byte v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->identifier1:B

    move/from16 v29, v0

    move-object/from16 v0, v23

    iget-byte v0, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->identifier2:B

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->getBmpTypeDescription(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 524
    .local v5, "formatDetails":Ljava/lang/String;
    const/16 v19, 0x0

    .line 526
    .local v19, "isTransparent":Z
    if-eqz v24, :cond_5

    const/16 v20, 0x1

    .line 527
    .local v20, "usesPalette":Z
    :goto_1
    const/16 v21, 0x2

    .line 528
    .local v21, "colorType":I
    const-string v22, "RLE: Run-Length Encoding"

    .line 530
    .local v22, "compressionAlgorithm":Ljava/lang/String;
    new-instance v4, Lorg/apache/sanselan/ImageInfo;

    invoke-direct/range {v4 .. v22}, Lorg/apache/sanselan/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;)V

    .line 536
    .local v4, "result":Lorg/apache/sanselan/ImageInfo;
    return-object v4

    .line 526
    .end local v4    # "result":Lorg/apache/sanselan/ImageInfo;
    .end local v20    # "usesPalette":Z
    .end local v21    # "colorType":I
    .end local v22    # "compressionAlgorithm":Ljava/lang/String;
    :cond_5
    const/16 v20, 0x0

    goto :goto_1
.end method

.method public getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 6
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    if-nez p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "params":Ljava/util/Map;
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 412
    .restart local p2    # "params":Ljava/util/Map;
    :goto_0
    const-string v3, "VERBOSE"

    const/4 v4, 0x0

    invoke-static {p2, v3, v4}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result v2

    .line 415
    .local v2, "verbose":Z
    const-string v3, "VERBOSE"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    const-string v3, "VERBOSE"

    invoke-interface {p2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 420
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 421
    .local v1, "firstKey":Ljava/lang/Object;
    new-instance v3, Lorg/apache/sanselan/ImageReadException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unknown parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 410
    .end local v1    # "firstKey":Ljava/lang/Object;
    .end local v2    # "verbose":Z
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v3

    goto :goto_0

    .line 424
    .restart local v2    # "verbose":Z
    :cond_2
    invoke-direct {p0, p1, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readBmpHeaderInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Z)Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    move-result-object v0

    .line 426
    .local v0, "bhi":Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;
    if-nez v0, :cond_3

    .line 427
    new-instance v3, Lorg/apache/sanselan/ImageReadException;

    const-string v4, "BMP: couldn\'t read header"

    invoke-direct {v3, v4}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 429
    :cond_3
    new-instance v3, Ljava/awt/Dimension;

    iget v4, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    iget v5, v0, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->height:I

    invoke-direct {v3, v4, v5}, Ljava/awt/Dimension;-><init>(II)V

    return-object v3
.end method

.method public getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "Bmp-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 11
    .param p1, "src"    # Ljava/awt/image/BufferedImage;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 627
    if-nez p3, :cond_1

    new-instance p3, Ljava/util/HashMap;

    .end local p3    # "params":Ljava/util/Map;
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 630
    .restart local p3    # "params":Ljava/util/Map;
    :goto_0
    const-string v8, "FORMAT"

    invoke-interface {p3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 631
    const-string v8, "FORMAT"

    invoke-interface {p3, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 635
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 636
    .local v2, "firstKey":Ljava/lang/Object;
    new-instance v8, Lorg/apache/sanselan/ImageWriteException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Unknown parameter: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 627
    .end local v2    # "firstKey":Ljava/lang/Object;
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p3, v8

    goto :goto_0

    .line 639
    :cond_2
    new-instance v8, Lorg/apache/sanselan/palette/PaletteFactory;

    invoke-direct {v8}, Lorg/apache/sanselan/palette/PaletteFactory;-><init>()V

    const/16 v9, 0x100

    invoke-virtual {v8, p1, v9}, Lorg/apache/sanselan/palette/PaletteFactory;->makePaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/sanselan/palette/SimplePalette;

    move-result-object v5

    .line 642
    .local v5, "palette":Lorg/apache/sanselan/palette/SimplePalette;
    const/4 v7, 0x0

    .line 643
    .local v7, "writer":Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;
    if-nez v5, :cond_3

    .line 644
    new-instance v7, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterRGB;

    .end local v7    # "writer":Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;
    invoke-direct {v7}, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterRGB;-><init>()V

    .line 648
    .restart local v7    # "writer":Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;
    :goto_1
    invoke-virtual {v7, p1}, Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;->getImageData(Ljava/awt/image/BufferedImage;)[B

    move-result-object v4

    .line 649
    .local v4, "imagedata":[B
    new-instance v0, Lorg/apache/sanselan/common/BinaryOutputStream;

    const/16 v8, 0x49

    invoke-direct {v0, p2, v8}, Lorg/apache/sanselan/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 653
    .local v0, "bos":Lorg/apache/sanselan/common/BinaryOutputStream;
    const/16 v8, 0x42

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 654
    const/16 v8, 0x4d

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 656
    invoke-virtual {v7}, Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;->getPaletteSize()I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    add-int/lit8 v8, v8, 0x36

    array-length v9, v4

    add-int v1, v8, v9

    .line 660
    .local v1, "filesize":I
    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 662
    invoke-virtual {v0, v10}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 663
    invoke-virtual {v7}, Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;->getPaletteSize()I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    add-int/lit8 v8, v8, 0x36

    invoke-virtual {v0, v8}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 667
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    .line 668
    .local v6, "width":I
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    .line 671
    .local v3, "height":I
    const/16 v8, 0x28

    invoke-virtual {v0, v8}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 672
    invoke-virtual {v0, v6}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 673
    invoke-virtual {v0, v3}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 674
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 675
    invoke-virtual {v7}, Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;->getBitsPerPixel()I

    move-result v8

    invoke-virtual {v0, v8}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 677
    invoke-virtual {v0, v10}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 678
    array-length v8, v4

    invoke-virtual {v0, v8}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 679
    invoke-virtual {v0, v10}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 680
    invoke-virtual {v0, v10}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 681
    if-nez v5, :cond_4

    .line 682
    invoke-virtual {v0, v10}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 685
    :goto_2
    invoke-virtual {v0, v10}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 690
    invoke-virtual {v7, v0}, Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;->writePalette(Lorg/apache/sanselan/common/BinaryOutputStream;)V

    .line 693
    invoke-virtual {v0, v4}, Lorg/apache/sanselan/common/BinaryOutputStream;->writeByteArray([B)V

    .line 695
    return-void

    .line 646
    .end local v0    # "bos":Lorg/apache/sanselan/common/BinaryOutputStream;
    .end local v1    # "filesize":I
    .end local v3    # "height":I
    .end local v4    # "imagedata":[B
    .end local v6    # "width":I
    :cond_3
    new-instance v7, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;

    .end local v7    # "writer":Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;
    invoke-direct {v7, v5}, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;-><init>(Lorg/apache/sanselan/palette/SimplePalette;)V

    .restart local v7    # "writer":Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;
    goto :goto_1

    .line 684
    .restart local v0    # "bos":Lorg/apache/sanselan/common/BinaryOutputStream;
    .restart local v1    # "filesize":I
    .restart local v3    # "height":I
    .restart local v4    # "imagedata":[B
    .restart local v6    # "width":I
    :cond_4
    invoke-virtual {v5}, Lorg/apache/sanselan/palette/SimplePalette;->length()I

    move-result v8

    invoke-virtual {v0, v8}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    goto :goto_2
.end method
