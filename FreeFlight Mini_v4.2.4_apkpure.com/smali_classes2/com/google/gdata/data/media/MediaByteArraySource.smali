.class public Lcom/google/gdata/data/media/MediaByteArraySource;
.super Lcom/google/gdata/data/media/BaseMediaSource;
.source "MediaByteArraySource.java"


# instance fields
.field private mediaBytes:[B


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 2
    .param p1, "mediaBytes"    # [B
    .param p2, "mediaType"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p2}, Lcom/google/gdata/data/media/BaseMediaSource;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/google/gdata/data/media/MediaByteArraySource;->mediaBytes:[B

    .line 46
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/gdata/data/media/MediaByteArraySource;->contentLength:J

    .line 47
    invoke-static {}, Lcom/google/gdata/data/DateTime;->now()Lcom/google/gdata/data/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/media/MediaByteArraySource;->lastModified:Lcom/google/gdata/data/DateTime;

    .line 48
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/gdata/data/media/MediaByteArraySource;->mediaBytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot write to MediaSource"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
