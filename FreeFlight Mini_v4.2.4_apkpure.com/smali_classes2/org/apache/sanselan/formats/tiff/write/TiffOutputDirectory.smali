.class public final Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
.super Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
.source "TiffOutputDirectory.java"

# interfaces
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;


# instance fields
.field private final fields:Ljava/util/ArrayList;

.field private jpegImageData:Lorg/apache/sanselan/formats/tiff/JpegImageData;

.field private nextDirectory:Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

.field private tiffImageData:Lorg/apache/sanselan/formats/tiff/TiffImageData;

.field public final type:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/ArrayList;

    .line 42
    iput-object v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->nextDirectory:Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .line 147
    iput-object v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/sanselan/formats/tiff/JpegImageData;

    .line 159
    iput-object v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->tiffImageData:Lorg/apache/sanselan/formats/tiff/TiffImageData;

    .line 51
    iput p1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->type:I

    .line 52
    return-void
.end method

.method private removeFieldIfPresent(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)V
    .locals 2
    .param p1, "tagInfo"    # Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    move-result-object v0

    .line 187
    .local v0, "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V
    .locals 1
    .param p1, "field"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public description()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-static {v0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->description(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findField(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .locals 3
    .param p1, "tag"    # I

    .prologue
    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 90
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .line 91
    .local v0, "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    iget v2, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tag:I

    if-ne v2, p1, :cond_0

    .line 94
    .end local v0    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    :goto_1
    return-object v0

    .line 88
    .restart local v0    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .locals 1
    .param p1, "tagInfo"    # Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .prologue
    .line 83
    iget v0, p1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->findField(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getItemDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    iget v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-static {v1}, Lorg/apache/sanselan/formats/tiff/constants/TagConstantsUtils;->getExifDirectoryType(I)Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    move-result-object v0

    .line 181
    .local v0, "dirType":Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getItemLength()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected getOutputItems(Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;)Ljava/util/List;
    .locals 26
    .param p1, "outputSummary"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 196
    sget-object v22, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->removeFieldIfPresent(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)V

    .line 197
    sget-object v22, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->removeFieldIfPresent(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)V

    .line 199
    const/16 v17, 0x0

    .line 200
    .local v17, "jpegOffsetField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/sanselan/formats/tiff/JpegImageData;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 202
    new-instance v17, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .end local v17    # "jpegOffsetField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    sget-object v22, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v23, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    const/16 v24, 0x1

    invoke-static {}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->getStubLocalValue()[B

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 205
    .restart local v17    # "jpegOffsetField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 207
    sget-object v22, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/sanselan/formats/tiff/JpegImageData;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/JpegImageData;->length:I

    move/from16 v25, v0

    aput v25, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->byteOrder:I

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;I)[B

    move-result-object v18

    .line 211
    .local v18, "lengthValue":[B
    new-instance v16, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    sget-object v22, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v23, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    const/16 v24, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 214
    .local v16, "jpegLengthField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 220
    .end local v16    # "jpegLengthField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .end local v18    # "lengthValue":[B
    :cond_0
    sget-object v22, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->TIFF_TAG_STRIP_OFFSETS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->removeFieldIfPresent(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)V

    .line 221
    sget-object v22, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->TIFF_TAG_STRIP_BYTE_COUNTS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->removeFieldIfPresent(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)V

    .line 222
    sget-object v22, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->TIFF_TAG_TILE_OFFSETS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->removeFieldIfPresent(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)V

    .line 223
    sget-object v22, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->TIFF_TAG_TILE_BYTE_COUNTS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->removeFieldIfPresent(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)V

    .line 226
    const/4 v12, 0x0

    .line 227
    .local v12, "imageDataInfo":Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->tiffImageData:Lorg/apache/sanselan/formats/tiff/TiffImageData;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->tiffImageData:Lorg/apache/sanselan/formats/tiff/TiffImageData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/sanselan/formats/tiff/TiffImageData;->stripsNotTiles()Z

    move-result v21

    .line 233
    .local v21, "stripsNotTiles":Z
    if-eqz v21, :cond_1

    .line 235
    sget-object v19, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->TIFF_TAG_STRIP_OFFSETS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .line 236
    .local v19, "offsetTag":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    sget-object v6, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->TIFF_TAG_STRIP_BYTE_COUNTS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .line 245
    .local v6, "byteCountsTag":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->tiffImageData:Lorg/apache/sanselan/formats/tiff/TiffImageData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/sanselan/formats/tiff/TiffImageData;->getImageData()[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;

    move-result-object v10

    .line 247
    .local v10, "imageData":[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;
    const/4 v14, 0x0

    .line 248
    .local v14, "imageDataOffsets":[I
    const/4 v11, 0x0

    .line 251
    .local v11, "imageDataByteCounts":[I
    array-length v0, v10

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v14, v0, [I

    .line 252
    array-length v0, v10

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v11, v0, [I

    .line 253
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, v10

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_2

    .line 255
    aget-object v22, v10, v9

    move-object/from16 v0, v22

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;->length:I

    move/from16 v22, v0

    aput v22, v11, v9

    .line 253
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 239
    .end local v6    # "byteCountsTag":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .end local v9    # "i":I
    .end local v10    # "imageData":[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;
    .end local v11    # "imageDataByteCounts":[I
    .end local v14    # "imageDataOffsets":[I
    .end local v19    # "offsetTag":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    :cond_1
    sget-object v19, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->TIFF_TAG_TILE_OFFSETS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .line 240
    .restart local v19    # "offsetTag":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    sget-object v6, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->TIFF_TAG_TILE_BYTE_COUNTS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .restart local v6    # "byteCountsTag":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    goto :goto_0

    .line 261
    .restart local v9    # "i":I
    .restart local v10    # "imageData":[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;
    .restart local v11    # "imageDataByteCounts":[I
    .restart local v14    # "imageDataOffsets":[I
    :cond_2
    new-instance v13, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    sget-object v22, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    array-length v0, v14

    move/from16 v23, v0

    sget-object v24, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->byteOrder:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;I)[B

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v13, v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 265
    .local v13, "imageDataOffsetField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 269
    sget-object v22, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->byteOrder:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;I)[B

    move-result-object v7

    .line 271
    .local v7, "data":[B
    new-instance v5, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    sget-object v22, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    array-length v0, v11

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v5, v6, v0, v1, v7}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 274
    .local v5, "byteCountsField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 278
    new-instance v12, Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;

    .end local v12    # "imageDataInfo":Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;
    invoke-direct {v12, v10, v14, v13}, Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;-><init>([Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;[ILorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 284
    .end local v5    # "byteCountsField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .end local v6    # "byteCountsTag":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .end local v7    # "data":[B
    .end local v9    # "i":I
    .end local v10    # "imageData":[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;
    .end local v11    # "imageDataByteCounts":[I
    .end local v13    # "imageDataOffsetField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .end local v14    # "imageDataOffsets":[I
    .end local v19    # "offsetTag":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .end local v21    # "stripsNotTiles":Z
    .restart local v12    # "imageDataInfo":Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;
    :cond_3
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v20, "result":Ljava/util/List;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->sortFields()V

    .line 288
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_5

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .line 291
    .local v8, "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    invoke-virtual {v8}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->isLocalValue()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 288
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 294
    :cond_4
    invoke-virtual {v8}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;

    move-result-object v15

    .line 295
    .local v15, "item":Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 299
    .end local v8    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .end local v15    # "item":Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    :cond_5
    if-eqz v12, :cond_7

    .line 301
    const/4 v9, 0x0

    :goto_4
    iget-object v0, v12, Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;->outputItems:[Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_6

    .line 302
    iget-object v0, v12, Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;->outputItems:[Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;

    move-object/from16 v22, v0

    aget-object v22, v22, v9

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 304
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->addTiffImageData(Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;)V

    .line 307
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/sanselan/formats/tiff/JpegImageData;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    .line 309
    new-instance v15, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;

    const-string v22, "JPEG image data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/sanselan/formats/tiff/JpegImageData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/sanselan/formats/tiff/JpegImageData;->data:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v15, v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;-><init>(Ljava/lang/String;[B)V

    .line 311
    .restart local v15    # "item":Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 315
    .end local v15    # "item":Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    :cond_8
    return-object v20
.end method

.method public getRawJpegImageData()Lorg/apache/sanselan/formats/tiff/JpegImageData;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/sanselan/formats/tiff/JpegImageData;

    return-object v0
.end method

.method public getRawTiffImageData()Lorg/apache/sanselan/formats/tiff/TiffImageData;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->tiffImageData:Lorg/apache/sanselan/formats/tiff/TiffImageData;

    return-object v0
.end method

.method public removeField(I)V
    .locals 4
    .param p1, "tag"    # I

    .prologue
    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v2, "matches":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 74
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .line 75
    .local v0, "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    iget v3, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tag:I

    if-ne v3, p1, :cond_0

    .line 76
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    :cond_1
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 79
    return-void
.end method

.method public removeField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)V
    .locals 1
    .param p1, "tagInfo"    # Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .prologue
    .line 66
    iget v0, p1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->removeField(I)V

    .line 67
    return-void
.end method

.method public setJpegImageData(Lorg/apache/sanselan/formats/tiff/JpegImageData;)V
    .locals 0
    .param p1, "rawJpegImageData"    # Lorg/apache/sanselan/formats/tiff/JpegImageData;

    .prologue
    .line 151
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/sanselan/formats/tiff/JpegImageData;

    .line 152
    return-void
.end method

.method public setNextDirectory(Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;)V
    .locals 0
    .param p1, "nextDirectory"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->nextDirectory:Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .line 47
    return-void
.end method

.method public setTiffImageData(Lorg/apache/sanselan/formats/tiff/TiffImageData;)V
    .locals 0
    .param p1, "rawTiffImageData"    # Lorg/apache/sanselan/formats/tiff/TiffImageData;

    .prologue
    .line 163
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->tiffImageData:Lorg/apache/sanselan/formats/tiff/TiffImageData;

    .line 164
    return-void
.end method

.method public sortFields()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory$1;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory$1;-><init>(Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;)V

    .line 110
    .local v0, "comparator":Ljava/util/Comparator;
    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    return-void
.end method

.method public writeItem(Lorg/apache/sanselan/common/BinaryOutputStream;)V
    .locals 4
    .param p1, "bos"    # Lorg/apache/sanselan/common/BinaryOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 127
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .line 128
    .local v0, "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    invoke-virtual {v0, p1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->writeField(Lorg/apache/sanselan/common/BinaryOutputStream;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    :cond_0
    const/4 v2, 0x0

    .line 137
    .local v2, "nextDirectoryOffset":I
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->nextDirectory:Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    if-eqz v3, :cond_1

    .line 138
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->nextDirectory:Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    invoke-virtual {v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->getOffset()I

    move-result v2

    .line 141
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 142
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 145
    :goto_1
    return-void

    .line 144
    :cond_2
    invoke-virtual {p1, v2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    goto :goto_1
.end method
