.class public Lorg/apache/sanselan/formats/ico/IcoImageParser;
.super Lorg/apache/sanselan/ImageParser;
.source "IcoImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/ico/IcoImageParser$ImageContents;,
        Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;,
        Lorg/apache/sanselan/formats/ico/IcoImageParser$BitmapHeader;,
        Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;,
        Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;
    }
.end annotation


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".ico"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".ico"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".cur"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/sanselan/formats/ico/IcoImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/sanselan/ImageParser;-><init>()V

    .line 45
    const/16 v0, 0x49

    invoke-super {p0, v0}, Lorg/apache/sanselan/ImageParser;->setByteOrder(I)V

    .line 47
    return-void
.end method

.method private readBufferedImage(Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;)Ljava/awt/image/BufferedImage;
    .locals 32
    .param p1, "fIconData"    # Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 428
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->iconInfo:Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;

    .line 430
    .local v14, "fIconInfo":Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;
    iget-byte v0, v14, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->Width:B

    move/from16 v26, v0

    .line 431
    .local v26, "width":I
    iget-byte v0, v14, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->Height:B

    move/from16 v16, v0

    .line 432
    .local v16, "height":I
    mul-int v29, v26, v16

    move/from16 v0, v29

    new-array v13, v0, [I

    .line 434
    .local v13, "data":[I
    const/16 v28, 0x0

    .local v28, "y":I
    :goto_0
    move/from16 v0, v28

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    .line 436
    const/16 v27, 0x0

    .local v27, "x":I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 440
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->transparency_map:[B

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->t_scanline_size:I

    move/from16 v30, v0

    mul-int v30, v30, v28

    div-int/lit8 v31, v27, 0x8

    add-int v30, v30, v31

    aget-byte v29, v29, v30

    move/from16 v0, v29

    and-int/lit16 v5, v0, 0xff

    .line 442
    .local v5, "alpha_byte":I
    rem-int/lit8 v29, v27, 0x8

    rsub-int/lit8 v29, v29, 0x7

    shr-int v29, v5, v29

    and-int/lit8 v4, v29, 0x1

    .line 443
    .local v4, "alpha":I
    if-nez v4, :cond_1

    const/16 v4, 0xff

    .line 445
    :goto_2
    iget v0, v14, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_0

    iget v0, v14, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    move/from16 v29, v0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_0

    iget v0, v14, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    move/from16 v29, v0

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 448
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->scanline_size:I

    move/from16 v29, v0

    mul-int v29, v29, v28

    mul-int/lit8 v29, v29, 0x8

    iget v0, v14, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    move/from16 v30, v0

    mul-int v30, v30, v27

    add-int v8, v29, v30

    .line 450
    .local v8, "bit_index":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->color_map:[B

    move-object/from16 v29, v0

    shr-int/lit8 v30, v8, 0x3

    aget-byte v29, v29, v30

    move/from16 v0, v29

    and-int/lit16 v7, v0, 0xff

    .line 451
    .local v7, "b":I
    const/16 v29, 0x1

    iget v0, v14, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    move/from16 v30, v0

    shl-int v29, v29, v30

    add-int/lit8 v19, v29, -0x1

    .line 452
    .local v19, "mask":I
    rem-int/lit8 v29, v8, 0x8

    rsub-int/lit8 v29, v29, 0x8

    iget v0, v14, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    move/from16 v30, v0

    sub-int v25, v29, v30

    .line 453
    .local v25, "shift":I
    shr-int v29, v7, v25

    and-int v12, v19, v29

    .line 455
    .local v12, "color_index":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->palette:[B

    move-object/from16 v29, v0

    mul-int/lit8 v30, v12, 0x4

    add-int/lit8 v30, v30, 0x2

    aget-byte v29, v29, v30

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 456
    .local v21, "red":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->palette:[B

    move-object/from16 v29, v0

    mul-int/lit8 v30, v12, 0x4

    add-int/lit8 v30, v30, 0x1

    aget-byte v29, v29, v30

    move/from16 v0, v29

    and-int/lit16 v15, v0, 0xff

    .line 457
    .local v15, "green":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->palette:[B

    move-object/from16 v29, v0

    mul-int/lit8 v30, v12, 0x4

    add-int/lit8 v30, v30, 0x0

    aget-byte v29, v29, v30

    move/from16 v0, v29

    and-int/lit16 v9, v0, 0xff

    .line 458
    .local v9, "blue":I
    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    shl-int/lit8 v29, v29, 0x10

    and-int/lit16 v0, v15, 0xff

    move/from16 v30, v0

    shl-int/lit8 v30, v30, 0x8

    or-int v29, v29, v30

    and-int/lit16 v0, v9, 0xff

    move/from16 v30, v0

    shl-int/lit8 v30, v30, 0x0

    or-int v23, v29, v30

    .line 477
    .end local v7    # "b":I
    .end local v8    # "bit_index":I
    .end local v12    # "color_index":I
    .end local v19    # "mask":I
    .end local v25    # "shift":I
    .local v23, "rgb":I
    :goto_3
    and-int/lit16 v0, v4, 0xff

    move/from16 v29, v0

    shl-int/lit8 v29, v29, 0x18

    const v30, 0xffffff

    and-int v30, v30, v23

    or-int v6, v29, v30

    .line 481
    .local v6, "argb":I
    sub-int v29, v16, v28

    add-int/lit8 v29, v29, -0x1

    mul-int v29, v29, v26

    add-int v29, v29, v27

    aput v6, v13, v29

    .line 436
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1

    .line 443
    .end local v6    # "argb":I
    .end local v9    # "blue":I
    .end local v15    # "green":I
    .end local v21    # "red":I
    .end local v23    # "rgb":I
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 461
    :cond_2
    iget v0, v14, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    move/from16 v29, v0

    const/16 v30, 0x18

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_3

    iget v0, v14, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    move/from16 v29, v0

    const/16 v30, 0x20

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    .line 464
    :cond_3
    iget v0, v14, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    move/from16 v29, v0

    shr-int/lit8 v10, v29, 0x3

    .line 465
    .local v10, "byte_count":I
    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->scanline_size:I

    move/from16 v29, v0

    mul-int v29, v29, v28

    mul-int v30, v27, v10

    add-int v17, v29, v30

    .line 466
    .local v17, "index":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->color_map:[B

    move-object/from16 v29, v0

    add-int/lit8 v30, v17, 0x2

    aget-byte v29, v29, v30

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 467
    .restart local v21    # "red":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->color_map:[B

    move-object/from16 v29, v0

    add-int/lit8 v30, v17, 0x1

    aget-byte v29, v29, v30

    move/from16 v0, v29

    and-int/lit16 v15, v0, 0xff

    .line 468
    .restart local v15    # "green":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->color_map:[B

    move-object/from16 v29, v0

    add-int/lit8 v30, v17, 0x0

    aget-byte v29, v29, v30

    move/from16 v0, v29

    and-int/lit16 v9, v0, 0xff

    .line 470
    .restart local v9    # "blue":I
    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    shl-int/lit8 v29, v29, 0x10

    and-int/lit16 v0, v15, 0xff

    move/from16 v30, v0

    shl-int/lit8 v30, v30, 0x8

    or-int v29, v29, v30

    and-int/lit16 v0, v9, 0xff

    move/from16 v30, v0

    shl-int/lit8 v30, v30, 0x0

    or-int v23, v29, v30

    .line 472
    .restart local v23    # "rgb":I
    goto/16 :goto_3

    .line 474
    .end local v9    # "blue":I
    .end local v10    # "byte_count":I
    .end local v15    # "green":I
    .end local v17    # "index":I
    .end local v21    # "red":I
    .end local v23    # "rgb":I
    :cond_4
    new-instance v29, Lorg/apache/sanselan/ImageReadException;

    new-instance v30, Ljava/lang/StringBuffer;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuffer;-><init>()V

    const-string v31, "Unknown BitCount: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    iget v0, v14, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 434
    .end local v4    # "alpha":I
    .end local v5    # "alpha_byte":I
    :cond_5
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_0

    .line 485
    .end local v27    # "x":I
    :cond_6
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v11

    .line 486
    .local v11, "cModel":Ljava/awt/image/ColorModel;
    new-instance v18, Ljava/awt/image/DataBufferInt;

    mul-int v29, v26, v16

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-direct {v0, v13, v1}, Ljava/awt/image/DataBufferInt;-><init>([II)V

    .line 487
    .local v18, "intBuf":Ljava/awt/image/DataBufferInt;
    move/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Ljava/awt/image/ColorModel;->createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;

    move-result-object v24

    .line 490
    .local v24, "sModel":Ljava/awt/image/SampleModel;
    const/16 v29, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v20

    .line 494
    .local v20, "raster":Ljava/awt/image/WritableRaster;
    new-instance v22, Ljava/awt/image/BufferedImage;

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v29

    move-object/from16 v3, v30

    invoke-direct {v0, v11, v1, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    .line 496
    .local v22, "result":Ljava/awt/image/BufferedImage;
    return-object v22
.end method

.method private readFileHeader(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    const-string v3, "Reserved"

    const-string v4, "Not a Valid ICO File"

    invoke-virtual {p0, v3, p1, v4}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v2

    .line 136
    .local v2, "Reserved":I
    const-string v3, "IconType"

    const-string v4, "Not a Valid ICO File"

    invoke-virtual {p0, v3, p1, v4}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    .line 137
    .local v1, "IconType":I
    const-string v3, "IconCount"

    const-string v4, "Not a Valid ICO File"

    invoke-virtual {p0, v3, p1, v4}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, "IconCount":I
    new-instance v3, Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;

    invoke-direct {v3, v2, v1, v0}, Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;-><init>(III)V

    return-object v3
.end method

.method private readIconData(Ljava/io/InputStream;Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;)Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;
    .locals 28
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "fIconInfo"    # Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    const-string v17, "Size"

    const-string v18, "Not a Valid ICO File"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v6

    .line 303
    .local v6, "Size":I
    const-string v17, "Width"

    const-string v18, "Not a Valid ICO File"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v7

    .line 304
    .local v7, "Width":I
    const-string v17, "Height"

    const-string v18, "Not a Valid ICO File"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v8

    .line 305
    .local v8, "Height":I
    const-string v17, "Planes"

    const-string v18, "Not a Valid ICO File"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v9

    .line 306
    .local v9, "Planes":I
    const-string v17, "BitCount"

    const-string v18, "Not a Valid ICO File"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v10

    .line 307
    .local v10, "BitCount":I
    const-string v17, "Compression"

    const-string v18, "Not a Valid ICO File"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v11

    .line 308
    .local v11, "Compression":I
    const-string v17, "SizeImage"

    const-string v18, "Not a Valid ICO File"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v12

    .line 309
    .local v12, "SizeImage":I
    const-string v17, "XPelsPerMeter"

    const-string v18, "Not a Valid ICO File"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v13

    .line 311
    .local v13, "XPelsPerMeter":I
    const-string v17, "YPelsPerMeter"

    const-string v18, "Not a Valid ICO File"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v14

    .line 313
    .local v14, "YPelsPerMeter":I
    const-string v17, "ColorsUsed"

    const-string v18, "Not a Valid ICO File"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v15

    .line 314
    .local v15, "ColorsUsed":I
    const-string v17, "ColorsImportant"

    const-string v18, "Not a Valid ICO File"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v16

    .line 317
    .local v16, "ColorsImportant":I
    new-instance v5, Lorg/apache/sanselan/formats/ico/IcoImageParser$BitmapHeader;

    invoke-direct/range {v5 .. v16}, Lorg/apache/sanselan/formats/ico/IcoImageParser$BitmapHeader;-><init>(IIIIIIIIIII)V

    .line 326
    .local v5, "header":Lorg/apache/sanselan/formats/ico/IcoImageParser$BitmapHeader;
    const/16 v26, 0x0

    .line 327
    .local v26, "palette_size":I
    const/16 v20, 0x0

    .line 329
    .local v20, "palette":[B
    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    move/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 332
    :cond_0
    const/16 v17, 0x1

    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    move/from16 v18, v0

    shl-int v17, v17, v18

    mul-int/lit8 v26, v17, 0x4

    .line 333
    const-string v17, "palette"

    const-string v18, "Not a Valid ICO File"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v26

    move-object/from16 v3, p1

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v20

    .line 337
    :cond_1
    const/16 v21, 0x0

    .line 338
    .local v21, "color_map":[B
    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->BitCount:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget-byte v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->Width:B

    move/from16 v18, v0

    mul-int v17, v17, v18

    add-int/lit8 v17, v17, 0x7

    div-int/lit8 v22, v17, 0x8

    .line 339
    .local v22, "scanline_size":I
    rem-int/lit8 v17, v22, 0x4

    if-eqz v17, :cond_2

    .line 340
    rem-int/lit8 v17, v22, 0x4

    rsub-int/lit8 v17, v17, 0x4

    add-int v22, v22, v17

    .line 342
    :cond_2
    move-object/from16 v0, p2

    iget-byte v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->Height:B

    move/from16 v17, v0

    mul-int v25, v22, v17

    .line 344
    .local v25, "color_map_size_bytes":I
    const-string v17, "color_map"

    const-string v18, "Not a Valid ICO File"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v25

    move-object/from16 v3, p1

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v21

    .line 348
    const/16 v23, 0x0

    .line 349
    .local v23, "transparency_map":[B
    move-object/from16 v0, p2

    iget-byte v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->Width:B

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x7

    div-int/lit8 v24, v17, 0x8

    .line 350
    .local v24, "t_scanline_size":I
    rem-int/lit8 v17, v24, 0x4

    if-eqz v17, :cond_3

    .line 351
    rem-int/lit8 v17, v24, 0x4

    rsub-int/lit8 v17, v17, 0x4

    add-int v24, v24, v17

    .line 353
    :cond_3
    move-object/from16 v0, p2

    iget-byte v0, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->Height:B

    move/from16 v17, v0

    mul-int v27, v24, v17

    .line 355
    .local v27, "tcolor_map_size_bytes":I
    const-string v17, "transparency_map"

    const-string v18, "Not a Valid ICO File"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v27

    move-object/from16 v3, p1

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v23

    .line 359
    new-instance v17, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;

    move-object/from16 v18, p2

    move-object/from16 v19, v5

    invoke-direct/range {v17 .. v24}, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;-><init>(Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;Lorg/apache/sanselan/formats/ico/IcoImageParser$BitmapHeader;[B[BI[BI)V

    return-object v17
.end method

.method private readIconInfo(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;
    .locals 10
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const-string v0, "Width"

    const-string v9, "Not a Valid ICO File"

    invoke-virtual {p0, v0, p1, v9}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    .line 188
    .local v1, "Width":B
    const-string v0, "Height"

    const-string v9, "Not a Valid ICO File"

    invoke-virtual {p0, v0, p1, v9}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    .line 189
    .local v2, "Height":B
    const-string v0, "ColorCount"

    const-string v9, "Not a Valid ICO File"

    invoke-virtual {p0, v0, p1, v9}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v3

    .line 190
    .local v3, "ColorCount":B
    const-string v0, "Reserved"

    const-string v9, "Not a Valid ICO File"

    invoke-virtual {p0, v0, p1, v9}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    .line 191
    .local v4, "Reserved":B
    const-string v0, "Planes"

    const-string v9, "Not a Valid ICO File"

    invoke-virtual {p0, v0, p1, v9}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v5

    .line 192
    .local v5, "Planes":I
    const-string v0, "BitCount"

    const-string v9, "Not a Valid ICO File"

    invoke-virtual {p0, v0, p1, v9}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v6

    .line 193
    .local v6, "BitCount":I
    const-string v0, "ImageSize"

    const-string v9, "Not a Valid ICO File"

    invoke-virtual {p0, v0, p1, v9}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v7

    .line 194
    .local v7, "ImageSize":I
    const-string v0, "ImageOffset"

    const-string v9, "Not a Valid ICO File"

    invoke-virtual {p0, v0, p1, v9}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v8

    .line 196
    .local v8, "ImageOffset":I
    new-instance v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;

    invoke-direct/range {v0 .. v8}, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;-><init>(BBBBIIII)V

    return-object v0
.end method

.method private readImage(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/ico/IcoImageParser$ImageContents;
    .locals 7
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    const/4 v5, 0x0

    .line 383
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 384
    invoke-direct {p0, v5}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readFileHeader(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;

    move-result-object v3

    .line 388
    .local v3, "fileHeader":Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;
    iget v6, v3, Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    new-array v2, v6, [Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;

    .line 389
    .local v2, "fIconInfos":[Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v6, v3, Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    if-ge v4, v6, :cond_0

    .line 391
    invoke-direct {p0, v5}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readIconInfo(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;

    move-result-object v6

    aput-object v6, v2, v4

    .line 389
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 395
    :cond_0
    iget v6, v3, Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    new-array v1, v6, [Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;

    .line 396
    .local v1, "fIconDatas":[Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;
    const/4 v4, 0x0

    :goto_1
    iget v6, v3, Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    if-ge v4, v6, :cond_1

    .line 398
    aget-object v6, v2, v4

    invoke-direct {p0, v5, v6}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readIconData(Ljava/io/InputStream;Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;)Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;

    move-result-object v6

    aput-object v6, v1, v4

    .line 396
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 402
    :cond_1
    new-instance v6, Lorg/apache/sanselan/formats/ico/IcoImageParser$ImageContents;

    invoke-direct {v6, v3, v1}, Lorg/apache/sanselan/formats/ico/IcoImageParser$ImageContents;-><init>(Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;[Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 413
    :goto_2
    return-object v6

    .line 410
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 406
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fIconDatas":[Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;
    .end local v2    # "fIconInfos":[Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;
    .end local v3    # "fileHeader":Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;
    .end local v4    # "i":I
    :catchall_0
    move-exception v6

    .line 408
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 413
    :goto_3
    throw v6

    .line 410
    :catch_1
    move-exception v0

    .line 412
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_3
.end method


# virtual methods
.method public embedICCProfile(Ljava/io/File;Ljava/io/File;[B)Z
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;
    .param p3, "profile"    # [B

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/apache/sanselan/formats/ico/IcoImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/sanselan/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_ICO:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getAllBufferedImages(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v5, "result":Ljava/util/ArrayList;
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readImage(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/ico/IcoImageParser$ImageContents;

    move-result-object v0

    .line 505
    .local v0, "contents":Lorg/apache/sanselan/formats/ico/IcoImageParser$ImageContents;
    iget-object v1, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$ImageContents;->fileHeader:Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;

    .line 506
    .local v1, "fileHeader":Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, v1, Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    if-ge v2, v6, :cond_0

    .line 508
    iget-object v6, v0, Lorg/apache/sanselan/formats/ico/IcoImageParser$ImageContents;->iconDatas:[Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;

    aget-object v3, v6, v2

    .line 510
    .local v3, "iconData":Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;
    invoke-direct {p0, v3}, Lorg/apache/sanselan/formats/ico/IcoImageParser;->readBufferedImage(Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;)Ljava/awt/image/BufferedImage;

    move-result-object v4

    .line 512
    .local v4, "image":Ljava/awt/image/BufferedImage;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
    .end local v3    # "iconData":Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;
    .end local v4    # "image":Ljava/awt/image/BufferedImage;
    :cond_0
    return-object v5
.end method

.method public final getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 2
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    const-string v1, "Use getAllBufferedImages() instead for .ico images."

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, ".ico"

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
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
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
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
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
    .line 98
    const/4 v0, 0x0

    return-object v0
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
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "ico-Custom"

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
    .line 554
    const/4 v0, 0x0

    return-object v0
.end method
