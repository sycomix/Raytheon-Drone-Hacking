.class public Lorg/mortbay/io/nio/IndirectNIOBuffer;
.super Lorg/mortbay/io/ByteArrayBuffer;
.source "IndirectNIOBuffer.java"

# interfaces
.implements Lorg/mortbay/io/nio/NIOBuffer;


# instance fields
.field protected _buf:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 27
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(IZ)V

    .line 28
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 29
    iget-object v0, p0, Lorg/mortbay/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 30
    iget-object v0, p0, Lorg/mortbay/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/mortbay/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 31
    iget-object v0, p0, Lorg/mortbay/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/IndirectNIOBuffer;->_bytes:[B

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "immutable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 37
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(IZ)V

    .line 38
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 37
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 40
    :cond_1
    iput-object p1, p0, Lorg/mortbay/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/nio/IndirectNIOBuffer;->setGetIndex(I)V

    .line 42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/nio/IndirectNIOBuffer;->setPutIndex(I)V

    .line 43
    iget-object v0, p0, Lorg/mortbay/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/IndirectNIOBuffer;->_bytes:[B

    .line 44
    return-void
.end method


# virtual methods
.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/mortbay/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
