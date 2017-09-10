.class public Lcom/google/gdata/data/media/MediaSource$Output;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/media/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Output"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeTo(Lcom/google/gdata/data/media/MediaSource;Ljava/io/OutputStream;)V
    .locals 7
    .param p0, "source"    # Lcom/google/gdata/data/media/MediaSource;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-interface {p0}, Lcom/google/gdata/data/media/MediaSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 81
    .local v4, "sourceStream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 82
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 85
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/16 v5, 0x800

    :try_start_0
    new-array v2, v5, [B

    .line 86
    .local v2, "buf":[B
    const/4 v3, 0x0

    .line 87
    .local v3, "bytesRead":I
    :goto_0
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v0, v2, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_0

    .line 88
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 92
    .end local v2    # "buf":[B
    .end local v3    # "bytesRead":I
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    throw v5

    .line 90
    .restart local v2    # "buf":[B
    .restart local v3    # "bytesRead":I
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 94
    return-void
.end method
