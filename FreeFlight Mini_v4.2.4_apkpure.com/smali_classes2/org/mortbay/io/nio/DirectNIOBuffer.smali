.class public Lorg/mortbay/io/nio/DirectNIOBuffer;
.super Lorg/mortbay/io/AbstractBuffer;
.source "DirectNIOBuffer.java"

# interfaces
.implements Lorg/mortbay/io/nio/NIOBuffer;


# instance fields
.field protected _buf:Ljava/nio/ByteBuffer;

.field private _in:Ljava/nio/channels/ReadableByteChannel;

.field private _inStream:Ljava/io/InputStream;

.field private _out:Ljava/nio/channels/WritableByteChannel;

.field private _outStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 46
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 47
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 48
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 49
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 67
    const/4 v1, 0x1

    invoke-direct {p0, v1, v7}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 68
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 69
    .local v6, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 70
    .local v0, "fc":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {p0, v7}, Lorg/mortbay/io/nio/DirectNIOBuffer;->setGetIndex(I)V

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lorg/mortbay/io/nio/DirectNIOBuffer;->setPutIndex(I)V

    .line 73
    iput v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_access:I

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "immutable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 54
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 54
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 57
    :cond_1
    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->setGetIndex(I)V

    .line 59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->setPutIndex(I)V

    .line 60
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public peek(I)B
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public peek(I[BII)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 102
    move v0, p4

    .line 103
    .local v0, "l":I
    add-int v2, p1, v0

    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 105
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result v2

    sub-int v0, v2, p1

    .line 106
    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    if-ltz v0, :cond_0

    .line 114
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 115
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2, p3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v1, v0

    .line 122
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v1
.end method

.method public poke(ILorg/mortbay/io/Buffer;)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/mortbay/io/Buffer;

    .prologue
    const/4 v7, 0x0

    .line 136
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "READONLY"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 138
    :cond_0
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v0

    .line 139
    .local v0, "array":[B
    if-eqz v0, :cond_1

    .line 141
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v5

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v6

    invoke-virtual {p0, p1, v0, v5, v6}, Lorg/mortbay/io/nio/DirectNIOBuffer;->poke(I[BII)I

    move-result v1

    .line 175
    :goto_0
    return v1

    .line 146
    :cond_1
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v3

    .line 147
    .local v3, "src_buf":Lorg/mortbay/io/Buffer;
    instance-of v5, v3, Lorg/mortbay/io/nio/DirectNIOBuffer;

    if-eqz v5, :cond_4

    .line 149
    check-cast v3, Lorg/mortbay/io/nio/DirectNIOBuffer;

    .end local v3    # "src_buf":Lorg/mortbay/io/Buffer;
    iget-object v4, v3, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 150
    .local v4, "src_bytebuf":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    if-ne v4, v5, :cond_2

    .line 151
    iget-object v5, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 154
    :cond_2
    :try_start_0
    iget-object v5, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    iget-object v5, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 157
    .local v2, "space":I
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    .line 158
    .local v1, "length":I
    if-le v1, v2, :cond_3

    .line 159
    move v1, v2

    .line 161
    :cond_3
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 162
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 164
    iget-object v5, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v5, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 171
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 169
    .end local v1    # "length":I
    .end local v2    # "space":I
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 171
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v5

    .line 175
    .end local v4    # "src_bytebuf":Ljava/nio/ByteBuffer;
    .restart local v3    # "src_buf":Lorg/mortbay/io/Buffer;
    :cond_4
    invoke-super {p0, p1, p2}, Lorg/mortbay/io/AbstractBuffer;->poke(ILorg/mortbay/io/Buffer;)I

    move-result v1

    goto :goto_0
.end method

.method public poke(I[BII)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 181
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "READONLY"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "index<0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "<0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_1
    add-int v1, p1, p4

    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 187
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result v1

    sub-int p4, v1, p1

    .line 188
    if-gez p4, :cond_2

    .line 189
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "index>capacity(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 198
    .local v0, "space":I
    if-le p4, v0, :cond_3

    .line 199
    move p4, v0

    .line 200
    :cond_3
    if-lez p4, :cond_4

    .line 201
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_4
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return p4

    .end local v0    # "space":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v1
.end method

.method public poke(IB)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "b"    # B

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "index<0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "<0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "index>capacity(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 132
    return-void
.end method

.method public readFrom(Ljava/io/InputStream;I)I
    .locals 11
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 219
    iget-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v7}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    if-eq p1, v7, :cond_1

    .line 221
    :cond_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v7

    iput-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 222
    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 225
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->space()I

    move-result v7

    if-le p2, v7, :cond_3

    .line 226
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->space()I

    move-result p2

    .line 227
    :cond_3
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->putIndex()I

    move-result v5

    .line 231
    .local v5, "p":I
    const/4 v2, 0x0

    .local v2, "len":I
    const/4 v6, 0x0

    .local v6, "total":I
    move v0, p2

    .line 232
    .local v0, "available":I
    const/4 v3, 0x0

    .local v3, "loop":I
    move v4, v3

    .line 233
    .end local v3    # "loop":I
    .local v4, "loop":I
    :goto_0
    if-ge v6, p2, :cond_c

    .line 235
    :try_start_0
    iget-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 236
    iget-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    add-int v8, v5, v0

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 237
    iget-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    iget-object v8, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-interface {v7, v8}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 238
    if-gez v2, :cond_6

    .line 240
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 241
    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, v4

    .line 257
    .end local v4    # "loop":I
    .restart local v3    # "loop":I
    :cond_4
    :goto_1
    if-gez v2, :cond_9

    if-nez v6, :cond_9

    .line 258
    const/4 v6, -0x1

    .line 270
    .end local v6    # "total":I
    iget-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v7}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_5

    .line 272
    iput-object v9, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 273
    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 275
    :cond_5
    iget-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 276
    iget-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_2
    return v6

    .line 244
    .end local v3    # "loop":I
    .restart local v4    # "loop":I
    .restart local v6    # "total":I
    :cond_6
    if-lez v2, :cond_8

    .line 246
    add-int/2addr v5, v2

    .line 247
    add-int/2addr v6, v2

    .line 248
    sub-int/2addr v0, v2

    .line 249
    :try_start_1
    invoke-virtual {p0, v5}, Lorg/mortbay/io/nio/DirectNIOBuffer;->setPutIndex(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 250
    const/4 v3, 0x0

    .line 254
    .end local v4    # "loop":I
    .restart local v3    # "loop":I
    :cond_7
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-lez v7, :cond_4

    move v4, v3

    .end local v3    # "loop":I
    .restart local v4    # "loop":I
    goto :goto_0

    .line 252
    :cond_8
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "loop":I
    .restart local v3    # "loop":I
    const/4 v7, 0x1

    if-le v4, v7, :cond_7

    goto :goto_1

    .line 270
    :cond_9
    iget-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v7}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_a

    .line 272
    iput-object v9, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 273
    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 275
    :cond_a
    iget-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 276
    iget-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 262
    .end local v3    # "loop":I
    .restart local v4    # "loop":I
    :catch_0
    move-exception v1

    move v3, v4

    .line 264
    .end local v4    # "loop":I
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "loop":I
    :goto_3
    const/4 v7, 0x0

    :try_start_3
    iput-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 265
    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 266
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 270
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    iget-object v8, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v8}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_b

    .line 272
    iput-object v9, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 273
    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 275
    :cond_b
    iget-object v8, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 276
    iget-object v8, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v7

    .line 270
    .end local v3    # "loop":I
    .restart local v4    # "loop":I
    :catchall_1
    move-exception v7

    move v3, v4

    .end local v4    # "loop":I
    .restart local v3    # "loop":I
    goto :goto_4

    .line 262
    :catch_1
    move-exception v1

    goto :goto_3

    .end local v3    # "loop":I
    .restart local v4    # "loop":I
    :cond_c
    move v3, v4

    .end local v4    # "loop":I
    .restart local v3    # "loop":I
    goto/16 :goto_1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v4, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v4}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    iget-object v5, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    if-eq v4, v5, :cond_1

    .line 285
    :cond_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v4

    iput-object v4, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    .line 286
    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    .line 289
    :cond_1
    iget-object v5, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    monitor-enter v5

    .line 293
    const/4 v2, 0x0

    .local v2, "loop":I
    move v3, v2

    .line 294
    .end local v2    # "loop":I
    .local v3, "loop":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->hasContent()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v4}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 296
    iget-object v4, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->getIndex()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 297
    iget-object v4, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->putIndex()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 298
    iget-object v4, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    iget-object v6, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-interface {v4, v6}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 299
    .local v1, "len":I
    if-gez v1, :cond_3

    move v2, v3

    .line 319
    .end local v1    # "len":I
    .end local v3    # "loop":I
    .restart local v2    # "loop":I
    :goto_1
    :try_start_1
    iget-object v4, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v4}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v4

    if-nez v4, :cond_2

    .line 321
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    .line 322
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    .line 324
    :cond_2
    iget-object v4, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 325
    iget-object v4, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 327
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 328
    return-void

    .line 301
    .end local v2    # "loop":I
    .restart local v1    # "len":I
    .restart local v3    # "loop":I
    :cond_3
    if-lez v1, :cond_5

    .line 303
    :try_start_2
    invoke-virtual {p0, v1}, Lorg/mortbay/io/nio/DirectNIOBuffer;->skip(I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    const/4 v2, 0x0

    .end local v3    # "loop":I
    .restart local v2    # "loop":I
    :cond_4
    move v3, v2

    .line 308
    .end local v2    # "loop":I
    .restart local v3    # "loop":I
    goto :goto_0

    .line 306
    :cond_5
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "loop":I
    .restart local v2    # "loop":I
    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    goto :goto_1

    .line 311
    .end local v1    # "len":I
    .end local v2    # "loop":I
    .restart local v3    # "loop":I
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    :try_start_3
    iput-object v4, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    .line 314
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    .line 315
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :try_start_4
    iget-object v6, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v6}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v6

    if-nez v6, :cond_6

    .line 321
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    .line 322
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    .line 324
    :cond_6
    iget-object v6, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 325
    iget-object v6, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v4

    .line 327
    .end local v3    # "loop":I
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .restart local v3    # "loop":I
    :cond_7
    move v2, v3

    .end local v3    # "loop":I
    .restart local v2    # "loop":I
    goto :goto_1
.end method
