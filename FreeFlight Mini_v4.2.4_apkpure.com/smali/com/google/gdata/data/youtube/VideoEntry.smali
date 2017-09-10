.class public Lcom/google/gdata/data/youtube/VideoEntry;
.super Lcom/google/gdata/data/media/MediaEntry;
.source "VideoEntry.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "video"
    nsAlias = "yt"
    nsUri = "http://gdata.youtube.com/schemas/2007"
.end annotation

.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#video"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/media/MediaEntry",
        "<",
        "Lcom/google/gdata/data/youtube/VideoEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORIES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://gdata.youtube.com/schemas/2007/categories.cat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://gdata.youtube.com/schemas/2007/keywords.cat"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://gdata.youtube.com/schemas/2007/developertags.cat"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/youtube/VideoEntry;->CATEGORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/gdata/data/media/MediaEntry;-><init>()V

    .line 64
    const-string v0, "http://gdata.youtube.com/schemas/2007#video"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "original":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 70
    const-string v0, "http://gdata.youtube.com/schemas/2007#video"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/gdata/data/youtube/VideoEntry;-><init>()V

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/VideoEntry;->setId(Ljava/lang/String;)V

    .line 81
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v2, 0x0

    .line 338
    const-class v0, Lcom/google/gdata/data/PubControl;

    const-class v1, Lcom/google/gdata/data/youtube/YtPublicationState;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 340
    const-class v0, Lcom/google/gdata/data/youtube/VideoEntry;

    invoke-static {}, Lcom/google/gdata/data/extensions/Comments;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 341
    const-class v0, Lcom/google/gdata/data/youtube/VideoEntry;

    invoke-static {v2}, Lcom/google/gdata/data/extensions/Rating;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 342
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 343
    sget-object v0, Lcom/google/gdata/data/youtube/YouTubeNamespace;->NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 345
    const-class v0, Lcom/google/gdata/data/youtube/VideoEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtRacy;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 346
    const-class v0, Lcom/google/gdata/data/youtube/VideoEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtRecorded;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 347
    const-class v0, Lcom/google/gdata/data/youtube/VideoEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtStatistics;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 348
    const-class v0, Lcom/google/gdata/data/youtube/VideoEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtNoEmbed;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 349
    const-class v0, Lcom/google/gdata/data/youtube/VideoEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtLocation;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 350
    const-class v0, Lcom/google/gdata/data/youtube/VideoEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtRating;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 352
    const-class v0, Lcom/google/gdata/data/youtube/VideoEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 353
    new-instance v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    invoke-direct {v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 354
    sget-object v0, Lcom/google/gdata/data/media/mediarss/MediaRssNamespace;->NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 356
    const-class v0, Lcom/google/gdata/data/youtube/VideoEntry;

    invoke-static {v2}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 357
    sget-object v0, Lcom/google/gdata/data/geo/Namespaces;->GEO_RSS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 360
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-static {v2}, Lcom/google/gdata/data/geo/impl/GmlPoint;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 361
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-static {v2}, Lcom/google/gdata/data/geo/impl/GmlPos;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 362
    sget-object v0, Lcom/google/gdata/data/geo/Namespaces;->GML_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 365
    const-class v0, Lcom/google/gdata/data/Link;

    const-class v1, Lcom/google/gdata/data/youtube/YtToken;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 369
    const-class v0, Lcom/google/gdata/data/youtube/VideoEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 370
    return-void
.end method

.method public getComments()Lcom/google/gdata/data/extensions/Comments;
    .locals 1

    .prologue
    .line 190
    const-class v0, Lcom/google/gdata/data/extensions/Comments;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Comments;

    return-object v0
.end method

.method public getComplaintsLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 214
    const-string v0, "http://gdata.youtube.com/schemas/2007#video.complaints"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/youtube/VideoEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getFeedLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/FeedLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    const-class v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGeoCoordinates()Lcom/google/gdata/data/geo/impl/GeoRssWhere;
    .locals 1

    .prologue
    .line 165
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    const-class v1, Lcom/google/gdata/data/youtube/YtLocation;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/VideoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtLocation;

    .line 171
    .local v0, "tag":Lcom/google/gdata/data/youtube/YtLocation;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtLocation;->getContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaGroup()Lcom/google/gdata/data/youtube/YouTubeMediaGroup;
    .locals 1

    .prologue
    .line 288
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    return-object v0
.end method

.method public getOrCreateMediaGroup()Lcom/google/gdata/data/youtube/YouTubeMediaGroup;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/VideoEntry;->getMediaGroup()Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    move-result-object v0

    .line 293
    .local v0, "group":Lcom/google/gdata/data/youtube/YouTubeMediaGroup;
    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    .end local v0    # "group":Lcom/google/gdata/data/youtube/YouTubeMediaGroup;
    invoke-direct {v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;-><init>()V

    .line 295
    .restart local v0    # "group":Lcom/google/gdata/data/youtube/YouTubeMediaGroup;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 297
    :cond_0
    return-object v0
.end method

.method public getPublicationState()Lcom/google/gdata/data/youtube/YtPublicationState;
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/VideoEntry;->getPubControl()Lcom/google/gdata/data/PubControl;

    move-result-object v0

    .line 284
    .local v0, "control":Lcom/google/gdata/data/PubControl;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-class v1, Lcom/google/gdata/data/youtube/YtPublicationState;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/PubControl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/youtube/YtPublicationState;

    goto :goto_0
.end method

.method public getRating()Lcom/google/gdata/data/extensions/Rating;
    .locals 1

    .prologue
    .line 224
    const-class v0, Lcom/google/gdata/data/extensions/Rating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Rating;

    return-object v0
.end method

.method public getRatingLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 209
    const-string v0, "http://gdata.youtube.com/schemas/2007#video.ratings"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/youtube/VideoEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getRecorded()Lcom/google/gdata/data/DateTime;
    .locals 2

    .prologue
    .line 150
    const-class v1, Lcom/google/gdata/data/youtube/YtRecorded;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/VideoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtRecorded;

    .line 151
    .local v0, "recorded":Lcom/google/gdata/data/youtube/YtRecorded;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtRecorded;->getDate()Lcom/google/gdata/data/DateTime;

    move-result-object v1

    goto :goto_0
.end method

.method public getRelatedVideosLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 219
    const-string v0, "http://gdata.youtube.com/schemas/2007#video.related"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/youtube/VideoEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getStatistics()Lcom/google/gdata/data/youtube/YtStatistics;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/google/gdata/data/youtube/YtStatistics;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtStatistics;

    return-object v0
.end method

.method public getVideoResponsesLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 204
    const-string v0, "http://gdata.youtube.com/schemas/2007#video.responses"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/youtube/VideoEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getYtRating()Lcom/google/gdata/data/youtube/YtRating;
    .locals 1

    .prologue
    .line 238
    const-class v0, Lcom/google/gdata/data/youtube/YtRating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtRating;

    return-object v0
.end method

.method public isEmbeddable()Z
    .locals 2

    .prologue
    .line 99
    const-class v1, Lcom/google/gdata/data/youtube/YtNoEmbed;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/VideoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtNoEmbed;

    .line 101
    .local v0, "noEmbed":Lcom/google/gdata/data/youtube/YtNoEmbed;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRacy()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    const-class v1, Lcom/google/gdata/data/youtube/YtRacy;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/VideoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtRacy;

    .line 136
    .local v0, "racy":Lcom/google/gdata/data/youtube/YtRacy;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isYtIncomplete()Z
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/VideoEntry;->getPubControl()Lcom/google/gdata/data/PubControl;

    move-result-object v0

    .line 333
    .local v0, "control":Lcom/google/gdata/data/PubControl;
    if-eqz v0, :cond_0

    const-class v1, Lcom/google/gdata/data/youtube/YtIncomplete;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/PubControl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setComments(Lcom/google/gdata/data/extensions/Comments;)V
    .locals 1
    .param p1, "comments"    # Lcom/google/gdata/data/extensions/Comments;

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    const-class v0, Lcom/google/gdata/data/extensions/Comments;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/VideoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setEmbeddable(Z)V
    .locals 1
    .param p1, "embeddable"    # Z

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    const-class v0, Lcom/google/gdata/data/youtube/YtNoEmbed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtNoEmbed;

    invoke-direct {v0}, Lcom/google/gdata/data/youtube/YtNoEmbed;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGeoCoordinates(Lcom/google/gdata/data/geo/impl/GeoRssWhere;)V
    .locals 1
    .param p1, "where"    # Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/VideoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    const-class v0, Lcom/google/gdata/data/youtube/YtLocation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtLocation;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtLocation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPublicationState(Lcom/google/gdata/data/youtube/YtPublicationState;)V
    .locals 2
    .param p1, "state"    # Lcom/google/gdata/data/youtube/YtPublicationState;

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/VideoEntry;->getPubControl()Lcom/google/gdata/data/PubControl;

    move-result-object v0

    .line 258
    .local v0, "control":Lcom/google/gdata/data/PubControl;
    if-nez p1, :cond_1

    .line 259
    if-eqz v0, :cond_0

    .line 260
    const-class v1, Lcom/google/gdata/data/youtube/YtPublicationState;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/PubControl;->removeExtension(Ljava/lang/Class;)V

    .line 262
    invoke-virtual {v0}, Lcom/google/gdata/data/PubControl;->isDraft()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/PubControl;->getExtensions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/VideoEntry;->setPubControl(Lcom/google/gdata/data/PubControl;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    if-nez v0, :cond_2

    .line 268
    new-instance v0, Lcom/google/gdata/data/PubControl;

    .end local v0    # "control":Lcom/google/gdata/data/PubControl;
    invoke-direct {v0}, Lcom/google/gdata/data/PubControl;-><init>()V

    .line 269
    .restart local v0    # "control":Lcom/google/gdata/data/PubControl;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->setPubControl(Lcom/google/gdata/data/PubControl;)V

    .line 271
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/PubControl;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setRacy(Z)V
    .locals 1
    .param p1, "racy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    new-instance v0, Lcom/google/gdata/data/youtube/YtRacy;

    invoke-direct {v0}, Lcom/google/gdata/data/youtube/YtRacy;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    const-class v0, Lcom/google/gdata/data/youtube/YtRacy;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setRating(Lcom/google/gdata/data/extensions/Rating;)V
    .locals 1
    .param p1, "rating"    # Lcom/google/gdata/data/extensions/Rating;

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    const-class v0, Lcom/google/gdata/data/extensions/Rating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/VideoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setRecorded(Lcom/google/gdata/data/DateTime;)V
    .locals 1
    .param p1, "date"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    const-class v0, Lcom/google/gdata/data/youtube/YtRecorded;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtRecorded;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtRecorded;-><init>(Lcom/google/gdata/data/DateTime;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setStatistics(Lcom/google/gdata/data/youtube/YtStatistics;)V
    .locals 1
    .param p1, "stats"    # Lcom/google/gdata/data/youtube/YtStatistics;

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    const-class v0, Lcom/google/gdata/data/youtube/YtStatistics;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/VideoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setYtIncomplete(Z)V
    .locals 2
    .param p1, "ytIncomplete"    # Z

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/VideoEntry;->getPubControl()Lcom/google/gdata/data/PubControl;

    move-result-object v0

    .line 306
    .local v0, "control":Lcom/google/gdata/data/PubControl;
    if-nez p1, :cond_1

    .line 307
    if-eqz v0, :cond_0

    .line 308
    const-class v1, Lcom/google/gdata/data/youtube/YtIncomplete;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/PubControl;->removeExtension(Ljava/lang/Class;)V

    .line 310
    invoke-virtual {v0}, Lcom/google/gdata/data/PubControl;->getExtensions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/VideoEntry;->setPubControl(Lcom/google/gdata/data/PubControl;)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    if-nez v0, :cond_2

    .line 316
    new-instance v0, Lcom/google/gdata/data/PubControl;

    .end local v0    # "control":Lcom/google/gdata/data/PubControl;
    invoke-direct {v0}, Lcom/google/gdata/data/PubControl;-><init>()V

    .line 317
    .restart local v0    # "control":Lcom/google/gdata/data/PubControl;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->setPubControl(Lcom/google/gdata/data/PubControl;)V

    .line 319
    :cond_2
    new-instance v1, Lcom/google/gdata/data/youtube/YtIncomplete;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/YtIncomplete;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/PubControl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 320
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/PubControl;->setDraft(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public setYtRating(Lcom/google/gdata/data/youtube/YtRating;)V
    .locals 1
    .param p1, "rating"    # Lcom/google/gdata/data/youtube/YtRating;

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 244
    const-class v0, Lcom/google/gdata/data/youtube/YtRating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/VideoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method
