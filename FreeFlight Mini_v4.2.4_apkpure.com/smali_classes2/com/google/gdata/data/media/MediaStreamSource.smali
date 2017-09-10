.class public Lcom/google/gdata/data/media/MediaStreamSource;
.super Lcom/google/gdata/data/media/BaseMediaSource;
.source "MediaStreamSource.java"


# instance fields
.field private mediaStream:Ljava/io/InputStream;

.field private sharedMediaStreamStart:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "mediaStream"    # Ljava/io/InputStream;
    .param p2, "mediaType"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/data/media/MediaStreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/google/gdata/data/DateTime;J)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/google/gdata/data/DateTime;J)V
    .locals 2
    .param p1, "mediaStream"    # Ljava/io/InputStream;
    .param p2, "mediaType"    # Ljava/lang/String;
    .param p3, "lastModified"    # Lcom/google/gdata/data/DateTime;
    .param p4, "contentLength"    # J

    .prologue
    .line 44
    invoke-direct {p0, p2}, Lcom/google/gdata/data/media/BaseMediaSource;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/google/gdata/data/media/MediaStreamSource;->mediaStream:Ljava/io/InputStream;

    .line 46
    iput-object p3, p0, Lcom/google/gdata/data/media/MediaStreamSource;->lastModified:Lcom/google/gdata/data/DateTime;

    .line 47
    iput-wide p4, p0, Lcom/google/gdata/data/media/MediaStreamSource;->contentLength:J

    .line 49
    instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Ljavax/mail/internet/SharedInputStream;

    .end local p1    # "mediaStream":Ljava/io/InputStream;
    invoke-interface {p1}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/gdata/data/media/MediaStreamSource;->sharedMediaStreamStart:J

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 63
    iget-object v1, p0, Lcom/google/gdata/data/media/MediaStreamSource;->mediaStream:Ljava/io/InputStream;

    instance-of v1, v1, Ljavax/mail/internet/SharedInputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/gdata/data/media/MediaStreamSource;->mediaStream:Ljava/io/InputStream;

    check-cast v1, Ljavax/mail/internet/SharedInputStream;

    iget-wide v2, p0, Lcom/google/gdata/data/media/MediaStreamSource;->sharedMediaStreamStart:J

    const-wide/16 v4, -0x1

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    .line 67
    .local v0, "returnStream":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 63
    .end local v0    # "returnStream":Ljava/io/InputStream;
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaStreamSource;->mediaStream:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot write to MediaStreamSource"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
