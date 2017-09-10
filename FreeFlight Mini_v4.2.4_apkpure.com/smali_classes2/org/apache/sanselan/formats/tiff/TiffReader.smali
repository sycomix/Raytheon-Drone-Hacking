.class public Lorg/apache/sanselan/formats/tiff/TiffReader;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "TiffReader.java"

# interfaces
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/tiff/TiffReader$DirectoryCollector;,
        Lorg/apache/sanselan/formats/tiff/TiffReader$FirstDirectoryCollector;,
        Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;,
        Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;
    }
.end annotation


# instance fields
.field private final strict:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "strict"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    .line 40
    iput-boolean p1, p0, Lorg/apache/sanselan/formats/tiff/TiffReader;->strict:Z

    .line 41
    return-void
.end method

.method private getJpegRawImageData(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/tiff/TiffDirectory;)Lorg/apache/sanselan/formats/tiff/JpegImageData;
    .locals 10
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "directory"    # Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    invoke-virtual {p2}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getJpegRawImageDataElement()Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;

    move-result-object v1

    .line 496
    .local v1, "element":Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;
    iget v3, v1, Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;->offset:I

    .line 497
    .local v3, "offset":I
    iget v2, v1, Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    .line 499
    .local v2, "length":I
    add-int v4, v3, v2

    int-to-long v4, v4

    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getLength()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 500
    add-int/lit8 v2, v2, -0x1

    .line 501
    :cond_0
    invoke-virtual {p1, v3, v2}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getBlock(II)[B

    move-result-object v0

    .line 502
    .local v0, "data":[B
    new-instance v4, Lorg/apache/sanselan/formats/tiff/JpegImageData;

    invoke-direct {v4, v3, v2, v0}, Lorg/apache/sanselan/formats/tiff/JpegImageData;-><init>(II[B)V

    return-object v4
.end method

.method private getTiffRawImageData(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/tiff/TiffDirectory;)Lorg/apache/sanselan/formats/tiff/TiffImageData;
    .locals 15
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "directory"    # Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getTiffRawImageDataElements()Ljava/util/ArrayList;

    move-result-object v4

    .line 456
    .local v4, "elements":Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v2, v12, [Lorg/apache/sanselan/formats/tiff/TiffImageData$Data;

    .line 457
    .local v2, "data":[Lorg/apache/sanselan/formats/tiff/TiffImageData$Data;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_0

    .line 459
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;

    .line 461
    .local v3, "element":Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;
    iget v12, v3, Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;->offset:I

    iget v13, v3, Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getBlock(II)[B

    move-result-object v1

    .line 462
    .local v1, "bytes":[B
    new-instance v12, Lorg/apache/sanselan/formats/tiff/TiffImageData$Data;

    iget v13, v3, Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;->offset:I

    iget v14, v3, Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    invoke-direct {v12, v13, v14, v1}, Lorg/apache/sanselan/formats/tiff/TiffImageData$Data;-><init>(II[B)V

    aput-object v12, v2, v5

    .line 457
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 466
    .end local v1    # "bytes":[B
    .end local v3    # "element":Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->imageDataInStrips()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 468
    sget-object v12, Lorg/apache/sanselan/formats/tiff/TiffReader;->TIFF_TAG_ROWS_PER_STRIP:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v7

    .line 470
    .local v7, "rowsPerStripField":Lorg/apache/sanselan/formats/tiff/TiffField;
    if-nez v7, :cond_1

    .line 471
    new-instance v12, Lorg/apache/sanselan/ImageReadException;

    const-string v13, "Can\'t find rows per strip field."

    invoke-direct {v12, v13}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 472
    :cond_1
    invoke-virtual {v7}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v6

    .line 474
    .local v6, "rowsPerStrip":I
    new-instance v12, Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;

    invoke-direct {v12, v2, v6}, Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;-><init>([Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;I)V

    .line 488
    .end local v6    # "rowsPerStrip":I
    .end local v7    # "rowsPerStripField":Lorg/apache/sanselan/formats/tiff/TiffField;
    :goto_1
    return-object v12

    .line 477
    :cond_2
    sget-object v12, Lorg/apache/sanselan/formats/tiff/TiffReader;->TIFF_TAG_TILE_WIDTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v11

    .line 478
    .local v11, "tileWidthField":Lorg/apache/sanselan/formats/tiff/TiffField;
    if-nez v11, :cond_3

    .line 479
    new-instance v12, Lorg/apache/sanselan/ImageReadException;

    const-string v13, "Can\'t find tile width field."

    invoke-direct {v12, v13}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 480
    :cond_3
    invoke-virtual {v11}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v10

    .line 482
    .local v10, "tileWidth":I
    sget-object v12, Lorg/apache/sanselan/formats/tiff/TiffReader;->TIFF_TAG_TILE_LENGTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v9

    .line 484
    .local v9, "tileLengthField":Lorg/apache/sanselan/formats/tiff/TiffField;
    if-nez v9, :cond_4

    .line 485
    new-instance v12, Lorg/apache/sanselan/ImageReadException;

    const-string v13, "Can\'t find tile length field."

    invoke-direct {v12, v13}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 486
    :cond_4
    invoke-virtual {v9}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v8

    .line 488
    .local v8, "tileLength":I
    new-instance v12, Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;

    invoke-direct {v12, v2, v10, v8}, Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;-><init>([Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;II)V

    goto :goto_1
.end method

.method private readDirectories(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/FormatCompliance;Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;)V
    .locals 8
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "formatCompliance"    # Lorg/apache/sanselan/FormatCompliance;
    .param p3, "listener"    # Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readTiffHeader(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffHeader;

    move-result-object v7

    .line 94
    .local v7, "tiffHeader":Lorg/apache/sanselan/formats/tiff/TiffHeader;
    invoke-interface {p3, v7}, Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;->setTiffHeader(Lorg/apache/sanselan/formats/tiff/TiffHeader;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 97
    :cond_0
    iget v2, v7, Lorg/apache/sanselan/formats/tiff/TiffHeader;->offsetToFirstIFD:I

    .line 98
    .local v2, "offset":I
    const/4 v3, 0x0

    .line 100
    .local v3, "dirType":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "visited":Ljava/util/List;
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 101
    invoke-direct/range {v0 .. v6}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readDirectory(Lorg/apache/sanselan/common/byteSources/ByteSource;IILorg/apache/sanselan/FormatCompliance;Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;Ljava/util/List;)Z

    goto :goto_0
.end method

.method private readDirectory(Lorg/apache/sanselan/common/byteSources/ByteSource;IILorg/apache/sanselan/FormatCompliance;Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;Ljava/util/List;)Z
    .locals 8
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "offset"    # I
    .param p3, "dirType"    # I
    .param p4, "formatCompliance"    # Lorg/apache/sanselan/FormatCompliance;
    .param p5, "listener"    # Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;
    .param p6, "visited"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v6, 0x0

    .local v6, "ignoreNextDirectory":Z
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 110
    invoke-direct/range {v0 .. v7}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readDirectory(Lorg/apache/sanselan/common/byteSources/ByteSource;IILorg/apache/sanselan/FormatCompliance;Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;ZLjava/util/List;)Z

    move-result v0

    return v0
.end method

.method private readDirectory(Lorg/apache/sanselan/common/byteSources/ByteSource;IILorg/apache/sanselan/FormatCompliance;Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;ZLjava/util/List;)Z
    .locals 38
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "offset"    # I
    .param p3, "dirType"    # I
    .param p4, "formatCompliance"    # Lorg/apache/sanselan/FormatCompliance;
    .param p5, "listener"    # Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;
    .param p6, "ignoreNextDirectory"    # Z
    .param p7, "visited"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v33, Ljava/lang/Integer;

    move-object/from16 v0, v33

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 130
    .local v33, "key":Ljava/lang/Number;
    move-object/from16 v0, p7

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 131
    const/4 v8, 0x0

    .line 292
    :cond_0
    :goto_0
    return v8

    .line 132
    :cond_1
    move-object/from16 v0, p7

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    const/16 v31, 0x0

    .line 137
    .local v31, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v31

    .line 138
    if-lez p2, :cond_2

    .line 139
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v31

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 141
    :cond_2
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v28, "fields":Ljava/util/ArrayList;
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getLength()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v20

    cmp-long v8, v18, v20

    if-ltz v8, :cond_3

    .line 146
    const/4 v8, 0x1

    .line 287
    if-eqz v31, :cond_0

    .line 288
    :try_start_1
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v25

    .line 291
    .local v25, "e":Ljava/lang/Exception;
    invoke-static/range {v25 .. v25}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 152
    .end local v25    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    const-string v8, "DirectoryEntryCount"

    const-string v13, "Not a Valid TIFF File"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v8, v1, v13}, Lorg/apache/sanselan/formats/tiff/TiffReader;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v27

    .line 164
    .local v27, "entryCount":I
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_1
    move/from16 v0, v30

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    .line 166
    :try_start_3
    const-string v8, "Tag"

    const-string v13, "Not a Valid TIFF File"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v8, v1, v13}, Lorg/apache/sanselan/formats/tiff/TiffReader;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v7

    .line 167
    .local v7, "tag":I
    const-string v8, "Type"

    const-string v13, "Not a Valid TIFF File"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v8, v1, v13}, Lorg/apache/sanselan/formats/tiff/TiffReader;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v9

    .line 168
    .local v9, "type":I
    const-string v8, "Length"

    const-string v13, "Not a Valid TIFF File"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v8, v1, v13}, Lorg/apache/sanselan/formats/tiff/TiffReader;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v10

    .line 173
    .local v10, "length":I
    const-string v8, "ValueOffset"

    const/4 v13, 0x4

    const-string v14, "Not a Valid TIFF File"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v8, v13, v1, v14}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v12

    .line 175
    .local v12, "valueOffsetBytes":[B
    const-string v8, "ValueOffset"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lorg/apache/sanselan/formats/tiff/TiffReader;->convertByteArrayToInt(Ljava/lang/String;[B)I

    move-result v11

    .line 178
    .local v11, "valueOffset":I
    if-nez v7, :cond_7

    .line 164
    :cond_4
    add-int/lit8 v30, v30, 0x1

    goto :goto_1

    .line 154
    .end local v7    # "tag":I
    .end local v9    # "type":I
    .end local v10    # "length":I
    .end local v11    # "valueOffset":I
    .end local v12    # "valueOffsetBytes":[B
    .end local v27    # "entryCount":I
    .end local v30    # "i":I
    :catch_1
    move-exception v25

    .line 156
    .local v25, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/sanselan/formats/tiff/TiffReader;->strict:Z

    if-eqz v8, :cond_6

    .line 157
    throw v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    .end local v25    # "e":Ljava/io/IOException;
    .end local v28    # "fields":Ljava/util/ArrayList;
    :catchall_0
    move-exception v8

    .line 287
    if-eqz v31, :cond_5

    .line 288
    :try_start_4
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 292
    :cond_5
    :goto_2
    throw v8

    .line 159
    .restart local v25    # "e":Ljava/io/IOException;
    .restart local v28    # "fields":Ljava/util/ArrayList;
    :cond_6
    const/4 v8, 0x1

    .line 287
    if-eqz v31, :cond_0

    .line 288
    :try_start_5
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 289
    :catch_2
    move-exception v25

    .line 291
    .local v25, "e":Ljava/lang/Exception;
    invoke-static/range {v25 .. v25}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 189
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v7    # "tag":I
    .restart local v9    # "type":I
    .restart local v10    # "length":I
    .restart local v11    # "valueOffset":I
    .restart local v12    # "valueOffsetBytes":[B
    .restart local v27    # "entryCount":I
    .restart local v30    # "i":I
    :cond_7
    :try_start_6
    new-instance v6, Lorg/apache/sanselan/formats/tiff/TiffField;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sanselan/formats/tiff/TiffReader;->getByteOrder()I

    move-result v13

    move/from16 v8, p3

    invoke-direct/range {v6 .. v13}, Lorg/apache/sanselan/formats/tiff/TiffField;-><init>(IIIII[BI)V

    .line 191
    .local v6, "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    move/from16 v0, v30

    invoke-virtual {v6, v0}, Lorg/apache/sanselan/formats/tiff/TiffField;->setSortHint(I)V

    .line 195
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lorg/apache/sanselan/formats/tiff/TiffField;->fillInValue(Lorg/apache/sanselan/common/byteSources/ByteSource;)V

    .line 199
    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    move-object/from16 v0, p5

    invoke-interface {v0, v6}, Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;->addField(Lorg/apache/sanselan/formats/tiff/TiffField;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v8

    if-nez v8, :cond_4

    .line 202
    const/4 v8, 0x1

    .line 287
    if-eqz v31, :cond_0

    .line 288
    :try_start_7
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 289
    :catch_3
    move-exception v25

    .line 291
    .restart local v25    # "e":Ljava/lang/Exception;
    invoke-static/range {v25 .. v25}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 205
    .end local v6    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    .end local v7    # "tag":I
    .end local v9    # "type":I
    .end local v10    # "length":I
    .end local v11    # "valueOffset":I
    .end local v12    # "valueOffsetBytes":[B
    .end local v25    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_8
    const-string v8, "nextDirectoryOffset"

    const-string v13, "Not a Valid TIFF File"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v8, v1, v13}, Lorg/apache/sanselan/formats/tiff/TiffReader;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v34

    .line 209
    .local v34, "nextDirectoryOffset":I
    new-instance v24, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    move-object/from16 v0, v24

    move/from16 v1, p3

    move-object/from16 v2, v28

    move/from16 v3, p2

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;-><init>(ILjava/util/ArrayList;II)V

    .line 212
    .local v24, "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    invoke-interface/range {p5 .. p5}, Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;->readImageData()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 214
    invoke-virtual/range {v24 .. v24}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->hasTiffImageData()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/TiffReader;->getTiffRawImageData(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/tiff/TiffDirectory;)Lorg/apache/sanselan/formats/tiff/TiffImageData;

    move-result-object v35

    .line 218
    .local v35, "rawImageData":Lorg/apache/sanselan/formats/tiff/TiffImageData;
    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->setTiffImageData(Lorg/apache/sanselan/formats/tiff/TiffImageData;)V

    .line 220
    .end local v35    # "rawImageData":Lorg/apache/sanselan/formats/tiff/TiffImageData;
    :cond_9
    invoke-virtual/range {v24 .. v24}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->hasJpegImageData()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 222
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/TiffReader;->getJpegRawImageData(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/tiff/TiffDirectory;)Lorg/apache/sanselan/formats/tiff/JpegImageData;

    move-result-object v36

    .line 224
    .local v36, "rawJpegImageData":Lorg/apache/sanselan/formats/tiff/JpegImageData;
    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->setJpegImageData(Lorg/apache/sanselan/formats/tiff/JpegImageData;)V

    .line 228
    .end local v36    # "rawJpegImageData":Lorg/apache/sanselan/formats/tiff/JpegImageData;
    :cond_a
    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;->addDirectory(Lorg/apache/sanselan/formats/tiff/TiffDirectory;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v8

    if-nez v8, :cond_b

    .line 229
    const/4 v8, 0x1

    .line 287
    if-eqz v31, :cond_0

    .line 288
    :try_start_9
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 289
    :catch_4
    move-exception v25

    .line 291
    .restart local v25    # "e":Ljava/lang/Exception;
    invoke-static/range {v25 .. v25}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 231
    .end local v25    # "e":Ljava/lang/Exception;
    :cond_b
    :try_start_a
    invoke-interface/range {p5 .. p5}, Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;->readOffsetDirectories()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 233
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v29, "fieldsToRemove":Ljava/util/List;
    const/16 v32, 0x0

    .local v32, "j":I
    :goto_3
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v8

    move/from16 v0, v32

    if-ge v0, v8, :cond_11

    .line 236
    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/sanselan/formats/tiff/TiffField;

    .line 238
    .local v26, "entry":Lorg/apache/sanselan/formats/tiff/TiffField;
    move-object/from16 v0, v26

    iget v8, v0, Lorg/apache/sanselan/formats/tiff/TiffField;->tag:I

    sget-object v13, Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;->EXIF_TAG_EXIF_OFFSET:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget v13, v13, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    if-eq v8, v13, :cond_c

    move-object/from16 v0, v26

    iget v8, v0, Lorg/apache/sanselan/formats/tiff/TiffField;->tag:I

    sget-object v13, Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;->EXIF_TAG_GPSINFO:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget v13, v13, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    if-eq v8, v13, :cond_c

    move-object/from16 v0, v26

    iget v8, v0, Lorg/apache/sanselan/formats/tiff/TiffField;->tag:I

    sget-object v13, Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;->EXIF_TAG_INTEROP_OFFSET:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget v13, v13, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    if-ne v8, v13, :cond_d

    .line 245
    :cond_c
    invoke-virtual/range {v26 .. v26}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v15

    .line 248
    .local v15, "subDirectoryOffset":I
    move-object/from16 v0, v26

    iget v8, v0, Lorg/apache/sanselan/formats/tiff/TiffField;->tag:I

    sget-object v13, Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;->EXIF_TAG_EXIF_OFFSET:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget v13, v13, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    if-ne v8, v13, :cond_e

    .line 249
    const/16 v16, -0x2

    .line 259
    .local v16, "subDirectoryType":I
    :goto_4
    const/16 v19, 0x1

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move-object/from16 v20, p7

    invoke-direct/range {v13 .. v20}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readDirectory(Lorg/apache/sanselan/common/byteSources/ByteSource;IILorg/apache/sanselan/FormatCompliance;Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;ZLjava/util/List;)Z

    move-result v37

    .line 263
    .local v37, "subDirectoryRead":Z
    if-nez v37, :cond_d

    .line 268
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v15    # "subDirectoryOffset":I
    .end local v16    # "subDirectoryType":I
    .end local v37    # "subDirectoryRead":Z
    :cond_d
    add-int/lit8 v32, v32, 0x1

    goto :goto_3

    .line 250
    .restart local v15    # "subDirectoryOffset":I
    :cond_e
    move-object/from16 v0, v26

    iget v8, v0, Lorg/apache/sanselan/formats/tiff/TiffField;->tag:I

    sget-object v13, Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;->EXIF_TAG_GPSINFO:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget v13, v13, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    if-ne v8, v13, :cond_f

    .line 251
    const/16 v16, -0x3

    .restart local v16    # "subDirectoryType":I
    goto :goto_4

    .line 252
    .end local v16    # "subDirectoryType":I
    :cond_f
    move-object/from16 v0, v26

    iget v8, v0, Lorg/apache/sanselan/formats/tiff/TiffField;->tag:I

    sget-object v13, Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;->EXIF_TAG_INTEROP_OFFSET:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget v13, v13, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    if-ne v8, v13, :cond_10

    .line 253
    const/16 v16, -0x4

    .restart local v16    # "subDirectoryType":I
    goto :goto_4

    .line 255
    .end local v16    # "subDirectoryType":I
    :cond_10
    new-instance v8, Lorg/apache/sanselan/ImageReadException;

    const-string v13, "Unknown subdirectory type."

    invoke-direct {v8, v13}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 272
    .end local v15    # "subDirectoryOffset":I
    .end local v26    # "entry":Lorg/apache/sanselan/formats/tiff/TiffField;
    :cond_11
    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 275
    .end local v29    # "fieldsToRemove":Ljava/util/List;
    .end local v32    # "j":I
    :cond_12
    if-nez p6, :cond_13

    move-object/from16 v0, v24

    iget v8, v0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->nextDirectoryOffset:I

    if-lez v8, :cond_13

    .line 278
    move-object/from16 v0, v24

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->nextDirectoryOffset:I

    move/from16 v19, v0

    add-int/lit8 v20, p3, 0x1

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p7

    invoke-direct/range {v17 .. v23}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readDirectory(Lorg/apache/sanselan/common/byteSources/ByteSource;IILorg/apache/sanselan/FormatCompliance;Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;Ljava/util/List;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 282
    :cond_13
    const/4 v8, 0x1

    .line 287
    if-eqz v31, :cond_0

    .line 288
    :try_start_b
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    .line 289
    :catch_5
    move-exception v25

    .line 291
    .restart local v25    # "e":Ljava/lang/Exception;
    invoke-static/range {v25 .. v25}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 289
    .end local v24    # "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    .end local v25    # "e":Ljava/lang/Exception;
    .end local v27    # "entryCount":I
    .end local v28    # "fields":Ljava/util/ArrayList;
    .end local v30    # "i":I
    .end local v34    # "nextDirectoryOffset":I
    :catch_6
    move-exception v25

    .line 291
    .restart local v25    # "e":Ljava/lang/Exception;
    invoke-static/range {v25 .. v25}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method private readTiffHeader(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffHeader;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "formatCompliance"    # Lorg/apache/sanselan/FormatCompliance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const-string v4, "BYTE_ORDER_1"

    const-string v5, "Not a Valid TIFF File"

    invoke-virtual {p0, v4, p1, v5}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    .line 70
    .local v0, "BYTE_ORDER_1":I
    const-string v4, "BYTE_ORDER_2"

    const-string v5, "Not a Valid TIFF File"

    invoke-virtual {p0, v4, p1, v5}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    .line 71
    .local v1, "BYTE_ORDER_2":I
    invoke-virtual {p0, v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffReader;->setByteOrder(II)V

    .line 73
    const-string v4, "tiffVersion"

    const-string v5, "Not a Valid TIFF File"

    invoke-virtual {p0, v4, p1, v5}, Lorg/apache/sanselan/formats/tiff/TiffReader;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v3

    .line 74
    .local v3, "tiffVersion":I
    const/16 v4, 0x2a

    if-eq v3, v4, :cond_0

    .line 75
    new-instance v4, Lorg/apache/sanselan/ImageReadException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unknown Tiff Version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_0
    const-string v4, "offsetToFirstIFD"

    const-string v5, "Not a Valid TIFF File"

    invoke-virtual {p0, v4, p1, v5}, Lorg/apache/sanselan/formats/tiff/TiffReader;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v2

    .line 80
    .local v2, "offsetToFirstIFD":I
    add-int/lit8 v4, v2, -0x8

    const-string v5, "Not a Valid TIFF File: couldn\'t find IFDs"

    invoke-virtual {p0, p1, v4, v5}, Lorg/apache/sanselan/formats/tiff/TiffReader;->skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 83
    iget-boolean v4, p0, Lorg/apache/sanselan/formats/tiff/TiffReader;->debug:Z

    if-eqz v4, :cond_1

    .line 84
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    :cond_1
    new-instance v4, Lorg/apache/sanselan/formats/tiff/TiffHeader;

    invoke-direct {v4, v0, v3, v2}, Lorg/apache/sanselan/formats/tiff/TiffHeader;-><init>(III)V

    return-object v4
.end method

.method private readTiffHeader(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffHeader;
    .locals 3
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "formatCompliance"    # Lorg/apache/sanselan/FormatCompliance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 50
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 51
    invoke-direct {p0, v1, p2}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readTiffHeader(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 56
    if-eqz v1, :cond_0

    .line 57
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-object v2

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 56
    if-eqz v1, :cond_1

    .line 57
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 61
    :cond_1
    :goto_1
    throw v2

    .line 58
    :catch_1
    move-exception v0

    .line 60
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public read(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;Lorg/apache/sanselan/FormatCompliance;Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;)V
    .locals 0
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .param p3, "formatCompliance"    # Lorg/apache/sanselan/FormatCompliance;
    .param p4, "listener"    # Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readDirectories(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/FormatCompliance;Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;)V

    .line 449
    return-void
.end method

.method public readContents(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;
    .locals 2
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .param p3, "formatCompliance"    # Lorg/apache/sanselan/FormatCompliance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    new-instance v0, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;

    invoke-direct {v0, p2}, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;-><init>(Ljava/util/Map;)V

    .line 438
    .local v0, "collector":Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/sanselan/formats/tiff/TiffReader;->read(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;Lorg/apache/sanselan/FormatCompliance;Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;)V

    .line 439
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;->getContents()Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object v1

    .line 440
    .local v1, "contents":Lorg/apache/sanselan/formats/tiff/TiffContents;
    return-object v1
.end method

.method public readDirectories(Lorg/apache/sanselan/common/byteSources/ByteSource;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;
    .locals 4
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "readImageData"    # Z
    .param p3, "formatCompliance"    # Lorg/apache/sanselan/FormatCompliance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    new-instance v0, Lorg/apache/sanselan/formats/tiff/TiffReader$FirstDirectoryCollector;

    invoke-direct {v0, p2}, Lorg/apache/sanselan/formats/tiff/TiffReader$FirstDirectoryCollector;-><init>(Z)V

    .line 424
    .local v0, "collector":Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;
    invoke-direct {p0, p1, p3, v0}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readDirectories(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/FormatCompliance;Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;)V

    .line 425
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;->getContents()Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object v1

    .line 426
    .local v1, "contents":Lorg/apache/sanselan/formats/tiff/TiffContents;
    iget-object v2, v1, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 427
    new-instance v2, Lorg/apache/sanselan/ImageReadException;

    const-string v3, "Image did not contain any directories."

    invoke-direct {v2, v3}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 429
    :cond_0
    return-object v1
.end method

.method public readFirstDirectory(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;
    .locals 4
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .param p3, "readImageData"    # Z
    .param p4, "formatCompliance"    # Lorg/apache/sanselan/FormatCompliance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    new-instance v0, Lorg/apache/sanselan/formats/tiff/TiffReader$FirstDirectoryCollector;

    invoke-direct {v0, p3}, Lorg/apache/sanselan/formats/tiff/TiffReader$FirstDirectoryCollector;-><init>(Z)V

    .line 411
    .local v0, "collector":Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;
    invoke-virtual {p0, p1, p2, p4, v0}, Lorg/apache/sanselan/formats/tiff/TiffReader;->read(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;Lorg/apache/sanselan/FormatCompliance;Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;)V

    .line 412
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;->getContents()Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object v1

    .line 413
    .local v1, "contents":Lorg/apache/sanselan/formats/tiff/TiffContents;
    iget-object v2, v1, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 414
    new-instance v2, Lorg/apache/sanselan/ImageReadException;

    const-string v3, "Image did not contain any directories."

    invoke-direct {v2, v3}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    :cond_0
    return-object v1
.end method
