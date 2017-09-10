.class public final Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
.super Ljava/lang/Object;
.source "TiffOutputSet.java"

# interfaces
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;


# static fields
.field private static final newline:Ljava/lang/String;


# instance fields
.field public final byteOrder:I

.field private final directories:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 280
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->newline:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;-><init>(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "byteOrder"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/ArrayList;

    .line 40
    iput p1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->byteOrder:I

    .line 41
    return-void
.end method


# virtual methods
.method public addDirectory(Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;)V
    .locals 2
    .param p1, "directory"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 62
    iget v0, p1, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lorg/apache/sanselan/ImageWriteException;

    const-string v1, "Output set already contains a directory of that type."

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public addExifDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;-><init>(I)V

    .line 258
    .local v0, "result":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;)V

    .line 259
    return-object v0
.end method

.method public addGPSDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;-><init>(I)V

    .line 265
    .local v0, "result":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;)V

    .line 266
    return-object v0
.end method

.method public addInteroperabilityDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->getOrCreateExifDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .line 274
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    const/4 v1, -0x4

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;-><init>(I)V

    .line 276
    .local v0, "result":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;)V

    .line 277
    return-object v0
.end method

.method public addRootDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;-><init>(I)V

    .line 250
    .local v0, "result":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;)V

    .line 251
    return-object v0
.end method

