.class public Lorg/apache/sanselan/formats/psd/PsdImageParser;
.super Lorg/apache/sanselan/ImageParser;
.source "PsdImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field public static final BLOCK_NAME_XMP:Ljava/lang/String; = "XMP"

.field private static final COLOR_MODE_INDEXED:I = 0x2

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".psd"

.field public static final IMAGE_RESOURCE_ID_ICC_PROFILE:I = 0x40f

.field public static final IMAGE_RESOURCE_ID_XMP:I = 0x424

.field private static final PSD_HEADER_LENGTH:I = 0x1a

.field private static final PSD_SECTION_COLOR_MODE:I = 0x1

.field private static final PSD_SECTION_HEADER:I = 0x0

.field private static final PSD_SECTION_IMAGE_DATA:I = 0x4

.field private static final PSD_SECTION_IMAGE_RESOURCES:I = 0x2

.field private static final PSD_SECTION_LAYER_AND_MASK_DATA:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".psd"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/sanselan/formats/psd/PsdImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/sanselan/ImageParser;-><init>()V

    .line 54
    const/16 v0, 0x4d

    invoke-super {p0, v0}, Lorg/apache/sanselan/ImageParser;->setByteOrder(I)V

    .line 56
    return-void
.end method

.method private findImageResourceBlock(Ljava/util/ArrayList;I)Lorg/apache/sanselan/formats/psd/ImageResourceBlock;
    .locals 3
    .param p1, "blocks"    # Ljava/util/ArrayList;
    .param p2, "ID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 591
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;

    .line 593
    .local v0, "block":Lorg/apache/sanselan/formats/psd/ImageResourceBlock;
    iget v2, v0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->id:I

    if-ne v2, p2, :cond_0

    .line 596
    .end local v0    # "block":Lorg/apache/sanselan/formats/psd/ImageResourceBlock;
    :goto_1
    return-object v0

    .line 589
    .restart local v0    # "block":Lorg/apache/sanselan/formats/psd/ImageResourceBlock;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    .end local v0    # "block":Lorg/apache/sanselan/formats/psd/ImageResourceBlock;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getChannelsPerMode(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 495
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 514
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 502
    goto :goto_0

    .line 504
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    move v0, v2

    .line 506
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 508
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 510
    goto :goto_0

    :pswitch_7
    move v0, v2

    .line 512
    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getData(Lorg/apache/sanselan/common/byteSources/ByteSource;I)[B
    .locals 8
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "section"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    const/4 v4, 0x0

    .line 356
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 359
    if-nez p2, :cond_0

    .line 360
    const-string v5, "Header"

    const/16 v6, 0x1a

    const-string v7, "Not a Valid PSD File"

    invoke-virtual {p0, v5, v6, v4, v7}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 412
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 416
    :goto_0
    return-object v5

    .line 413
    :catch_0
    move-exception v3

    .line 415
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 362
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v5, 0x1a

    :try_start_2
    invoke-virtual {p0, v4, v5}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    .line 364
    const-string v5, "ColorModeDataLength"

    const-string v6, "Not a Valid PSD File"

    invoke-virtual {p0, v5, v4, v6}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    .line 367
    .local v0, "ColorModeDataLength":I
    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    .line 368
    const-string v5, "ColorModeData"

    const-string v6, "Not a Valid PSD File"

    invoke-virtual {p0, v5, v0, v4, v6}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 412
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 413
    :catch_1
    move-exception v3

    .line 415
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 371
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_4
    invoke-virtual {p0, v4, v0}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    .line 375
    const-string v5, "ImageResourcesLength"

    const-string v6, "Not a Valid PSD File"

    invoke-virtual {p0, v5, v4, v6}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    .line 378
    .local v1, "ImageResourcesLength":I
    const/4 v5, 0x2

    if-ne p2, v5, :cond_2

    .line 379
    const-string v5, "ImageResources"

    const-string v6, "Not a Valid PSD File"

    invoke-virtual {p0, v5, v1, v4, v6}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 412
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 413
    :catch_2
    move-exception v3

    .line 415
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 382
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_6
    invoke-virtual {p0, v4, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    .line 386
    const-string v5, "LayerAndMaskDataLength"

    const-string v6, "Not a Valid PSD File"

    invoke-virtual {p0, v5, v4, v6}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v2

    .line 389
    .local v2, "LayerAndMaskDataLength":I
    const/4 v5, 0x3

    if-ne p2, v5, :cond_3

    .line 390
    const-string v5, "LayerAndMaskData"

    const-string v6, "Not a Valid PSD File"

    invoke-virtual {p0, v5, v2, v4, v6}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v5

    .line 412
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 413
    :catch_3
    move-exception v3

    .line 415
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 393
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_8
    invoke-virtual {p0, v4, v2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    .line 397
    const-string v5, "Compression"

    const-string v6, "Not a Valid PSD File"

    invoke-virtual {p0, v5, v4, v6}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 412
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 419
    :goto_1
    new-instance v5, Lorg/apache/sanselan/ImageReadException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "getInputStream: Unknown Section: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 413
    :catch_4
    move-exception v3

    .line 415
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 410
    .end local v0    # "ColorModeDataLength":I
    .end local v1    # "ImageResourcesLength":I
    .end local v2    # "LayerAndMaskDataLength":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 412
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 416
    :goto_2
    throw v5

    .line 413
    :catch_5
    move-exception v3

    .line 415
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private getInputStream(Lorg/apache/sanselan/common/byteSources/ByteSource;I)Ljava/io/InputStream;
    .locals 8
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "section"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 301
    .local v4, "is":Ljava/io/InputStream;
    if-nez p2, :cond_1

    .line 343
    :cond_0
    return-object v4

    .line 304
    :cond_1
    const/16 v5, 0x1a

    invoke-virtual {p0, v4, v5}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    .line 307
    const-string v5, "ColorModeDataLength"

    const-string v6, "Not a Valid PSD File"

    invoke-virtual {p0, v5, v4, v6}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    .line 310
    .local v0, "ColorModeDataLength":I
    const/4 v5, 0x1

    if-eq p2, v5, :cond_0

    .line 313
    invoke-virtual {p0, v4, v0}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    .line 317
    const-string v5, "ImageResourcesLength"

    const-string v6, "Not a Valid PSD File"

    invoke-virtual {p0, v5, v4, v6}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v2

    .line 320
    .local v2, "ImageResourcesLength":I
    const/4 v5, 0x2

    if-eq p2, v5, :cond_0

    .line 323
    invoke-virtual {p0, v4, v2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    .line 327
    const-string v5, "LayerAndMaskDataLength"

    const-string v6, "Not a Valid PSD File"

    invoke-virtual {p0, v5, v4, v6}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v3

    .line 330
    .local v3, "LayerAndMaskDataLength":I
    const/4 v5, 0x3

    if-eq p2, v5, :cond_0

    .line 333
    invoke-virtual {p0, v4, v3}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    .line 337
    const-string v5, "Compression"

    const-string v6, "Not a Valid PSD File"

    invoke-virtual {p0, v5, v4, v6}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    .line 342
    .local v1, "Compression":I
    const/4 v5, 0x4

    if-eq p2, v5, :cond_0

    .line 345
    new-instance v5, Lorg/apache/sanselan/ImageReadException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "getInputStream: Unknown Section: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private keepImageResourceBlock(I[I)Z
    .locals 3
    .param p1, "ID"    # I
    .param p2, "imageResourceIDs"    # [I

    .prologue
    const/4 v1, 0x1

    .line 184
    if-nez p2, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v1

    .line 187
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 188
    aget v2, p2, v0

    if-eq p1, v2, :cond_0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readHeader(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;
    .locals 11
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v8, 0x4

    new-array v8, v8, [B

    fill-array-data v8, :array_0

    const-string v9, "Not a Valid PSD File"

    invoke-virtual {p0, p1, v8, v9}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    .line 112
    const-string v8, "Version"

    const-string v9, "Not a Valid PSD File"

    invoke-virtual {p0, v8, p1, v9}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    .line 114
    .local v1, "Version":I
    const-string v8, "Reserved"

    const/4 v9, 0x6

    const-string v10, "Not a Valid PSD File"

    invoke-virtual {p0, v8, v9, p1, v10}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v2

    .line 117
    .local v2, "Reserved":[B
    const-string v8, "Channels"

    const-string v9, "Not a Valid PSD File"

    invoke-virtual {p0, v8, p1, v9}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v3

    .line 118
    .local v3, "Channels":I
    const-string v8, "Rows"

    const-string v9, "Not a Valid PSD File"

    invoke-virtual {p0, v8, p1, v9}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v4

    .line 119
    .local v4, "Rows":I
    const-string v8, "Columns"

    const-string v9, "Not a Valid PSD File"

    invoke-virtual {p0, v8, p1, v9}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v5

    .line 120
    .local v5, "Columns":I
    const-string v8, "Depth"

    const-string v9, "Not a Valid PSD File"

    invoke-virtual {p0, v8, p1, v9}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v6

    .line 121
    .local v6, "Depth":I
    const-string v8, "Mode"

    const-string v9, "Not a Valid PSD File"

    invoke-virtual {p0, v8, p1, v9}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v7

    .line 123
    .local v7, "Mode":I
    new-instance v0, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    invoke-direct/range {v0 .. v7}, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;-><init>(I[BIIIII)V

    .line 126
    .local v0, "result":Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;
    return-object v0

    .line 109
    :array_0
    .array-data 1
        0x38t
        0x42t
        0x50t
        0x53t
    .end array-data
.end method

.method private readHeader(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;
    .locals 3
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 90
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 92
    invoke-direct {p0, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readHeader(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 97
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    :goto_0
    return-object v2

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 97
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 101
    :goto_1
    throw v2

    .line 98
    :catch_1
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private readImageContents(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/psd/ImageContents;
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readHeader(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    move-result-object v1

    .line 134
    .local v1, "header":Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;
    const-string v6, "ColorModeDataLength"

    const-string v7, "Not a Valid PSD File"

    invoke-virtual {p0, v6, p1, v7}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v2

    .line 136
    .local v2, "ColorModeDataLength":I
    invoke-virtual {p0, p1, v2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    .line 141
    const-string v6, "ImageResourcesLength"

    const-string v7, "Not a Valid PSD File"

    invoke-virtual {p0, v6, p1, v7}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v3

    .line 143
    .local v3, "ImageResourcesLength":I
    invoke-virtual {p0, p1, v3}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    .line 148
    const-string v6, "LayerAndMaskDataLength"

    const-string v7, "Not a Valid PSD File"

    invoke-virtual {p0, v6, p1, v7}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v4

    .line 150
    .local v4, "LayerAndMaskDataLength":I
    invoke-virtual {p0, p1, v4}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    .line 155
    const-string v6, "Compression"

    const-string v7, "Not a Valid PSD File"

    invoke-virtual {p0, v6, p1, v7}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v5

    .line 163
    .local v5, "Compression":I
    new-instance v0, Lorg/apache/sanselan/formats/psd/ImageContents;

    invoke-direct/range {v0 .. v5}, Lorg/apache/sanselan/formats/psd/ImageContents;-><init>(Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;IIII)V

    .line 171
    .local v0, "result":Lorg/apache/sanselan/formats/psd/ImageContents;
    return-object v0
.end method

.method private readImageContents(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/psd/ImageContents;
    .locals 4
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    const/4 v2, 0x0

    .line 430
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 432
    invoke-direct {p0, v2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageContents(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/psd/ImageContents;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 438
    .local v1, "imageContents":Lorg/apache/sanselan/formats/psd/ImageContents;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 442
    :goto_0
    return-object v1

    .line 439
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 436
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "imageContents":Lorg/apache/sanselan/formats/psd/ImageContents;
    :catchall_0
    move-exception v3

    .line 438
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 442
    :goto_1
    throw v3

    .line 439
    :catch_1
    move-exception v0

    .line 441
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private readImageResourceBlocks(Ljava/io/InputStream;[III)Ljava/util/ArrayList;
    .locals 10
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "imageResourceIDs"    # [I
    .param p3, "maxBlocksToRead"    # I
    .param p4, "available"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v7, "result":Ljava/util/ArrayList;
    :cond_0
    if-lez p4, :cond_3

    .line 202
    const/4 v8, 0x4

    new-array v8, v8, [B

    fill-array-data v8, :array_0

    const-string v9, "Not a Valid PSD File"

    invoke-virtual {p0, p1, v8, v9}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    .line 204
    add-int/lit8 p4, p4, -0x4

    .line 206
    const-string v8, "ID"

    const-string v9, "Not a Valid PSD File"

    invoke-virtual {p0, v8, p1, v9}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v4

    .line 207
    .local v4, "id":I
    add-int/lit8 p4, p4, -0x2

    .line 209
    const-string v8, "NameLength"

    const-string v9, "Not a Valid PSD File"

    invoke-virtual {p0, v8, p1, v9}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    .line 211
    .local v6, "nameLength":I
    add-int/lit8 p4, p4, -0x1

    .line 212
    const-string v8, "NameData"

    const-string v9, "Not a Valid PSD File"

    invoke-virtual {p0, v8, v6, p1, v9}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v5

    .line 214
    .local v5, "nameBytes":[B
    sub-int/2addr p4, v6

    .line 215
    add-int/lit8 v8, v6, 0x1

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1

    .line 217
    const-string v8, "NameDiscard"

    const-string v9, "Not a Valid PSD File"

    invoke-virtual {p0, v8, p1, v9}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v3

    .line 219
    .local v3, "NameDiscard":I
    add-int/lit8 p4, p4, -0x1

    .line 222
    .end local v3    # "NameDiscard":I
    :cond_1
    const-string v8, "Size"

    const-string v9, "Not a Valid PSD File"

    invoke-virtual {p0, v8, p1, v9}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v2

    .line 223
    .local v2, "DataSize":I
    add-int/lit8 p4, p4, -0x4

    .line 228
    const-string v8, "Data"

    const-string v9, "Not a Valid PSD File"

    invoke-virtual {p0, v8, v2, p1, v9}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v0

    .line 230
    .local v0, "Data":[B
    sub-int/2addr p4, v2

    .line 232
    rem-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_2

    .line 234
    const-string v8, "DataDiscard"

    const-string v9, "Not a Valid PSD File"

    invoke-virtual {p0, v8, p1, v9}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    .line 236
    .local v1, "DataDiscard":I
    add-int/lit8 p4, p4, -0x1

    .line 239
    .end local v1    # "DataDiscard":I
    :cond_2
    invoke-direct {p0, v4, p2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->keepImageResourceBlock(I[I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 241
    new-instance v8, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;

    invoke-direct {v8, v4, v5, v0}, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;-><init>(I[B[B)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    if-ltz p3, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v8, p3, :cond_0

    .line 251
    .end local v0    # "Data":[B
    .end local v2    # "DataSize":I
    .end local v4    # "id":I
    .end local v5    # "nameBytes":[B
    .end local v6    # "nameLength":I
    :cond_3
    return-object v7

    .line 202
    nop

    :array_0
    .array-data 1
        0x38t
        0x42t
        0x49t
        0x4dt
    .end array-data
.end method

.method private readImageResourceBlocks(Lorg/apache/sanselan/common/byteSources/ByteSource;[II)Ljava/util/ArrayList;
    .locals 7
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "imageResourceIDs"    # [I
    .param p3, "maxBlocksToRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    const/4 v3, 0x0

    .line 262
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 264
    invoke-direct {p0, v3}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageContents(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/psd/ImageContents;

    move-result-object v2

    .line 266
    .local v2, "imageContents":Lorg/apache/sanselan/formats/psd/ImageContents;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 268
    const/4 v4, 0x2

    invoke-direct {p0, p1, v4}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->getInputStream(Lorg/apache/sanselan/common/byteSources/ByteSource;I)Ljava/io/InputStream;

    move-result-object v3

    .line 269
    const-string v4, "ImageResources"

    iget v5, v2, Lorg/apache/sanselan/formats/psd/ImageContents;->ImageResourcesLength:I

    const-string v6, "Not a Valid PSD File"

    invoke-virtual {p0, v4, v5, v3, v6}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v0

    .line 273
    .local v0, "ImageResources":[B
    invoke-direct {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageResourceBlocks([B[II)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 279
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 283
    :goto_0
    return-object v4

    .line 280
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 277
    .end local v0    # "ImageResources":[B
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "imageContents":Lorg/apache/sanselan/formats/psd/ImageContents;
    :catchall_0
    move-exception v4

    .line 279
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 283
    :goto_1
    throw v4

    .line 280
    :catch_1
    move-exception v1

    .line 282
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private readImageResourceBlocks([B[II)Ljava/util/ArrayList;
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "imageResourceIDs"    # [I
    .param p3, "maxBlocksToRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, p2, p3, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageResourceBlocks(Ljava/io/InputStream;[III)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    const-string v5, "gif.dumpImageFile"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v2

    .line 606
    .local v2, "fImageData":Lorg/apache/sanselan/ImageInfo;
    if-nez v2, :cond_0

    .line 607
    const/4 v5, 0x0

    .line 645
    :goto_0
    return v5

    .line 609
    :cond_0
    const-string v5, ""

    invoke-virtual {v2, p1, v5}, Lorg/apache/sanselan/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 612
    invoke-direct {p0, p2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageContents(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/psd/ImageContents;

    move-result-object v4

    .line 614
    .local v4, "imageContents":Lorg/apache/sanselan/formats/psd/ImageContents;
    invoke-virtual {v4, p1}, Lorg/apache/sanselan/formats/psd/ImageContents;->dump(Ljava/io/PrintWriter;)V

    .line 615
    iget-object v5, v4, Lorg/apache/sanselan/formats/psd/ImageContents;->header:Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    invoke-virtual {v5, p1}, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->dump(Ljava/io/PrintWriter;)V

    .line 617
    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct {p0, p2, v5, v6}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageResourceBlocks(Lorg/apache/sanselan/common/byteSources/ByteSource;[II)Ljava/util/ArrayList;

    move-result-object v1

    .line 621
    .local v1, "blocks":Ljava/util/ArrayList;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "blocks.size(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 626
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;

    .line 627
    .local v0, "block":Lorg/apache/sanselan/formats/psd/ImageResourceBlock;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, v0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->nameData:[B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\' ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->nameData:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->data:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " type: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    new-instance v6, Lorg/apache/sanselan/formats/psd/PSDConstants;

    invoke-direct {v6}, Lorg/apache/sanselan/formats/psd/PSDConstants;-><init>()V

    iget v7, v0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->id:I

    invoke-virtual {v6, v7}, Lorg/apache/sanselan/formats/psd/PSDConstants;->getDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 643
    .end local v0    # "block":Lorg/apache/sanselan/formats/psd/ImageResourceBlock;
    :cond_1
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public embedICCProfile(Ljava/io/File;Ljava/io/File;[B)Z
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;
    .param p3, "profile"    # [B

    .prologue
    .line 484
    const/4 v0, 0x0

    return v0
.end method

.method public embedICCProfile([B[B)[B
    .locals 1
    .param p1, "image"    # [B
    .param p2, "profile"    # [B

    .prologue
    .line 479
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lorg/apache/sanselan/formats/psd/PsdImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/sanselan/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PSD:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 17
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    invoke-direct/range {p0 .. p1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageContents(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/psd/ImageContents;

    move-result-object v10

    .line 656
    .local v10, "imageContents":Lorg/apache/sanselan/formats/psd/ImageContents;
    if-nez v10, :cond_0

    .line 657
    new-instance v14, Lorg/apache/sanselan/ImageReadException;

    const-string v15, "PSD: Couldn\'t read blocks"

    invoke-direct {v14, v15}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 659
    :cond_0
    iget-object v8, v10, Lorg/apache/sanselan/formats/psd/ImageContents;->header:Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    .line 660
    .local v8, "header":Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;
    if-nez v8, :cond_1

    .line 661
    new-instance v14, Lorg/apache/sanselan/ImageReadException;

    const-string v15, "PSD: Couldn\'t read Header"

    invoke-direct {v14, v15}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 671
    :cond_1
    const/4 v14, 0x0

    const/4 v15, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageResourceBlocks(Lorg/apache/sanselan/common/byteSources/ByteSource;[II)Ljava/util/ArrayList;

    move-result-object v3

    .line 675
    .local v3, "blocks":Ljava/util/ArrayList;
    iget v13, v8, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Columns:I

    .line 676
    .local v13, "width":I
    iget v9, v8, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Rows:I

    .line 683
    .local v9, "height":I
    const/4 v7, 0x0

    .line 684
    .local v7, "hasAlpha":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/sanselan/common/IBufferedImageFactory;

    move-result-object v14

    invoke-interface {v14, v13, v9, v7}, Lorg/apache/sanselan/common/IBufferedImageFactory;->getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v12

    .line 688
    .local v12, "result":Ljava/awt/image/BufferedImage;
    iget-object v14, v10, Lorg/apache/sanselan/formats/psd/ImageContents;->header:Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    iget v14, v14, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Mode:I

    packed-switch v14, :pswitch_data_0

    .line 729
    :pswitch_0
    new-instance v14, Lorg/apache/sanselan/ImageReadException;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Unknown Mode: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    iget-object v0, v10, Lorg/apache/sanselan/formats/psd/ImageContents;->header:Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Mode:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 691
    :pswitch_1
    new-instance v4, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserBitmap;

    invoke-direct {v4}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserBitmap;-><init>()V

    .line 733
    .local v4, "dataParser":Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
    :goto_0
    iget v14, v10, Lorg/apache/sanselan/formats/psd/ImageContents;->Compression:I

    packed-switch v14, :pswitch_data_1

    .line 742
    new-instance v14, Lorg/apache/sanselan/ImageReadException;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Unknown Compression: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    iget v0, v10, Lorg/apache/sanselan/formats/psd/ImageContents;->Compression:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 695
    .end local v4    # "dataParser":Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
    :pswitch_2
    new-instance v4, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserGrayscale;

    invoke-direct {v4}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserGrayscale;-><init>()V

    .line 696
    .restart local v4    # "dataParser":Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
    goto :goto_0

    .line 698
    .end local v4    # "dataParser":Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
    :pswitch_3
    new-instance v4, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserRGB;

    invoke-direct {v4}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserRGB;-><init>()V

    .line 699
    .restart local v4    # "dataParser":Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
    goto :goto_0

    .line 701
    .end local v4    # "dataParser":Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
    :pswitch_4
    new-instance v4, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserCMYK;

    invoke-direct {v4}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserCMYK;-><init>()V

    .line 702
    .restart local v4    # "dataParser":Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
    goto :goto_0

    .line 704
    .end local v4    # "dataParser":Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
    :pswitch_5
    new-instance v4, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserLab;

    invoke-direct {v4}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserLab;-><init>()V

    .line 705
    .restart local v4    # "dataParser":Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
    goto :goto_0

    .line 710
    .end local v4    # "dataParser":Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
    :pswitch_6
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->getData(Lorg/apache/sanselan/common/byteSources/ByteSource;I)[B

    move-result-object v2

    .line 718
    .local v2, "ColorModeData":[B
    new-instance v4, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserIndexed;

    invoke-direct {v4, v2}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserIndexed;-><init>([B)V

    .line 719
    .restart local v4    # "dataParser":Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
    goto :goto_0

    .line 736
    .end local v2    # "ColorModeData":[B
    :pswitch_7
    new-instance v6, Lorg/apache/sanselan/formats/psd/datareaders/UncompressedDataReader;

    invoke-direct {v6, v4}, Lorg/apache/sanselan/formats/psd/datareaders/UncompressedDataReader;-><init>(Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;)V

    .line 746
    .local v6, "fDataReader":Lorg/apache/sanselan/formats/psd/datareaders/DataReader;
    :goto_1
    const/4 v11, 0x0

    .line 750
    .local v11, "is":Ljava/io/InputStream;
    const/4 v14, 0x4

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->getInputStream(Lorg/apache/sanselan/common/byteSources/ByteSource;I)Ljava/io/InputStream;

    move-result-object v11

    .line 751
    move-object/from16 v0, p0

    invoke-virtual {v6, v11, v12, v10, v0}, Lorg/apache/sanselan/formats/psd/datareaders/DataReader;->readData(Ljava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/sanselan/formats/psd/ImageContents;Lorg/apache/sanselan/common/BinaryFileParser;)V

    .line 753
    invoke-virtual {v6}, Lorg/apache/sanselan/formats/psd/datareaders/DataReader;->dump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    if-eqz v11, :cond_2

    .line 762
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 772
    :cond_2
    :goto_2
    return-object v12

    .line 739
    .end local v6    # "fDataReader":Lorg/apache/sanselan/formats/psd/datareaders/DataReader;
    .end local v11    # "is":Ljava/io/InputStream;
    :pswitch_8
    new-instance v6, Lorg/apache/sanselan/formats/psd/datareaders/CompressedDataReader;

    invoke-direct {v6, v4}, Lorg/apache/sanselan/formats/psd/datareaders/CompressedDataReader;-><init>(Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;)V

    .line 740
    .restart local v6    # "fDataReader":Lorg/apache/sanselan/formats/psd/datareaders/DataReader;
    goto :goto_1

    .line 763
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 765
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 759
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 761
    if-eqz v11, :cond_3

    .line 762
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 766
    :cond_3
    :goto_3
    throw v14

    .line 763
    :catch_1
    move-exception v5

    .line 765
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 688
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 733
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, ".psd"

    return-object v0
.end method

.method public getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B
    .locals 8
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 453
    new-array v4, v6, [I

    const/16 v5, 0x40f

    aput v5, v4, v7

    invoke-direct {p0, p1, v4, v6}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageResourceBlocks(Lorg/apache/sanselan/common/byteSources/ByteSource;[II)Ljava/util/ArrayList;

    move-result-object v0

    .line 456
    .local v0, "blocks":Ljava/util/ArrayList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v6, :cond_2

    :cond_0
    move-object v1, v3

    .line 463
    :cond_1
    :goto_0
    return-object v1

    .line 459
    :cond_2
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;

    .line 460
    .local v2, "irb":Lorg/apache/sanselan/formats/psd/ImageResourceBlock;
    iget-object v1, v2, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->data:[B

    .line 461
    .local v1, "bytes":[B
    if-eqz v1, :cond_3

    array-length v4, v1

    if-ge v4, v6, :cond_1

    :cond_3
    move-object v1, v3

    .line 462
    goto :goto_0
.end method

.method public getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 28
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-direct/range {p0 .. p1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageContents(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/psd/ImageContents;

    move-result-object v22

    .line 525
    .local v22, "imageContents":Lorg/apache/sanselan/formats/psd/ImageContents;
    if-nez v22, :cond_0

    .line 526
    new-instance v23, Lorg/apache/sanselan/ImageReadException;

    const-string v24, "PSD: Couldn\'t read blocks"

    invoke-direct/range {v23 .. v24}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 528
    :cond_0
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/sanselan/formats/psd/ImageContents;->header:Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    move-object/from16 v21, v0

    .line 529
    .local v21, "header":Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;
    if-nez v21, :cond_1

    .line 530
    new-instance v23, Lorg/apache/sanselan/ImageReadException;

    const-string v24, "PSD: Couldn\'t read Header"

    invoke-direct/range {v23 .. v24}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 532
    :cond_1
    move-object/from16 v0, v21

    iget v15, v0, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Columns:I

    .line 533
    .local v15, "Width":I
    move-object/from16 v0, v21

    iget v8, v0, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Rows:I

    .line 535
    .local v8, "Height":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v5, "Comments":Ljava/util/ArrayList;
    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Depth:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Mode:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->getChannelsPerMode(I)I

    move-result v24

    mul-int v4, v23, v24

    .line 543
    .local v4, "BitsPerPixel":I
    if-gez v4, :cond_2

    .line 544
    const/4 v4, 0x0

    .line 545
    :cond_2
    sget-object v6, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PSD:Lorg/apache/sanselan/ImageFormat;

    .line 546
    .local v6, "Format":Lorg/apache/sanselan/ImageFormat;
    const-string v7, "Photoshop"

    .line 547
    .local v7, "FormatName":Ljava/lang/String;
    const-string v9, "image/x-photoshop"

    .line 549
    .local v9, "MimeType":Ljava/lang/String;
    const/4 v10, -0x1

    .line 551
    .local v10, "NumberOfImages":I
    const/16 v16, 0x0

    .line 553
    .local v16, "isProgressive":Z
    const/16 v13, 0x48

    .line 554
    .local v13, "PhysicalWidthDpi":I
    int-to-double v0, v15

    move-wide/from16 v24, v0

    int-to-double v0, v13

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v14, v0

    .line 555
    .local v14, "PhysicalWidthInch":F
    const/16 v11, 0x48

    .line 556
    .local v11, "PhysicalHeightDpi":I
    int-to-double v0, v8

    move-wide/from16 v24, v0

    int-to-double v0, v11

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v12, v0

    .line 558
    .local v12, "PhysicalHeightInch":F
    const-string v3, "Psd"

    .line 560
    .local v3, "FormatDetails":Ljava/lang/String;
    const/16 v17, 0x0

    .line 561
    .local v17, "isTransparent":Z
    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Mode:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    const/16 v18, 0x1

    .line 562
    .local v18, "usesPalette":Z
    :goto_0
    const/16 v19, -0x2

    .line 565
    .local v19, "ColorType":I
    move-object/from16 v0, v22

    iget v0, v0, Lorg/apache/sanselan/formats/psd/ImageContents;->Compression:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 574
    const-string v20, "Unknown"

    .line 577
    .local v20, "compressionAlgorithm":Ljava/lang/String;
    :goto_1
    new-instance v2, Lorg/apache/sanselan/ImageInfo;

    invoke-direct/range {v2 .. v20}, Lorg/apache/sanselan/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;)V

    .line 583
    .local v2, "result":Lorg/apache/sanselan/ImageInfo;
    return-object v2

    .line 561
    .end local v2    # "result":Lorg/apache/sanselan/ImageInfo;
    .end local v18    # "usesPalette":Z
    .end local v19    # "ColorType":I
    .end local v20    # "compressionAlgorithm":Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    goto :goto_0

    .line 568
    .restart local v18    # "usesPalette":Z
    .restart local v19    # "ColorType":I
    :pswitch_0
    const-string v20, "None"

    .line 569
    .restart local v20    # "compressionAlgorithm":Ljava/lang/String;
    goto :goto_1

    .line 571
    .end local v20    # "compressionAlgorithm":Ljava/lang/String;
    :pswitch_1
    const-string v20, "Photoshop"

    .line 572
    .restart local v20    # "compressionAlgorithm":Ljava/lang/String;
    goto :goto_1

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 4
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readHeader(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    move-result-object v0

    .line 470
    .local v0, "bhi":Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;
    if-nez v0, :cond_0

    .line 471
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "PSD: couldn\'t read header"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 473
    :cond_0
    new-instance v1, Ljava/awt/Dimension;

    iget v2, v0, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Columns:I

    iget v3, v0, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Rows:I

    invoke-direct {v1, v2, v3}, Ljava/awt/Dimension;-><init>(II)V

    return-object v1
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
    .line 490
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "PSD-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 11
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 794
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageContents(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/psd/ImageContents;

    move-result-object v4

    .line 796
    .local v4, "imageContents":Lorg/apache/sanselan/formats/psd/ImageContents;
    if-nez v4, :cond_0

    .line 797
    new-instance v7, Lorg/apache/sanselan/ImageReadException;

    const-string v8, "PSD: Couldn\'t read blocks"

    invoke-direct {v7, v8}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 799
    :cond_0
    iget-object v3, v4, Lorg/apache/sanselan/formats/psd/ImageContents;->header:Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    .line 800
    .local v3, "header":Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;
    if-nez v3, :cond_1

    .line 801
    new-instance v7, Lorg/apache/sanselan/ImageReadException;

    const-string v8, "PSD: Couldn\'t read Header"

    invoke-direct {v7, v8}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 803
    :cond_1
    new-array v7, v9, [I

    const/16 v8, 0x424

    aput v8, v7, v10

    const/4 v8, -0x1

    invoke-direct {p0, p1, v7, v8}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageResourceBlocks(Lorg/apache/sanselan/common/byteSources/ByteSource;[II)Ljava/util/ArrayList;

    move-result-object v1

    .line 806
    .local v1, "blocks":Ljava/util/ArrayList;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v9, :cond_3

    .line 835
    :cond_2
    :goto_0
    return-object v5

    .line 809
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v6, "xmpBlocks":Ljava/util/List;
    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 823
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v9, :cond_2

    .line 825
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v9, :cond_4

    .line 826
    new-instance v7, Lorg/apache/sanselan/ImageReadException;

    const-string v8, "PSD contains more than one XMP block."

    invoke-direct {v7, v8}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 829
    :cond_4
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;

    .line 834
    .local v0, "block":Lorg/apache/sanselan/formats/psd/ImageResourceBlock;
    :try_start_0
    new-instance v5, Ljava/lang/String;

    iget-object v7, v0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->data:[B

    const/4 v8, 0x0

    iget-object v9, v0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->data:[B

    array-length v9, v9

    const-string v10, "utf-8"

    invoke-direct {v5, v7, v8, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    .local v5, "xml":Ljava/lang/String;
    goto :goto_0

    .line 836
    .end local v5    # "xml":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 838
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lorg/apache/sanselan/ImageReadException;

    const-string v8, "Invalid JPEG XMP Segment."

    invoke-direct {v7, v8}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
