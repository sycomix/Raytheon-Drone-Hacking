.class public Lcom/google/gdata/data/photos/PhotoFeed;
.super Lcom/google/gdata/data/photos/GphotoFeed;
.source "PhotoFeed.java"

# interfaces
.implements Lcom/google/gdata/data/photos/PhotoData;
.implements Lcom/google/gdata/data/photos/AtomData;


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/photos/2007#photo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/photos/GphotoFeed",
        "<",
        "Lcom/google/gdata/data/photos/PhotoFeed;",
        ">;",
        "Lcom/google/gdata/data/photos/PhotoData;",
        "Lcom/google/gdata/data/photos/AtomData;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/gdata/data/photos/PhotoData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/gdata/data/photos/GphotoFeed;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/photos/PhotoData;->PHOTO_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    iput-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseFeed;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "sourceFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/photos/GphotoFeed;-><init>(Lcom/google/gdata/data/BaseFeed;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/photos/PhotoData;->PHOTO_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/photos/impl/PhotoDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    iput-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    .line 70
    return-void
.end method


# virtual methods
.method public addStreamId(Ljava/lang/String;)V
    .locals 1
    .param p1, "streamId"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->addStreamId(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public clearGeoBoundingBox()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->clearGeoBoundingBox()V

    .line 268
    return-void
.end method

.method public clearPoint()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->clearPoint()V

    .line 252
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 78
    invoke-super {p0, p1}, Lcom/google/gdata/data/photos/GphotoFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 79
    return-void
.end method

.method public getAlbumAccess()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getAlbumAccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getChecksum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getClient()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentCount()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getCommentCount()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCommentEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/photos/CommentEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    const-class v0, Lcom/google/gdata/data/photos/CommentEntry;

    invoke-super {p0, v0}, Lcom/google/gdata/data/photos/GphotoFeed;->getEntries(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCommentsEnabled()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getCommentsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getExifTags()Lcom/google/gdata/data/photos/ExifTags;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getExifTags()Lcom/google/gdata/data/photos/ExifTags;

    move-result-object v0

    return-object v0
.end method

.method public getFeaturedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getFeaturedDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getGeoBoundingBox()Lcom/google/gdata/data/geo/Box;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getGeoBoundingBox()Lcom/google/gdata/data/geo/Box;

    move-result-object v0

    return-object v0
.end method

.method public getGeoLocation()Lcom/google/gdata/data/geo/Point;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getGeoLocation()Lcom/google/gdata/data/geo/Point;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getHeight()Ljava/lang/Long;

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
    .line 287
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getMediaCategories()Ljava/util/List;

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
    .line 283
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getMediaContents()Ljava/util/List;

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
    .line 291
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getMediaCredits()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    return-object v0
.end method

.method public getMediaKeywords()Lcom/google/gdata/data/media/mediarss/MediaKeywords;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getMediaKeywords()Lcom/google/gdata/data/media/mediarss/MediaKeywords;

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
    .line 295
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getMediaThumbnails()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getPosition()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getRotation()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getSize()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getStreamIds()Ljava/util/List;
    .locals 1
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
    .line 275
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getStreamIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTagEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/photos/TagEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    const-class v0, Lcom/google/gdata/data/photos/TagEntry;

    invoke-super {p0, v0}, Lcom/google/gdata/data/photos/GphotoFeed;->getEntries(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTotalStars()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getTotalStars()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getVersion()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getVideoStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getVideoStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewCount()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getViewCount()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->getWidth()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public isStarred()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/PhotoData;->isStarred()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setAlbumAccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "access"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setAlbumAccess(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public setAlbumId(Ljava/lang/Long;)V
    .locals 1
    .param p1, "albumId"    # Ljava/lang/Long;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setAlbumId(Ljava/lang/Long;)V

    .line 171
    return-void
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 1
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setAlbumId(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public setChecksum(Ljava/lang/String;)V
    .locals 1
    .param p1, "checksum"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setChecksum(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public setClient(Ljava/lang/String;)V
    .locals 1
    .param p1, "client"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setClient(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public setCommentCount(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "commentCount"    # Ljava/lang/Integer;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setCommentCount(Ljava/lang/Integer;)V

    .line 191
    return-void
.end method

.method public setCommentsEnabled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "commentsEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setCommentsEnabled(Ljava/lang/Boolean;)V

    .line 195
    return-void
.end method

.method public setExifTags(Lcom/google/gdata/data/photos/ExifTags;)V
    .locals 1
    .param p1, "tags"    # Lcom/google/gdata/data/photos/ExifTags;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setExifTags(Lcom/google/gdata/data/photos/ExifTags;)V

    .line 199
    return-void
.end method

.method public setFeaturedDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "featuredDate"    # Ljava/util/Date;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setFeaturedDate(Ljava/util/Date;)V

    .line 203
    return-void
.end method

.method public setGeoBoundingBox(Lcom/google/gdata/data/geo/Box;)V
    .locals 1
    .param p1, "boundingBox"    # Lcom/google/gdata/data/geo/Box;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setGeoBoundingBox(Lcom/google/gdata/data/geo/Box;)V

    .line 264
    return-void
.end method

.method public setGeoBoundingBox(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V
    .locals 1
    .param p1, "lowerLeft"    # Lcom/google/gdata/data/geo/Point;
    .param p2, "upperRight"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1, p2}, Lcom/google/gdata/data/photos/PhotoData;->setGeoBoundingBox(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    .line 260
    return-void
.end method

.method public setGeoLocation(Lcom/google/gdata/data/geo/Point;)V
    .locals 1
    .param p1, "point"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setGeoLocation(Lcom/google/gdata/data/geo/Point;)V

    .line 244
    return-void
.end method

.method public setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1
    .param p1, "lat"    # Ljava/lang/Double;
    .param p2, "lon"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1, p2}, Lcom/google/gdata/data/photos/PhotoData;->setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 240
    return-void
.end method

.method public setHeight(Ljava/lang/Long;)V
    .locals 1
    .param p1, "height"    # Ljava/lang/Long;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setHeight(Ljava/lang/Long;)V

    .line 207
    return-void
.end method

.method public setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V
    .locals 1
    .param p1, "keywords"    # Lcom/google/gdata/data/media/mediarss/MediaKeywords;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V

    .line 304
    return-void
.end method

.method public setPosition(Ljava/lang/Float;)V
    .locals 1
    .param p1, "position"    # Ljava/lang/Float;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setPosition(Ljava/lang/Float;)V

    .line 211
    return-void
.end method

.method public setRotation(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "rotation"    # Ljava/lang/Integer;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setRotation(Ljava/lang/Integer;)V

    .line 215
    return-void
.end method

.method public setSize(Ljava/lang/Long;)V
    .locals 1
    .param p1, "size"    # Ljava/lang/Long;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setSize(Ljava/lang/Long;)V

    .line 219
    return-void
.end method

.method public setStarred(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "starred"    # Ljava/lang/Boolean;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setStarred(Ljava/lang/Boolean;)V

    .line 312
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 1
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setTimestamp(Ljava/util/Date;)V

    .line 223
    return-void
.end method

.method public setTotalStars(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "totalStars"    # Ljava/lang/Integer;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setTotalStars(Ljava/lang/Integer;)V

    .line 320
    return-void
.end method

.method public setVersion(Ljava/lang/Long;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/Long;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setVersion(Ljava/lang/Long;)V

    .line 227
    return-void
.end method

.method public setVideoStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setVideoStatus(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public setViewCount(Ljava/lang/Long;)V
    .locals 1
    .param p1, "viewCount"    # Ljava/lang/Long;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setViewCount(Ljava/lang/Long;)V

    .line 231
    return-void
.end method

.method public setWidth(Ljava/lang/Long;)V
    .locals 1
    .param p1, "width"    # Ljava/lang/Long;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/gdata/data/photos/PhotoFeed;->delegate:Lcom/google/gdata/data/photos/PhotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/PhotoData;->setWidth(Ljava/lang/Long;)V

    .line 235
    return-void
.end method