.method public dump()V
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public findDirectory(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .locals 3
    .param p1, "directoryType"    # I

    .prologue
    .line 128
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 130
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .line 132
    .local v0, "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    iget v2, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->type:I

    if-ne v2, p1, :cond_0

    .line 135
    .end local v0    # "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    :goto_1
    return-object v0

    .line 128
    .restart local v0    # "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findField(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .locals 4
    .param p1, "tag"    # I

    .prologue
    .line 235
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 237
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .line 239
    .local v0, "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    invoke-virtual {v0, p1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->findField(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    move-result-object v1

    .line 240
    .local v1, "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    if-eqz v1, :cond_0

    .line 243
    .end local v0    # "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .end local v1    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    :goto_1
    return-object v1

    .line 235
    .restart local v0    # "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .restart local v1    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .end local v1    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .locals 1
    .param p1, "tagInfo"    # Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .prologue
    .line 230
    iget v0, p1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->findField(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    move-result-object v0

    return-object v0
.end method

.method public getDirectories()Ljava/util/List;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getExifDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .locals 1

    .prologue
    .line 80
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    return-object v0
.end method

.method public getGPSDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .locals 1

    .prologue
    .line 118
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    return-object v0
.end method

.method public getInteroperabilityDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .locals 1

    .prologue
    .line 123
    const/4 v0, -0x4

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateExifDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->getOrCreateRootDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .line 98
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    .line 99
    .local v0, "result":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    if-eqz v0, :cond_0

    .line 101
    .end local v0    # "result":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->addExifDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    goto :goto_0
.end method

.method public getOrCreateGPSDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->getOrCreateExifDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .line 110
    const/4 v1, -0x3

    invoke-virtual {p0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    .line 111
    .local v0, "result":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    if-eqz v0, :cond_0

    .line 113
    .end local v0    # "result":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->addGPSDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    goto :goto_0
.end method

.method public getOrCreateRootDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    .line 87
    .local v0, "result":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    if-eqz v0, :cond_0

    .line 89
    .end local v0    # "result":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->addRootDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    goto :goto_0
.end method

.method protected getOutputItems(Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;)Ljava/util/List;
    .locals 4
    .param p1, "outputSummary"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v2, "result":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 50
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .line 53
    .local v0, "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    invoke-virtual {v0, p1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->getOutputItems(Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    :cond_0
    return-object v2
.end method

.method public getRootDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    return-object v0
.end method

.method public removeField(I)V
    .locals 3
    .param p1, "tag"    # I

    .prologue
    .line 220
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 222
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .line 224
    .local v0, "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    invoke-virtual {v0, p1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->removeField(I)V

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    :cond_0
    return-void
.end method

.method public removeField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)V
    .locals 1
    .param p1, "tagInfo"    # Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .prologue
    .line 215
    iget v0, p1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->removeField(I)V

    .line 216
    return-void
.end method

.method public setGPSInDegrees(DD)V
    .locals 29
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->getOrCreateGPSDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v4

    .line 150
    .local v4, "gpsDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    const-wide/16 v26, 0x0

    cmpg-double v26, p1, v26

    if-gez v26, :cond_0

    const-string v17, "W"

    .line 151
    .local v17, "longitudeRef":Ljava/lang/String;
    :goto_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    .line 152
    const-wide/16 v26, 0x0

    cmpg-double v26, p3, v26

    if-gez v26, :cond_1

    const-string v10, "S"

    .line 153
    .local v10, "latitudeRef":Ljava/lang/String;
    :goto_1
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    .line 156
    sget-object v26, Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;->GPS_TAG_GPS_LONGITUDE_REF:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->byteOrder:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->create(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;ILjava/lang/String;)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    move-result-object v20

    .line 159
    .local v20, "longitudeRefField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    sget-object v26, Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;->GPS_TAG_GPS_LONGITUDE_REF:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)V

    .line 160
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 164
    sget-object v26, Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;->GPS_TAG_GPS_LATITUDE_REF:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->byteOrder:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v0, v1, v10}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->create(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;ILjava/lang/String;)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    move-result-object v11

    .line 167
    .local v11, "latitudeRefField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    sget-object v26, Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;->GPS_TAG_GPS_LATITUDE_REF:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)V

    .line 168
    invoke-virtual {v4, v11}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 172
    move-wide/from16 v24, p1

    .line 173
    .local v24, "value":D
    move-wide/from16 v0, v24

    double-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-double v14, v0

    .line 174
    .local v14, "longitudeDegrees":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    rem-double v24, v24, v26

    .line 175
    const-wide/high16 v26, 0x404e000000000000L    # 60.0

    mul-double v24, v24, v26

    .line 176
    move-wide/from16 v0, v24

    double-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v18, v0

    .line 177
    .local v18, "longitudeMinutes":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    rem-double v24, v24, v26

    .line 178
    const-wide/high16 v26, 0x404e000000000000L    # 60.0

    mul-double v24, v24, v26

    .line 179
    move-wide/from16 v22, v24

    .line 180
    .local v22, "longitudeSeconds":D
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v21, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/Double;

    move-object/from16 v0, v27

    invoke-direct {v0, v14, v15}, Ljava/lang/Double;-><init>(D)V

    aput-object v27, v21, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/Double;

    move-object/from16 v0, v27

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    aput-object v27, v21, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/Double;

    move-object/from16 v0, v27

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    aput-object v27, v21, v26

    .line 185
    .local v21, "values":[Ljava/lang/Double;
    sget-object v26, Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;->GPS_TAG_GPS_LONGITUDE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->byteOrder:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->create(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;I[Ljava/lang/Number;)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    move-result-object v16

    .line 187
    .local v16, "longitudeField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    sget-object v26, Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;->GPS_TAG_GPS_LONGITUDE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)V

    .line 188
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 192
    move-wide/from16 v24, p3

    .line 193
    move-wide/from16 v0, v24

    double-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-double v6, v0

    .line 194
    .local v6, "latitudeDegrees":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    rem-double v24, v24, v26

    .line 195
    const-wide/high16 v26, 0x404e000000000000L    # 60.0

    mul-double v24, v24, v26

    .line 196
    move-wide/from16 v0, v24

    double-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-double v8, v0

    .line 197
    .local v8, "latitudeMinutes":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    rem-double v24, v24, v26

    .line 198
    const-wide/high16 v26, 0x404e000000000000L    # 60.0

    mul-double v24, v24, v26

    .line 199
    move-wide/from16 v12, v24

    .line 200
    .local v12, "latitudeSeconds":D
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v21, v0

    .end local v21    # "values":[Ljava/lang/Double;
    const/16 v26, 0x0

    new-instance v27, Ljava/lang/Double;

    move-object/from16 v0, v27

    invoke-direct {v0, v6, v7}, Ljava/lang/Double;-><init>(D)V

    aput-object v27, v21, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/Double;

    move-object/from16 v0, v27

    invoke-direct {v0, v8, v9}, Ljava/lang/Double;-><init>(D)V

    aput-object v27, v21, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/Double;

    move-object/from16 v0, v27

    invoke-direct {v0, v12, v13}, Ljava/lang/Double;-><init>(D)V

    aput-object v27, v21, v26

    .line 205
    .restart local v21    # "values":[Ljava/lang/Double;
    sget-object v26, Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;->GPS_TAG_GPS_LATITUDE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->byteOrder:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->create(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;I[Ljava/lang/Number;)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    move-result-object v5

    .line 207
    .local v5, "latitudeField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    sget-object v26, Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;->GPS_TAG_GPS_LATITUDE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)V

    .line 208
    invoke-virtual {v4, v5}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 211
    return-void

    .line 150
    .end local v5    # "latitudeField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .end local v6    # "latitudeDegrees":D
    .end local v8    # "latitudeMinutes":D
    .end local v10    # "latitudeRef":Ljava/lang/String;
    .end local v11    # "latitudeRefField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .end local v12    # "latitudeSeconds":D
    .end local v14    # "longitudeDegrees":D
    .end local v16    # "longitudeField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .end local v17    # "longitudeRef":Ljava/lang/String;
    .end local v18    # "longitudeMinutes":D
    .end local v20    # "longitudeRefField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .end local v21    # "values":[Ljava/lang/Double;
    .end local v22    # "longitudeSeconds":D
    .end local v24    # "value":D
    :cond_0
    const-string v17, "E"

    goto/16 :goto_0

    .line 152
    .restart local v17    # "longitudeRef":Ljava/lang/String;
    :cond_1
    const-string v10, "N"

    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 290
    const-string p1, ""

    .line 292
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 294
    .local v5, "result":Ljava/lang/StringBuffer;
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    const-string v6, "TiffOutputSet {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    sget-object v6, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->newline:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "byteOrder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget v7, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->byteOrder:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    sget-object v6, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->newline:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 304
    iget-object v6, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .line 306
    .local v0, "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "\tdirectory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->description()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget v7, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    sget-object v6, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->newline:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->getFields()Ljava/util/ArrayList;

    move-result-object v2

    .line 312
    .local v2, "fields":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 314
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .line 315
    .local v1, "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "\t\tfield "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, v1, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    sget-object v6, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->newline:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 302
    .end local v1    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 321
    .end local v0    # "directory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .end local v2    # "fields":Ljava/util/ArrayList;
    .end local v4    # "j":I
    :cond_2
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    sget-object v6, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->newline:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
