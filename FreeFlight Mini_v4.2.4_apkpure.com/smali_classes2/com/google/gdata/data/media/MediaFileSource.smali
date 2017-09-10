.class public Lcom/google/gdata/data/media/MediaFileSource;
.super Lcom/google/gdata/data/media/BaseMediaSource;
.source "MediaFileSource.java"


# instance fields
.field private mediaFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p1, "mediaFile"    # Ljava/io/File;
    .param p2, "mediaType"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p2}, Lcom/google/gdata/data/media/BaseMediaSource;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/google/gdata/data/media/MediaFileSource;->mediaFile:Ljava/io/File;

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/gdata/data/media/MediaFileSource;->contentLength:J

    .line 46
    new-instance v0, Lcom/google/gdata/data/DateTime;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/gdata/data/DateTime;-><init>(J)V

    iput-object v0, p0, Lcom/google/gdata/data/media/MediaFileSource;->lastModified:Lcom/google/gdata/data/DateTime;

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/media/MediaFileSource;->name:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/gdata/data/media/MediaFileSource;->mediaFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getMediaFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaFileSource;->mediaFile:Ljava/io/File;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot write to MediaFileSource"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
