.class public Lcom/google/gdata/data/youtube/YouTubeMediaGroup;
.super Lcom/google/gdata/data/media/mediarss/MediaGroup;
.source "YouTubeMediaGroup.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "group"
    nsAlias = "media"
    nsUri = "http://search.yahoo.com/mrss/"
.end annotation


# static fields
.field private static final UPLOADER_ROLE:Ljava/lang/String; = "uploader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;-><init>()V

    return-void
.end method

.method private getUploaderTag()Lcom/google/gdata/data/youtube/YouTubeMediaCredit;
    .locals 4

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getYouTubeCredits()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;

    .line 172
    .local v0, "credit":Lcom/google/gdata/data/youtube/YouTubeMediaCredit;
    const-string/jumbo v2, "uploader"

    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;->getRole()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "urn:youtube"

    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    .end local v0    # "credit":Lcom/google/gdata/data/youtube/YouTubeMediaCredit;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addContent(Lcom/google/gdata/data/media/mediarss/MediaContent;)V
    .locals 2
    .param p1, "content"    # Lcom/google/gdata/data/media/mediarss/MediaContent;

    .prologue
    .line 202
    instance-of v0, p1, Lcom/google/gdata/data/youtube/YouTubeMediaContent;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "YouTube entries requires YouTubeMediaContent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->addContent(Lcom/google/gdata/data/media/mediarss/MediaContent;)V

    .line 207
    return-void
.end method

.method public addContent(Lcom/google/gdata/data/youtube/YouTubeMediaContent;)V
    .locals 0
    .param p1, "content"    # Lcom/google/gdata/data/youtube/YouTubeMediaContent;

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 255
    return-void
.end method

.method public addCredit(Lcom/google/gdata/data/media/mediarss/MediaCredit;)V
    .locals 2
    .param p1, "credit"    # Lcom/google/gdata/data/media/mediarss/MediaCredit;

    .prologue
    .line 356
    instance-of v0, p1, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "YouTube entries requires YouTubeMediaCredit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->addCredit(Lcom/google/gdata/data/media/mediarss/MediaCredit;)V

    .line 361
    return-void
.end method

.method public addCredit(Lcom/google/gdata/data/youtube/YouTubeMediaCredit;)V
    .locals 0
    .param p1, "credit"    # Lcom/google/gdata/data/youtube/YouTubeMediaCredit;

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 409
    return-void
.end method

.method public addRating(Lcom/google/gdata/data/media/mediarss/MediaRating;)V
    .locals 2
    .param p1, "rating"    # Lcom/google/gdata/data/media/mediarss/MediaRating;

    .prologue
    .line 279
    instance-of v0, p1, Lcom/google/gdata/data/youtube/YouTubeMediaRating;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "YouTube entries requires YouTubeMediaRating"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->addRating(Lcom/google/gdata/data/media/mediarss/MediaRating;)V

    .line 284
    return-void
.end method

.method public addRating(Lcom/google/gdata/data/youtube/YouTubeMediaRating;)V
    .locals 0
    .param p1, "rating"    # Lcom/google/gdata/data/youtube/YouTubeMediaRating;

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 332
    return-void
.end method

.method public clearContents()V
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getYouTubeContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    return-void
.end method

.method public clearCredits()V
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getYouTubeCredits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 400
    return-void
.end method

.method public clearRatings()V
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getYouTubeRatings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 323
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 490
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    const-class v1, Lcom/google/gdata/data/youtube/YtAspectRatio;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 491
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    const-class v1, Lcom/google/gdata/data/youtube/YtVideoId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 492
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    const-class v1, Lcom/google/gdata/data/youtube/YtDuration;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 493
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    const-class v1, Lcom/google/gdata/data/youtube/YtPrivate;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 494
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    const-class v1, Lcom/google/gdata/data/youtube/YtUploaded;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 495
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    const-class v1, Lcom/google/gdata/data/youtube/YouTubeMediaContent;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 496
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaPlayer;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 497
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaKeywords;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 498
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaTitle;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 499
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaDescription;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 500
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaRestriction;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 501
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaCategory;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 502
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 503
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    const-class v1, Lcom/google/gdata/data/youtube/YouTubeMediaRating;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 504
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    const-class v1, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 505
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 506
    return-void
.end method

