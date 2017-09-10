.class public abstract Lcom/google/gdata/data/youtube/FeedLinkEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "FeedLinkEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/gdata/data/BaseEntry;",
        ">",
        "Lcom/google/gdata/data/BaseEntry",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    .local p0, "this":Lcom/google/gdata/data/youtube/FeedLinkEntry;, "Lcom/google/gdata/data/youtube/FeedLinkEntry<TT;>;"
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/google/gdata/data/youtube/FeedLinkEntry;, "Lcom/google/gdata/data/youtube/FeedLinkEntry<TT;>;"
    .local p1, "base":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 53
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 5
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .local p0, "this":Lcom/google/gdata/data/youtube/FeedLinkEntry;, "Lcom/google/gdata/data/youtube/FeedLinkEntry<TT;>;"
    const/4 v4, 0x0

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 181
    .local v0, "concreteClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/youtube/FeedLinkEntry;>;"
    invoke-static {}, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    .line 184
    .local v2, "thumbnailDescription":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v2, v4}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 185
    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 186
    const-class v3, Lcom/google/gdata/data/youtube/YtPrivate;

    invoke-virtual {p1, v0, v3}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 189
    const-class v3, Lcom/google/gdata/data/youtube/YtDescription;

    invoke-virtual {p1, v0, v3}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 191
    invoke-static {}, Lcom/google/gdata/data/extensions/FeedLink;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    .line 192
    .local v1, "feedLinkDescription":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v1, v4}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 193
    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 196
    const-class v3, Lcom/google/gdata/data/youtube/YtCountHint;

    invoke-virtual {p1, v0, v3}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 198
    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 199
    return-void
.end method

.method public getCountHint()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 106
    .local p0, "this":Lcom/google/gdata/data/youtube/FeedLinkEntry;, "Lcom/google/gdata/data/youtube/FeedLinkEntry<TT;>;"
    const-class v2, Lcom/google/gdata/data/youtube/YtCountHint;

    invoke-virtual {p0, v2}, Lcom/google/gdata/data/youtube/FeedLinkEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtCountHint;

    .line 107
    .local v0, "countHint":Lcom/google/gdata/data/youtube/YtCountHint;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtCountHint;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 116
    :goto_0
    return-object v2

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/FeedLinkEntry;->getFeedLink()Lcom/google/gdata/data/extensions/FeedLink;

    move-result-object v1

    .line 112
    .local v1, "feedLink":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<*>;"
    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v1}, Lcom/google/gdata/data/extensions/FeedLink;->getCountHint()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 116
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/google/gdata/data/youtube/FeedLinkEntry;, "Lcom/google/gdata/data/youtube/FeedLinkEntry<TT;>;"
    const-class v1, Lcom/google/gdata/data/youtube/YtDescription;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/FeedLinkEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtDescription;

    .line 159
    .local v0, "description":Lcom/google/gdata/data/youtube/YtDescription;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtDescription;->getContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFeedLink()Lcom/google/gdata/data/extensions/FeedLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/extensions/FeedLink",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/google/gdata/data/youtube/FeedLinkEntry;, "Lcom/google/gdata/data/youtube/FeedLinkEntry<TT;>;"
    const-class v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/FeedLinkEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/FeedLink;

    return-object v0
.end method

.method public getFeedUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    .local p0, "this":Lcom/google/gdata/data/youtube/FeedLinkEntry;, "Lcom/google/gdata/data/youtube/FeedLinkEntry<TT;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/FeedLinkEntry;->getContent()Lcom/google/gdata/data/Content;

    move-result-object v1

    instance-of v1, v1, Lcom/google/gdata/data/OutOfLineContent;

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/FeedLinkEntry;->getContent()Lcom/google/gdata/data/Content;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/OutOfLineContent;

    invoke-virtual {v1}, Lcom/google/gdata/data/OutOfLineContent;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 93
    :goto_0
    return-object v1

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/FeedLinkEntry;->getFeedLink()Lcom/google/gdata/data/extensions/FeedLink;

    move-result-object v0

    .line 90
    .local v0, "feedLink":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<*>;"
    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Lcom/google/gdata/data/extensions/FeedLink;->getHref()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getThumbnail()Lcom/google/gdata/data/media/mediarss/MediaThumbnail;
    .locals 1

    .prologue
    .line 138
    .local p0, "this":Lcom/google/gdata/data/youtube/FeedLinkEntry;, "Lcom/google/gdata/data/youtube/FeedLinkEntry<TT;>;"
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/FeedLinkEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;

    return-object v0
.end method

.method public setCountHint(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "hint"    # Ljava/lang/Integer;

    .prologue
    .line 129
    .local p0, "this":Lcom/google/gdata/data/youtube/FeedLinkEntry;, "Lcom/google/gdata/data/youtube/FeedLinkEntry<TT;>;"
    if-nez p1, :cond_0

    .line 130
    const-class v0, Lcom/google/gdata/data/youtube/YtCountHint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/FeedLinkEntry;->removeExtension(Ljava/lang/Class;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtCountHint;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/youtube/YtCountHint;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/FeedLinkEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/google/gdata/data/youtube/FeedLinkEntry;, "Lcom/google/gdata/data/youtube/FeedLinkEntry<TT;>;"
    if-nez p1, :cond_0

    .line 171
    const-class v0, Lcom/google/gdata/data/youtube/YtDescription;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/FeedLinkEntry;->removeExtension(Ljava/lang/Class;)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtDescription;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtDescription;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/FeedLinkEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setFeedLink(Lcom/google/gdata/data/extensions/FeedLink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/extensions/FeedLink",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/google/gdata/data/youtube/FeedLinkEntry;, "Lcom/google/gdata/data/youtube/FeedLinkEntry<TT;>;"
    .local p1, "feedLink":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<*>;"
    if-nez p1, :cond_0

    .line 72
    const-class v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/FeedLinkEntry;->removeExtension(Ljava/lang/Class;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/FeedLinkEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setThumbnail(Lcom/google/gdata/data/media/mediarss/MediaThumbnail;)V
    .locals 1
    .param p1, "thumbnail"    # Lcom/google/gdata/data/media/mediarss/MediaThumbnail;

    .prologue
    .line 143
    .local p0, "this":Lcom/google/gdata/data/youtube/FeedLinkEntry;, "Lcom/google/gdata/data/youtube/FeedLinkEntry<TT;>;"
    if-nez p1, :cond_0

    .line 144
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/FeedLinkEntry;->removeExtension(Ljava/lang/Class;)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/FeedLinkEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method
