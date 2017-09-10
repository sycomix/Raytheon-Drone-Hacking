.class public Lcom/google/gdata/data/photos/impl/AlbumDataImpl;
.super Lcom/google/gdata/data/photos/impl/GphotoDataImpl;
.source "AlbumDataImpl.java"

# interfaces
.implements Lcom/google/gdata/data/photos/AlbumData;


# instance fields
.field private final boundingBoxData:Lcom/google/gdata/data/geo/impl/BoxDataImpl;

.field private final mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

.field private final pointData:Lcom/google/gdata/data/geo/impl/PointDataImpl;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/ExtensionPoint;)V
    .locals 1
    .param p1, "extensionPoint"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    .line 69
    new-instance v0, Lcom/google/gdata/data/geo/impl/PointDataImpl;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/geo/impl/PointDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    iput-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->pointData:Lcom/google/gdata/data/geo/impl/PointDataImpl;

    .line 70
    new-instance v0, Lcom/google/gdata/data/geo/impl/BoxDataImpl;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    iput-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->boundingBoxData:Lcom/google/gdata/data/geo/impl/BoxDataImpl;

    .line 71
    new-instance v0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    iput-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

    .line 72
    return-void
.end method


# virtual methods
.method public clearGeoBoundingBox()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->boundingBoxData:Lcom/google/gdata/data/geo/impl/BoxDataImpl;

    invoke-virtual {v0}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->clearGeoBoundingBox()V

    .line 415
    return-void
.end method

.method public clearPoint()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->pointData:Lcom/google/gdata/data/geo/impl/PointDataImpl;

    invoke-virtual {v0}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->clearPoint()V

    .line 411
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 82
    invoke-static {}, Lcom/google/gdata/data/photos/pheed/PheedThumbnail;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 83
    invoke-static {}, Lcom/google/gdata/data/photos/pheed/PheedImageUrl;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 85
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoName;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 86
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoLocation;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 87
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoTimestamp;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 88
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoAccess;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 89
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoPhotosUsed;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 90
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoPhotosLeft;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 91
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoBytesUsed;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 93
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoUsername;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 94
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoNickname;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 96
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 98
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoCommentCount;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 101
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->pointData:Lcom/google/gdata/data/geo/impl/PointDataImpl;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 102
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->boundingBoxData:Lcom/google/gdata/data/geo/impl/BoxDataImpl;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 103
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 105
    return-void
.end method

.method public getAccess()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    const-class v1, Lcom/google/gdata/data/photos/GphotoAccess;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoAccess;

    .line 221
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

.method public getBytesUsed()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 283
    const-class v1, Lcom/google/gdata/data/photos/GphotoBytesUsed;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoBytesUsed;

    .line 284
    .local v0, "used":Lcom/google/gdata/data/photos/GphotoBytesUsed;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoBytesUsed;->getValue()Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public getCommentCount()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 365
    const-class v1, Lcom/google/gdata/data/photos/GphotoCommentCount;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoCommentCount;

    .line 366
    .local v0, "left":Lcom/google/gdata/data/photos/GphotoCommentCount;
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
    .line 344
    const-class v1, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    .line 345
    .local v0, "left":Lcom/google/gdata/data/photos/GphotoCommentsEnabled;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public getDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 201
    const-class v1, Lcom/google/gdata/data/photos/GphotoTimestamp;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoTimestamp;

    .line 202
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

.method public getGeoBoundingBox()Lcom/google/gdata/data/geo/Box;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->boundingBoxData:Lcom/google/gdata/data/geo/impl/BoxDataImpl;

    invoke-virtual {v0}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->getGeoBoundingBox()Lcom/google/gdata/data/geo/Box;

    move-result-object v0

    return-object v0
.end method