.method public getAspectRatio()Lcom/google/gdata/data/youtube/YtAspectRatio;
    .locals 1

    .prologue
    .line 420
    const-class v0, Lcom/google/gdata/data/youtube/YtAspectRatio;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtAspectRatio;

    return-object v0
.end method

.method public getContents()Ljava/util/List;
    .locals 2
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
    .line 225
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getYouTubeContents()Ljava/util/List;

    move-result-object v0

    .line 226
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/youtube/YouTubeMediaContent;>;"
    new-instance v1, Lcom/google/gdata/data/youtube/YouTubeMediaGroup$1;

    invoke-direct {v1, p0, v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup$1;-><init>(Lcom/google/gdata/data/youtube/YouTubeMediaGroup;Ljava/util/List;)V

    return-object v1
.end method

.method public getCredits()Ljava/util/List;
    .locals 2
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
    .line 379
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getYouTubeCredits()Ljava/util/List;

    move-result-object v0

    .line 380
    .local v0, "credits":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/youtube/YouTubeMediaCredit;>;"
    new-instance v1, Lcom/google/gdata/data/youtube/YouTubeMediaGroup$3;

    invoke-direct {v1, p0, v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup$3;-><init>(Lcom/google/gdata/data/youtube/YouTubeMediaGroup;Ljava/util/List;)V

    return-object v1
.end method

.method public getDuration()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 82
    const-class v1, Lcom/google/gdata/data/youtube/YtDuration;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtDuration;

    .line 83
    .local v0, "duration":Lcom/google/gdata/data/youtube/YtDuration;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtDuration;->getSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public getRatings()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaRating;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getYouTubeRatings()Ljava/util/List;

    move-result-object v0

    .line 303
    .local v0, "ratings":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/youtube/YouTubeMediaRating;>;"
    new-instance v1, Lcom/google/gdata/data/youtube/YouTubeMediaGroup$2;

    invoke-direct {v1, p0, v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup$2;-><init>(Lcom/google/gdata/data/youtube/YouTubeMediaGroup;Ljava/util/List;)V

    return-object v1
.end method

.method public getUploaded()Lcom/google/gdata/data/DateTime;
    .locals 2

    .prologue
    .line 103
    const-class v1, Lcom/google/gdata/data/youtube/YtUploaded;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtUploaded;

    .line 104
    .local v0, "uploadTime":Lcom/google/gdata/data/youtube/YtUploaded;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtUploaded;->getDateTime()Lcom/google/gdata/data/DateTime;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUploader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getUploaderTag()Lcom/google/gdata/data/youtube/YouTubeMediaCredit;

    move-result-object v0

    .line 152
    .local v0, "uploader":Lcom/google/gdata/data/youtube/YouTubeMediaCredit;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;->getContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getUploaderType()Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getUploaderTag()Lcom/google/gdata/data/youtube/YouTubeMediaCredit;

    move-result-object v0

    .line 162
    .local v0, "uploader":Lcom/google/gdata/data/youtube/YouTubeMediaCredit;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;->getType()Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;

    move-result-object v1

    goto :goto_0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    const-class v1, Lcom/google/gdata/data/youtube/YtVideoId;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtVideoId;

    .line 64
    .local v0, "videoId":Lcom/google/gdata/data/youtube/YtVideoId;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtVideoId;->getVideoId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getYouTubeCategory()Lcom/google/gdata/data/media/mediarss/MediaCategory;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 450
    const-string v3, "http://gdata.youtube.com/schemas/2007/categories.cat"

    invoke-virtual {p0, v3}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getCategoriesWithScheme(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 451
    .local v0, "found":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/data/media/mediarss/MediaCategory;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 452
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/media/mediarss/MediaCategory;

    .line 464
    :cond_0
    :goto_0
    return-object v2

    .line 453
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-gt v3, v4, :cond_0

    .line 459
    invoke-virtual {p0, v2}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getCategoriesWithScheme(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 460
    .local v1, "withNoScheme":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/data/media/mediarss/MediaCategory;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 461
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/media/mediarss/MediaCategory;

    goto :goto_0
.end method

.method public getYouTubeContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/youtube/YouTubeMediaContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaContent;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getYouTubeCredits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/youtube/YouTubeMediaCredit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getYouTubeRatings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/youtube/YouTubeMediaRating;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isPrivate()Z
    .locals 2

    .prologue
    .line 425
    const-class v1, Lcom/google/gdata/data/youtube/YtPrivate;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtPrivate;

    .line 426
    .local v0, "privacyLevel":Lcom/google/gdata/data/youtube/YtPrivate;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAspectRatio(Lcom/google/gdata/data/youtube/YtAspectRatio;)V
    .locals 1
    .param p1, "aspectRatio"    # Lcom/google/gdata/data/youtube/YtAspectRatio;

    .prologue
    .line 412
    if-nez p1, :cond_0

    .line 413
    const-class v0, Lcom/google/gdata/data/youtube/YtAspectRatio;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->removeExtension(Ljava/lang/Class;)V

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setDuration(Ljava/lang/Long;)V
    .locals 4
    .param p1, "seconds"    # Ljava/lang/Long;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const-class v1, Lcom/google/gdata/data/youtube/YtDuration;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->removeExtension(Ljava/lang/Class;)V

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtDuration;

    invoke-direct {v0}, Lcom/google/gdata/data/youtube/YtDuration;-><init>()V

    .line 92
    .local v0, "duration":Lcom/google/gdata/data/youtube/YtDuration;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/gdata/data/youtube/YtDuration;->setSeconds(J)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPrivate(Z)V
    .locals 1
    .param p1, "makePrivate"    # Z

    .prologue
    .line 431
    if-eqz p1, :cond_0

    .line 432
    new-instance v0, Lcom/google/gdata/data/youtube/YtPrivate;

    invoke-direct {v0}, Lcom/google/gdata/data/youtube/YtPrivate;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    const-class v0, Lcom/google/gdata/data/youtube/YtPrivate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setUploaded(Lcom/google/gdata/data/DateTime;)V
    .locals 1
    .param p1, "dateTime"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    const-class v0, Lcom/google/gdata/data/youtube/YtUploaded;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->removeExtension(Ljava/lang/Class;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtUploaded;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtUploaded;-><init>(Lcom/google/gdata/data/DateTime;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setUploader(Ljava/lang/String;)V
    .locals 4
    .param p1, "uploader"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getYouTubeCredits()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 128
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/data/youtube/YouTubeMediaCredit;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaCredit;

    .line 130
    .local v0, "credit":Lcom/google/gdata/data/media/mediarss/MediaCredit;
    const-string/jumbo v2, "uploader"

    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaCredit;->getRole()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "urn:youtube"

    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaCredit;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 135
    .end local v0    # "credit":Lcom/google/gdata/data/media/mediarss/MediaCredit;
    :cond_1
    if-eqz p1, :cond_2

    .line 136
    new-instance v0, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;

    invoke-direct {v0}, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;-><init>()V

    .line 137
    .local v0, "credit":Lcom/google/gdata/data/youtube/YouTubeMediaCredit;
    const-string/jumbo v2, "urn:youtube"

    invoke-virtual {v0, v2}, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;->setScheme(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v2, "uploader"

    invoke-virtual {v0, v2}, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;->setRole(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;->setContent(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->addCredit(Lcom/google/gdata/data/youtube/YouTubeMediaCredit;)V

    .line 142
    .end local v0    # "credit":Lcom/google/gdata/data/youtube/YouTubeMediaCredit;
    :cond_2
    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    const-class v0, Lcom/google/gdata/data/youtube/YtVideoId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->removeExtension(Ljava/lang/Class;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtVideoId;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtVideoId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setYouTubeCategory(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getCategories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/data/media/mediarss/MediaCategory;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaCategory;

    .line 477
    .local v0, "category":Lcom/google/gdata/data/media/mediarss/MediaCategory;
    const-string v2, "http://gdata.youtube.com/schemas/2007/categories.cat"

    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaCategory;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 482
    .end local v0    # "category":Lcom/google/gdata/data/media/mediarss/MediaCategory;
    :cond_1
    new-instance v2, Lcom/google/gdata/data/media/mediarss/MediaCategory;

    const-string v3, "http://gdata.youtube.com/schemas/2007/categories.cat"

    invoke-direct {v2, v3, p1}, Lcom/google/gdata/data/media/mediarss/MediaCategory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->addCategory(Lcom/google/gdata/data/media/mediarss/MediaCategory;)V

    .line 483
    return-void
.end method
