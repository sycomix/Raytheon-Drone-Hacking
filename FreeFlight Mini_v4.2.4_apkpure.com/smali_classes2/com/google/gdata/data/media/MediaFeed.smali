.class public abstract Lcom/google/gdata/data/media/MediaFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "MediaFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/google/gdata/data/BaseFeed;",
        "E:",
        "Lcom/google/gdata/data/BaseEntry;",
        ">",
        "Lcom/google/gdata/data/BaseFeed",
        "<TF;TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/google/gdata/data/media/MediaFeed;, "Lcom/google/gdata/data/media/MediaFeed<TF;TE;>;"
    .local p1, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 43
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TE;>;",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/google/gdata/data/media/MediaFeed;, "Lcom/google/gdata/data/media/MediaFeed<TF;TE;>;"
    .local p1, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    .local p2, "sourceFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 48
    return-void
.end method


# virtual methods
.method public insert(Lcom/google/gdata/data/media/MediaSource;)Lcom/google/gdata/data/BaseEntry;
    .locals 1
    .param p1, "media"    # Lcom/google/gdata/data/media/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/media/MediaSource;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/google/gdata/data/media/MediaFeed;, "Lcom/google/gdata/data/media/MediaFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaFeed;->entryClass:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/media/MediaFeed;->insert(Lcom/google/gdata/data/media/MediaSource;Ljava/lang/Class;)Lcom/google/gdata/data/BaseEntry;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/google/gdata/data/media/MediaSource;Ljava/lang/Class;)Lcom/google/gdata/data/BaseEntry;
    .locals 4
    .param p1, "media"    # Lcom/google/gdata/data/media/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TE;>(",
            "Lcom/google/gdata/data/media/MediaSource;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/google/gdata/data/media/MediaFeed;, "Lcom/google/gdata/data/media/MediaFeed<TF;TE;>;"
    .local p2, "mediaEntryClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v2, p0, Lcom/google/gdata/data/media/MediaFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v2, v2, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    if-nez v2, :cond_0

    .line 99
    new-instance v2, Lcom/google/gdata/util/ServiceException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->entryNotAssociated:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v2, v3}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v2

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/media/MediaFeed;->getEntryPostLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 103
    .local v0, "postLink":Lcom/google/gdata/data/Link;
    if-nez v0, :cond_1

    .line 104
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Media cannot be inserted"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "postUrl":Ljava/net/URL;
    iget-object v2, p0, Lcom/google/gdata/data/media/MediaFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v2, v2, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    check-cast v2, Lcom/google/gdata/client/media/MediaService;

    invoke-virtual {v2, v1, p2, p1}, Lcom/google/gdata/client/media/MediaService;->insert(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/media/MediaSource;)Lcom/google/gdata/data/IEntry;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/BaseEntry;

    return-object v2
.end method

.method public setService(Lcom/google/gdata/client/Service;)V
    .locals 2
    .param p1, "v"    # Lcom/google/gdata/client/Service;

    .prologue
    .line 53
    .local p0, "this":Lcom/google/gdata/data/media/MediaFeed;, "Lcom/google/gdata/data/media/MediaFeed<TF;TE;>;"
    instance-of v0, p1, Lcom/google/gdata/client/media/MediaService;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Service does not support media"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseFeed;->setService(Lcom/google/gdata/client/Service;)V

    .line 57
    return-void
.end method
