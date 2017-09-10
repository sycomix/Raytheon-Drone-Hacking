.class public Lcom/google/gdata/client/uploader/ByteArrayUploadData;
.super Ljava/lang/Object;
.source "ByteArrayUploadData.java"

# interfaces
.implements Lcom/google/gdata/client/uploader/UploadData;


# instance fields
.field private final buffer:[B

.field private final stream:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/gdata/client/uploader/ByteArrayUploadData;->buffer:[B

    .line 33
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/gdata/client/uploader/ByteArrayUploadData;->stream:Ljava/io/ByteArrayInputStream;

    .line 34
    return-void
.end method


# virtual methods
.method public length()J
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ByteArrayUploadData;->buffer:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "chunk"    # [B
    .param p2, "i"    # I
    .param p3, "length"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ByteArrayUploadData;->stream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([B)V
    .locals 1
    .param p1, "destination"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ByteArrayUploadData;->stream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 42
    return-void
.end method

.method public setPosition(J)V
    .locals 1
    .param p1, "position"    # J

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ByteArrayUploadData;->stream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 46
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ByteArrayUploadData;->stream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 47
    return-void
.end method
