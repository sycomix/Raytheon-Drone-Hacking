.class public abstract Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;
.super Ljava/lang/Object;
.source "TiffImageWriterBase.java"

# interfaces
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;
.implements Lorg/apache/sanselan/common/BinaryConstants;


# instance fields
.field protected final byteOrder:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x49

    iput v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "byteOrder"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    .line 52
    return-void
.end method

.method private getStrips(Ljava/awt/image/BufferedImage;III)[[B
    .locals 23
    .param p1, "src"    # Ljava/awt/image/BufferedImage;
    .param p2, "samplesPerPixel"    # I
    .param p3, "bitsPerSample"    # I
    .param p4, "rowsPerStrip"    # I

    .prologue
    .line 486
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v19

    .line 487
    .local v19, "width":I
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    .line 489
    .local v9, "height":I
    add-int v22, v9, p4

    add-int/lit8 v22, v22, -0x1

    div-int v17, v22, p4

    .line 491
    .local v17, "stripCount":I
    const/4 v13, 0x0

    check-cast v13, [[B

    .line 493
    .local v13, "result":[[B
    move/from16 v0, v17

    new-array v13, v0, [[B

    .line 495
    move v12, v9

    .line 497
    .local v12, "remaining_rows":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v10, v0, :cond_2

    .line 499
    move/from16 v0, p4

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 500
    .local v15, "rowsInStrip":I
    sub-int/2addr v12, v15

    .line 502
    mul-int v22, p3, v15

    mul-int v22, v22, v19

    mul-int v3, v22, p2

    .line 504
    .local v3, "bitsInStrip":I
    add-int/lit8 v22, v3, 0x7

    div-int/lit8 v5, v22, 0x8

    .line 506
    .local v5, "bytesInStrip":I
    new-array v0, v5, [B

    move-object/from16 v18, v0

    .line 508
    .local v18, "uncompressed":[B
    const/4 v6, 0x0

    .line 509
    .local v6, "counter":I
    mul-int v21, v10, p4

    .line 510
    .local v21, "y":I
    mul-int v22, v10, p4

    add-int v16, v22, p4

    .line 512
    .local v16, "stop":I
    :goto_1
    move/from16 v0, v21

    if-ge v0, v9, :cond_1

    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 514
    const/16 v20, 0x0

    .local v20, "x":I
    move v7, v6

    .end local v6    # "counter":I
    .local v7, "counter":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 516
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v14

    .line 517
    .local v14, "rgb":I
    shr-int/lit8 v22, v14, 0x10

    move/from16 v0, v22

    and-int/lit16 v11, v0, 0xff

    .line 518
    .local v11, "red":I
    shr-int/lit8 v22, v14, 0x8

    move/from16 v0, v22

    and-int/lit16 v8, v0, 0xff

    .line 519
    .local v8, "green":I
    shr-int/lit8 v22, v14, 0x0

    move/from16 v0, v22

    and-int/lit16 v4, v0, 0xff

    .line 521
    .local v4, "blue":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "counter":I
    .restart local v6    # "counter":I
    int-to-byte v0, v11

    move/from16 v22, v0

    aput-byte v22, v18, v7

    .line 522
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "counter":I
    .restart local v7    # "counter":I
    int-to-byte v0, v8

    move/from16 v22, v0

    aput-byte v22, v18, v6

    .line 523
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "counter":I
    .restart local v6    # "counter":I
    int-to-byte v0, v4

    move/from16 v22, v0

    aput-byte v22, v18, v7

    .line 514
    add-int/lit8 v20, v20, 0x1

    move v7, v6

    .end local v6    # "counter":I
    .restart local v7    # "counter":I
    goto :goto_2

    .line 512
    .end local v4    # "blue":I
    .end local v8    # "green":I
    .end local v11    # "red":I
    .end local v14    # "rgb":I
    :cond_0
    add-int/lit8 v21, v21, 0x1

    move v6, v7

    .end local v7    # "counter":I
    .restart local v6    # "counter":I
    goto :goto_1

    .line 527
    .end local v20    # "x":I
    :cond_1
    aput-object v18, v13, v10

    .line 497
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 532
    .end local v3    # "bitsInStrip":I
    .end local v5    # "bytesInStrip":I
    .end local v6    # "counter":I
    .end local v15    # "rowsInStrip":I
    .end local v16    # "stop":I
    .end local v18    # "uncompressed":[B
    .end local v21    # "y":I
    :cond_2
    return-object v13
.end method

.method protected static final imageDataPaddingLength(I)I
    .locals 1
    .param p0, "dataLength"    # I

    .prologue
    .line 56
    rem-int/lit8 v0, p0, 0x4

    rsub-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method protected validateDirectories(Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;
    .locals 28
    .param p1, "outputSet"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->getDirectories()Ljava/util/List;

    move-result-object v4

    .line 67
    .local v4, "directories":Ljava/util/List;
    const/16 v25, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_0

    .line 68
    new-instance v25, Lorg/apache/sanselan/ImageWriteException;

    const-string v26, "No directories."

    invoke-direct/range {v25 .. v26}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 70
    :cond_0
    const/4 v8, 0x0

    .line 71
    .local v8, "exifDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    const/4 v14, 0x0

    .line 72
    .local v14, "gpsDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    const/16 v18, 0x0

    .line 73
    .local v18, "interoperabilityDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    const/4 v9, 0x0

    .line 74
    .local v9, "exifDirectoryOffsetField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    const/4 v15, 0x0

    .line 75
    .local v15, "gpsDirectoryOffsetField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    const/16 v19, 0x0

    .line 77
    .local v19, "interoperabilityDirectoryOffsetField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v6, "directoryIndices":Ljava/util/ArrayList;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v7, "directoryTypeMap":Ljava/util/Map;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    .line 81
    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .line 83
    .local v5, "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    iget v3, v5, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->type:I

    .line 84
    .local v3, "dirType":I
    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 85
    .local v21, "key":Ljava/lang/Integer;
    move-object/from16 v0, v21

    invoke-interface {v7, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    if-gez v3, :cond_4

    .line 91
    packed-switch v3, :pswitch_data_0

    .line 114
    new-instance v25, Lorg/apache/sanselan/ImageWriteException;

    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "Unknown directory: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 94
    :pswitch_0
    if-eqz v8, :cond_1

    .line 95
    new-instance v25, Lorg/apache/sanselan/ImageWriteException;

    const-string v26, "More than one EXIF directory."

    invoke-direct/range {v25 .. v26}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 97
    :cond_1
    move-object v8, v5

    .line 127
    :goto_1
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 128
    .local v12, "fieldTags":Ljava/util/HashSet;
    invoke-virtual {v5}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->getFields()Ljava/util/ArrayList;

    move-result-object v13

    .line 129
    .local v13, "fields":Ljava/util/ArrayList;
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    .line 131
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .line 133
    .local v10, "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    new-instance v11, Ljava/lang/Integer;

    iget v0, v10, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tag:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-direct {v11, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 134
    .local v11, "fieldKey":Ljava/lang/Integer;
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 135
    new-instance v25, Lorg/apache/sanselan/ImageWriteException;

    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "Tag ("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    iget-object v0, v10, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, ") appears twice in directory."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 101
    .end local v10    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .end local v11    # "fieldKey":Ljava/lang/Integer;
    .end local v12    # "fieldTags":Ljava/util/HashSet;
    .end local v13    # "fields":Ljava/util/ArrayList;
    .end local v20    # "j":I
    :pswitch_1
    if-eqz v14, :cond_2

    .line 102
    new-instance v25, Lorg/apache/sanselan/ImageWriteException;

    const-string v26, "More than one GPS directory."

    invoke-direct/range {v25 .. v26}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 104
    :cond_2
    move-object v14, v5

    .line 105
    goto :goto_1

    .line 108
    :pswitch_2
    if-eqz v18, :cond_3

    .line 109
    new-instance v25, Lorg/apache/sanselan/ImageWriteException;

    const-string v26, "More than one Interoperability directory."

    invoke-direct/range {v25 .. v26}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 111
    :cond_3
    move-object/from16 v18, v5

    .line 112
    goto :goto_1

    .line 119
    :cond_4
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 120
    new-instance v25, Lorg/apache/sanselan/ImageWriteException;

    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "More than one directory with index: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, "."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 123
    :cond_5
    new-instance v25, Ljava/lang/Integer;

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 138
    .restart local v10    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .restart local v11    # "fieldKey":Ljava/lang/Integer;
    .restart local v12    # "fieldTags":Ljava/util/HashSet;
    .restart local v13    # "fields":Ljava/util/ArrayList;
    .restart local v20    # "j":I
    :cond_6
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    iget v0, v10, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tag:I

    move/from16 v25, v0

    sget-object v26, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->EXIF_TAG_EXIF_OFFSET:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, v26

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 142
    if-eqz v9, :cond_7

    .line 143
    new-instance v25, Lorg/apache/sanselan/ImageWriteException;

    const-string v26, "More than one Exif directory offset field."

    invoke-direct/range {v25 .. v26}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 145
    :cond_7
    move-object v9, v10

    .line 129
    :cond_8
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 146
    :cond_9
    iget v0, v10, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tag:I

    move/from16 v25, v0

    sget-object v26, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->EXIF_TAG_INTEROP_OFFSET:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, v26

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 148
    if-eqz v19, :cond_a

    .line 149
    new-instance v25, Lorg/apache/sanselan/ImageWriteException;

    const-string v26, "More than one Interoperability directory offset field."

    invoke-direct/range {v25 .. v26}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 151
    :cond_a
    move-object/from16 v19, v10

    goto :goto_3

    .line 152
    :cond_b
    iget v0, v10, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tag:I

    move/from16 v25, v0

    sget-object v26, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->EXIF_TAG_GPSINFO:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, v26

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 154
    if-eqz v15, :cond_c

    .line 155
    new-instance v25, Lorg/apache/sanselan/ImageWriteException;

    const-string v26, "More than one GPS directory offset field."

    invoke-direct/range {v25 .. v26}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 157
    :cond_c
    move-object v15, v10

    goto :goto_3

    .line 79
    .end local v10    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .end local v11    # "fieldKey":Ljava/lang/Integer;
    :cond_d
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 163
    .end local v3    # "dirType":I
    .end local v5    # "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .end local v12    # "fieldTags":Ljava/util/HashSet;
    .end local v13    # "fields":Ljava/util/ArrayList;
    .end local v20    # "j":I
    .end local v21    # "key":Ljava/lang/Integer;
    :cond_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    .line 164
    new-instance v25, Lorg/apache/sanselan/ImageWriteException;

    const-string v26, "Missing root directory."

    invoke-direct/range {v25 .. v26}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 168
    :cond_f
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 170
    const/16 v22, 0x0

    .line 171
    .local v22, "previousDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    const/16 v16, 0x0

    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_12

    .line 173
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 174
    .local v17, "index":Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v16

    if-eq v0, v1, :cond_10

    .line 175
    new-instance v25, Lorg/apache/sanselan/ImageWriteException;

    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "Missing directory: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, "."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 178
    :cond_10
    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .line 180
    .restart local v5    # "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    if-eqz v22, :cond_11

    .line 181
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->setNextDirectory(Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;)V

    .line 182
    :cond_11
    move-object/from16 v22, v5

    .line 171
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 185
    .end local v5    # "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .end local v17    # "index":Ljava/lang/Integer;
    :cond_12
    new-instance v25, Ljava/lang/Integer;

    const/16 v26, 0x0

    invoke-direct/range {v25 .. v26}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .line 189
    .local v24, "rootDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    new-instance v23, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v7}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;-><init>(ILorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;Ljava/util/Map;)V

    .line 192
    .local v23, "result":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;
    if-nez v18, :cond_13

    if-eqz v19, :cond_13

    .line 196
    new-instance v25, Lorg/apache/sanselan/ImageWriteException;

    const-string v26, "Output set has Interoperability Directory Offset field, but no Interoperability Directory"

    invoke-direct/range {v25 .. v26}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 198
    :cond_13
    if-eqz v18, :cond_16

    .line 200
    if-nez v8, :cond_14

    .line 202
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->addExifDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v8

    .line 205
    :cond_14
    if-nez v19, :cond_15

    .line 207
    sget-object v25, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->EXIF_TAG_INTEROP_OFFSET:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->createOffsetField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    move-result-object v19

    .line 209
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 212
    :cond_15
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 217
    :cond_16
    if-nez v8, :cond_17

    if-eqz v9, :cond_17

    .line 220
    new-instance v25, Lorg/apache/sanselan/ImageWriteException;

    const-string v26, "Output set has Exif Directory Offset field, but no Exif Directory"

    invoke-direct/range {v25 .. v26}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 222
    :cond_17
    if-eqz v8, :cond_19

    .line 224
    if-nez v9, :cond_18

    .line 226
    sget-object v25, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->EXIF_TAG_EXIF_OFFSET:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->createOffsetField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    move-result-object v9

    .line 228
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 231
    :cond_18
    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 234
    :cond_19
    if-nez v14, :cond_1a

    if-eqz v15, :cond_1a

    .line 237
    new-instance v25, Lorg/apache/sanselan/ImageWriteException;

    const-string v26, "Output set has GPS Directory Offset field, but no GPS Directory"

    invoke-direct/range {v25 .. v26}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 239
    :cond_1a
    if-eqz v14, :cond_1c

    .line 241
    if-nez v15, :cond_1b

    .line 243
    sget-object v25, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->EXIF_TAG_GPSINFO:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->createOffsetField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    move-result-object v15

    .line 245
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 248
    :cond_1b
    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 251
    :cond_1c
    return-object v23

    .line 91
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract write(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 38
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
    .line 268
    new-instance v17, Ljava/util/HashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 271
    .end local p3    # "params":Ljava/util/Map;
    .local v17, "params":Ljava/util/Map;
    const-string v31, "FORMAT"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 272
    const-string v31, "FORMAT"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_0
    const/16 v28, 0x0

    .line 275
    .local v28, "xmpXml":Ljava/lang/String;
    const-string v31, "XMP_XML"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 277
    const-string v31, "XMP_XML"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .end local v28    # "xmpXml":Ljava/lang/String;
    check-cast v28, Ljava/lang/String;

    .line 278
    .restart local v28    # "xmpXml":Ljava/lang/String;
    const-string v31, "XMP_XML"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v26

    .line 282
    .local v26, "width":I
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v13

    .line 291
    .local v13, "height":I
    const/16 v18, 0x2

    .line 293
    .local v18, "photometricInterpretation":I
    const/4 v8, 0x5

    .line 294
    .local v8, "compression":I
    const-string v31, "COMPRESSION"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 296
    const-string v31, "COMPRESSION"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .line 297
    .local v25, "value":Ljava/lang/Object;
    if-eqz v25, :cond_3

    .line 299
    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v31, v0

    if-nez v31, :cond_2

    .line 300
    new-instance v31, Lorg/apache/sanselan/ImageWriteException;

    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    const-string v33, "Invalid compression parameter: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 302
    :cond_2
    check-cast v25, Ljava/lang/Number;

    .end local v25    # "value":Ljava/lang/Object;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 304
    :cond_3
    const-string v31, "COMPRESSION"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_4
    const/16 v21, 0x3

    .line 308
    .local v21, "samplesPerPixel":I
    const/16 v6, 0x8

    .line 311
    .local v6, "bitsPerSample":I
    const/16 v31, 0x1f40

    mul-int/lit8 v32, v26, 0x3

    div-int v20, v31, v32

    .line 312
    .local v20, "rowsPerStrip":I
    const/16 v31, 0x1

    move/from16 v0, v31

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 314
    const/16 v31, 0x3

    const/16 v32, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->getStrips(Ljava/awt/image/BufferedImage;III)[[B

    move-result-object v22

    .line 320
    .local v22, "strips":[[B
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v31

    if-lez v31, :cond_5

    .line 322
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 323
    .local v12, "firstKey":Ljava/lang/Object;
    new-instance v31, Lorg/apache/sanselan/ImageWriteException;

    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    const-string v33, "Unknown parameter: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 332
    .end local v12    # "firstKey":Ljava/lang/Object;
    :cond_5
    const v31, 0x8005

    move/from16 v0, v31

    if-ne v8, v0, :cond_6

    .line 334
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v14, v0, :cond_8

    .line 335
    new-instance v31, Lorg/apache/sanselan/common/PackBits;

    invoke-direct/range {v31 .. v31}, Lorg/apache/sanselan/common/PackBits;-><init>()V

    aget-object v32, v22, v14

    invoke-virtual/range {v31 .. v32}, Lorg/apache/sanselan/common/PackBits;->compress([B)[B

    move-result-object v31

    aput-object v31, v22, v14

    .line 334
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 336
    .end local v14    # "i":I
    :cond_6
    const/16 v31, 0x5

    move/from16 v0, v31

    if-ne v8, v0, :cond_7

    .line 338
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_1
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v14, v0, :cond_8

    .line 340
    aget-object v24, v22, v14

    .line 342
    .local v24, "uncompressed":[B
    const/16 v5, 0x8

    .line 344
    .local v5, "LZW_MINIMUM_CODE_SIZE":I
    new-instance v9, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;

    const/16 v31, 0x4d

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-direct {v9, v5, v0, v1}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;-><init>(IIZ)V

    .line 346
    .local v9, "compressor":Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->compress([B)[B

    move-result-object v7

    .line 348
    .local v7, "compressed":[B
    aput-object v7, v22, v14

    .line 338
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 350
    .end local v5    # "LZW_MINIMUM_CODE_SIZE":I
    .end local v7    # "compressed":[B
    .end local v9    # "compressor":Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;
    .end local v14    # "i":I
    .end local v24    # "uncompressed":[B
    :cond_7
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v8, v0, :cond_9

    .line 357
    :cond_8
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v15, v0, [Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;

    .line 358
    .local v15, "imageData":[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_2
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v14, v0, :cond_a

    .line 359
    new-instance v31, Lorg/apache/sanselan/formats/tiff/TiffImageData$Data;

    const/16 v32, 0x0

    aget-object v33, v22, v14

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    aget-object v34, v22, v14

    invoke-direct/range {v31 .. v34}, Lorg/apache/sanselan/formats/tiff/TiffImageData$Data;-><init>(II[B)V

    aput-object v31, v15, v14

    .line 358
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 354
    .end local v14    # "i":I
    .end local v15    # "imageData":[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;
    :cond_9
    new-instance v31, Lorg/apache/sanselan/ImageWriteException;

    const-string v32, "Invalid compression parameter (Only LZW, Packbits and uncompressed supported)."

    invoke-direct/range {v31 .. v32}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 368
    .restart local v14    # "i":I
    .restart local v15    # "imageData":[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;
    :cond_a
    new-instance v16, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    move/from16 v31, v0

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;-><init>(I)V

    .line 369
    .local v16, "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->addRootDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v10

    .line 375
    .local v10, "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    new-instance v11, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    sget-object v31, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v32, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    const/16 v33, 0x1

    sget-object v34, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v26, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;I)[B

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v11, v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 379
    .local v11, "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    invoke-virtual {v10, v11}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 382
    new-instance v11, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .end local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    sget-object v31, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v32, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    const/16 v33, 0x1

    sget-object v34, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v13, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;I)[B

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v11, v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 386
    .restart local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    invoke-virtual {v10, v11}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 389
    new-instance v11, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .end local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    sget-object v31, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_PHOTOMETRIC_INTERPRETATION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v32, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    const/16 v33, 0x1

    sget-object v34, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x2

    aput v37, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;->writeData(Ljava/lang/Object;I)[B

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v11, v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 394
    .restart local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    invoke-virtual {v10, v11}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 397
    new-instance v11, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .end local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    sget-object v31, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_COMPRESSION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v32, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    const/16 v33, 0x1

    sget-object v34, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v8, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;->writeData(Ljava/lang/Object;I)[B

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v11, v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 401
    .restart local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    invoke-virtual {v10, v11}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 404
    new-instance v11, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .end local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    sget-object v31, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_SAMPLES_PER_PIXEL:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v32, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    const/16 v33, 0x1

    sget-object v34, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x3

    aput v37, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;->writeData(Ljava/lang/Object;I)[B

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v11, v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 408
    .restart local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    invoke-virtual {v10, v11}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 411
    new-instance v11, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .end local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    sget-object v31, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v32, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    const/16 v33, 0x3

    sget-object v34, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    fill-array-data v35, :array_0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;->writeData(Ljava/lang/Object;I)[B

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v11, v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 415
    .restart local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    invoke-virtual {v10, v11}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 431
    new-instance v11, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .end local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    sget-object v31, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_ROWS_PER_STRIP:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v32, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    const/16 v33, 0x1

    sget-object v34, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v20, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;I)[B

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v11, v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 435
    .restart local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    invoke-virtual {v10, v11}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 439
    const/16 v19, 0x2

    .line 440
    .local v19, "resolutionUnit":I
    new-instance v11, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .end local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    sget-object v31, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v32, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    const/16 v33, 0x1

    sget-object v34, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v19, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;->writeData(Ljava/lang/Object;I)[B

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v11, v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 444
    .restart local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    invoke-virtual {v10, v11}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 448
    const/16 v27, 0x48

    .line 449
    .local v27, "xResolution":I
    new-instance v11, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .end local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    sget-object v31, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_XRESOLUTION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v32, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_RATIONAL:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;

    const/16 v33, 0x1

    sget-object v34, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_RATIONAL:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;

    const/16 v35, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    move/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v27

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;->writeData(III)[B

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v11, v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 453
    .restart local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    invoke-virtual {v10, v11}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 457
    const/16 v30, 0x48

    .line 458
    .local v30, "yResolution":I
    new-instance v11, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .end local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    sget-object v31, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_YRESOLUTION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v32, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_RATIONAL:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;

    const/16 v33, 0x1

    sget-object v34, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_RATIONAL:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;

    const/16 v35, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    move/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v30

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;->writeData(III)[B

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v11, v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 462
    .restart local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    invoke-virtual {v10, v11}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 465
    if-eqz v28, :cond_b

    .line 467
    const-string v31, "utf-8"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v29

    .line 469
    .local v29, "xmpXmlBytes":[B
    new-instance v11, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .end local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    sget-object v31, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_XMP:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v32, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_BYTE:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeByte;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v29

    invoke-direct {v11, v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 471
    .restart local v11    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    invoke-virtual {v10, v11}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 476
    .end local v29    # "xmpXmlBytes":[B
    :cond_b
    new-instance v23, Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-direct {v0, v15, v1}, Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;-><init>([Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;I)V

    .line 478
    .local v23, "tiffImageData":Lorg/apache/sanselan/formats/tiff/TiffImageData;
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->setTiffImageData(Lorg/apache/sanselan/formats/tiff/TiffImageData;)V

    .line 480
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->write(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    .line 481
    return-void

    .line 411
    nop

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data
.end method

.method protected writeImageFileHeader(Lorg/apache/sanselan/common/BinaryOutputStream;)V
    .locals 1
    .param p1, "bos"    # Lorg/apache/sanselan/common/BinaryOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 538
    const/16 v0, 0x8

    .line 540
    .local v0, "offsetToFirstIFD":I
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->writeImageFileHeader(Lorg/apache/sanselan/common/BinaryOutputStream;I)V

    .line 541
    return-void
.end method

.method protected writeImageFileHeader(Lorg/apache/sanselan/common/BinaryOutputStream;I)V
    .locals 1
    .param p1, "bos"    # Lorg/apache/sanselan/common/BinaryOutputStream;
    .param p2, "offsetToFirstIFD"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 546
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    invoke-virtual {p1, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 547
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    invoke-virtual {p1, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 549
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 551
    invoke-virtual {p1, p2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 552
    return-void
.end method
