.class public Lcom/google/gdata/data/photos/impl/PhotoDataImpl;
.super Lcom/google/gdata/data/photos/impl/GphotoDataImpl;
.source "PhotoDataImpl.java"

# interfaces
.implements Lcom/google/gdata/data/photos/PhotoData;


# instance fields
.field private final boundingBoxData:Lcom/google/gdata/data/geo/impl/BoxDataImpl;

.field private final mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

.field private final pointData:Lcom/google/gdata/data/geo/impl/PointDataImpl;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/ExtensionPoint;)V
    .locals 1
    .param p1, "extensionPoint"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    .line 78
    new-instance v0, Lcom/google/gdata/data/geo/impl/PointDataImpl;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/geo/impl/PointDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    iput-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->pointData:Lcom/google/gdata/data/geo/impl/PointDataImpl;

    .line 79
    new-instance v0, Lcom/google/gdata/data/geo/impl/BoxDataImpl;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    iput-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->boundingBoxData:Lcom/google/gdata/data/geo/impl/BoxDataImpl;

    .line 80
    new-instance v0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    iput-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

    .line 81
    return-void
.end method


# virtual methods
.method public addStreamId(Ljava/lang/String;)V
    .locals 1
    .param p1, "streamId"    # Ljava/lang/String;

    .prologue
    .line 456
    new-instance v0, Lcom/google/gdata/data/photos/GphotoStreamId;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoStreamId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 457
    return-void
.end method

.method public clearGeoBoundingBox()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->boundingBoxData:Lcom/google/gdata/data/geo/impl/BoxDataImpl;

    invoke-virtual {v0}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->clearGeoBoundingBox()V

    .line 532
    return-void
.end method

.method public clearPoint()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->pointData:Lcom/google/gdata/data/geo/impl/PointDataImpl;

    invoke-virtual {v0}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->clearPoint()V

    .line 528
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 91
    invoke-static {}, Lcom/google/gdata/data/photos/pheed/PheedThumbnail;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 92
    invoke-static {}, Lcom/google/gdata/data/photos/pheed/PheedImageUrl;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 94
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoVersion;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 95
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoPosition;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 96
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoWidth;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 97
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoHeight;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 98
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoRotation;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 99
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoSize;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 101
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoAlbumId;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 102
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoAccess;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 103
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoClient;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 104
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoChecksum;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 105
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoTimestamp;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 106
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoStreamId;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 108
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoVideoStatus;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 110
    invoke-static {}, Lcom/google/gdata/data/photos/ExifTags;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 111
    new-instance v0, Lcom/google/gdata/data/photos/ExifTags;

    invoke-direct {v0}, Lcom/google/gdata/data/photos/ExifTags;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/photos/ExifTags;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 113
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 115
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoCommentCount;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 117
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->pointData:Lcom/google/gdata/data/geo/impl/PointDataImpl;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 118
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->boundingBoxData:Lcom/google/gdata/data/geo/impl/BoxDataImpl;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 119
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 120
    return-void
.end method

.method public getAlbumAccess()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    const-class v1, Lcom/google/gdata/data/photos/GphotoAccess;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoAccess;

    .line 199
    .local v0, "access":Lcom/google/gdata/data/photos/GphotoAccess;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoAccess;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const-class v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getSimpleValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    const-class v0, Lcom/google/gdata/data/photos/GphotoChecksum;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getSimpleValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    const-class v0, Lcom/google/gdata/data/photos/GphotoClient;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getSimpleValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentCount()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 423
    const-class v1, Lcom/google/gdata/data/photos/GphotoCommentCount;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoCommentCount;

    .line 424
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoCommentCount;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoCommentCount;->getValue()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCommentsEnabled()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 402
    const-class v1, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    .line 403
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoCommentsEnabled;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public getExifTags()Lcom/google/gdata/data/photos/ExifTags;
    .locals 1

    .prologue
    .line 382
    const-class v0, Lcom/google/gdata/data/photos/ExifTags;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/ExifTags;

    return-object v0
.end method

.method public getFeaturedDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 483
    const-class v1, Lcom/google/gdata/data/photos/GphotoFeaturedDate;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;

    .line 484
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoFeaturedDate;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->getValue()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getGeoBoundingBox()Lcom/google/gdata/data/geo/Box;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->boundingBoxData:Lcom/google/gdata/data/geo/impl/BoxDataImpl;

    invoke-virtual {v0}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->getGeoBoundingBox()Lcom/google/gdata/data/geo/Box;

    move-result-object v0

    return-object v0
.end method

