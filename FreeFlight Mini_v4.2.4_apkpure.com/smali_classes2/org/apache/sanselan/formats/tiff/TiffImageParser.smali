.class public Lorg/apache/sanselan/formats/tiff/TiffImageParser;
.super Lorg/apache/sanselan/ImageParser;
.source "TiffImageParser.java"

# interfaces
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".tif"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".tif"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".tiff"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/sanselan/ImageParser;-><init>()V

    .line 55
    return-void
.end method

.method private getPhotometricInterpreter(Lorg/apache/sanselan/formats/tiff/TiffDirectory;II[IIIII)Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
    .locals 22
    .param p1, "directory"    # Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    .param p2, "photometricInterpretation"    # I
    .param p3, "bitsPerPixel"    # I
    .param p4, "bitsPerSample"    # [I
    .param p5, "predictor"    # I
    .param p6, "samplesPerPixel"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 518
    sparse-switch p2, :sswitch_data_0

    .line 578
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "TIFF: Unknown fPhotometricInterpretation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 522
    :sswitch_0
    if-nez p2, :cond_0

    const/4 v8, 0x1

    .line 524
    .local v8, "invert":Z
    :goto_0
    new-instance v1, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;

    move/from16 v2, p3

    move/from16 v3, p6

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v1 .. v8}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;-><init>(II[IIIIZ)V

    .line 573
    .end local v8    # "invert":Z
    :goto_1
    return-object v1

    .line 522
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 529
    :sswitch_1
    sget-object v1, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_COLOR_MAP:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v7

    .line 532
    .local v7, "colorMap":[I
    const/4 v1, 0x1

    shl-int v1, v1, p3

    mul-int/lit8 v21, v1, 0x3

    .line 534
    .local v21, "expected_colormap_size":I
    array-length v1, v7

    move/from16 v0, v21

    if-eq v1, v0, :cond_1

    .line 535
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Tiff: fColorMap.length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    array-length v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")!=expected_colormap_size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    :cond_1
    new-instance v1, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;

    move/from16 v2, p6

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v7}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;-><init>(I[IIII[I)V

    goto :goto_1

    .line 543
    .end local v7    # "colorMap":[I
    .end local v21    # "expected_colormap_size":I
    :sswitch_2
    new-instance v1, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterRGB;

    move/from16 v2, p6

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterRGB;-><init>(I[IIII)V

    goto :goto_1

    .line 546
    :sswitch_3
    new-instance v1, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterCMYK;

    move/from16 v2, p6

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterCMYK;-><init>(I[IIII)V

    goto :goto_1

    .line 550
    :sswitch_4
    sget-object v1, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_YCBCR_COEFFICIENTS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getDoubleArrayValue()[D

    move-result-object v10

    .line 553
    .local v10, "yCbCrCoefficients":[D
    sget-object v1, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_YCBCR_POSITIONING:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v11

    .line 555
    .local v11, "yCbCrPositioning":[I
    sget-object v1, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_YCBCR_SUB_SAMPLING:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v12

    .line 558
    .local v12, "yCbCrSubSampling":[I
    sget-object v1, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_REFERENCE_BLACK_WHITE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getDoubleArrayValue()[D

    move-result-object v13

    .line 561
    .local v13, "referenceBlackWhite":[D
    new-instance v9, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;

    move/from16 v14, p6

    move-object/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p7

    move/from16 v18, p8

    invoke-direct/range {v9 .. v18}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;-><init>([D[I[I[DI[IIII)V

    move-object v1, v9

    goto/16 :goto_1

    .line 567
    .end local v10    # "yCbCrCoefficients":[D
    .end local v11    # "yCbCrPositioning":[I
    .end local v12    # "yCbCrSubSampling":[I
    .end local v13    # "referenceBlackWhite":[D
    :sswitch_5
    new-instance v1, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterCIELAB;

    move/from16 v2, p6

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterCIELAB;-><init>(I[IIII)V

    goto/16 :goto_1

    .line 572
    :sswitch_6
    const v1, 0x804c

    move/from16 v0, p2

    if-ne v0, v1, :cond_2

    const/16 v20, 0x1

    .line 573
    .local v20, "yonly":Z
    :goto_2
    new-instance v14, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLUV;

    move/from16 v15, p6

    move-object/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, p7

    move/from16 v19, p8

    invoke-direct/range {v14 .. v20}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLUV;-><init>(I[IIIIZ)V

    move-object v1, v14

    goto/16 :goto_1

    .line 572
    .end local v20    # "yonly":Z
    :cond_2
    const/16 v20, 0x0

    goto :goto_2

    .line 518
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x8 -> :sswitch_5
        0x804c -> :sswitch_6
        0x804d -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public collectRawImageData(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/util/List;
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
    .line 412
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v5

    .line 413
    .local v5, "formatCompliance":Lorg/apache/sanselan/FormatCompliance;
    new-instance v9, Lorg/apache/sanselan/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v10

    invoke-direct {v9, v10}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    const/4 v10, 0x1

    invoke-virtual {v9, p1, v10, v5}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readDirectories(Lorg/apache/sanselan/common/byteSources/ByteSource;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object v1

    .line 416
    .local v1, "contents":Lorg/apache/sanselan/formats/tiff/TiffContents;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v8, "result":Ljava/util/List;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v9, v1, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 419
    iget-object v9, v1, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 421
    .local v3, "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    invoke-virtual {v3}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getTiffRawImageDataElements()Ljava/util/ArrayList;

    move-result-object v2

    .line 422
    .local v2, "dataElements":Ljava/util/List;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_0

    .line 424
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;

    .line 426
    .local v4, "element":Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;
    iget v9, v4, Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;->offset:I

    iget v10, v4, Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    invoke-virtual {p1, v9, v10}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getBlock(II)[B

    move-result-object v0

    .line 428
    .local v0, "bytes":[B
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 417
    .end local v0    # "bytes":[B
    .end local v4    # "element":Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 431
    .end local v2    # "dataElements":Ljava/util/List;
    .end local v3    # "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    .end local v7    # "j":I
    :cond_1
    return-object v8
.end method

.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    :try_start_0
    const-string v10, "tiff.dumpImageFile"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 342
    .local v8, "imageData":Lorg/apache/sanselan/ImageInfo;
    if-nez v8, :cond_0

    .line 343
    const/4 v10, 0x0

    .line 395
    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return v10

    .line 345
    :cond_0
    :try_start_1
    const-string v10, ""

    invoke-virtual {v8, p1, v10}, Lorg/apache/sanselan/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 348
    const-string v10, ""

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v6

    .line 354
    .local v6, "formatCompliance":Lorg/apache/sanselan/FormatCompliance;
    const/4 v9, 0x0

    .line 355
    .local v9, "params":Ljava/util/Map;
    new-instance v10, Lorg/apache/sanselan/formats/tiff/TiffReader;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v10, p2, v9, v6}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readContents(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object v0

    .line 358
    .local v0, "contents":Lorg/apache/sanselan/formats/tiff/TiffContents;
    iget-object v2, v0, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    .local v2, "directories":Ljava/util/ArrayList;
    if-nez v2, :cond_1

    .line 361
    const/4 v10, 0x0

    .line 395
    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_1
    const/4 v1, 0x0

    .local v1, "d":I
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_4

    .line 365
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 368
    .local v3, "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    iget-object v4, v3, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->entries:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    .local v4, "entries":Ljava/util/ArrayList;
    if-nez v4, :cond_2

    .line 371
    const/4 v10, 0x0

    .line 395
    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_3

    .line 377
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/formats/tiff/TiffField;

    .line 379
    .local v5, "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, p1, v10}, Lorg/apache/sanselan/formats/tiff/TiffField;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 375
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 363
    .end local v5    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 383
    .end local v3    # "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    .end local v4    # "entries":Ljava/util/ArrayList;
    .end local v7    # "i":I
    :cond_4
    const-string v10, ""

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 392
    const/4 v10, 0x1

    .line 395
    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "contents":Lorg/apache/sanselan/formats/tiff/TiffContents;
    .end local v1    # "d":I
    .end local v2    # "directories":Ljava/util/ArrayList;
    .end local v6    # "formatCompliance":Lorg/apache/sanselan/FormatCompliance;
    .end local v8    # "imageData":Lorg/apache/sanselan/ImageInfo;
    .end local v9    # "params":Ljava/util/Map;
    :catchall_0
    move-exception v10

    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    throw v10
.end method

.method public embedICCProfile(Ljava/io/File;Ljava/io/File;[B)Z
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;
    .param p3, "profile"    # [B

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public embedICCProfile([B[B)[B
    .locals 1
    .param p1, "image"    # [B
    .param p2, "profile"    # [B

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/sanselan/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_TIFF:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
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
    .line 437
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v2

    .line 438
    .local v2, "formatCompliance":Lorg/apache/sanselan/FormatCompliance;
    new-instance v4, Lorg/apache/sanselan/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v5

    invoke-direct {v4, v5}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    const/4 v5, 0x1

    invoke-virtual {v4, p1, p2, v5, v2}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readFirstDirectory(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object v0

    .line 440
    .local v0, "contents":Lorg/apache/sanselan/formats/tiff/TiffContents;
    iget-object v4, v0, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 441
    .local v1, "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    invoke-virtual {v1, p2}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getTiffImage(Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v3

    .line 442
    .local v3, "result":Ljava/awt/image/BufferedImage;
    if-nez v3, :cond_0

    .line 443
    new-instance v4, Lorg/apache/sanselan/ImageReadException;

    const-string v5, "TIFF does not contain an image."

    invoke-direct {v4, v5}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 444
    :cond_0
    return-object v3
.end method

.method protected getBufferedImage(Lorg/apache/sanselan/formats/tiff/TiffDirectory;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 25
    .param p1, "directory"    # Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->entries:Ljava/util/ArrayList;

    .line 452
    .local v12, "entries":Ljava/util/ArrayList;
    if-nez v12, :cond_0

    .line 453
    new-instance v2, Lorg/apache/sanselan/ImageReadException;

    const-string v3, "TIFF missing entries"

    invoke-direct {v2, v3}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 455
    :cond_0
    sget-object v2, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_PHOTOMETRIC_INTERPRETATION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v4

    .line 457
    .local v4, "photometricInterpretation":I
    sget-object v2, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_COMPRESSION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v20

    .line 459
    .local v20, "compression":I
    sget-object v2, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v9

    .line 461
    .local v9, "width":I
    sget-object v2, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v10

    .line 463
    .local v10, "height":I
    sget-object v2, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_SAMPLES_PER_PIXEL:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v8

    .line 465
    .local v8, "samplesPerPixel":I
    sget-object v2, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v6

    .line 468
    .local v6, "bitsPerSample":[I
    sget-object v2, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValueOrArraySum()I

    move-result v5

    .line 474
    .local v5, "bitsPerPixel":I
    const/4 v7, -0x1

    .line 481
    .local v7, "predictor":I
    sget-object v2, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_PREDICTOR:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v23

    .line 482
    .local v23, "predictorField":Lorg/apache/sanselan/formats/tiff/TiffField;
    if-eqz v23, :cond_1

    .line 483
    invoke-virtual/range {v23 .. v23}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValueOrArraySum()I

    move-result v7

    .line 486
    :cond_1
    array-length v2, v6

    if-eq v8, v2, :cond_2

    .line 487
    new-instance v2, Lorg/apache/sanselan/ImageReadException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Tiff: samplesPerPixel ("

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v14, ")!=fBitsPerSample.length ("

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    array-length v14, v6

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v14, ")"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 491
    :cond_2
    const/16 v22, 0x0

    .line 492
    .local v22, "hasAlpha":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/sanselan/common/IBufferedImageFactory;

    move-result-object v2

    move/from16 v0, v22

    invoke-interface {v2, v9, v10, v0}, Lorg/apache/sanselan/common/IBufferedImageFactory;->getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v24

    .local v24, "result":Ljava/awt/image/BufferedImage;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 495
    invoke-direct/range {v2 .. v10}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->getPhotometricInterpreter(Lorg/apache/sanselan/formats/tiff/TiffDirectory;II[IIIII)Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    move-result-object v13

    .line 499
    .local v13, "photometricInterpreter":Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getTiffImageData()Lorg/apache/sanselan/formats/tiff/TiffImageData;

    move-result-object v11

    .local v11, "imageData":Lorg/apache/sanselan/formats/tiff/TiffImageData;
    move v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    .line 501
    invoke-virtual/range {v11 .. v20}, Lorg/apache/sanselan/formats/tiff/TiffImageData;->getDataReader(Ljava/util/ArrayList;Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIII)Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;

    move-result-object v21

    .line 505
    .local v21, "dataReader":Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->readImageData(Ljava/awt/image/BufferedImage;)V

    .line 507
    invoke-virtual {v13}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;->dumpstats()V

    .line 509
    return-object v24
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, ".tif"

    return-object v0
.end method

.method public getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;
    .locals 4
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v0

    .line 403
    .local v0, "formatCompliance":Lorg/apache/sanselan/FormatCompliance;
    const/4 v1, 0x0

    .line 404
    .local v1, "params":Ljava/util/Map;
    new-instance v2, Lorg/apache/sanselan/formats/tiff/TiffReader;

    invoke-static {v1}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v2, p1, v1, v0}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readContents(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    .line 406
    return-object v0
.end method

.method public getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B
    .locals 7
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 85
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v3

    .line 86
    .local v3, "formatCompliance":Lorg/apache/sanselan/FormatCompliance;
    new-instance v4, Lorg/apache/sanselan/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v5

    invoke-direct {v4, v5}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v4, p1, p2, v6, v3}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readFirstDirectory(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object v0

    .line 88
    .local v0, "contents":Lorg/apache/sanselan/formats/tiff/TiffContents;
    iget-object v4, v0, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 90
    .local v1, "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    sget-object v4, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->EXIF_TAG_ICC_PROFILE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v1, v4}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v2

    .line 91
    .local v2, "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    if-nez v2, :cond_0

    .line 92
    const/4 v4, 0x0

    .line 93
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, v2, Lorg/apache/sanselan/formats/tiff/TiffField;->oversizeValue:[B

    goto :goto_0
.end method

.method public getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 50
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v36

    .line 156
    .local v36, "formatCompliance":Lorg/apache/sanselan/FormatCompliance;
    new-instance v46, Lorg/apache/sanselan/formats/tiff/TiffReader;

    invoke-static/range {p2 .. p2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v47

    invoke-direct/range {v46 .. v47}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move/from16 v2, v47

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readDirectories(Lorg/apache/sanselan/common/byteSources/ByteSource;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object v32

    .line 158
    .local v32, "contents":Lorg/apache/sanselan/formats/tiff/TiffContents;
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 160
    .local v33, "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    sget-object v46, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const/16 v47, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v41

    .line 161
    .local v41, "widthField":Lorg/apache/sanselan/formats/tiff/TiffField;
    sget-object v46, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const/16 v47, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v37

    .line 164
    .local v37, "heightField":Lorg/apache/sanselan/formats/tiff/TiffField;
    if-eqz v41, :cond_0

    if-nez v37, :cond_1

    .line 165
    :cond_0
    new-instance v46, Lorg/apache/sanselan/ImageReadException;

    const-string v47, "TIFF image missing size info."

    invoke-direct/range {v46 .. v47}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v46

    .line 167
    :cond_1
    invoke-virtual/range {v37 .. v37}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v10

    .line 168
    .local v10, "height":I
    invoke-virtual/range {v41 .. v41}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v17

    .line 172
    .local v17, "width":I
    sget-object v46, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v40

    .line 174
    .local v40, "resolutionUnitField":Lorg/apache/sanselan/formats/tiff/TiffField;
    const/16 v39, 0x2

    .line 175
    .local v39, "resolutionUnit":I
    if-eqz v40, :cond_2

    invoke-virtual/range {v40 .. v40}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v46

    if-eqz v46, :cond_2

    .line 177
    invoke-virtual/range {v40 .. v40}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v39

    .line 179
    :cond_2
    const-wide/high16 v42, -0x4010000000000000L    # -1.0

    .line 180
    .local v42, "unitsPerInch":D
    packed-switch v39, :pswitch_data_0

    .line 194
    :goto_0
    :pswitch_0
    sget-object v46, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_XRESOLUTION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v44

    .line 195
    .local v44, "xResolutionField":Lorg/apache/sanselan/formats/tiff/TiffField;
    sget-object v46, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_YRESOLUTION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v45

    .line 197
    .local v45, "yResolutionField":Lorg/apache/sanselan/formats/tiff/TiffField;
    const/4 v15, -0x1

    .line 198
    .local v15, "physicalWidthDpi":I
    const/high16 v16, -0x40800000    # -1.0f

    .line 199
    .local v16, "physicalWidthInch":F
    const/4 v13, -0x1

    .line 200
    .local v13, "physicalHeightDpi":I
    const/high16 v14, -0x40800000    # -1.0f

    .line 202
    .local v14, "physicalHeightInch":F
    const-wide/16 v46, 0x0

    cmpl-double v46, v42, v46

    if-lez v46, :cond_4

    .line 204
    if-eqz v44, :cond_3

    invoke-virtual/range {v44 .. v44}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v46

    if-eqz v46, :cond_3

    .line 207
    invoke-virtual/range {v44 .. v44}, Lorg/apache/sanselan/formats/tiff/TiffField;->getDoubleValue()D

    move-result-wide v24

    .line 209
    .local v24, "XResolutionPixelsPerUnit":D
    div-double v46, v24, v42

    move-wide/from16 v0, v46

    double-to-int v15, v0

    .line 210
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v48, v24, v42

    div-double v46, v46, v48

    move-wide/from16 v0, v46

    double-to-float v0, v0

    move/from16 v16, v0

    .line 212
    .end local v24    # "XResolutionPixelsPerUnit":D
    :cond_3
    if-eqz v45, :cond_4

    invoke-virtual/range {v45 .. v45}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v46

    if-eqz v46, :cond_4

    .line 215
    invoke-virtual/range {v45 .. v45}, Lorg/apache/sanselan/formats/tiff/TiffField;->getDoubleValue()D

    move-result-wide v26

    .line 217
    .local v26, "YResolutionPixelsPerUnit":D
    div-double v46, v26, v42

    move-wide/from16 v0, v46

    double-to-int v13, v0

    .line 218
    int-to-double v0, v10

    move-wide/from16 v46, v0

    mul-double v48, v26, v42

    div-double v46, v46, v48

    move-wide/from16 v0, v46

    double-to-float v14, v0

    .line 224
    .end local v26    # "YResolutionPixelsPerUnit":D
    :cond_4
    sget-object v46, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v28

    .line 227
    .local v28, "bitsPerSampleField":Lorg/apache/sanselan/formats/tiff/TiffField;
    const/16 v23, -0x1

    .line 228
    .local v23, "bitsPerSample":I
    if-eqz v28, :cond_5

    invoke-virtual/range {v28 .. v28}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v46

    if-eqz v46, :cond_5

    .line 230
    invoke-virtual/range {v28 .. v28}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValueOrArraySum()I

    move-result v23

    .line 232
    :cond_5
    move/from16 v6, v23

    .line 237
    .local v6, "bitsPerPixel":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v7, "comments":Ljava/util/ArrayList;
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->entries:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    .line 239
    .local v34, "entries":Ljava/util/ArrayList;
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_1
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v46

    move/from16 v0, v38

    move/from16 v1, v46

    if-ge v0, v1, :cond_6

    .line 241
    move-object/from16 v0, v34

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/apache/sanselan/formats/tiff/TiffField;

    .line 242
    .local v35, "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    invoke-virtual/range {v35 .. v35}, Lorg/apache/sanselan/formats/tiff/TiffField;->toString()Ljava/lang/String;

    move-result-object v30

    .line 243
    .local v30, "comment":Ljava/lang/String;
    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v38, v38, 0x1

    goto :goto_1

    .line 185
    .end local v6    # "bitsPerPixel":I
    .end local v7    # "comments":Ljava/util/ArrayList;
    .end local v13    # "physicalHeightDpi":I
    .end local v14    # "physicalHeightInch":F
    .end local v15    # "physicalWidthDpi":I
    .end local v16    # "physicalWidthInch":F
    .end local v23    # "bitsPerSample":I
    .end local v28    # "bitsPerSampleField":Lorg/apache/sanselan/formats/tiff/TiffField;
    .end local v30    # "comment":Ljava/lang/String;
    .end local v34    # "entries":Ljava/util/ArrayList;
    .end local v35    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    .end local v38    # "i":I
    .end local v44    # "xResolutionField":Lorg/apache/sanselan/formats/tiff/TiffField;
    .end local v45    # "yResolutionField":Lorg/apache/sanselan/formats/tiff/TiffField;
    :pswitch_1
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    .line 186
    goto/16 :goto_0

    .line 188
    :pswitch_2
    const-wide v42, 0x3f9a027525460aa6L    # 0.0254

    .line 189
    goto/16 :goto_0

    .line 246
    .restart local v6    # "bitsPerPixel":I
    .restart local v7    # "comments":Ljava/util/ArrayList;
    .restart local v13    # "physicalHeightDpi":I
    .restart local v14    # "physicalHeightInch":F
    .restart local v15    # "physicalWidthDpi":I
    .restart local v16    # "physicalWidthInch":F
    .restart local v23    # "bitsPerSample":I
    .restart local v28    # "bitsPerSampleField":Lorg/apache/sanselan/formats/tiff/TiffField;
    .restart local v34    # "entries":Ljava/util/ArrayList;
    .restart local v38    # "i":I
    .restart local v44    # "xResolutionField":Lorg/apache/sanselan/formats/tiff/TiffField;
    .restart local v45    # "yResolutionField":Lorg/apache/sanselan/formats/tiff/TiffField;
    :cond_6
    sget-object v8, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_TIFF:Lorg/apache/sanselan/ImageFormat;

    .line 247
    .local v8, "format":Lorg/apache/sanselan/ImageFormat;
    const-string v9, "TIFF Tag-based Image File Format"

    .line 248
    .local v9, "formatName":Ljava/lang/String;
    const-string v11, "image/tiff"

    .line 249
    .local v11, "mimeType":Ljava/lang/String;
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 251
    .local v12, "numberOfImages":I
    const/16 v18, 0x0

    .line 254
    .local v18, "isProgressive":Z
    new-instance v46, Ljava/lang/StringBuffer;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuffer;-><init>()V

    const-string v47, "Tiff v."

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v46

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/sanselan/formats/tiff/TiffContents;->header:Lorg/apache/sanselan/formats/tiff/TiffHeader;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/TiffHeader;->tiffVersion:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, "formatDetails":Ljava/lang/String;
    const/16 v19, 0x0

    .line 257
    .local v19, "isTransparent":Z
    const/16 v20, 0x0

    .line 258
    .local v20, "usesPalette":Z
    sget-object v46, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_COLOR_MAP:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v29

    .line 259
    .local v29, "colorMapField":Lorg/apache/sanselan/formats/tiff/TiffField;
    if-eqz v29, :cond_7

    .line 260
    const/16 v20, 0x1

    .line 262
    :cond_7
    const/16 v21, 0x2

    .line 264
    .local v21, "colorType":I
    sget-object v46, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_COMPRESSION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v31

    .line 268
    .local v31, "compression":I
    sparse-switch v31, :sswitch_data_0

    .line 295
    const-string v22, "Unknown"

    .line 299
    .local v22, "compressionAlgorithm":Ljava/lang/String;
    :goto_2
    new-instance v4, Lorg/apache/sanselan/ImageInfo;

    invoke-direct/range {v4 .. v22}, Lorg/apache/sanselan/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;)V

    .line 305
    .local v4, "result":Lorg/apache/sanselan/ImageInfo;
    return-object v4

    .line 271
    .end local v4    # "result":Lorg/apache/sanselan/ImageInfo;
    .end local v22    # "compressionAlgorithm":Ljava/lang/String;
    :sswitch_0
    const-string v22, "None"

    .line 272
    .restart local v22    # "compressionAlgorithm":Ljava/lang/String;
    goto :goto_2

    .line 274
    .end local v22    # "compressionAlgorithm":Ljava/lang/String;
    :sswitch_1
    const-string v22, "CCITT 1D"

    .line 275
    .restart local v22    # "compressionAlgorithm":Ljava/lang/String;
    goto :goto_2

    .line 277
    .end local v22    # "compressionAlgorithm":Ljava/lang/String;
    :sswitch_2
    const-string v22, "CCITT Group 3 1-Dimensional Modified Huffman run-length encoding."

    .line 278
    .restart local v22    # "compressionAlgorithm":Ljava/lang/String;
    goto :goto_2

    .line 280
    .end local v22    # "compressionAlgorithm":Ljava/lang/String;
    :sswitch_3
    const-string v22, "CCITT Group 4"

    .line 281
    .restart local v22    # "compressionAlgorithm":Ljava/lang/String;
    goto :goto_2

    .line 283
    .end local v22    # "compressionAlgorithm":Ljava/lang/String;
    :sswitch_4
    const-string v22, "LZW"

    .line 284
    .restart local v22    # "compressionAlgorithm":Ljava/lang/String;
    goto :goto_2

    .line 286
    .end local v22    # "compressionAlgorithm":Ljava/lang/String;
    :sswitch_5
    const-string v22, "JPEG"

    .line 287
    .restart local v22    # "compressionAlgorithm":Ljava/lang/String;
    goto :goto_2

    .line 289
    .end local v22    # "compressionAlgorithm":Ljava/lang/String;
    :sswitch_6
    const-string v22, "None"

    .line 290
    .restart local v22    # "compressionAlgorithm":Ljava/lang/String;
    goto :goto_2

    .line 292
    .end local v22    # "compressionAlgorithm":Ljava/lang/String;
    :sswitch_7
    const-string v22, "PackBits"

    .line 293
    .restart local v22    # "compressionAlgorithm":Ljava/lang/String;
    goto :goto_2

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 268
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x8003 -> :sswitch_6
        0x8005 -> :sswitch_7
    .end sparse-switch
.end method

.method public getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
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
    const/4 v7, 0x0

    .line 99
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v2

    .line 100
    .local v2, "formatCompliance":Lorg/apache/sanselan/FormatCompliance;
    new-instance v5, Lorg/apache/sanselan/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v6

    invoke-direct {v5, v6}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v5, p1, p2, v7, v2}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readFirstDirectory(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object v0

    .line 102
    .local v0, "contents":Lorg/apache/sanselan/formats/tiff/TiffContents;
    iget-object v5, v0, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 104
    .local v1, "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    sget-object v5, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v1, v5}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v4

    .line 105
    .local v4, "width":I
    sget-object v5, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v1, v5}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v3

    .line 107
    .local v3, "height":I
    new-instance v5, Ljava/awt/Dimension;

    invoke-direct {v5, v4, v3}, Ljava/awt/Dimension;-><init>(II)V

    return-object v5
.end method

.method public getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
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
    .line 123
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v5

    .line 124
    .local v5, "formatCompliance":Lorg/apache/sanselan/FormatCompliance;
    new-instance v10, Lorg/apache/sanselan/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v11

    invoke-direct {v10, v11}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v10, p1, p2, v5}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readContents(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object v0

    .line 127
    .local v0, "contents":Lorg/apache/sanselan/formats/tiff/TiffContents;
    iget-object v2, v0, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    .line 129
    .local v2, "directories":Ljava/util/ArrayList;
    new-instance v9, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

    invoke-direct {v9, v0}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;-><init>(Lorg/apache/sanselan/formats/tiff/TiffContents;)V

    .line 131
    .local v9, "result":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_1

    .line 133
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 135
    .local v1, "dir":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    new-instance v8, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;

    invoke-direct {v8, v1}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;-><init>(Lorg/apache/sanselan/formats/tiff/TiffDirectory;)V

    .line 138
    .local v8, "metadataDirectory":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    invoke-virtual {v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getDirectoryEntrys()Ljava/util/ArrayList;

    move-result-object v3

    .line 140
    .local v3, "entries":Ljava/util/ArrayList;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_0

    .line 142
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sanselan/formats/tiff/TiffField;

    .line 143
    .local v4, "entry":Lorg/apache/sanselan/formats/tiff/TiffField;
    invoke-virtual {v8, v4}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->add(Lorg/apache/sanselan/formats/tiff/TiffField;)V

    .line 140
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 146
    .end local v4    # "entry":Lorg/apache/sanselan/formats/tiff/TiffField;
    :cond_0
    invoke-virtual {v9, v8}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;->add(Lorg/apache/sanselan/common/IImageMetadata$IImageMetadataItem;)V

    .line 131
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "dir":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    .end local v3    # "entries":Ljava/util/ArrayList;
    .end local v7    # "j":I
    .end local v8    # "metadataDirectory":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    :cond_1
    return-object v9
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "Tiff-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 311
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v4

    .line 312
    .local v4, "formatCompliance":Lorg/apache/sanselan/FormatCompliance;
    new-instance v7, Lorg/apache/sanselan/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v8

    invoke-direct {v7, v8}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v7, p1, v9, v4}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readDirectories(Lorg/apache/sanselan/common/byteSources/ByteSource;ZLorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object v1

    .line 314
    .local v1, "contents":Lorg/apache/sanselan/formats/tiff/TiffContents;
    iget-object v7, v1, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 316
    .local v2, "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    sget-object v7, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->TIFF_TAG_XMP:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v2, v7, v9}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v6

    .line 317
    .local v6, "xmpField":Lorg/apache/sanselan/formats/tiff/TiffField;
    if-nez v6, :cond_0

    .line 318
    const/4 v5, 0x0

    .line 326
    :goto_0
    return-object v5

    .line 320
    :cond_0
    invoke-virtual {v6}, Lorg/apache/sanselan/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    .line 325
    .local v0, "bytes":[B
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-direct {v5, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .local v5, "xml":Ljava/lang/String;
    goto :goto_0

    .line 327
    .end local v5    # "xml":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 329
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lorg/apache/sanselan/ImageReadException;

    const-string v8, "Invalid JPEG XMP Segment."

    invoke-direct {v7, v8}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 1
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
    .line 587
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    .line 588
    return-void
.end method
