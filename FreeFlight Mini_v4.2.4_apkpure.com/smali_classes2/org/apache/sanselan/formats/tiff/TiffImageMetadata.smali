.class public Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;
.super Lorg/apache/sanselan/common/ImageMetadata;
.source "TiffImageMetadata.java"

# interfaces
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$GPSInfo;,
        Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Item;,
        Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    }
.end annotation


# instance fields
.field public final contents:Lorg/apache/sanselan/formats/tiff/TiffContents;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/tiff/TiffContents;)V
    .locals 0
    .param p1, "contents"    # Lorg/apache/sanselan/formats/tiff/TiffContents;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/sanselan/common/ImageMetadata;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;->contents:Lorg/apache/sanselan/formats/tiff/TiffContents;

    .line 45
    return-void
.end method


# virtual methods
.method public findDirectory(I)Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    .locals 4
    .param p1, "directoryType"    # I

    .prologue
    .line 246
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/ArrayList;

    move-result-object v0

    .line 247
    .local v0, "directories":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 249
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;

    .line 250
    .local v1, "directory":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    iget v3, v1, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->type:I

    if-ne v3, p1, :cond_0

    .line 251
    invoke-static {v1}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->access$000(Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;)Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    move-result-object v3

    .line 253
    .end local v1    # "directory":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    :goto_1
    return-object v3

    .line 247
    .restart local v1    # "directory":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    .end local v1    # "directory":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;
    .locals 5
    .param p1, "tagInfo"    # Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/ArrayList;

    move-result-object v0

    .line 234
    .local v0, "directories":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 236
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;

    .line 237
    .local v1, "directory":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    invoke-virtual {v1, p1}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v2

    .line 238
    .local v2, "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    if-eqz v2, :cond_0

    .line 241
    .end local v1    # "directory":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    .end local v2    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    :goto_1
    return-object v2

    .line 234
    .restart local v1    # "directory":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    .restart local v2    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "directory":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    .end local v2    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getAllFields()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 258
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v3, "result":Ljava/util/List;
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/ArrayList;

    move-result-object v0

    .line 260
    .local v0, "directories":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 262
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;

    .line 263
    .local v1, "directory":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    invoke-virtual {v1}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->getAllFields()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "directory":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    :cond_0
    return-object v3
.end method

.method public getDirectories()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lorg/apache/sanselan/common/ImageMetadata;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGPS()Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$GPSInfo;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v1, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;->findDirectory(I)Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    move-result-object v10

    .line 271
    .local v10, "gpsDirectory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    if-nez v10, :cond_0

    .line 272
    const/4 v1, 0x0

    .line 307
    :goto_0
    return-object v1

    .line 275
    :cond_0
    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;->GPS_TAG_GPS_LATITUDE_REF:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v10, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v13

    .line 277
    .local v13, "latitudeRefField":Lorg/apache/sanselan/formats/tiff/TiffField;
    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;->GPS_TAG_GPS_LATITUDE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v10, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v12

    .line 279
    .local v12, "latitudeField":Lorg/apache/sanselan/formats/tiff/TiffField;
    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;->GPS_TAG_GPS_LONGITUDE_REF:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v10, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v16

    .line 281
    .local v16, "longitudeRefField":Lorg/apache/sanselan/formats/tiff/TiffField;
    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;->GPS_TAG_GPS_LONGITUDE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v10, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v15

    .line 284
    .local v15, "longitudeField":Lorg/apache/sanselan/formats/tiff/TiffField;
    if-eqz v13, :cond_1

    if-eqz v12, :cond_1

    if-eqz v16, :cond_1

    if-nez v15, :cond_2

    .line 286
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {v13}, Lorg/apache/sanselan/formats/tiff/TiffField;->getStringValue()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "latitudeRef":Ljava/lang/String;
    invoke-virtual {v12}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/sanselan/common/RationalNumber;

    move-object v11, v1

    check-cast v11, [Lorg/apache/sanselan/common/RationalNumber;

    .line 291
    .local v11, "latitude":[Lorg/apache/sanselan/common/RationalNumber;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/sanselan/formats/tiff/TiffField;->getStringValue()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "longitudeRef":Ljava/lang/String;
    invoke-virtual {v15}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/sanselan/common/RationalNumber;

    move-object v14, v1

    check-cast v14, [Lorg/apache/sanselan/common/RationalNumber;

    .line 295
    .local v14, "longitude":[Lorg/apache/sanselan/common/RationalNumber;
    array-length v1, v11

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v1, v0, :cond_3

    array-length v1, v14

    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v1, v0, :cond_4

    .line 296
    :cond_3
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v17, "Expected three values for latitude and longitude."

    move-object/from16 v0, v17

    invoke-direct {v1, v0}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_4
    const/4 v1, 0x0

    aget-object v4, v11, v1

    .line 300
    .local v4, "latitudeDegrees":Lorg/apache/sanselan/common/RationalNumber;
    const/4 v1, 0x1

    aget-object v5, v11, v1

    .line 301
    .local v5, "latitudeMinutes":Lorg/apache/sanselan/common/RationalNumber;
    const/4 v1, 0x2

    aget-object v6, v11, v1

    .line 303
    .local v6, "latitudeSeconds":Lorg/apache/sanselan/common/RationalNumber;
    const/4 v1, 0x0

    aget-object v7, v14, v1

    .line 304
    .local v7, "longitudeDegrees":Lorg/apache/sanselan/common/RationalNumber;
    const/4 v1, 0x1

    aget-object v8, v14, v1

    .line 305
    .local v8, "longitudeMinutes":Lorg/apache/sanselan/common/RationalNumber;
    const/4 v1, 0x2

    aget-object v9, v14, v1

    .line 307
    .local v9, "longitudeSeconds":Lorg/apache/sanselan/common/RationalNumber;
    new-instance v1, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$GPSInfo;

    invoke-direct/range {v1 .. v9}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$GPSInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/sanselan/common/RationalNumber;Lorg/apache/sanselan/common/RationalNumber;Lorg/apache/sanselan/common/RationalNumber;Lorg/apache/sanselan/common/RationalNumber;Lorg/apache/sanselan/common/RationalNumber;Lorg/apache/sanselan/common/RationalNumber;)V

    goto :goto_0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v3, "result":Ljava/util/ArrayList;
    invoke-super {p0}, Lorg/apache/sanselan/common/ImageMetadata;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 177
    .local v2, "items":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 179
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;

    .line 180
    .local v0, "dir":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "dir":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    :cond_0
    return-object v3
.end method

.method public getOutputSet()Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v6, p0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;->contents:Lorg/apache/sanselan/formats/tiff/TiffContents;

    iget-object v6, v6, Lorg/apache/sanselan/formats/tiff/TiffContents;->header:Lorg/apache/sanselan/formats/tiff/TiffHeader;

    iget v0, v6, Lorg/apache/sanselan/formats/tiff/TiffHeader;->byteOrder:I

    .line 207
    .local v0, "byteOrder":I
    new-instance v3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;

    invoke-direct {v3, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;-><init>(I)V

    .line 209
    .local v3, "result":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/ArrayList;

    move-result-object v5

    .line 210
    .local v5, "srcDirs":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 212
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;

    .line 215
    .local v4, "srcDir":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    iget v6, v4, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->type:I

    invoke-virtual {v3, v6}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 210
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v4, v0}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->getOutputDirectory(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v2

    .line 225
    .local v2, "outputDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    invoke-virtual {v3, v2}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;)V

    goto :goto_1

    .line 228
    .end local v2    # "outputDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .end local v4    # "srcDir":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    :cond_1
    return-object v3
.end method
