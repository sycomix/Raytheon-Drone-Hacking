.class public Lorg/apache/sanselan/formats/psd/datareaders/UncompressedDataReader;
.super Lorg/apache/sanselan/formats/psd/datareaders/DataReader;
.source "UncompressedDataReader.java"


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;)V
    .locals 0
    .param p1, "fDataParser"    # Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/psd/datareaders/DataReader;-><init>(Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;)V

    .line 36
    return-void
.end method


# virtual methods
.method public readData(Ljava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/sanselan/formats/psd/ImageContents;Lorg/apache/sanselan/common/BinaryFileParser;)V
    .locals 16
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
    .line 42
    move-object/from16 v0, p3

    iget-object v8, v0, Lorg/apache/sanselan/formats/psd/ImageContents;->header:Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    .line 43
    .local v8, "header":Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;
    iget v11, v8, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Columns:I

    .line 44
    .local v11, "width":I
    iget v9, v8, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Rows:I

    .line 46
    .local v9, "height":I
    const/4 v14, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lorg/apache/sanselan/common/BinaryFileParser;->setDebug(Z)V

    .line 48
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/sanselan/formats/psd/datareaders/UncompressedDataReader;->dataParser:Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;

    invoke-virtual {v14}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;->getBasicChannelsCount()I

    move-result v5

    .line 49
    .local v5, "channel_count":I
    iget v7, v8, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Depth:I

    .line 50
    .local v7, "depth":I
    new-instance v10, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;

    const/16 v14, 0x4d

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v14}, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 51
    .local v10, "mbis":Lorg/apache/sanselan/common/mylzw/MyBitInputStream;
    new-instance v3, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;

    const/16 v14, 0x8

    invoke-direct {v3, v10, v14}, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;-><init>(Lorg/apache/sanselan/common/mylzw/MyBitInputStream;I)V

    .line 53
    .local v3, "bbis":Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;
    filled-new-array {v5, v9, v11}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[[I

    .line 54
    .local v6, "data":[[[I
    const/4 v4, 0x0

    .local v4, "channel":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 55
    const/4 v13, 0x0

    .local v13, "y":I
    :goto_1
    if-ge v13, v9, :cond_1

    .line 56
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_2
    if-ge v12, v11, :cond_0

    .line 58
    invoke-virtual {v3, v7}, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;->readBits(I)I

    move-result v2

    .line 60
    .local v2, "b":I
    aget-object v14, v6, v4

    aget-object v14, v14, v13

    int-to-byte v15, v2

    aput v15, v14, v12

    .line 56
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 55
    .end local v2    # "b":I
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 54
    .end local v12    # "x":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 63
    .end local v13    # "y":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/sanselan/formats/psd/datareaders/UncompressedDataReader;->dataParser:Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v14, v6, v0, v1}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;->parseData([[[ILjava/awt/image/BufferedImage;Lorg/apache/sanselan/formats/psd/ImageContents;)V

    .line 65
    return-void
.end method
