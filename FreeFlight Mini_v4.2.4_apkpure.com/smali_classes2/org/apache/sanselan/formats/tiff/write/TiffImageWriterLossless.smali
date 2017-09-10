.class public Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;
.super Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;
.source "TiffImageWriterLossless.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;
    }
.end annotation


# static fields
.field private static final ELEMENT_SIZE_COMPARATOR:Ljava/util/Comparator;

.field private static final ITEM_SIZE_COMPARATOR:Ljava/util/Comparator;


# instance fields
.field private final exifBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$1;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$1;-><init>()V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->ELEMENT_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 260
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$2;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$2;-><init>()V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->ITEM_SIZE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "byteOrder"    # I
    .param p2, "exifBytes"    # [B

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;-><init>(I)V

    .line 55
    iput-object p2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    .line 56
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "exifBytes"    # [B

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    .line 50
    return-void
.end method

.method private analyzeOldTiff()Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    new-instance v3, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v3, v0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    .line 127
    .local v3, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    const/16 v21, 0x0

    .line 128
    .local v21, "params":Ljava/util/Map;
    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v15

    .line 129
    .local v15, "formatCompliance":Lorg/apache/sanselan/FormatCompliance;
    new-instance v25, Lorg/apache/sanselan/formats/tiff/TiffReader;

    const/16 v26, 0x0

    invoke-direct/range {v25 .. v26}, Lorg/apache/sanselan/formats/tiff/TiffReader;-><init>(Z)V

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1, v15}, Lorg/apache/sanselan/formats/tiff/TiffReader;->readContents(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;Lorg/apache/sanselan/FormatCompliance;)Lorg/apache/sanselan/formats/tiff/TiffContents;

    move-result-object v4

    .line 132
    .local v4, "contents":Lorg/apache/sanselan/formats/tiff/TiffContents;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v11, "elements":Ljava/util/ArrayList;
    iget-object v7, v4, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    .line 136
    .local v7, "directories":Ljava/util/List;
    const/4 v5, 0x0

    .local v5, "d":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v5, v0, :cond_4

    .line 138
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 139
    .local v8, "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v8}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getDirectoryEntrys()Ljava/util/ArrayList;

    move-result-object v14

    .line 142
    .local v14, "fields":Ljava/util/List;
    const/4 v12, 0x0

    .local v12, "f":I
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_1

    .line 144
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/sanselan/formats/tiff/TiffField;

    .line 145
    .local v13, "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    invoke-virtual {v13}, Lorg/apache/sanselan/formats/tiff/TiffField;->getOversizeValueElement()Lorg/apache/sanselan/formats/tiff/TiffElement;

    move-result-object v20

    .line 146
    .local v20, "oversizeValue":Lorg/apache/sanselan/formats/tiff/TiffElement;
    if-eqz v20, :cond_0

    .line 147
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 151
    .end local v13    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    .end local v20    # "oversizeValue":Lorg/apache/sanselan/formats/tiff/TiffElement;
    :cond_1
    invoke-virtual {v8}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getJpegImageData()Lorg/apache/sanselan/formats/tiff/JpegImageData;

    move-result-object v18

    .line 152
    .local v18, "jpegImageData":Lorg/apache/sanselan/formats/tiff/JpegImageData;
    if-eqz v18, :cond_2

    .line 153
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_2
    invoke-virtual {v8}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getTiffImageData()Lorg/apache/sanselan/formats/tiff/TiffImageData;

    move-result-object v24

    .line 156
    .local v24, "tiffImageData":Lorg/apache/sanselan/formats/tiff/TiffImageData;
    if-eqz v24, :cond_3

    .line 158
    invoke-virtual/range {v24 .. v24}, Lorg/apache/sanselan/formats/tiff/TiffImageData;->getImageData()[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;

    move-result-object v6

    .line 160
    .local v6, "data":[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    array-length v0, v6

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    .line 161
    aget-object v25, v6, v16

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 136
    .end local v6    # "data":[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;
    .end local v16    # "i":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 165
    .end local v8    # "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    .end local v12    # "f":I
    .end local v14    # "fields":Ljava/util/List;
    .end local v18    # "jpegImageData":Lorg/apache/sanselan/formats/tiff/JpegImageData;
    .end local v24    # "tiffImageData":Lorg/apache/sanselan/formats/tiff/TiffImageData;
    :cond_4
    sget-object v25, Lorg/apache/sanselan/formats/tiff/TiffElement;->COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 169
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v22, "result":Ljava/util/List;
    const/4 v2, 0x3

    .line 173
    .local v2, "TOLERANCE":I
    const/16 v23, 0x0

    .line 174
    .local v23, "start":Lorg/apache/sanselan/formats/tiff/TiffElement;
    const/16 v17, -0x1

    .line 175
    .local v17, "index":I
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 177
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/sanselan/formats/tiff/TiffElement;

    .line 178
    .local v10, "element":Lorg/apache/sanselan/formats/tiff/TiffElement;
    iget v0, v10, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    move/from16 v25, v0

    iget v0, v10, Lorg/apache/sanselan/formats/tiff/TiffElement;->length:I

    move/from16 v26, v0

    add-int v19, v25, v26

    .line 179
    .local v19, "lastElementByte":I
    if-nez v23, :cond_5

    .line 181
    move-object/from16 v23, v10

    .line 182
    move/from16 v17, v19

    .line 175
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 184
    :cond_5
    iget v0, v10, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    move/from16 v25, v0

    sub-int v25, v25, v17

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    .line 186
    new-instance v25, Lorg/apache/sanselan/formats/tiff/TiffElement$Stub;

    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    move/from16 v27, v0

    sub-int v27, v17, v27

    invoke-direct/range {v25 .. v27}, Lorg/apache/sanselan/formats/tiff/TiffElement$Stub;-><init>(II)V

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    move-object/from16 v23, v10

    .line 189
    move/from16 v17, v19

    goto :goto_4

    .line 193
    :cond_6
    move/from16 v17, v19

    goto :goto_4

    .line 196
    .end local v10    # "element":Lorg/apache/sanselan/formats/tiff/TiffElement;
    .end local v19    # "lastElementByte":I
    :cond_7
    if-eqz v23, :cond_8

    .line 197
    new-instance v25, Lorg/apache/sanselan/formats/tiff/TiffElement$Stub;

    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    move/from16 v27, v0

    sub-int v27, v17, v27

    invoke-direct/range {v25 .. v27}, Lorg/apache/sanselan/formats/tiff/TiffElement$Stub;-><init>(II)V

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/sanselan/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_8
    return-object v22

    .line 205
    .end local v2    # "TOLERANCE":I
    .end local v3    # "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    .end local v4    # "contents":Lorg/apache/sanselan/formats/tiff/TiffContents;
    .end local v5    # "d":I
    .end local v7    # "directories":Ljava/util/List;
    .end local v11    # "elements":Ljava/util/ArrayList;
    .end local v15    # "formatCompliance":Lorg/apache/sanselan/FormatCompliance;
    .end local v16    # "i":I
    .end local v17    # "index":I
    .end local v21    # "params":Ljava/util/Map;
    .end local v22    # "result":Ljava/util/List;
    .end local v23    # "start":Lorg/apache/sanselan/formats/tiff/TiffElement;
    :catch_0
    move-exception v9

    .line 207
    .local v9, "e":Lorg/apache/sanselan/ImageReadException;
    new-instance v25, Lorg/apache/sanselan/ImageWriteException;

    invoke-virtual {v9}, Lorg/apache/sanselan/ImageReadException;->getMessage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v25
.end method

.method private dumpElements(Ljava/util/List;)V
    .locals 2
    .param p1, "elements"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    invoke-direct {v0, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    .line 76
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-direct {p0, v0, p1}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->dumpElements(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/List;)V

    .line 82
    return-void
.end method

.method private dumpElements(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/List;)V
    .locals 11
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "elements"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x20

    .line 87
    const/16 v6, 0x8

    .line 88
    .local v6, "last":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 90
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/formats/tiff/TiffElement;

    .line 91
    .local v3, "element":Lorg/apache/sanselan/formats/tiff/TiffElement;
    iget v7, v3, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    if-le v7, v6, :cond_0

    .line 93
    const/16 v0, 0x20

    .line 94
    .local v0, "SLICE_SIZE":I
    iget v7, v3, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    sub-int v4, v7, v6

    .line 95
    .local v4, "gepLength":I
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "gap of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " bytes."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1, v6, v4}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getBlock(II)[B

    move-result-object v1

    .line 97
    .local v1, "bytes":[B
    array-length v7, v1

    const/16 v8, 0x40

    if-le v7, v8, :cond_2

    .line 99
    const-string v7, "\thead"

    invoke-static {v1, v10}, Lorg/apache/sanselan/common/BinaryFileFunctions;->head([BI)[B

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;[B)V

    .line 101
    const-string v7, "\ttail"

    invoke-static {v1, v10}, Lorg/apache/sanselan/common/BinaryFileFunctions;->tail([BI)[B

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;[B)V

    .line 108
    .end local v0    # "SLICE_SIZE":I
    .end local v1    # "bytes":[B
    .end local v4    # "gepLength":I
    :cond_0
    :goto_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "element["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/sanselan/formats/tiff/TiffElement;->getElementDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, v3, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, v3, Lorg/apache/sanselan/formats/tiff/TiffElement;->length:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, v3, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    iget v9, v3, Lorg/apache/sanselan/formats/tiff/TiffElement;->length:I

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 111
    instance-of v7, v3, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    if-eqz v7, :cond_1

    move-object v2, v3

    .line 113
    check-cast v2, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 114
    .local v2, "dir":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "\tnext Directory Offset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, v2, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->nextDirectoryOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 117
    .end local v2    # "dir":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    :cond_1
    iget v7, v3, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    iget v8, v3, Lorg/apache/sanselan/formats/tiff/TiffElement;->length:I

    add-int v6, v7, v8

    .line 88
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 105
    .restart local v0    # "SLICE_SIZE":I
    .restart local v1    # "bytes":[B
    .restart local v4    # "gepLength":I
    :cond_2
    const-string v7, "\tbytes"

    invoke-static {v7, v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;[B)V

    goto :goto_1

    .line 119
    .end local v0    # "SLICE_SIZE":I
    .end local v1    # "bytes":[B
    .end local v3    # "element":Lorg/apache/sanselan/formats/tiff/TiffElement;
    .end local v4    # "gepLength":I
    :cond_3
    invoke-static {}, Lorg/apache/sanselan/util/Debug;->debug()V

    .line 120
    return-void
.end method

.method private updateOffsetsStep(Ljava/util/List;Ljava/util/List;)I
    .locals 13
    .param p1, "analysis"    # Ljava/util/List;
    .param p2, "outputItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v11, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    array-length v8, v11

    .line 277
    .local v8, "overflowIndex":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 280
    .local v10, "unusedElements":Ljava/util/List;
    sget-object v11, Lorg/apache/sanselan/formats/tiff/TiffElement;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 281
    invoke-static {v10}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 283
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 285
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/tiff/TiffElement;

    .line 286
    .local v1, "element":Lorg/apache/sanselan/formats/tiff/TiffElement;
    iget v11, v1, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    iget v12, v1, Lorg/apache/sanselan/formats/tiff/TiffElement;->length:I

    add-int v2, v11, v12

    .line 287
    .local v2, "elementEnd":I
    if-ne v2, v8, :cond_0

    .line 290
    iget v11, v1, Lorg/apache/sanselan/formats/tiff/TiffElement;->length:I

    sub-int/2addr v8, v11

    .line 291
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 297
    .end local v1    # "element":Lorg/apache/sanselan/formats/tiff/TiffElement;
    .end local v2    # "elementEnd":I
    :cond_0
    sget-object v11, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->ELEMENT_SIZE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 298
    invoke-static {v10}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 304
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 305
    .local v9, "unplacedItems":Ljava/util/List;
    sget-object v11, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->ITEM_SIZE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v9, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 306
    invoke-static {v9}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 308
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 311
    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;

    .line 313
    .local v6, "outputItem":Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    invoke-virtual {v6}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;->getItemLength()I

    move-result v7

    .line 319
    .local v7, "outputItemLength":I
    const/4 v0, 0x0

    .line 320
    .local v0, "bestFit":Lorg/apache/sanselan/formats/tiff/TiffElement;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_2

    .line 322
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/tiff/TiffElement;

    .line 323
    .restart local v1    # "element":Lorg/apache/sanselan/formats/tiff/TiffElement;
    iget v11, v1, Lorg/apache/sanselan/formats/tiff/TiffElement;->length:I

    if-lt v11, v7, :cond_2

    .line 324
    move-object v0, v1

    .line 320
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 328
    .end local v1    # "element":Lorg/apache/sanselan/formats/tiff/TiffElement;
    :cond_2
    if-nez v0, :cond_3

    .line 331
    invoke-virtual {v6, v8}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;->setOffset(I)V

    .line 332
    add-int/2addr v8, v7

    goto :goto_1

    .line 336
    :cond_3
    iget v11, v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    invoke-virtual {v6, v11}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;->setOffset(I)V

    .line 337
    invoke-interface {v10, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 339
    iget v11, v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->length:I

    if-le v11, v7, :cond_1

    .line 342
    iget v11, v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    add-int v4, v11, v7

    .line 343
    .local v4, "excessOffset":I
    iget v11, v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->length:I

    sub-int v3, v11, v7

    .line 344
    .local v3, "excessLength":I
    new-instance v11, Lorg/apache/sanselan/formats/tiff/TiffElement$Stub;

    invoke-direct {v11, v4, v3}, Lorg/apache/sanselan/formats/tiff/TiffElement$Stub;-><init>(II)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v11, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->ELEMENT_SIZE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 348
    invoke-static {v10}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_1

    .line 353
    .end local v0    # "bestFit":Lorg/apache/sanselan/formats/tiff/TiffElement;
    .end local v3    # "excessLength":I
    .end local v4    # "excessOffset":I
    .end local v5    # "i":I
    .end local v6    # "outputItem":Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    .end local v7    # "outputItemLength":I
    :cond_4
    return v8
.end method

.method private writeStep(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;Ljava/util/List;Ljava/util/List;I)V
    .locals 15
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "outputSet"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .param p3, "analysis"    # Ljava/util/List;
    .param p4, "outputItems"    # Ljava/util/List;
    .param p5, "outputLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->getRootDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v8

    .line 407
    .local v8, "rootDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    move/from16 v0, p5

    new-array v6, v0, [B

    .line 410
    .local v6, "output":[B
    iget-object v10, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    array-length v13, v13

    array-length v14, v6

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v10, v11, v6, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    new-instance v9, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;

    const/4 v10, 0x0

    invoke-direct {v9, v6, v10}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;-><init>([BI)V

    .line 418
    .local v9, "tos":Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;
    new-instance v1, Lorg/apache/sanselan/common/BinaryOutputStream;

    iget v10, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->byteOrder:I

    invoke-direct {v1, v9, v10}, Lorg/apache/sanselan/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 419
    .local v1, "bos":Lorg/apache/sanselan/common/BinaryOutputStream;
    invoke-virtual {v8}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->getOffset()I

    move-result v10

    invoke-virtual {p0, v1, v10}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->writeImageFileHeader(Lorg/apache/sanselan/common/BinaryOutputStream;I)V

    .line 423
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 425
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/tiff/TiffElement;

    .line 426
    .local v2, "element":Lorg/apache/sanselan/formats/tiff/TiffElement;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget v10, v2, Lorg/apache/sanselan/formats/tiff/TiffElement;->length:I

    if-ge v5, v10, :cond_1

    .line 428
    iget v10, v2, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    add-int v4, v10, v5

    .line 429
    .local v4, "index":I
    array-length v10, v6

    if-ge v4, v10, :cond_0

    .line 430
    const/4 v10, 0x0

    aput-byte v10, v6, v4

    .line 426
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 423
    .end local v4    # "index":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    .end local v2    # "element":Lorg/apache/sanselan/formats/tiff/TiffElement;
    .end local v5    # "j":I
    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 437
    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;

    .line 439
    .local v7, "outputItem":Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    new-instance v9, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;

    .end local v9    # "tos":Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;
    invoke-virtual {v7}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;->getOffset()I

    move-result v10

    invoke-direct {v9, v6, v10}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;-><init>([BI)V

    .line 441
    .restart local v9    # "tos":Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;
    new-instance v1, Lorg/apache/sanselan/common/BinaryOutputStream;

    .end local v1    # "bos":Lorg/apache/sanselan/common/BinaryOutputStream;
    iget v10, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->byteOrder:I

    invoke-direct {v1, v9, v10}, Lorg/apache/sanselan/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 442
    .restart local v1    # "bos":Lorg/apache/sanselan/common/BinaryOutputStream;
    invoke-virtual {v7, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;->writeItem(Lorg/apache/sanselan/common/BinaryOutputStream;)V

    .line 435
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 445
    .end local v7    # "outputItem":Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 446
    return-void
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .locals 9
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "outputSet"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 214
    invoke-direct {p0}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->analyzeOldTiff()Ljava/util/List;

    move-result-object v3

    .line 215
    .local v3, "analysis":Ljava/util/List;
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    array-length v6, v0

    .line 216
    .local v6, "oldLength":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 217
    new-instance v0, Lorg/apache/sanselan/ImageWriteException;

    const-string v1, "Couldn\'t analyze old tiff data."

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 220
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/sanselan/formats/tiff/TiffElement;

    .line 222
    .local v7, "onlyElement":Lorg/apache/sanselan/formats/tiff/TiffElement;
    iget v0, v7, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget v0, v7, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    iget v1, v7, Lorg/apache/sanselan/formats/tiff/TiffElement;->length:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    if-ne v0, v6, :cond_1

    .line 227
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;

    iget v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->byteOrder:I

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;->write(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    .line 248
    .end local v7    # "onlyElement":Lorg/apache/sanselan/formats/tiff/TiffElement;
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->validateDirectories(Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;

    move-result-object v8

    .line 239
    .local v8, "outputSummary":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;
    invoke-virtual {p2, v8}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->getOutputItems(Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;)Ljava/util/List;

    move-result-object v4

    .line 241
    .local v4, "outputItems":Ljava/util/List;
    invoke-direct {p0, v3, v4}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->updateOffsetsStep(Ljava/util/List;Ljava/util/List;)I

    move-result v5

    .line 244
    .local v5, "outputLength":I
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->byteOrder:I

    invoke-virtual {v8, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->updateOffsets(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 246
    invoke-direct/range {v0 .. v5}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;->writeStep(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;Ljava/util/List;Ljava/util/List;I)V

    goto :goto_0
.end method