.method public getGeoLocation()Lcom/google/gdata/data/geo/Point;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->pointData:Lcom/google/gdata/data/geo/impl/PointDataImpl;

    invoke-virtual {v0}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->getGeoLocation()Lcom/google/gdata/data/geo/Point;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 258
    const-class v1, Lcom/google/gdata/data/photos/GphotoHeight;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoHeight;

    .line 259
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoHeight;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoHeight;->getValue()Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

    invoke-virtual {v0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaCategories()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMediaContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

    invoke-virtual {v0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaContents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMediaCredits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaCredit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

    invoke-virtual {v0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaCredits()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

    invoke-virtual {v0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    return-object v0
.end method

.method public getMediaKeywords()Lcom/google/gdata/data/media/mediarss/MediaKeywords;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

    invoke-virtual {v0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaKeywords()Lcom/google/gdata/data/media/mediarss/MediaKeywords;

    move-result-object v0

    return-object v0
.end method

.method public getMediaThumbnails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaThumbnail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

    invoke-virtual {v0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaThumbnails()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 147
    const-class v1, Lcom/google/gdata/data/photos/GphotoPosition;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoPosition;

    .line 148
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoPosition;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoPosition;->getValue()Ljava/lang/Float;

    move-result-object v1

    goto :goto_0
.end method

.method public getRotation()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 279
    const-class v1, Lcom/google/gdata/data/photos/GphotoRotation;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoRotation;

    .line 280
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoRotation;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoRotation;->getValue()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 300
    const-class v1, Lcom/google/gdata/data/photos/GphotoSize;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoSize;

    .line 301
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoSize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoSize;->getValue()Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public getStreamIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    const-class v4, Lcom/google/gdata/data/photos/GphotoStreamId;

    invoke-virtual {p0, v4}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 445
    .local v0, "exts":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/photos/GphotoStreamId;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 446
    .local v3, "streamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/photos/GphotoStreamId;

    .line 447
    .local v2, "streamId":Lcom/google/gdata/data/photos/GphotoStreamId;
    invoke-virtual {v2}, Lcom/google/gdata/data/photos/GphotoStreamId;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 449
    .end local v2    # "streamId":Lcom/google/gdata/data/photos/GphotoStreamId;
    :cond_0
    return-object v3
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 4

    .prologue
    .line 361
    const-class v1, Lcom/google/gdata/data/photos/GphotoTimestamp;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoTimestamp;

    .line 362
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoTimestamp;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoTimestamp;->getValue()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getTotalStars()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 580
    const-class v1, Lcom/google/gdata/data/photos/GphotoStarred;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoStarred;

    .line 581
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoStarred;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoStarred;->getTotal()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 126
    const-class v1, Lcom/google/gdata/data/photos/GphotoVersion;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoVersion;

    .line 127
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoVersion;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoVersion;->getValue()Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public getVideoStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    const-class v0, Lcom/google/gdata/data/photos/GphotoVideoStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getSimpleValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewCount()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 463
    const-class v1, Lcom/google/gdata/data/photos/GphotoViewCount;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoViewCount;

    .line 464
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoViewCount;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoViewCount;->getValue()Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public getWidth()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 237
    const-class v1, Lcom/google/gdata/data/photos/GphotoWidth;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoWidth;

    .line 238
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoWidth;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoWidth;->getValue()Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public isStarred()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 566
    const-class v1, Lcom/google/gdata/data/photos/GphotoStarred;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoStarred;

    .line 567
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoStarred;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoStarred;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public setAlbumAccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "access"    # Ljava/lang/String;

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 209
    new-instance v0, Lcom/google/gdata/data/photos/GphotoAccess;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoAccess;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoAccess;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setAlbumId(Ljava/lang/Long;)V
    .locals 2
    .param p1, "albumId"    # Ljava/lang/Long;

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    new-instance v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/photos/GphotoAlbumId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 1
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    new-instance v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoAlbumId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setChecksum(Ljava/lang/String;)V
    .locals 1
    .param p1, "checksum"    # Ljava/lang/String;

    .prologue
    .line 350
    if-eqz p1, :cond_0

    .line 351
    new-instance v0, Lcom/google/gdata/data/photos/GphotoChecksum;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoChecksum;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoChecksum;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setClient(Ljava/lang/String;)V
    .locals 1
    .param p1, "client"    # Ljava/lang/String;

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 331
    new-instance v0, Lcom/google/gdata/data/photos/GphotoClient;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoClient;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoClient;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setCommentCount(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "commentCount"    # Ljava/lang/Integer;

    .prologue
    .line 433
    if-eqz p1, :cond_0

    .line 434
    new-instance v0, Lcom/google/gdata/data/photos/GphotoCommentCount;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoCommentCount;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoCommentCount;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setCommentsEnabled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "commentsEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 412
    if-eqz p1, :cond_0

    .line 413
    new-instance v0, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setExifTags(Lcom/google/gdata/data/photos/ExifTags;)V
    .locals 1
    .param p1, "tags"    # Lcom/google/gdata/data/photos/ExifTags;

    .prologue
    .line 391
    if-eqz p1, :cond_0

    .line 392
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/ExifTags;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setFeaturedDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "featuredDate"    # Ljava/util/Date;

    .prologue
    .line 492
    if-eqz p1, :cond_0

    .line 493
    new-instance v0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoFeaturedDate;-><init>(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setGeoBoundingBox(Lcom/google/gdata/data/geo/Box;)V
    .locals 1
    .param p1, "boundingBox"    # Lcom/google/gdata/data/geo/Box;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->boundingBoxData:Lcom/google/gdata/data/geo/impl/BoxDataImpl;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->setGeoBoundingBox(Lcom/google/gdata/data/geo/Box;)V

    .line 524
    return-void
.end method

.method public setGeoBoundingBox(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V
    .locals 1
    .param p1, "lowerLeft"    # Lcom/google/gdata/data/geo/Point;
    .param p2, "upperRight"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->boundingBoxData:Lcom/google/gdata/data/geo/impl/BoxDataImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->setGeoBoundingBox(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    .line 520
    return-void
.end method

.method public setGeoLocation(Lcom/google/gdata/data/geo/Point;)V
    .locals 1
    .param p1, "point"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->pointData:Lcom/google/gdata/data/geo/impl/PointDataImpl;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->setGeoLocation(Lcom/google/gdata/data/geo/Point;)V

    .line 508
    return-void
.end method

.method public setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1
    .param p1, "lat"    # Ljava/lang/Double;
    .param p2, "lon"    # Ljava/lang/Double;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->pointData:Lcom/google/gdata/data/geo/impl/PointDataImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 504
    return-void
.end method

.method public setHeight(Ljava/lang/Long;)V
    .locals 1
    .param p1, "height"    # Ljava/lang/Long;

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 269
    new-instance v0, Lcom/google/gdata/data/photos/GphotoHeight;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoHeight;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoHeight;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V
    .locals 1
    .param p1, "keywords"    # Lcom/google/gdata/data/media/mediarss/MediaKeywords;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V

    .line 563
    return-void
.end method

.method public setPosition(Ljava/lang/Float;)V
    .locals 1
    .param p1, "position"    # Ljava/lang/Float;

    .prologue
    .line 158
    if-eqz p1, :cond_0

    .line 159
    new-instance v0, Lcom/google/gdata/data/photos/GphotoPosition;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoPosition;-><init>(Ljava/lang/Float;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoPosition;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setRotation(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "rotation"    # Ljava/lang/Integer;

    .prologue
    .line 289
    if-eqz p1, :cond_0

    .line 290
    new-instance v0, Lcom/google/gdata/data/photos/GphotoRotation;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoRotation;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoRotation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setSize(Ljava/lang/Long;)V
    .locals 1
    .param p1, "size"    # Ljava/lang/Long;

    .prologue
    .line 310
    if-eqz p1, :cond_0

    .line 311
    new-instance v0, Lcom/google/gdata/data/photos/GphotoSize;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoSize;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoSize;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setStarred(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "starred"    # Ljava/lang/Boolean;

    .prologue
    .line 571
    const-class v1, Lcom/google/gdata/data/photos/GphotoStarred;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoStarred;

    .line 572
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoStarred;
    if-nez v0, :cond_0

    .line 573
    new-instance v0, Lcom/google/gdata/data/photos/GphotoStarred;

    .end local v0    # "ext":Lcom/google/gdata/data/photos/GphotoStarred;
    invoke-direct {v0}, Lcom/google/gdata/data/photos/GphotoStarred;-><init>()V

    .line 574
    .restart local v0    # "ext":Lcom/google/gdata/data/photos/GphotoStarred;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 576
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/photos/GphotoStarred;->setValue(Ljava/lang/Boolean;)V

    .line 577
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 1
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 371
    if-eqz p1, :cond_0

    .line 372
    new-instance v0, Lcom/google/gdata/data/photos/GphotoTimestamp;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoTimestamp;-><init>(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoTimestamp;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setTotalStars(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "totalStars"    # Ljava/lang/Integer;

    .prologue
    .line 585
    const-class v1, Lcom/google/gdata/data/photos/GphotoStarred;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoStarred;

    .line 586
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoStarred;
    if-nez v0, :cond_0

    .line 587
    new-instance v0, Lcom/google/gdata/data/photos/GphotoStarred;

    .end local v0    # "ext":Lcom/google/gdata/data/photos/GphotoStarred;
    invoke-direct {v0}, Lcom/google/gdata/data/photos/GphotoStarred;-><init>()V

    .line 588
    .restart local v0    # "ext":Lcom/google/gdata/data/photos/GphotoStarred;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 590
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/photos/GphotoStarred;->setTotal(Ljava/lang/Integer;)V

    .line 591
    return-void
.end method

.method public setVersion(Ljava/lang/Long;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/Long;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    new-instance v0, Lcom/google/gdata/data/photos/GphotoVersion;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoVersion;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoVersion;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setVideoStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoStatus"    # Ljava/lang/String;

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 227
    new-instance v0, Lcom/google/gdata/data/photos/GphotoVideoStatus;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoVideoStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoVideoStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setViewCount(Ljava/lang/Long;)V
    .locals 1
    .param p1, "viewCount"    # Ljava/lang/Long;

    .prologue
    .line 472
    if-eqz p1, :cond_0

    .line 473
    new-instance v0, Lcom/google/gdata/data/photos/GphotoViewCount;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoViewCount;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoViewCount;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setWidth(Ljava/lang/Long;)V
    .locals 1
    .param p1, "width"    # Ljava/lang/Long;

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    new-instance v0, Lcom/google/gdata/data/photos/GphotoWidth;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoWidth;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoWidth;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method
