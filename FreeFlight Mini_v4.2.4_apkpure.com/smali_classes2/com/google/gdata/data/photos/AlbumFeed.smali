.class public Lcom/google/gdata/data/photos/AlbumFeed;
.super Lcom/google/gdata/data/photos/GphotoFeed;
.source "AlbumFeed.java"

# interfaces
.implements Lcom/google/gdata/data/photos/AlbumData;
.implements Lcom/google/gdata/data/photos/AtomData;


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/photos/2007#album"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/photos/GphotoFeed",
        "<",
        "Lcom/google/gdata/data/photos/AlbumFeed;",
        ">;",
        "Lcom/google/gdata/data/photos/AlbumData;",
        "Lcom/google/gdata/data/photos/AtomData;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/gdata/data/photos/AlbumData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/gdata/data/photos/GphotoFeed;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/photos/AlbumData;->ALBUM_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    iput-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    .line 60
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
    .line 68
    .local p1, "sourceFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/photos/GphotoFeed;-><init>(Lcom/google/gdata/data/BaseFeed;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/photos/AlbumData;->ALBUM_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v0, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/photos/impl/AlbumDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    iput-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    .line 71
    return-void
.end method


# virtual methods
.method public clearGeoBoundingBox()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->clearGeoBoundingBox()V

    .line 214
    return-void
.end method

.method public clearPoint()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->clearPoint()V

    .line 210
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/AlbumData;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 79
    invoke-super {p0, p1}, Lcom/google/gdata/data/photos/GphotoFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 80
    return-void
.end method

.method public getAccess()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getAccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBytesUsed()Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getBytesUsed()Ljava/lang/Long;

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
    .line 116
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getCommentCount()Ljava/lang/Integer;

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
    .line 120
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getCommentsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getGeoBoundingBox()Lcom/google/gdata/data/geo/Box;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getGeoBoundingBox()Lcom/google/gdata/data/geo/Box;

    move-result-object v0

    return-object v0
.end method

.method public getGeoLocation()Lcom/google/gdata/data/geo/Point;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getGeoLocation()Lcom/google/gdata/data/geo/Point;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getLocation()Ljava/lang/String;

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
    .line 237
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getMediaCategories()Ljava/util/List;

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
    .line 233
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getMediaContents()Ljava/util/List;

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
    .line 241
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getMediaCredits()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    return-object v0
.end method

.method public getMediaKeywords()Lcom/google/gdata/data/media/mediarss/MediaKeywords;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getMediaKeywords()Lcom/google/gdata/data/media/mediarss/MediaKeywords;

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
    .line 245
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getMediaThumbnails()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/photos/PhotoEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumFeed;->getEntries(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhotosLeft()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getPhotosLeft()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPhotosUsed()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getPhotosUsed()Ljava/lang/Integer;

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
    .line 102
    const-class v0, Lcom/google/gdata/data/photos/TagEntry;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumFeed;->getEntries(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/AlbumData;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertPhoto(Lcom/google/gdata/data/media/MediaSource;)Lcom/google/gdata/data/photos/PhotoEntry;
    .locals 1
    .param p1, "photoSource"    # Lcom/google/gdata/data/media/MediaSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    invoke-super {p0, p1, v0}, Lcom/google/gdata/data/photos/GphotoFeed;->insert(Lcom/google/gdata/data/media/MediaSource;Ljava/lang/Class;)Lcom/google/gdata/data/BaseEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/PhotoEntry;

    return-object v0
.end method

.method public setAccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "access"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/AlbumData;->setAccess(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public setBytesUsed(Ljava/lang/Long;)V
    .locals 1
    .param p1, "bytesUsed"    # Ljava/lang/Long;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/AlbumData;->setBytesUsed(Ljava/lang/Long;)V

    .line 157
    return-void
.end method

.method public setCommentCount(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "commentCount"    # Ljava/lang/Integer;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/AlbumData;->setCommentCount(Ljava/lang/Integer;)V

    .line 161
    return-void
.end method

.method public setCommentsEnabled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "commentsEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/AlbumData;->setCommentsEnabled(Ljava/lang/Boolean;)V

    .line 165
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/AlbumData;->setDate(Ljava/util/Date;)V

    .line 169
    return-void
.end method

.method public setGeoBoundingBox(Lcom/google/gdata/data/geo/Box;)V
    .locals 1
    .param p1, "boundingBox"    # Lcom/google/gdata/data/geo/Box;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/AlbumData;->setGeoBoundingBox(Lcom/google/gdata/data/geo/Box;)V

    .line 226
    return-void
.end method

.method public setGeoBoundingBox(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V
    .locals 1
    .param p1, "lowerLeft"    # Lcom/google/gdata/data/geo/Point;
    .param p2, "upperRight"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0, p1, p2}, Lcom/google/gdata/data/photos/AlbumData;->setGeoBoundingBox(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    .line 222
    return-void
.end method

.method public setGeoLocation(Lcom/google/gdata/data/geo/Point;)V
    .locals 1
    .param p1, "point"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/AlbumData;->setGeoLocation(Lcom/google/gdata/data/geo/Point;)V

    .line 202
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
    .line 197
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0, p1, p2}, Lcom/google/gdata/data/photos/AlbumData;->setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 198
    return-void
.end method

.method public setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V
    .locals 1
    .param p1, "keywords"    # Lcom/google/gdata/data/media/mediarss/MediaKeywords;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/AlbumData;->setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V

    .line 254
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/AlbumData;->setLocation(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/AlbumData;->setName(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 1
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/AlbumData;->setNickname(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public setPhotosLeft(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "photosLeft"    # Ljava/lang/Integer;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/AlbumData;->setPhotosLeft(Ljava/lang/Integer;)V

    .line 185
    return-void
.end method

.method public setPhotosUsed(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "photosUsed"    # Ljava/lang/Integer;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/AlbumData;->setPhotosUsed(Ljava/lang/Integer;)V

    .line 189
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/gdata/data/photos/AlbumFeed;->delegate:Lcom/google/gdata/data/photos/AlbumData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/AlbumData;->setUsername(Ljava/lang/String;)V

    .line 193
    return-void
.end method
