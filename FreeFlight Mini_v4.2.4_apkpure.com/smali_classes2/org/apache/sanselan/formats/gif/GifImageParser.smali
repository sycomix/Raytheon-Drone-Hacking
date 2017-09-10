.class public Lorg/apache/sanselan/formats/gif/GifImageParser;
.super Lorg/apache/sanselan/ImageParser;
.source "GifImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final APPLICATION_EXTENSION_LABEL:I = 0xff

.field private static final COMMENT_EXTENSION:I = 0xfe

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".gif"

.field private static final EXTENSION_CODE:I = 0x21

.field private static final GIF_HEADER_SIGNATURE:[B

.field private static final GRAPHIC_CONTROL_EXTENSION:I = 0x21f9

.field private static final IMAGE_SEPARATOR:I = 0x2c

.field private static final INTERLACE_FLAG_MASK:I = 0x40

.field private static final LOCAL_COLOR_TABLE_FLAG_MASK:I = 0x80

.field private static final PLAIN_TEXT_EXTENSION:I = 0x1

.field private static final SORT_FLAG_MASK:I = 0x20

.field private static final TERMINATOR_BYTE:I = 0x3b

.field private static final XMP_APPLICATION_ID_AND_AUTH_CODE:[B

.field private static final XMP_COMPLETE_CODE:I = 0x21ff

.field private static final XMP_EXTENSION:I = 0xff


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".gif"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->GIF_HEADER_SIGNATURE:[B

    .line 1079
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    return-void

    .line 83
    :array_0
    .array-data 1
        0x47t
        0x49t
        0x46t
    .end array-data

    .line 1079
    :array_1
    .array-data 1
        0x58t
        0x4dt
        0x50t
        0x20t
        0x44t
        0x61t
        0x74t
        0x61t
        0x58t
        0x4dt
        0x50t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/sanselan/ImageParser;-><init>()V

    .line 55
    const/16 v0, 0x49

    invoke-super {p0, v0}, Lorg/apache/sanselan/ImageParser;->setByteOrder(I)V

    .line 56
    return-void
.end method

.method private convertColorTableSize(I)I
    .locals 2
    .param p1, "ct_size"    # I

    .prologue
    .line 425
    const/4 v0, 0x2

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->simple_pow(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private findBlock(Ljava/util/ArrayList;I)Lorg/apache/sanselan/formats/gif/GIFBlock;
    .locals 3
    .param p1, "v"    # Ljava/util/ArrayList;
    .param p2, "code"    # I

    .prologue
    .line 464
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 466
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/gif/GIFBlock;

    .line 467
    .local v0, "gifBlock":Lorg/apache/sanselan/formats/gif/GIFBlock;
    iget v2, v0, Lorg/apache/sanselan/formats/gif/GIFBlock;->blockCode:I

    if-ne v2, p2, :cond_0

    .line 470
    .end local v0    # "gifBlock":Lorg/apache/sanselan/formats/gif/GIFBlock;
    :goto_1
    return-object v0

    .line 464
    .restart local v0    # "gifBlock":Lorg/apache/sanselan/formats/gif/GIFBlock;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 470
    .end local v0    # "gifBlock":Lorg/apache/sanselan/formats/gif/GIFBlock;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getColorTable([B)[I
    .locals 11
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    array-length v8, p1

    rem-int/lit8 v8, v8, 0x3

    if-eqz v8, :cond_0

    .line 670
    new-instance v8, Lorg/apache/sanselan/ImageReadException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Bad Color Table Length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    array-length v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 672
    :cond_0
    array-length v8, p1

    div-int/lit8 v4, v8, 0x3

    .line 674
    .local v4, "length":I
    new-array v6, v4, [I

    .line 676
    .local v6, "result":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 678
    mul-int/lit8 v8, v3, 0x3

    add-int/lit8 v8, v8, 0x0

    aget-byte v8, p1, v8

    and-int/lit16 v5, v8, 0xff

    .line 679
    .local v5, "red":I
    mul-int/lit8 v8, v3, 0x3

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v2, v8, 0xff

    .line 680
    .local v2, "green":I
    mul-int/lit8 v8, v3, 0x3

    add-int/lit8 v8, v8, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v1, v8, 0xff

    .line 682
    .local v1, "blue":I
    const/16 v0, 0xff

    .line 684
    .local v0, "alpha":I
    const/high16 v8, -0x1000000

    shl-int/lit8 v9, v5, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v9, v2, 0x8

    or-int/2addr v8, v9

    shl-int/lit8 v9, v1, 0x0

    or-int v7, v8, v9

    .line 685
    .local v7, "rgb":I
    aput v7, v6, v3

    .line 676
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 688
    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v2    # "green":I
    .end local v5    # "red":I
    .end local v7    # "rgb":I
    :cond_1
    return-object v6
.end method

.method private getComments(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "v"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v4, "result":Ljava/util/ArrayList;
    const/16 v2, 0x21fe

    .line 557
    .local v2, "code":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 559
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/gif/GIFBlock;

    .line 560
    .local v0, "block":Lorg/apache/sanselan/formats/gif/GIFBlock;
    iget v5, v0, Lorg/apache/sanselan/formats/gif/GIFBlock;->blockCode:I

    if-ne v5, v2, :cond_0

    .line 562
    check-cast v0, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;

    .end local v0    # "block":Lorg/apache/sanselan/formats/gif/GIFBlock;
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;->appendSubBlocks()[B

    move-result-object v1

    .line 563
    .local v1, "bytes":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    .end local v1    # "bytes":[B
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 567
    :cond_1
    return-object v4
.end method

.method private readBlocks(Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;Ljava/io/InputStream;ZLorg/apache/sanselan/FormatCompliance;)Ljava/util/ArrayList;
    .locals 15
    .param p1, "ghi"    # Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "stopBeforeImageData"    # Z
    .param p4, "formatCompliance"    # Lorg/apache/sanselan/FormatCompliance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v14, "result":Ljava/util/ArrayList;
    :cond_0
    :goto_0
    :sswitch_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 244
    .local v3, "code":I
    sparse-switch v3, :sswitch_data_0

    .line 329
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "GIF: unknown code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :sswitch_1
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "GIF: unexpected end of data"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_2
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 250
    invoke-direct/range {v1 .. v6}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readImageDescriptor(Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;ILjava/io/InputStream;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/gif/ImageDescriptor;

    move-result-object v12

    .line 252
    .local v12, "id":Lorg/apache/sanselan/formats/gif/ImageDescriptor;
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    .end local v12    # "id":Lorg/apache/sanselan/formats/gif/ImageDescriptor;
    :sswitch_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 262
    .local v10, "extensionCode":I
    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v2, v10, 0xff

    or-int v9, v1, v2

    .line 265
    .local v9, "completeCode":I
    sparse-switch v10, :sswitch_data_1

    .line 309
    if-eqz p4, :cond_1

    .line 310
    const-string v1, "Unknown block"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v9}, Lorg/apache/sanselan/FormatCompliance;->addComment(Ljava/lang/String;I)V

    .line 313
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v9}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/sanselan/formats/gif/GenericGIFBlock;

    move-result-object v7

    .line 315
    .local v7, "block":Lorg/apache/sanselan/formats/gif/GenericGIFBlock;
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    .end local v7    # "block":Lorg/apache/sanselan/formats/gif/GenericGIFBlock;
    :sswitch_4
    move-object/from16 v0, p2

    invoke-direct {p0, v9, v0}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readGraphicControlExtension(ILjava/io/InputStream;)Lorg/apache/sanselan/formats/gif/GraphicControlExtension;

    move-result-object v11

    .line 270
    .local v11, "gce":Lorg/apache/sanselan/formats/gif/GraphicControlExtension;
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    .end local v11    # "gce":Lorg/apache/sanselan/formats/gif/GraphicControlExtension;
    :sswitch_5
    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v9}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/sanselan/formats/gif/GenericGIFBlock;

    move-result-object v7

    .line 277
    .restart local v7    # "block":Lorg/apache/sanselan/formats/gif/GenericGIFBlock;
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    .end local v7    # "block":Lorg/apache/sanselan/formats/gif/GenericGIFBlock;
    :sswitch_6
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readSubBlock(Ljava/io/InputStream;)[B

    move-result-object v13

    .line 286
    .local v13, "label":[B
    if-eqz p4, :cond_2

    .line 287
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown Application Extension ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v9}, Lorg/apache/sanselan/FormatCompliance;->addComment(Ljava/lang/String;I)V

    .line 296
    :cond_2
    if-eqz v13, :cond_0

    array-length v1, v13

    if-lez v1, :cond_0

    .line 298
    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v9, v13}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I[B)Lorg/apache/sanselan/formats/gif/GenericGIFBlock;

    move-result-object v7

    .line 300
    .restart local v7    # "block":Lorg/apache/sanselan/formats/gif/GenericGIFBlock;
    invoke-virtual {v7}, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;->appendSubBlocks()[B

    move-result-object v8

    .line 302
    .local v8, "bytes":[B
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 323
    .end local v7    # "block":Lorg/apache/sanselan/formats/gif/GenericGIFBlock;
    .end local v8    # "bytes":[B
    .end local v9    # "completeCode":I
    .end local v10    # "extensionCode":I
    .end local v13    # "label":[B
    :sswitch_7
    return-object v14

    .line 244
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_0
        0x21 -> :sswitch_3
        0x2c -> :sswitch_2
        0x3b -> :sswitch_7
    .end sparse-switch

    .line 265
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_4
        0xfe -> :sswitch_5
        0xff -> :sswitch_6
    .end sparse-switch
.end method

.method private readColorTable(Ljava/io/InputStream;ILorg/apache/sanselan/FormatCompliance;)[B
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "ct_size"    # I
    .param p3, "formatCompliance"    # Lorg/apache/sanselan/FormatCompliance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-direct {p0, p2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->convertColorTableSize(I)I

    move-result v0

    .line 434
    .local v0, "actual_size":I
    const-string v2, "block"

    const-string v3, "GIF: corrupt Color Table"

    invoke-virtual {p0, v2, v0, p1, v3}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v1

    .line 437
    .local v1, "bytes":[B
    return-object v1
.end method

.method private readFile(Lorg/apache/sanselan/common/byteSources/ByteSource;Z)Lorg/apache/sanselan/formats/gif/ImageContents;
    .locals 1
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "stopBeforeImageData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readFile(Lorg/apache/sanselan/common/byteSources/ByteSource;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/gif/ImageContents;

    move-result-object v0

    return-object v0
.end method

.method private readFile(Lorg/apache/sanselan/common/byteSources/ByteSource;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/gif/ImageContents;
    .locals 7
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "stopBeforeImageData"    # Z
    .param p3, "formatCompliance"    # Lorg/apache/sanselan/FormatCompliance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    const/4 v4, 0x0

    .line 487
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 489
    invoke-direct {p0, v4, p3}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readHeader(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    move-result-object v2

    .line 491
    .local v2, "ghi":Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;
    const/4 v3, 0x0

    .line 492
    .local v3, "globalColorTable":[B
    iget-boolean v6, v2, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->globalColorTableFlag:Z

    if-eqz v6, :cond_0

    .line 493
    iget-byte v6, v2, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->sizeOfGlobalColorTable:B

    invoke-direct {p0, v4, v6, p3}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readColorTable(Ljava/io/InputStream;ILorg/apache/sanselan/FormatCompliance;)[B

    move-result-object v3

    .line 496
    :cond_0
    invoke-direct {p0, v2, v4, p2, p3}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readBlocks(Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;Ljava/io/InputStream;ZLorg/apache/sanselan/FormatCompliance;)Ljava/util/ArrayList;

    move-result-object v0

    .line 499
    .local v0, "blocks":Ljava/util/ArrayList;
    new-instance v5, Lorg/apache/sanselan/formats/gif/ImageContents;

    invoke-direct {v5, v2, v3, v0}, Lorg/apache/sanselan/formats/gif/ImageContents;-><init>(Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;[BLjava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    .local v5, "result":Lorg/apache/sanselan/formats/gif/ImageContents;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 512
    :goto_0
    return-object v5

    .line 509
    :catch_0
    move-exception v1

    .line 511
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 505
    .end local v0    # "blocks":Ljava/util/ArrayList;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ghi":Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;
    .end local v3    # "globalColorTable":[B
    .end local v5    # "result":Lorg/apache/sanselan/formats/gif/ImageContents;
    :catchall_0
    move-exception v6

    .line 508
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 512
    :goto_1
    throw v6

    .line 509
    :catch_1
    move-exception v1

    .line 511
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private readGraphicControlExtension(ILjava/io/InputStream;)Lorg/apache/sanselan/formats/gif/GraphicControlExtension;
    .locals 7
    .param p1, "code"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const-string v0, "block_size"

    const-string v1, "GIF: corrupt GraphicControlExt"

    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 170
    const-string v0, "packed fields"

    const-string v1, "GIF: corrupt GraphicControlExt"

    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    .line 173
    .local v2, "packed":I
    and-int/lit8 v0, v2, 0x1c

    shr-int/lit8 v3, v0, 0x2

    .line 174
    .local v3, "dispose":I
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 176
    .local v4, "transparency":Z
    :goto_0
    const-string v0, "delay in milliseconds"

    const-string v1, "GIF: corrupt GraphicControlExt"

    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v5

    .line 178
    .local v5, "delay":I
    const-string v0, "transparent color index"

    const-string v1, "GIF: corrupt GraphicControlExt"

    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 180
    .local v6, "transparentColorIndex":I
    const-string v0, "block terminator"

    const-string v1, "GIF: corrupt GraphicControlExt"

    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 182
    new-instance v0, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;-><init>(IIIZII)V

    return-object v0

    .line 174
    .end local v4    # "transparency":Z
    .end local v5    # "delay":I
    .end local v6    # "transparentColorIndex":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private readHeader(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;
    .locals 22
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "formatCompliance"    # Lorg/apache/sanselan/FormatCompliance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const-string v3, "identifier1"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    .line 90
    .local v4, "identifier1":B
    const-string v3, "identifier2"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    .line 91
    .local v5, "identifier2":B
    const-string v3, "identifier3"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    .line 93
    .local v6, "identifier3":B
    const-string v3, "version1"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v7

    .line 94
    .local v7, "version1":B
    const-string v3, "version2"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v8

    .line 95
    .local v8, "version2":B
    const-string v3, "version3"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v9

    .line 97
    .local v9, "version3":B
    if-eqz p2, :cond_0

    .line 99
    const-string v3, "Signature"

    sget-object v19, Lorg/apache/sanselan/formats/gif/GifImageParser;->GIF_HEADER_SIGNATURE:[B

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-byte v4, v20, v21

    const/16 v21, 0x1

    aput-byte v5, v20, v21

    const/16 v21, 0x2

    aput-byte v6, v20, v21

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/sanselan/FormatCompliance;->compare_bytes(Ljava/lang/String;[B[B)Z

    .line 101
    const-string v3, "version"

    const/16 v19, 0x38

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1, v7}, Lorg/apache/sanselan/FormatCompliance;->compare(Ljava/lang/String;II)Z

    .line 102
    const-string v3, "version"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1, v8}, Lorg/apache/sanselan/FormatCompliance;->compare(Ljava/lang/String;[II)Z

    .line 104
    const-string v3, "version"

    const/16 v19, 0x61

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1, v9}, Lorg/apache/sanselan/FormatCompliance;->compare(Ljava/lang/String;II)Z

    .line 107
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v3, :cond_1

    .line 108
    const-string v3, "identifier: "

    shl-int/lit8 v19, v4, 0x10

    shl-int/lit8 v20, v5, 0x8

    or-int v19, v19, v20

    shl-int/lit8 v20, v6, 0x0

    or-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->printCharQuad(Ljava/lang/String;I)V

    .line 110
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v3, :cond_2

    .line 111
    const-string v3, "version: "

    shl-int/lit8 v19, v7, 0x10

    shl-int/lit8 v20, v8, 0x8

    or-int v19, v19, v20

    shl-int/lit8 v20, v9, 0x0

    or-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->printCharQuad(Ljava/lang/String;I)V

    .line 114
    :cond_2
    const-string v3, "Logical Screen Width"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v10

    .line 116
    .local v10, "logicalScreenWidth":I
    const-string v3, "Logical Screen Height"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v11

    .line 119
    .local v11, "logicalScreenHeight":I
    if-eqz p2, :cond_3

    .line 121
    const-string v3, "Width"

    const/16 v19, 0x1

    const v20, 0x7fffffff

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v3, v1, v2, v10}, Lorg/apache/sanselan/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 123
    const-string v3, "Height"

    const/16 v19, 0x1

    const v20, 0x7fffffff

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v3, v1, v2, v11}, Lorg/apache/sanselan/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 127
    :cond_3
    const-string v3, "Packed Fields"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v12

    .line 129
    .local v12, "packedFields":B
    const-string v3, "Background Color Index"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v13

    .line 131
    .local v13, "backgroundColorIndex":B
    const-string v3, "Pixel Aspect Ratio"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v14

    .line 134
    .local v14, "pixelAspectRatio":B
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v3, :cond_4

    .line 135
    const-string v3, "PackedFields bits"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lorg/apache/sanselan/formats/gif/GifImageParser;->printByteBits(Ljava/lang/String;B)V

    .line 137
    :cond_4
    and-int/lit16 v3, v12, 0x80

    if-lez v3, :cond_a

    const/4 v15, 0x1

    .line 138
    .local v15, "globalColorTableFlag":Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v3, :cond_5

    .line 139
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "GlobalColorTableFlag: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    :cond_5
    shr-int/lit8 v3, v12, 0x4

    and-int/lit8 v3, v3, 0x7

    int-to-byte v0, v3

    move/from16 v16, v0

    .line 141
    .local v16, "colorResolution":B
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v3, :cond_6

    .line 142
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "ColorResolution: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    :cond_6
    and-int/lit8 v3, v12, 0x8

    if-lez v3, :cond_b

    const/16 v17, 0x1

    .line 144
    .local v17, "sortFlag":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v3, :cond_7

    .line 145
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "SortFlag: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    :cond_7
    and-int/lit8 v3, v12, 0x7

    int-to-byte v0, v3

    move/from16 v18, v0

    .line 147
    .local v18, "sizeofGlobalColorTable":B
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v3, :cond_8

    .line 148
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "SizeofGlobalColorTable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    :cond_8
    if-eqz p2, :cond_9

    .line 153
    if-eqz v15, :cond_9

    const/4 v3, -0x1

    if-eq v13, v3, :cond_9

    .line 154
    const-string v3, "Background Color Index"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->convertColorTableSize(I)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v3, v1, v2, v13}, Lorg/apache/sanselan/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 159
    :cond_9
    new-instance v3, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    invoke-direct/range {v3 .. v18}, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;-><init>(BBBBBBIIBBBZBZB)V

    return-object v3

    .line 137
    .end local v15    # "globalColorTableFlag":Z
    .end local v16    # "colorResolution":B
    .end local v17    # "sortFlag":Z
    .end local v18    # "sizeofGlobalColorTable":B
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 143
    .restart local v15    # "globalColorTableFlag":Z
    .restart local v16    # "colorResolution":B
    :cond_b
    const/16 v17, 0x0

    goto :goto_1

    .line 102
    nop

    :array_0
    .array-data 4
        0x37
        0x39
    .end array-data
.end method

.method private readHeader(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;
    .locals 3
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    const/4 v1, 0x0

    .line 446
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 448
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readHeader(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 453
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 457
    :goto_0
    return-object v2

    .line 454
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 451
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 453
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 457
    :goto_1
    throw v2

    .line 454
    :catch_1
    move-exception v0

    .line 456
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private readImageDescriptor(Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;ILjava/io/InputStream;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/gif/ImageDescriptor;
    .locals 24
    .param p1, "ghi"    # Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;
    .param p2, "blockCode"    # I
    .param p3, "is"    # Ljava/io/InputStream;
    .param p4, "stopBeforeImageData"    # Z
    .param p5, "formatCompliance"    # Lorg/apache/sanselan/FormatCompliance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    const-string v4, "Image Left Position"

    const-string v22, "Not a Valid GIF File"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v5

    .line 341
    .local v5, "ImageLeftPosition":I
    const-string v4, "Image Top Position"

    const-string v22, "Not a Valid GIF File"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v6

    .line 343
    .local v6, "ImageTopPosition":I
    const-string v4, "Image Width"

    const-string v22, "Not a Valid GIF File"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v7

    .line 344
    .local v7, "imageWidth":I
    const-string v4, "Image Height"

    const-string v22, "Not a Valid GIF File"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v8

    .line 345
    .local v8, "imageHeight":I
    const-string v4, "Packed Fields"

    const-string v22, "Not a Valid GIF File"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v9

    .line 348
    .local v9, "PackedFields":B
    if-eqz p5, :cond_0

    .line 350
    const-string v4, "Width"

    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenWidth:I

    move/from16 v23, v0

    move-object/from16 v0, p5

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v4, v1, v2, v7}, Lorg/apache/sanselan/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 352
    const-string v4, "Height"

    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenHeight:I

    move/from16 v23, v0

    move-object/from16 v0, p5

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v4, v1, v2, v8}, Lorg/apache/sanselan/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 354
    const-string v4, "Left Position"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenWidth:I

    move/from16 v23, v0

    sub-int v23, v23, v7

    move-object/from16 v0, p5

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v4, v1, v2, v5}, Lorg/apache/sanselan/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 356
    const-string v4, "Top Position"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenHeight:I

    move/from16 v23, v0

    sub-int v23, v23, v8

    move-object/from16 v0, p5

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v4, v1, v2, v6}, Lorg/apache/sanselan/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 360
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v4, :cond_1

    .line 361
    const-string v4, "PackedFields bits"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/apache/sanselan/formats/gif/GifImageParser;->printByteBits(Ljava/lang/String;B)V

    .line 363
    :cond_1
    shr-int/lit8 v4, v9, 0x7

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_7

    const/4 v10, 0x1

    .line 364
    .local v10, "LocalColorTableFlag":Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v4, :cond_2

    .line 365
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "LocalColorTableFlag: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    :cond_2
    shr-int/lit8 v4, v9, 0x6

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_8

    const/4 v11, 0x1

    .line 367
    .local v11, "InterlaceFlag":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v4, :cond_3

    .line 368
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "Interlace Flag: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    :cond_3
    shr-int/lit8 v4, v9, 0x5

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_9

    const/4 v12, 0x1

    .line 370
    .local v12, "SortFlag":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v4, :cond_4

    .line 371
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "Sort  Flag: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    :cond_4
    and-int/lit8 v4, v9, 0x7

    int-to-byte v13, v4

    .line 374
    .local v13, "SizeofLocalColorTable":B
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v4, :cond_5

    .line 375
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "SizeofLocalColorTable: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    :cond_5
    const/4 v14, 0x0

    .line 379
    .local v14, "LocalColorTable":[B
    if-eqz v10, :cond_6

    .line 380
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v13, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readColorTable(Ljava/io/InputStream;ILorg/apache/sanselan/FormatCompliance;)[B

    move-result-object v14

    .line 383
    :cond_6
    const/4 v15, 0x0

    .line 384
    .local v15, "imageData":[B
    if-nez p4, :cond_a

    .line 386
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v16

    .line 388
    .local v16, "LZWMinimumCodeSize":I
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/sanselan/formats/gif/GenericGIFBlock;

    move-result-object v18

    .line 389
    .local v18, "block":Lorg/apache/sanselan/formats/gif/GenericGIFBlock;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;->appendSubBlocks()[B

    move-result-object v19

    .line 390
    .local v19, "bytes":[B
    new-instance v17, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 392
    .local v17, "bais":Ljava/io/InputStream;
    mul-int v21, v7, v8

    .line 393
    .local v21, "size":I
    new-instance v20, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;

    const/16 v4, 0x49

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;-><init>(II)V

    .line 395
    .local v20, "myLzwDecompressor":Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->decompress(Ljava/io/InputStream;I)[B

    move-result-object v15

    .line 405
    .end local v17    # "bais":Ljava/io/InputStream;
    .end local v18    # "block":Lorg/apache/sanselan/formats/gif/GenericGIFBlock;
    .end local v19    # "bytes":[B
    .end local v20    # "myLzwDecompressor":Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;
    .end local v21    # "size":I
    :goto_3
    new-instance v3, Lorg/apache/sanselan/formats/gif/ImageDescriptor;

    move/from16 v4, p2

    invoke-direct/range {v3 .. v15}, Lorg/apache/sanselan/formats/gif/ImageDescriptor;-><init>(IIIIIBZZZB[B[B)V

    .line 410
    .local v3, "result":Lorg/apache/sanselan/formats/gif/ImageDescriptor;
    return-object v3

    .line 363
    .end local v3    # "result":Lorg/apache/sanselan/formats/gif/ImageDescriptor;
    .end local v10    # "LocalColorTableFlag":Z
    .end local v11    # "InterlaceFlag":Z
    .end local v12    # "SortFlag":Z
    .end local v13    # "SizeofLocalColorTable":B
    .end local v14    # "LocalColorTable":[B
    .end local v15    # "imageData":[B
    .end local v16    # "LZWMinimumCodeSize":I
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 366
    .restart local v10    # "LocalColorTableFlag":Z
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 369
    .restart local v11    # "InterlaceFlag":Z
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 398
    .restart local v12    # "SortFlag":Z
    .restart local v13    # "SizeofLocalColorTable":B
    .restart local v14    # "LocalColorTable":[B
    .restart local v15    # "imageData":[B
    :cond_a
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v16

    .line 399
    .restart local v16    # "LZWMinimumCodeSize":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->debug:Z

    if-eqz v4, :cond_b

    .line 400
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "LZWMinimumCodeSize: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 402
    :cond_b
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/sanselan/formats/gif/GenericGIFBlock;

    goto :goto_3
.end method

.method private readSubBlock(Ljava/io/InputStream;)[B
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    const-string v2, "block_size"

    const-string v3, "GIF: corrupt block"

    invoke-virtual {p0, v2, p1, v3}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 191
    .local v0, "block_size":I
    const-string v2, "block"

    const-string v3, "GIF: corrupt block"

    invoke-virtual {p0, v2, v0, p1, v3}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v1

    .line 194
    .local v1, "bytes":[B
    return-object v1
.end method

.method private simple_pow(II)I
    .locals 2
    .param p1, "base"    # I
    .param p2, "power"    # I

    .prologue
    .line 415
    const/4 v1, 0x1

    .line 417
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 418
    mul-int/2addr v1, p1

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    :cond_0
    return v1
.end method

.method private writeAsSubBlocks(Ljava/io/OutputStream;[B)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    const/4 v1, 0x0

    .line 816
    .local v1, "index":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 818
    array-length v2, p2

    sub-int/2addr v2, v1

    const/16 v3, 0xff

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 819
    .local v0, "block_size":I
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 820
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 821
    add-int/2addr v1, v0

    .line 822
    goto :goto_0

    .line 823
    .end local v0    # "block_size":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 824
    return-void
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 635
    const-string v5, "gif.dumpImageFile"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v3

    .line 639
    .local v3, "imageData":Lorg/apache/sanselan/ImageInfo;
    if-nez v3, :cond_1

    .line 663
    :cond_0
    :goto_0
    return v4

    .line 642
    :cond_1
    const-string v5, ""

    invoke-virtual {v3, p1, v5}, Lorg/apache/sanselan/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 645
    invoke-direct {p0, p2, v4}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readFile(Lorg/apache/sanselan/common/byteSources/ByteSource;Z)Lorg/apache/sanselan/formats/gif/ImageContents;

    move-result-object v0

    .line 647
    .local v0, "blocks":Lorg/apache/sanselan/formats/gif/ImageContents;
    if-eqz v0, :cond_0

    .line 650
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "gif.blocks: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/sanselan/formats/gif/ImageContents;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, v0, Lorg/apache/sanselan/formats/gif/ImageContents;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 653
    iget-object v4, v0, Lorg/apache/sanselan/formats/gif/ImageContents;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/gif/GIFBlock;

    .line 654
    .local v1, "gifBlock":Lorg/apache/sanselan/formats/gif/GIFBlock;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lorg/apache/sanselan/formats/gif/GIFBlock;->blockCode:I

    const/4 v6, 0x4

    invoke-virtual {p0, p1, v4, v5, v6}, Lorg/apache/sanselan/formats/gif/GifImageParser;->debugNumber(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 651
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 661
    .end local v1    # "gifBlock":Lorg/apache/sanselan/formats/gif/GIFBlock;
    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public embedICCProfile(Ljava/io/File;Ljava/io/File;[B)Z
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;
    .param p3, "profile"    # [B

    .prologue
    .line 542
    const/4 v0, 0x0

    return v0
.end method

.method public embedICCProfile([B[B)[B
    .locals 1
    .param p1, "image"    # [B
    .param p2, "profile"    # [B

    .prologue
    .line 537
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lorg/apache/sanselan/formats/gif/GifImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/sanselan/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_GIF:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
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
    .line 705
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readFile(Lorg/apache/sanselan/common/byteSources/ByteSource;Z)Lorg/apache/sanselan/formats/gif/ImageContents;

    move-result-object v12

    .line 707
    .local v12, "imageContents":Lorg/apache/sanselan/formats/gif/ImageContents;
    if-nez v12, :cond_0

    .line 708
    new-instance v26, Lorg/apache/sanselan/ImageReadException;

    const-string v27, "GIF: Couldn\'t read blocks"

    invoke-direct/range {v26 .. v27}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 710
    :cond_0
    iget-object v8, v12, Lorg/apache/sanselan/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    .line 711
    .local v8, "ghi":Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;
    if-nez v8, :cond_1

    .line 712
    new-instance v26, Lorg/apache/sanselan/ImageReadException;

    const-string v27, "GIF: Couldn\'t read Header"

    invoke-direct/range {v26 .. v27}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 714
    :cond_1
    iget-object v0, v12, Lorg/apache/sanselan/formats/gif/ImageContents;->blocks:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2c

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->findBlock(Ljava/util/ArrayList;I)Lorg/apache/sanselan/formats/gif/GIFBlock;

    move-result-object v11

    check-cast v11, Lorg/apache/sanselan/formats/gif/ImageDescriptor;

    .line 716
    .local v11, "id":Lorg/apache/sanselan/formats/gif/ImageDescriptor;
    if-nez v11, :cond_2

    .line 717
    new-instance v26, Lorg/apache/sanselan/ImageReadException;

    const-string v27, "GIF: Couldn\'t read Image Descriptor"

    invoke-direct/range {v26 .. v27}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 718
    :cond_2
    iget-object v0, v12, Lorg/apache/sanselan/formats/gif/ImageContents;->blocks:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x21f9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->findBlock(Ljava/util/ArrayList;I)Lorg/apache/sanselan/formats/gif/GIFBlock;

    move-result-object v7

    check-cast v7, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;

    .line 721
    .local v7, "gce":Lorg/apache/sanselan/formats/gif/GraphicControlExtension;
    iget v0, v8, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenWidth:I

    move/from16 v23, v0

    .line 722
    .local v23, "width":I
    iget v10, v8, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenHeight:I

    .line 724
    .local v10, "height":I
    const/4 v9, 0x0

    .line 725
    .local v9, "hasAlpha":Z
    if-eqz v7, :cond_3

    iget-boolean v0, v7, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;->transparency:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 726
    const/4 v9, 0x1

    .line 728
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/sanselan/common/IBufferedImageFactory;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-interface {v0, v1, v10, v9}, Lorg/apache/sanselan/common/IBufferedImageFactory;->getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v14

    .line 733
    .local v14, "result":Ljava/awt/image/BufferedImage;
    iget-object v0, v11, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->localColorTable:[B

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    .line 734
    iget-object v0, v11, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->localColorTable:[B

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->getColorTable([B)[I

    move-result-object v3

    .line 740
    .local v3, "colortable":[I
    :goto_0
    const/16 v22, -0x1

    .line 741
    .local v22, "transparentIndex":I
    if-eqz v9, :cond_4

    .line 742
    iget v0, v7, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;->transparentColorIndex:I

    move/from16 v22, v0

    .line 746
    :cond_4
    const/4 v4, 0x0

    .line 751
    .local v4, "counter":I
    add-int/lit8 v26, v10, 0x7

    div-int/lit8 v17, v26, 0x8

    .line 752
    .local v17, "rows_in_pass_1":I
    add-int/lit8 v26, v10, 0x3

    div-int/lit8 v18, v26, 0x8

    .line 753
    .local v18, "rows_in_pass_2":I
    add-int/lit8 v26, v10, 0x1

    div-int/lit8 v19, v26, 0x4

    .line 754
    .local v19, "rows_in_pass_3":I
    div-int/lit8 v20, v10, 0x2

    .line 756
    .local v20, "rows_in_pass_4":I
    invoke-virtual {v14}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v6

    .line 758
    .local v6, "db":Ljava/awt/image/DataBuffer;
    const/16 v16, 0x0

    .local v16, "row":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_e

    .line 762
    iget-boolean v0, v11, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->interlaceFlag:Z

    move/from16 v26, v0

    if-eqz v26, :cond_c

    .line 764
    move/from16 v21, v16

    .line 765
    .local v21, "the_row":I
    move/from16 v0, v21

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 766
    mul-int/lit8 v25, v21, 0x8

    .line 792
    .end local v21    # "the_row":I
    .local v25, "y":I
    :goto_2
    const/16 v24, 0x0

    .local v24, "x":I
    move v5, v4

    .end local v4    # "counter":I
    .local v5, "counter":I
    :goto_3
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    .line 795
    iget-object v0, v11, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->imageData:[B

    move-object/from16 v26, v0

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "counter":I
    .restart local v4    # "counter":I
    aget-byte v26, v26, v5

    move/from16 v0, v26

    and-int/lit16 v13, v0, 0xff

    .line 796
    .local v13, "index":I
    aget v15, v3, v13

    .line 798
    .local v15, "rgb":I
    move/from16 v0, v22

    if-ne v0, v13, :cond_5

    .line 799
    const/4 v15, 0x0

    .line 801
    :cond_5
    mul-int v26, v25, v23

    add-int v26, v26, v24

    move/from16 v0, v26

    invoke-virtual {v6, v0, v15}, Ljava/awt/image/DataBuffer;->setElem(II)V

    .line 792
    add-int/lit8 v24, v24, 0x1

    move v5, v4

    .end local v4    # "counter":I
    .restart local v5    # "counter":I
    goto :goto_3

    .line 735
    .end local v3    # "colortable":[I
    .end local v5    # "counter":I
    .end local v6    # "db":Ljava/awt/image/DataBuffer;
    .end local v13    # "index":I
    .end local v15    # "rgb":I
    .end local v16    # "row":I
    .end local v17    # "rows_in_pass_1":I
    .end local v18    # "rows_in_pass_2":I
    .end local v19    # "rows_in_pass_3":I
    .end local v20    # "rows_in_pass_4":I
    .end local v22    # "transparentIndex":I
    .end local v24    # "x":I
    .end local v25    # "y":I
    :cond_6
    iget-object v0, v12, Lorg/apache/sanselan/formats/gif/ImageContents;->globalColorTable:[B

    move-object/from16 v26, v0

    if-eqz v26, :cond_7

    .line 736
    iget-object v0, v12, Lorg/apache/sanselan/formats/gif/ImageContents;->globalColorTable:[B

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->getColorTable([B)[I

    move-result-object v3

    .restart local v3    # "colortable":[I
    goto :goto_0

    .line 738
    .end local v3    # "colortable":[I
    :cond_7
    new-instance v26, Lorg/apache/sanselan/ImageReadException;

    const-string v27, "Gif: No Color Table"

    invoke-direct/range {v26 .. v27}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 769
    .restart local v3    # "colortable":[I
    .restart local v4    # "counter":I
    .restart local v6    # "db":Ljava/awt/image/DataBuffer;
    .restart local v16    # "row":I
    .restart local v17    # "rows_in_pass_1":I
    .restart local v18    # "rows_in_pass_2":I
    .restart local v19    # "rows_in_pass_3":I
    .restart local v20    # "rows_in_pass_4":I
    .restart local v21    # "the_row":I
    .restart local v22    # "transparentIndex":I
    :cond_8
    sub-int v21, v21, v17

    .line 770
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 771
    mul-int/lit8 v26, v21, 0x8

    add-int/lit8 v25, v26, 0x4

    .restart local v25    # "y":I
    goto :goto_2

    .line 774
    .end local v25    # "y":I
    :cond_9
    sub-int v21, v21, v18

    .line 775
    move/from16 v0, v21

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 776
    mul-int/lit8 v26, v21, 0x4

    add-int/lit8 v25, v26, 0x2

    .restart local v25    # "y":I
    goto :goto_2

    .line 779
    .end local v25    # "y":I
    :cond_a
    sub-int v21, v21, v19

    .line 780
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 781
    mul-int/lit8 v26, v21, 0x2

    add-int/lit8 v25, v26, 0x1

    .restart local v25    # "y":I
    goto :goto_2

    .line 783
    .end local v25    # "y":I
    :cond_b
    new-instance v26, Lorg/apache/sanselan/ImageReadException;

    const-string v27, "Gif: Strange Row"

    invoke-direct/range {v26 .. v27}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 790
    .end local v21    # "the_row":I
    :cond_c
    move/from16 v25, v16

    .restart local v25    # "y":I
    goto :goto_2

    .line 758
    .end local v4    # "counter":I
    .restart local v5    # "counter":I
    .restart local v24    # "x":I
    :cond_d
    add-int/lit8 v16, v16, 0x1

    move v4, v5

    .end local v5    # "counter":I
    .restart local v4    # "counter":I
    goto/16 :goto_1

    .line 807
    .end local v24    # "x":I
    .end local v25    # "y":I
    :cond_e
    return-object v14
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, ".gif"

    return-object v0
.end method

.method public getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;
    .locals 2
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    new-instance v0, Lorg/apache/sanselan/FormatCompliance;

    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/FormatCompliance;-><init>(Ljava/lang/String;)V

    .line 697
    .local v0, "result":Lorg/apache/sanselan/FormatCompliance;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readFile(Lorg/apache/sanselan/common/byteSources/ByteSource;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/gif/ImageContents;

    .line 699
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
    .line 520
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
    .line 573
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readFile(Lorg/apache/sanselan/common/byteSources/ByteSource;Z)Lorg/apache/sanselan/formats/gif/ImageContents;

    move-result-object v24

    .line 575
    .local v24, "blocks":Lorg/apache/sanselan/formats/gif/ImageContents;
    if-nez v24, :cond_0

    .line 576
    new-instance v27, Lorg/apache/sanselan/ImageReadException;

    const-string v28, "GIF: Couldn\'t read blocks"

    invoke-direct/range {v27 .. v28}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 578
    :cond_0
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/sanselan/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    move-object/from16 v23, v0

    .line 579
    .local v23, "bhi":Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;
    if-nez v23, :cond_1

    .line 580
    new-instance v27, Lorg/apache/sanselan/ImageReadException;

    const-string v28, "GIF: Couldn\'t read Header"

    invoke-direct/range {v27 .. v28}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 582
    :cond_1
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/sanselan/formats/gif/ImageContents;->blocks:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x2c

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->findBlock(Ljava/util/ArrayList;I)Lorg/apache/sanselan/formats/gif/GIFBlock;

    move-result-object v26

    check-cast v26, Lorg/apache/sanselan/formats/gif/ImageDescriptor;

    .line 584
    .local v26, "id":Lorg/apache/sanselan/formats/gif/ImageDescriptor;
    if-nez v26, :cond_2

    .line 585
    new-instance v27, Lorg/apache/sanselan/ImageReadException;

    const-string v28, "GIF: Couldn\'t read ImageDescriptor"

    invoke-direct/range {v27 .. v28}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 587
    :cond_2
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/sanselan/formats/gif/ImageContents;->blocks:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x21f9

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->findBlock(Ljava/util/ArrayList;I)Lorg/apache/sanselan/formats/gif/GIFBlock;

    move-result-object v25

    check-cast v25, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;

    .line 590
    .local v25, "gce":Lorg/apache/sanselan/formats/gif/GraphicControlExtension;
    move-object/from16 v0, v23

    iget v10, v0, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenHeight:I

    .line 591
    .local v10, "Height":I
    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenWidth:I

    move/from16 v17, v0

    .line 595
    .local v17, "Width":I
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/sanselan/formats/gif/ImageContents;->blocks:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->getComments(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    .line 597
    .local v7, "Comments":Ljava/util/ArrayList;
    move-object/from16 v0, v23

    iget-byte v0, v0, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->colorResolution:B

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    mul-int/lit8 v6, v27, 0x3

    .line 598
    .local v6, "BitsPerPixel":I
    sget-object v8, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_GIF:Lorg/apache/sanselan/ImageFormat;

    .line 599
    .local v8, "Format":Lorg/apache/sanselan/ImageFormat;
    const-string v9, "GIF Graphics Interchange Format"

    .line 600
    .local v9, "FormatName":Ljava/lang/String;
    const-string v11, "image/gif"

    .line 602
    .local v11, "MimeType":Ljava/lang/String;
    const/4 v12, -0x1

    .line 604
    .local v12, "NumberOfImages":I
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->interlaceFlag:Z

    move/from16 v18, v0

    .line 606
    .local v18, "isProgressive":Z
    const/16 v15, 0x48

    .line 607
    .local v15, "PhysicalWidthDpi":I
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v28, v0

    int-to-double v0, v15

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v16, v0

    .line 608
    .local v16, "PhysicalWidthInch":F
    const/16 v13, 0x48

    .line 609
    .local v13, "PhysicalHeightDpi":I
    int-to-double v0, v10

    move-wide/from16 v28, v0

    int-to-double v0, v13

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v14, v0

    .line 611
    .local v14, "PhysicalHeightInch":F
    new-instance v27, Ljava/lang/StringBuffer;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    const-string v28, "Gif "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/sanselan/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-byte v0, v0, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->version1:B

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v27

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/sanselan/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-byte v0, v0, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->version2:B

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v27

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/sanselan/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-byte v0, v0, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->version3:B

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 615
    .local v5, "FormatDetails":Ljava/lang/String;
    const/16 v19, 0x0

    .line 616
    .local v19, "isTransparent":Z
    if-eqz v25, :cond_3

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;->transparency:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    .line 617
    const/16 v19, 0x1

    .line 619
    :cond_3
    const/16 v20, 0x1

    .line 620
    .local v20, "usesPalette":Z
    const/16 v21, 0x2

    .line 621
    .local v21, "colorType":I
    const-string v22, "LZW"

    .line 623
    .local v22, "compressionAlgorithm":Ljava/lang/String;
    new-instance v4, Lorg/apache/sanselan/ImageInfo;

    invoke-direct/range {v4 .. v22}, Lorg/apache/sanselan/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;)V

    .line 629
    .local v4, "result":Lorg/apache/sanselan/ImageInfo;
    return-object v4
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
    .line 526
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readHeader(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    move-result-object v0

    .line 528
    .local v0, "bhi":Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;
    if-nez v0, :cond_0

    .line 529
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "GIF: Couldn\'t read Header"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :cond_0
    new-instance v1, Ljava/awt/Dimension;

    iget v2, v0, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenWidth:I

    iget v3, v0, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->logicalScreenHeight:I

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
    .line 548
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "Gif-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 19
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1106
    const/4 v15, 0x0

    .line 1109
    .local v15, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 1111
    const/4 v10, 0x0

    .line 1112
    .local v10, "formatCompliance":Lorg/apache/sanselan/FormatCompliance;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readHeader(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    move-result-object v12

    .line 1114
    .local v12, "ghi":Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;
    const/4 v13, 0x0

    .line 1115
    .local v13, "globalColorTable":[B
    iget-boolean v1, v12, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->globalColorTableFlag:Z

    if-eqz v1, :cond_0

    .line 1116
    iget-byte v1, v12, Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;->sizeOfGlobalColorTable:B

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v1, v10}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readColorTable(Ljava/io/InputStream;ILorg/apache/sanselan/FormatCompliance;)[B

    move-result-object v13

    .line 1119
    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15, v1, v10}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readBlocks(Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;Ljava/io/InputStream;ZLorg/apache/sanselan/FormatCompliance;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1121
    .local v8, "blocks":Ljava/util/ArrayList;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    .local v17, "result":Ljava/util/List;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_5

    .line 1124
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/sanselan/formats/gif/GIFBlock;

    .line 1125
    .local v7, "block":Lorg/apache/sanselan/formats/gif/GIFBlock;
    iget v1, v7, Lorg/apache/sanselan/formats/gif/GIFBlock;->blockCode:I

    const/16 v3, 0x21ff

    if-eq v1, v3, :cond_2

    .line 1122
    :cond_1
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1128
    :cond_2
    move-object v0, v7

    check-cast v0, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;

    move-object v11, v0

    .line 1130
    .local v11, "genericBlock":Lorg/apache/sanselan/formats/gif/GenericGIFBlock;
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;->appendSubBlocks(Z)[B

    move-result-object v2

    .line 1131
    .local v2, "blockBytes":[B
    array-length v1, v2

    sget-object v3, Lorg/apache/sanselan/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 1136
    const/4 v3, 0x0

    sget-object v4, Lorg/apache/sanselan/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    const/4 v5, 0x0

    sget-object v1, Lorg/apache/sanselan/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    array-length v6, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/sanselan/formats/gif/GifImageParser;->compareByteArrays([BI[BII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1142
    const/16 v1, 0x100

    new-array v4, v1, [B

    .line 1143
    .local v4, "GIF_MAGIC_TRAILER":[B
    const/16 v16, 0x0

    .local v16, "magic":I
    :goto_2
    const/16 v1, 0xff

    move/from16 v0, v16

    if-gt v0, v1, :cond_3

    .line 1144
    move/from16 v0, v16

    rsub-int v1, v0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v16

    .line 1143
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1146
    :cond_3
    array-length v1, v2

    sget-object v3, Lorg/apache/sanselan/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    array-length v3, v3

    array-length v5, v4

    add-int/2addr v3, v5

    if-lt v1, v3, :cond_1

    .line 1149
    array-length v1, v2

    array-length v3, v4

    sub-int v3, v1, v3

    const/4 v5, 0x0

    array-length v6, v4

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/sanselan/formats/gif/GifImageParser;->compareByteArrays([BI[BII)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1152
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v3, "XMP block in GIF missing magic trailer."

    invoke-direct {v1, v3}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1179
    .end local v2    # "blockBytes":[B
    .end local v4    # "GIF_MAGIC_TRAILER":[B
    .end local v7    # "block":Lorg/apache/sanselan/formats/gif/GIFBlock;
    .end local v8    # "blocks":Ljava/util/ArrayList;
    .end local v10    # "formatCompliance":Lorg/apache/sanselan/FormatCompliance;
    .end local v11    # "genericBlock":Lorg/apache/sanselan/formats/gif/GenericGIFBlock;
    .end local v12    # "ghi":Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;
    .end local v13    # "globalColorTable":[B
    .end local v14    # "i":I
    .end local v16    # "magic":I
    .end local v17    # "result":Ljava/util/List;
    :catchall_0
    move-exception v1

    .line 1181
    :try_start_1
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1185
    :goto_3
    throw v1

    .line 1158
    .restart local v2    # "blockBytes":[B
    .restart local v4    # "GIF_MAGIC_TRAILER":[B
    .restart local v7    # "block":Lorg/apache/sanselan/formats/gif/GIFBlock;
    .restart local v8    # "blocks":Ljava/util/ArrayList;
    .restart local v10    # "formatCompliance":Lorg/apache/sanselan/FormatCompliance;
    .restart local v11    # "genericBlock":Lorg/apache/sanselan/formats/gif/GenericGIFBlock;
    .restart local v12    # "ghi":Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;
    .restart local v13    # "globalColorTable":[B
    .restart local v14    # "i":I
    .restart local v16    # "magic":I
    .restart local v17    # "result":Ljava/util/List;
    :cond_4
    :try_start_2
    new-instance v18, Ljava/lang/String;

    sget-object v1, Lorg/apache/sanselan/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    array-length v1, v1

    array-length v3, v2

    sget-object v5, Lorg/apache/sanselan/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    array-length v5, v5

    array-length v6, v4

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    const-string v5, "utf-8"

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v1, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1164
    .local v18, "xml":Ljava/lang/String;
    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1165
    .end local v18    # "xml":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1167
    .local v9, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v3, "Invalid XMP Block in GIF."

    invoke-direct {v1, v3}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1171
    .end local v2    # "blockBytes":[B
    .end local v4    # "GIF_MAGIC_TRAILER":[B
    .end local v7    # "block":Lorg/apache/sanselan/formats/gif/GIFBlock;
    .end local v9    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v11    # "genericBlock":Lorg/apache/sanselan/formats/gif/GenericGIFBlock;
    .end local v16    # "magic":I
    :cond_5
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_6

    .line 1172
    const/4 v1, 0x0

    .line 1181
    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1185
    :goto_4
    return-object v1

    .line 1182
    :catch_1
    move-exception v9

    .line 1184
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1173
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_5
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_7

    .line 1174
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v3, "More than one XMP Block in GIF."

    invoke-direct {v1, v3}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1175
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1181
    :try_start_6
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 1182
    :catch_2
    move-exception v9

    .line 1184
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1182
    .end local v8    # "blocks":Ljava/util/ArrayList;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "formatCompliance":Lorg/apache/sanselan/FormatCompliance;
    .end local v12    # "ghi":Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;
    .end local v13    # "globalColorTable":[B
    .end local v14    # "i":I
    .end local v17    # "result":Ljava/util/List;
    :catch_3
    move-exception v9

    .line 1184
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method protected readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/sanselan/formats/gif/GenericGIFBlock;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I[B)Lorg/apache/sanselan/formats/gif/GenericGIFBlock;

    move-result-object v0

    return-object v0
.end method

.method protected readGenericGIFBlock(Ljava/io/InputStream;I[B)Lorg/apache/sanselan/formats/gif/GenericGIFBlock;
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "code"    # I
    .param p3, "first"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v1, "subblocks":Ljava/util/ArrayList;
    if-eqz p3, :cond_0

    .line 209
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/gif/GifImageParser;->readSubBlock(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 214
    .local v0, "bytes":[B
    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 219
    new-instance v2, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;

    invoke-direct {v2, p2, v1}, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;-><init>(ILjava/util/ArrayList;)V

    return-object v2

    .line 216
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 52
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
    .line 834
    new-instance v37, Ljava/util/HashMap;

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 836
    .end local p3    # "params":Ljava/util/Map;
    .local v37, "params":Ljava/util/Map;
    const-string v49, "VERBOSE"

    const/16 v50, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result v43

    .line 840
    .local v43, "verbose":Z
    const-string v49, "FORMAT"

    move-object/from16 v0, v37

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_0

    .line 841
    const-string v49, "FORMAT"

    move-object/from16 v0, v37

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    :cond_0
    const-string v49, "VERBOSE"

    move-object/from16 v0, v37

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1

    .line 843
    const-string v49, "VERBOSE"

    move-object/from16 v0, v37

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    :cond_1
    const/16 v46, 0x0

    .line 846
    .local v46, "xmpXml":Ljava/lang/String;
    const-string v49, "XMP_XML"

    move-object/from16 v0, v37

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_2

    .line 848
    const-string v49, "XMP_XML"

    move-object/from16 v0, v37

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    .end local v46    # "xmpXml":Ljava/lang/String;
    check-cast v46, Ljava/lang/String;

    .line 849
    .restart local v46    # "xmpXml":Ljava/lang/String;
    const-string v49, "XMP_XML"

    move-object/from16 v0, v37

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    :cond_2
    invoke-interface/range {v37 .. v37}, Ljava/util/Map;->size()I

    move-result v49

    if-lez v49, :cond_3

    .line 854
    invoke-interface/range {v37 .. v37}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    .line 855
    .local v22, "firstKey":Ljava/lang/Object;
    new-instance v49, Lorg/apache/sanselan/ImageWriteException;

    new-instance v50, Ljava/lang/StringBuffer;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuffer;-><init>()V

    const-string v51, "Unknown parameter: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-direct/range {v49 .. v50}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v49

    .line 858
    .end local v22    # "firstKey":Ljava/lang/Object;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v44

    .line 859
    .local v44, "width":I
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v27

    .line 861
    .local v27, "height":I
    new-instance v49, Lorg/apache/sanselan/palette/PaletteFactory;

    invoke-direct/range {v49 .. v49}, Lorg/apache/sanselan/palette/PaletteFactory;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result v26

    .line 863
    .local v26, "hasAlpha":Z
    if-eqz v26, :cond_5

    const/16 v33, 0xff

    .line 865
    .local v33, "max_colors":I
    :goto_0
    new-instance v49, Lorg/apache/sanselan/palette/PaletteFactory;

    invoke-direct/range {v49 .. v49}, Lorg/apache/sanselan/palette/PaletteFactory;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/palette/PaletteFactory;->makePaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/sanselan/palette/SimplePalette;

    move-result-object v35

    .line 870
    .local v35, "palette2":Lorg/apache/sanselan/palette/Palette;
    if-nez v35, :cond_6

    .line 872
    new-instance v49, Lorg/apache/sanselan/palette/PaletteFactory;

    invoke-direct/range {v49 .. v49}, Lorg/apache/sanselan/palette/PaletteFactory;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/palette/PaletteFactory;->makePaletteQuantized(Ljava/awt/image/BufferedImage;I)Lorg/apache/sanselan/palette/Palette;

    move-result-object v35

    .line 874
    if-eqz v43, :cond_4

    .line 875
    sget-object v49, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v50, "quantizing"

    invoke-virtual/range {v49 .. v50}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 879
    :cond_4
    :goto_1
    if-nez v35, :cond_7

    .line 880
    new-instance v49, Lorg/apache/sanselan/ImageWriteException;

    const-string v50, "Gif: can\'t write images with more than 256 colors"

    invoke-direct/range {v49 .. v50}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v49

    .line 863
    .end local v33    # "max_colors":I
    .end local v35    # "palette2":Lorg/apache/sanselan/palette/Palette;
    :cond_5
    const/16 v33, 0x100

    goto :goto_0

    .line 876
    .restart local v33    # "max_colors":I
    .restart local v35    # "palette2":Lorg/apache/sanselan/palette/Palette;
    :cond_6
    if-eqz v43, :cond_4

    .line 877
    sget-object v49, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v50, "exact palette"

    invoke-virtual/range {v49 .. v50}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 882
    :cond_7
    invoke-virtual/range {v35 .. v35}, Lorg/apache/sanselan/palette/Palette;->length()I

    move-result v50

    if-eqz v26, :cond_8

    const/16 v49, 0x1

    :goto_2
    add-int v36, v50, v49

    .line 884
    .local v36, "palette_size":I
    new-instance v16, Lorg/apache/sanselan/common/BinaryOutputStream;

    const/16 v49, 0x49

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 888
    .local v16, "bos":Lorg/apache/sanselan/common/BinaryOutputStream;
    const/16 v49, 0x47

    move-object/from16 v0, p2

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 889
    const/16 v49, 0x49

    move-object/from16 v0, p2

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 890
    const/16 v49, 0x46

    move-object/from16 v0, p2

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 892
    const/16 v49, 0x38

    move-object/from16 v0, p2

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 893
    const/16 v49, 0x39

    move-object/from16 v0, p2

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 894
    const/16 v49, 0x61

    move-object/from16 v0, p2

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 898
    move-object/from16 v0, v16

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 899
    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 901
    const/16 v49, 0x80

    move/from16 v0, v36

    move/from16 v1, v49

    if-le v0, v1, :cond_9

    const/16 v18, 0x7

    .line 907
    .local v18, "colorTableScaleLessOne":I
    :goto_3
    const/16 v49, 0x1

    add-int/lit8 v50, v18, 0x1

    shl-int v19, v49, v50

    .line 908
    .local v19, "colorTableSizeInFormat":I
    const/16 v49, 0x2

    add-int/lit8 v50, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->simple_pow(II)I

    move-result v49

    mul-int/lit8 v11, v49, 0x3

    .line 910
    .local v11, "actual_size":I
    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 912
    .local v17, "colorResolution":B
    const/16 v23, 0x0

    .line 913
    .local v23, "globalColorTableFlag":Z
    const/16 v41, 0x0

    .line 914
    .local v41, "sortFlag":Z
    const/16 v24, 0x80

    .line 915
    .local v24, "globalColorTableFlagMask":I
    const/16 v42, 0x8

    .line 916
    .local v42, "sortFlagMask":I
    const/16 v40, 0x0

    .line 918
    .local v40, "sizeOfGlobalColorTable":I
    if-eqz v23, :cond_10

    .end local v24    # "globalColorTableFlagMask":I
    :goto_4
    if-eqz v41, :cond_11

    .end local v42    # "sortFlagMask":I
    :goto_5
    or-int v49, v24, v42

    and-int/lit8 v50, v17, 0x7

    shl-int/lit8 v50, v50, 0x4

    or-int v49, v49, v50

    or-int/lit8 v34, v49, 0x0

    .line 922
    .local v34, "packedFields":I
    move-object/from16 v0, v16

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 925
    const/4 v3, 0x0

    .line 926
    .local v3, "BackgroundColorIndex":B
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 929
    const/4 v8, 0x0

    .line 930
    .local v8, "PixelAspectRatio":B
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 938
    const/16 v49, 0x21

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 939
    const/16 v49, -0x7

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 943
    const/16 v49, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 944
    if-eqz v26, :cond_12

    const/16 v34, 0x1

    .line 945
    :goto_6
    move/from16 v0, v34

    int-to-byte v0, v0

    move/from16 v49, v0

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 946
    const/16 v49, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 947
    const/16 v49, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 948
    if-eqz v26, :cond_13

    invoke-virtual/range {v35 .. v35}, Lorg/apache/sanselan/palette/Palette;->length()I

    move-result v49

    :goto_7
    move/from16 v0, v49

    int-to-byte v0, v0

    move/from16 v49, v0

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 951
    const/16 v49, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 954
    if-eqz v46, :cond_15

    .line 956
    const/16 v49, 0x21

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 957
    const/16 v49, 0xff

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 959
    sget-object v49, Lorg/apache/sanselan/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    move-object/from16 v0, v49

    array-length v0, v0

    move/from16 v49, v0

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 960
    sget-object v49, Lorg/apache/sanselan/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    move-object/from16 v0, v16

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write([B)V

    .line 962
    const-string v49, "utf-8"

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v47

    .line 963
    .local v47, "xmpXmlBytes":[B
    move-object/from16 v0, v16

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write([B)V

    .line 966
    const/16 v32, 0x0

    .local v32, "magic":I
    :goto_8
    const/16 v49, 0xff

    move/from16 v0, v32

    move/from16 v1, v49

    if-gt v0, v1, :cond_14

    .line 967
    move/from16 v0, v32

    rsub-int v0, v0, 0xff

    move/from16 v49, v0

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 966
    add-int/lit8 v32, v32, 0x1

    goto :goto_8

    .line 882
    .end local v3    # "BackgroundColorIndex":B
    .end local v8    # "PixelAspectRatio":B
    .end local v11    # "actual_size":I
    .end local v16    # "bos":Lorg/apache/sanselan/common/BinaryOutputStream;
    .end local v17    # "colorResolution":B
    .end local v18    # "colorTableScaleLessOne":I
    .end local v19    # "colorTableSizeInFormat":I
    .end local v23    # "globalColorTableFlag":Z
    .end local v32    # "magic":I
    .end local v34    # "packedFields":I
    .end local v36    # "palette_size":I
    .end local v40    # "sizeOfGlobalColorTable":I
    .end local v41    # "sortFlag":Z
    .end local v47    # "xmpXmlBytes":[B
    :cond_8
    const/16 v49, 0x0

    goto/16 :goto_2

    .line 901
    .restart local v16    # "bos":Lorg/apache/sanselan/common/BinaryOutputStream;
    .restart local v36    # "palette_size":I
    :cond_9
    const/16 v49, 0x40

    move/from16 v0, v36

    move/from16 v1, v49

    if-le v0, v1, :cond_a

    const/16 v18, 0x6

    goto/16 :goto_3

    :cond_a
    const/16 v49, 0x20

    move/from16 v0, v36

    move/from16 v1, v49

    if-le v0, v1, :cond_b

    const/16 v18, 0x5

    goto/16 :goto_3

    :cond_b
    const/16 v49, 0x10

    move/from16 v0, v36

    move/from16 v1, v49

    if-le v0, v1, :cond_c

    const/16 v18, 0x4

    goto/16 :goto_3

    :cond_c
    const/16 v49, 0x8

    move/from16 v0, v36

    move/from16 v1, v49

    if-le v0, v1, :cond_d

    const/16 v18, 0x3

    goto/16 :goto_3

    :cond_d
    const/16 v49, 0x4

    move/from16 v0, v36

    move/from16 v1, v49

    if-le v0, v1, :cond_e

    const/16 v18, 0x2

    goto/16 :goto_3

    :cond_e
    const/16 v49, 0x2

    move/from16 v0, v36

    move/from16 v1, v49

    if-le v0, v1, :cond_f

    const/16 v18, 0x1

    goto/16 :goto_3

    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 918
    .restart local v11    # "actual_size":I
    .restart local v17    # "colorResolution":B
    .restart local v18    # "colorTableScaleLessOne":I
    .restart local v19    # "colorTableSizeInFormat":I
    .restart local v23    # "globalColorTableFlag":Z
    .restart local v24    # "globalColorTableFlagMask":I
    .restart local v40    # "sizeOfGlobalColorTable":I
    .restart local v41    # "sortFlag":Z
    .restart local v42    # "sortFlagMask":I
    :cond_10
    const/16 v24, 0x0

    goto/16 :goto_4

    .end local v24    # "globalColorTableFlagMask":I
    :cond_11
    const/16 v42, 0x0

    goto/16 :goto_5

    .line 944
    .end local v42    # "sortFlagMask":I
    .restart local v3    # "BackgroundColorIndex":B
    .restart local v8    # "PixelAspectRatio":B
    .restart local v34    # "packedFields":I
    :cond_12
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 948
    :cond_13
    const/16 v49, 0x0

    goto/16 :goto_7

    .line 969
    .restart local v32    # "magic":I
    .restart local v47    # "xmpXmlBytes":[B
    :cond_14
    const/16 v49, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 974
    .end local v32    # "magic":I
    .end local v47    # "xmpXmlBytes":[B
    :cond_15
    const/16 v49, 0x2c

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 975
    const/16 v49, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 976
    const/16 v49, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 977
    move-object/from16 v0, v16

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 978
    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 981
    const/4 v6, 0x1

    .line 983
    .local v6, "LocalColorTableFlag":Z
    const/4 v4, 0x0

    .line 984
    .local v4, "InterlaceFlag":Z
    const/4 v10, 0x0

    .line 985
    .local v10, "SortFlag":Z
    move/from16 v9, v18

    .line 989
    .local v9, "SizeOfLocalColorTable":I
    if-eqz v6, :cond_16

    const/16 v49, 0x80

    move/from16 v50, v49

    :goto_9
    if-eqz v4, :cond_17

    const/16 v49, 0x40

    :goto_a
    or-int v50, v50, v49

    if-eqz v10, :cond_18

    const/16 v49, 0x20

    :goto_b
    or-int v49, v49, v50

    and-int/lit8 v50, v9, 0x7

    or-int v7, v49, v50

    .line 993
    .local v7, "PackedFields":I
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 998
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_c
    move/from16 v0, v28

    move/from16 v1, v19

    if-ge v0, v1, :cond_1a

    .line 1000
    invoke-virtual/range {v35 .. v35}, Lorg/apache/sanselan/palette/Palette;->length()I

    move-result v49

    move/from16 v0, v28

    move/from16 v1, v49

    if-ge v0, v1, :cond_19

    .line 1002
    move-object/from16 v0, v35

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/palette/Palette;->getEntry(I)I

    move-result v39

    .line 1004
    .local v39, "rgb":I
    shr-int/lit8 v49, v39, 0x10

    move/from16 v0, v49

    and-int/lit16 v0, v0, 0xff

    move/from16 v38, v0

    .line 1005
    .local v38, "red":I
    shr-int/lit8 v49, v39, 0x8

    move/from16 v0, v49

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    .line 1006
    .local v25, "green":I
    shr-int/lit8 v49, v39, 0x0

    move/from16 v0, v49

    and-int/lit16 v15, v0, 0xff

    .line 1008
    .local v15, "blue":I
    move-object/from16 v0, v16

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 1009
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 1010
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 998
    .end local v15    # "blue":I
    .end local v25    # "green":I
    .end local v38    # "red":I
    .end local v39    # "rgb":I
    :goto_d
    add-int/lit8 v28, v28, 0x1

    goto :goto_c

    .line 989
    .end local v7    # "PackedFields":I
    .end local v28    # "i":I
    :cond_16
    const/16 v49, 0x0

    move/from16 v50, v49

    goto :goto_9

    :cond_17
    const/16 v49, 0x0

    goto :goto_a

    :cond_18
    const/16 v49, 0x0

    goto :goto_b

    .line 1013
    .restart local v7    # "PackedFields":I
    .restart local v28    # "i":I
    :cond_19
    const/16 v49, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 1014
    const/16 v49, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 1015
    const/16 v49, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    goto :goto_d

    .line 1021
    :cond_1a
    const/16 v29, 0x0

    .line 1023
    .local v29, "image_data_total":I
    add-int/lit8 v5, v18, 0x1

    .line 1025
    .local v5, "LZWMinimumCodeSize":I
    const/16 v49, 0x2

    move/from16 v0, v49

    if-ge v5, v0, :cond_1b

    .line 1026
    const/4 v5, 0x2

    .line 1033
    :cond_1b
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 1035
    new-instance v21, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;

    const/16 v49, 0x49

    const/16 v50, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-direct {v0, v5, v1, v2}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;-><init>(IIZ)V

    .line 1039
    .local v21, "compressor":Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;
    mul-int v49, v44, v27

    move/from16 v0, v49

    new-array v0, v0, [B

    move-object/from16 v30, v0

    .line 1040
    .local v30, "imagedata":[B
    const/16 v48, 0x0

    .local v48, "y":I
    :goto_e
    move/from16 v0, v48

    move/from16 v1, v27

    if-ge v0, v1, :cond_1f

    .line 1042
    const/16 v45, 0x0

    .local v45, "x":I
    :goto_f
    move/from16 v0, v45

    move/from16 v1, v44

    if-ge v0, v1, :cond_1e

    .line 1044
    move-object/from16 v0, p1

    move/from16 v1, v45

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v14

    .line 1045
    .local v14, "argb":I
    const v49, 0xffffff

    and-int v39, v49, v14

    .line 1048
    .restart local v39    # "rgb":I
    if-eqz v26, :cond_1d

    .line 1050
    shr-int/lit8 v49, v14, 0x18

    move/from16 v0, v49

    and-int/lit16 v12, v0, 0xff

    .line 1051
    .local v12, "alpha":I
    const/16 v13, 0xff

    .line 1052
    .local v13, "alphaThreshold":I
    const/16 v49, 0xff

    move/from16 v0, v49

    if-ge v12, v0, :cond_1c

    .line 1053
    invoke-virtual/range {v35 .. v35}, Lorg/apache/sanselan/palette/Palette;->length()I

    move-result v31

    .line 1061
    .end local v12    # "alpha":I
    .end local v13    # "alphaThreshold":I
    .local v31, "index":I
    :goto_10
    mul-int v49, v48, v44

    add-int v49, v49, v45

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v50, v0

    aput-byte v50, v30, v49

    .line 1042
    add-int/lit8 v45, v45, 0x1

    goto :goto_f

    .line 1055
    .end local v31    # "index":I
    .restart local v12    # "alpha":I
    .restart local v13    # "alphaThreshold":I
    :cond_1c
    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/palette/Palette;->getPaletteIndex(I)I

    move-result v31

    .restart local v31    # "index":I
    goto :goto_10

    .line 1058
    .end local v12    # "alpha":I
    .end local v13    # "alphaThreshold":I
    .end local v31    # "index":I
    :cond_1d
    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/palette/Palette;->getPaletteIndex(I)I

    move-result v31

    .restart local v31    # "index":I
    goto :goto_10

    .line 1040
    .end local v14    # "argb":I
    .end local v31    # "index":I
    .end local v39    # "rgb":I
    :cond_1e
    add-int/lit8 v48, v48, 0x1

    goto :goto_e

    .line 1065
    .end local v45    # "x":I
    :cond_1f
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->compress([B)[B

    move-result-object v20

    .line 1066
    .local v20, "compressed":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;->writeAsSubBlocks(Ljava/io/OutputStream;[B)V

    .line 1067
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v49, v0

    add-int v49, v49, v29

    .line 1072
    const/16 v49, 0x3b

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 1075
    invoke-virtual/range {v16 .. v16}, Lorg/apache/sanselan/common/BinaryOutputStream;->close()V

    .line 1076
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V

    .line 1077
    return-void
.end method