.method public getGeoLocation()Lcom/google/gdata/data/geo/Point;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->pointData:Lcom/google/gdata/data/geo/impl/PointDataImpl;

    invoke-virtual {v0}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->getGeoLocation()Lcom/google/gdata/data/geo/Point;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    const-class v0, Lcom/google/gdata/data/photos/pheed/PheedImageUrl;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->getSimpleValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-class v0, Lcom/google/gdata/data/photos/GphotoLocation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->getSimpleValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 429
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

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
    .line 425
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

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
    .line 433
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

    invoke-virtual {v0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaCredits()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

    invoke-virtual {v0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    return-object v0
.end method

.method public getMediaKeywords()Lcom/google/gdata/data/media/mediarss/MediaKeywords;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

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
    .line 437
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

    invoke-virtual {v0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaThumbnails()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-class v0, Lcom/google/gdata/data/photos/GphotoName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->getSimpleValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    const-class v0, Lcom/google/gdata/data/photos/GphotoNickname;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->getSimpleValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotosLeft()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 262
    const-class v1, Lcom/google/gdata/data/photos/GphotoPhotosLeft;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoPhotosLeft;

    .line 263
    .local v0, "left":Lcom/google/gdata/data/photos/GphotoPhotosLeft;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoPhotosLeft;->getValue()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getPhotosUsed()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 241
    const-class v1, Lcom/google/gdata/data/photos/GphotoPhotosUsed;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoPhotosUsed;

    .line 242
    .local v0, "photosUsed":Lcom/google/gdata/data/photos/GphotoPhotosUsed;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoPhotosUsed;->getValue()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    const-class v0, Lcom/google/gdata/data/photos/pheed/PheedThumbnail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->getSimpleValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    const-class v0, Lcom/google/gdata/data/photos/GphotoUsername;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->getSimpleValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "access"    # Ljava/lang/String;

    .prologue
    .line 230
    if-eqz p1, :cond_0

    .line 231
    new-instance v0, Lcom/google/gdata/data/photos/GphotoAccess;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoAccess;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoAccess;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setBytesUsed(Ljava/lang/Long;)V
    .locals 1
    .param p1, "bytesUsed"    # Ljava/lang/Long;

    .prologue
    .line 293
    if-eqz p1, :cond_0

    .line 294
    new-instance v0, Lcom/google/gdata/data/photos/GphotoBytesUsed;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoBytesUsed;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoBytesUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setCommentCount(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "commentCount"    # Ljava/lang/Integer;

    .prologue
    .line 375
    if-eqz p1, :cond_0

    .line 376
    new-instance v0, Lcom/google/gdata/data/photos/GphotoCommentCount;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoCommentCount;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoCommentCount;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setCommentsEnabled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "commentsEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 354
    if-eqz p1, :cond_0

    .line 355
    new-instance v0, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    new-instance v0, Lcom/google/gdata/data/photos/GphotoTimestamp;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoTimestamp;-><init>(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoTimestamp;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setGeoBoundingBox(Lcom/google/gdata/data/geo/Box;)V
    .locals 1
    .param p1, "boundingBox"    # Lcom/google/gdata/data/geo/Box;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->boundingBoxData:Lcom/google/gdata/data/geo/impl/BoxDataImpl;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->setGeoBoundingBox(Lcom/google/gdata/data/geo/Box;)V

    .line 407
    return-void
.end method

.method public setGeoBoundingBox(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V
    .locals 1
    .param p1, "lowerLeft"    # Lcom/google/gdata/data/geo/Point;
    .param p2, "upperRight"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->boundingBoxData:Lcom/google/gdata/data/geo/impl/BoxDataImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->setGeoBoundingBox(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    .line 403
    return-void
.end method

.method public setGeoLocation(Lcom/google/gdata/data/geo/Point;)V
    .locals 1
    .param p1, "point"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->pointData:Lcom/google/gdata/data/geo/impl/PointDataImpl;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->setGeoLocation(Lcom/google/gdata/data/geo/Point;)V

    .line 391
    return-void
.end method

.method public setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1
    .param p1, "lat"    # Ljava/lang/Double;
    .param p2, "lon"    # Ljava/lang/Double;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->pointData:Lcom/google/gdata/data/geo/impl/PointDataImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 387
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "imageUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    new-instance v0, Lcom/google/gdata/data/photos/pheed/PheedImageUrl;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/pheed/PheedImageUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/pheed/PheedImageUrl;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V
    .locals 1
    .param p1, "keywords"    # Lcom/google/gdata/data/media/mediarss/MediaKeywords;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->mediaData:Lcom/google/gdata/data/photos/impl/MediaDataImpl;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V

    .line 446
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    new-instance v0, Lcom/google/gdata/data/photos/GphotoLocation;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoLocation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoLocation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    new-instance v0, Lcom/google/gdata/data/photos/GphotoName;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 1
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 333
    if-eqz p1, :cond_0

    .line 334
    new-instance v0, Lcom/google/gdata/data/photos/GphotoNickname;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoNickname;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoNickname;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setPhotosLeft(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "photosLeft"    # Ljava/lang/Integer;

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 273
    new-instance v0, Lcom/google/gdata/data/photos/GphotoPhotosLeft;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoPhotosLeft;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoPhotosLeft;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setPhotosUsed(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "photosUsed"    # Ljava/lang/Integer;

    .prologue
    .line 251
    if-eqz p1, :cond_0

    .line 252
    new-instance v0, Lcom/google/gdata/data/photos/GphotoPhotosUsed;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoPhotosUsed;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoPhotosUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 1
    .param p1, "thumbUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    new-instance v0, Lcom/google/gdata/data/photos/pheed/PheedThumbnail;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/pheed/PheedThumbnail;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/pheed/PheedThumbnail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 313
    if-eqz p1, :cond_0

    .line 314
    new-instance v0, Lcom/google/gdata/data/photos/GphotoUsername;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoUsername;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoUsername;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method
