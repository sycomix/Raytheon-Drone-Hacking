.class public abstract Lcom/google/gdata/data/media/BaseMediaSource;
.super Ljava/lang/Object;
.source "BaseMediaSource.java"

# interfaces
.implements Lcom/google/gdata/data/media/MediaSource;


# instance fields
.field protected contentLength:J

.field protected etag:Ljava/lang/String;

.field protected lastModified:Lcom/google/gdata/data/DateTime;

.field protected final mediaType:Ljava/lang/String;

.field protected name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "mediaType"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/gdata/data/media/BaseMediaSource;->contentLength:J

    .line 41
    iput-object p1, p0, Lcom/google/gdata/data/media/BaseMediaSource;->mediaType:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/google/gdata/data/media/BaseMediaSource;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/gdata/data/media/BaseMediaSource;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/gdata/data/media/BaseMediaSource;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/gdata/data/media/BaseMediaSource;->lastModified:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/gdata/data/media/BaseMediaSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setContentLength(J)V
    .locals 1
    .param p1, "contentLength"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/google/gdata/data/media/BaseMediaSource;->contentLength:J

    .line 56
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/gdata/data/media/BaseMediaSource;->etag:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setLastModified(Lcom/google/gdata/data/DateTime;)V
    .locals 0
    .param p1, "lastModified"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/gdata/data/media/BaseMediaSource;->lastModified:Lcom/google/gdata/data/DateTime;

    .line 51
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/gdata/data/media/BaseMediaSource;->name:Ljava/lang/String;

    return-void
.end method
