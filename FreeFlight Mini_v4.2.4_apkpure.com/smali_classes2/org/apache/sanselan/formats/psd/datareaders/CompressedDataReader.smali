.class public Lorg/apache/sanselan/formats/psd/datareaders/CompressedDataReader;
.super Lorg/apache/sanselan/formats/psd/datareaders/DataReader;
.source "CompressedDataReader.java"


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;)V
    .locals 0
    .param p1, "fDataParser"    # Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/psd/datareaders/DataReader;-><init>(Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;)V

    .line 39
    return-void
.end method


# virtual methods
.method public readData(Ljava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/sanselan/formats/psd/ImageContents;Lorg/apache/sanselan/common/BinaryFileParser;)V
    .locals 26
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "bi"    # Ljava/awt/image/BufferedImage;
    .param p3, "imageContents"    # Lorg/apache/sanselan/formats/psd/ImageContents;
    .param p4, "bfp"    # Lorg/apache/sanselan/common/BinaryFileParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    move-object/from16 v0, p3

    iget-object v11, v0, Lorg/apache/sanselan/formats/psd/ImageContents;->header:Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    .line 46
    .local v11, "header":Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;
    iget v0, v11, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Columns:I

    move/from16 v21, v0

    .line 47
    .local v21, "width":I
    iget v12, v11, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Rows:I

    .line 50
    .local v12, "height":I
    iget v0, v11, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Channels:I

    move/from16 v23, v0

    mul-int v19, v12, v23

    .line 51
    .local v19, "scanline_count":I
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 52
    .local v18, "scanline_bytecounts":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v13, v0, :cond_0

    .line 53
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    const-string v24, "scanline_bytecount["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "PSD: bad Image Data"

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/common/BinaryFileParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v23

    aput v23, v18, v13

    .line 52
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const/16 v23, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryFileParser;->setDebug(Z)V

    .line 59
    iget v10, v11, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Depth:I

    .line 61
    .local v10, "depth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/sanselan/formats/psd/datareaders/CompressedDataReader;->dataParser:Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;->getBasicChannelsCount()I

    move-result v8

    .line 62
    .local v8, "channel_count":I
    filled-new-array {v8, v12}, [I

    move-result-object v23

    const-class v24, [I

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[[I

    .line 64
    .local v9, "data":[[[I
    const/4 v7, 0x0

    .local v7, "channel":I
    :goto_1
    if-ge v7, v8, :cond_2

    .line 65
    const/16 v22, 0x0

    .local v22, "y":I
    :goto_2
    move/from16 v0, v22

    if-ge v0, v12, :cond_1

    .line 67
    mul-int v23, v7, v12

    add-int v14, v23, v22

    .line 68
    .local v14, "index":I
    const-string v23, "scanline"

    aget v24, v18, v14

    const-string v25, "PSD: Missing Image Data"

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, p1

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/sanselan/common/BinaryFileParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v16

    .line 72
    .local v16, "packed":[B
    new-instance v23, Lorg/apache/sanselan/common/PackBits;

    invoke-direct/range {v23 .. v23}, Lorg/apache/sanselan/common/PackBits;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/common/PackBits;->decompress([BI)[B

    move-result-object v20

    .line 73
    .local v20, "unpacked":[B
    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 74
    .local v5, "bais":Ljava/io/InputStream;
    new-instance v15, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;

    const/16 v23, 0x4d

    move/from16 v0, v23

    invoke-direct {v15, v5, v0}, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 76
    .local v15, "mbis":Lorg/apache/sanselan/common/mylzw/MyBitInputStream;
    new-instance v6, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-direct {v6, v15, v0}, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;-><init>(Lorg/apache/sanselan/common/mylzw/MyBitInputStream;I)V

    .line 77
    .local v6, "bbis":Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;
    move/from16 v0, v21

    invoke-virtual {v6, v10, v0}, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;->readBitsArray(II)[I

    move-result-object v17

    .line 78
    .local v17, "scanline":[I
    aget-object v23, v9, v7

    aput-object v17, v23, v22

    .line 65
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 64
    .end local v5    # "bais":Ljava/io/InputStream;
    .end local v6    # "bbis":Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;
    .end local v14    # "index":I
    .end local v15    # "mbis":Lorg/apache/sanselan/common/mylzw/MyBitInputStream;
    .end local v16    # "packed":[B
    .end local v17    # "scanline":[I
    .end local v20    # "unpacked":[B
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 82
    .end local v22    # "y":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/sanselan/formats/psd/datareaders/CompressedDataReader;->dataParser:Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v9, v1, v2}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;->parseData([[[ILjava/awt/image/BufferedImage;Lorg/apache/sanselan/formats/psd/ImageContents;)V

    .line 84
    return-void
.end method
