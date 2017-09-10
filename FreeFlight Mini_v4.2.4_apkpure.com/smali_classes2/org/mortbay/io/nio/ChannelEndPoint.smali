.class public Lorg/mortbay/io/nio/ChannelEndPoint;
.super Ljava/lang/Object;
.source "ChannelEndPoint.java"

# interfaces
.implements Lorg/mortbay/io/EndPoint;


# instance fields
.field protected final _channel:Ljava/nio/channels/ByteChannel;

.field protected final _gather2:[Ljava/nio/ByteBuffer;

.field protected final _local:Ljava/net/InetSocketAddress;

.field protected final _remote:Ljava/net/InetSocketAddress;

.field protected final _socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ByteChannel;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/ByteChannel;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    .line 53
    iput-object p1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    .line 54
    instance-of v0, p1, Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    .line 56
    check-cast p1, Ljava/nio/channels/SocketChannel;

    .end local p1    # "channel":Ljava/nio/channels/ByteChannel;
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    .line 57
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    .line 58
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    .line 66
    :goto_0
    return-void

    .line 62
    .restart local p1    # "channel":Ljava/nio/channels/ByteChannel;
    :cond_0
    iput-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    .line 63
    iput-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    .line 64
    iput-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    goto :goto_0
.end method


# virtual methods
.method public blockReadable(J)Z
    .locals 1
    .param p1, "millisecs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public blockWritable(J)Z
    .locals 1
    .param p1, "millisecs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    .line 114
    return-void
.end method

.method public fill(Lorg/mortbay/io/Buffer;)I
    .locals 6
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v1

    .line 122
    .local v1, "buf":Lorg/mortbay/io/Buffer;
    const/4 v2, 0x0

    .line 123
    .local v2, "len":I
    instance-of v4, v1, Lorg/mortbay/io/nio/NIOBuffer;

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 125
    check-cast v3, Lorg/mortbay/io/nio/NIOBuffer;

    .line 126
    .local v3, "nbuf":Lorg/mortbay/io/nio/NIOBuffer;
    invoke-interface {v3}, Lorg/mortbay/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 127
    .local v0, "bbuf":Ljava/nio/ByteBuffer;
    monitor-enter v3

    .line 131
    :try_start_0
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    iget-object v4, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v4, v0}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 133
    if-gez v2, :cond_0

    .line 134
    iget-object v4, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v4}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-interface {p1, v4}, Lorg/mortbay/io/Buffer;->setPutIndex(I)V

    .line 139
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    monitor-exit v3

    .line 148
    return v2

    .line 138
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-interface {p1, v5}, Lorg/mortbay/io/Buffer;->setPutIndex(I)V

    .line 139
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v4

    .line 141
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 145
    .end local v0    # "bbuf":Ljava/nio/ByteBuffer;
    .end local v3    # "nbuf":Lorg/mortbay/io/nio/NIOBuffer;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Not Implemented"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public flush(Lorg/mortbay/io/Buffer;)I
    .locals 8
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v2

    .line 157
    .local v2, "buf":Lorg/mortbay/io/Buffer;
    const/4 v3, 0x0

    .line 158
    .local v3, "len":I
    instance-of v5, v2, Lorg/mortbay/io/nio/NIOBuffer;

    if-eqz v5, :cond_3

    move-object v4, v2

    .line 160
    check-cast v4, Lorg/mortbay/io/nio/NIOBuffer;

    .line 161
    .local v4, "nbuf":Lorg/mortbay/io/nio/NIOBuffer;
    invoke-interface {v4}, Lorg/mortbay/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 164
    .local v1, "bbuf":Ljava/nio/ByteBuffer;
    monitor-enter v1

    .line 168
    :try_start_0
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 169
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 170
    iget-object v5, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v5, v1}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 174
    if-lez v3, :cond_0

    .line 175
    :try_start_1
    invoke-interface {p1, v3}, Lorg/mortbay/io/Buffer;->skip(I)I

    .line 176
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 179
    monitor-exit v1

    .line 192
    .end local v1    # "bbuf":Ljava/nio/ByteBuffer;
    .end local v4    # "nbuf":Lorg/mortbay/io/nio/NIOBuffer;
    :cond_1
    :goto_0
    return v3

    .line 174
    .restart local v1    # "bbuf":Ljava/nio/ByteBuffer;
    .restart local v4    # "nbuf":Lorg/mortbay/io/nio/NIOBuffer;
    :catchall_0
    move-exception v5

    if-lez v3, :cond_2

    .line 175
    invoke-interface {p1, v3}, Lorg/mortbay/io/Buffer;->skip(I)I

    .line 176
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v5

    .line 179
    :catchall_1
    move-exception v5

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5

    .line 181
    .end local v1    # "bbuf":Ljava/nio/ByteBuffer;
    .end local v4    # "nbuf":Lorg/mortbay/io/nio/NIOBuffer;
    :cond_3
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v5

    if-eqz v5, :cond_4

    .line 183
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v5

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v6

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v7

    invoke-static {v5, v6, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 184
    .local v0, "b":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v5, v0}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 185
    if-lez v3, :cond_1

    .line 186
    invoke-interface {p1, v3}, Lorg/mortbay/io/Buffer;->skip(I)I

    goto :goto_0

    .line 190
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    :cond_4
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Not Implemented"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public flush(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)I
    .locals 10
    .param p1, "header"    # Lorg/mortbay/io/Buffer;
    .param p2, "buffer"    # Lorg/mortbay/io/Buffer;
    .param p3, "trailer"    # Lorg/mortbay/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 200
    const/4 v5, 0x0

    .line 202
    .local v5, "length":I
    if-nez p1, :cond_4

    move-object v2, v3

    .line 203
    .local v2, "buf0":Lorg/mortbay/io/Buffer;
    :goto_0
    if-nez p2, :cond_5

    .line 205
    .local v3, "buf1":Lorg/mortbay/io/Buffer;
    :goto_1
    iget-object v8, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    instance-of v8, v8, Ljava/nio/channels/GatheringByteChannel;

    if-eqz v8, :cond_9

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v8

    if-eqz v8, :cond_9

    instance-of v8, p1, Lorg/mortbay/io/nio/NIOBuffer;

    if-eqz v8, :cond_9

    if-eqz p2, :cond_9

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v8

    if-eqz v8, :cond_9

    instance-of v8, p2, Lorg/mortbay/io/nio/NIOBuffer;

    if-eqz v8, :cond_9

    move-object v6, v2

    .line 209
    check-cast v6, Lorg/mortbay/io/nio/NIOBuffer;

    .line 210
    .local v6, "nbuf0":Lorg/mortbay/io/nio/NIOBuffer;
    invoke-interface {v6}, Lorg/mortbay/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "bbuf0":Ljava/nio/ByteBuffer;
    move-object v7, v3

    .line 211
    check-cast v7, Lorg/mortbay/io/nio/NIOBuffer;

    .line 212
    .local v7, "nbuf1":Lorg/mortbay/io/nio/NIOBuffer;
    invoke-interface {v7}, Lorg/mortbay/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 214
    .local v1, "bbuf1":Ljava/nio/ByteBuffer;
    monitor-enter p0

    .line 217
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 219
    :try_start_1
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 224
    :try_start_2
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 226
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 229
    iget-object v8, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    .line 230
    iget-object v8, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    const/4 v9, 0x1

    aput-object v1, v8, v9

    .line 233
    iget-object v8, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    check-cast v8, Ljava/nio/channels/GatheringByteChannel;

    iget-object v9, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    invoke-interface {v8, v9}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    long-to-int v5, v8

    .line 235
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v4

    .line 236
    .local v4, "hl":I
    if-le v5, v4, :cond_6

    .line 238
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->clear()V

    .line 239
    sub-int v8, v5, v4

    invoke-interface {p2, v8}, Lorg/mortbay/io/Buffer;->skip(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    :cond_0
    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 251
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-interface {p1, v8}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    .line 252
    :cond_1
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v8

    if-nez v8, :cond_2

    .line 253
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-interface {p2, v8}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    .line 255
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 256
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 257
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 258
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 260
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 261
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 262
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 296
    .end local v0    # "bbuf0":Ljava/nio/ByteBuffer;
    .end local v1    # "bbuf1":Ljava/nio/ByteBuffer;
    .end local v4    # "hl":I
    .end local v6    # "nbuf0":Lorg/mortbay/io/nio/NIOBuffer;
    .end local v7    # "nbuf1":Lorg/mortbay/io/nio/NIOBuffer;
    :cond_3
    :goto_3
    return v5

    .line 202
    .end local v2    # "buf0":Lorg/mortbay/io/Buffer;
    .end local v3    # "buf1":Lorg/mortbay/io/Buffer;
    :cond_4
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v2

    goto/16 :goto_0

    .line 203
    .restart local v2    # "buf0":Lorg/mortbay/io/Buffer;
    :cond_5
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v3

    goto/16 :goto_1

    .line 241
    .restart local v0    # "bbuf0":Ljava/nio/ByteBuffer;
    .restart local v1    # "bbuf1":Ljava/nio/ByteBuffer;
    .restart local v3    # "buf1":Lorg/mortbay/io/Buffer;
    .restart local v4    # "hl":I
    .restart local v6    # "nbuf0":Lorg/mortbay/io/nio/NIOBuffer;
    .restart local v7    # "nbuf1":Lorg/mortbay/io/nio/NIOBuffer;
    :cond_6
    if-lez v5, :cond_0

    .line 243
    :try_start_6
    invoke-interface {p1, v5}, Lorg/mortbay/io/Buffer;->skip(I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 250
    .end local v4    # "hl":I
    :catchall_0
    move-exception v8

    :try_start_7
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v9

    if-nez v9, :cond_7

    .line 251
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-interface {p1, v9}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    .line 252
    :cond_7
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v9

    if-nez v9, :cond_8

    .line 253
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-interface {p2, v9}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    .line 255
    :cond_8
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 256
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 257
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 258
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v8

    .line 260
    :catchall_1
    move-exception v8

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v8

    .line 261
    :catchall_2
    move-exception v8

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v8

    .line 262
    :catchall_3
    move-exception v8

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v8

    .line 266
    .end local v0    # "bbuf0":Ljava/nio/ByteBuffer;
    .end local v1    # "bbuf1":Ljava/nio/ByteBuffer;
    .end local v6    # "nbuf0":Lorg/mortbay/io/nio/NIOBuffer;
    .end local v7    # "nbuf1":Lorg/mortbay/io/nio/NIOBuffer;
    :cond_9
    if-eqz p1, :cond_b

    .line 268
    if-eqz p2, :cond_a

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v8

    if-lez v8, :cond_a

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->space()I

    move-result v8

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v9

    if-le v8, v9, :cond_a

    .line 270
    invoke-interface {p1, p2}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 271
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->clear()V

    .line 273
    :cond_a
    if-eqz p3, :cond_b

    invoke-interface {p3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v8

    if-lez v8, :cond_b

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->space()I

    move-result v8

    invoke-interface {p3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v9

    if-le v8, v9, :cond_b

    .line 275
    invoke-interface {p1, p3}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 276
    invoke-interface {p3}, Lorg/mortbay/io/Buffer;->clear()V

    .line 281
    :cond_b
    if-eqz p1, :cond_c

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v8

    if-lez v8, :cond_c

    .line 282
    invoke-virtual {p0, p1}, Lorg/mortbay/io/nio/ChannelEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v5

    .line 285
    :cond_c
    if-eqz p1, :cond_d

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v8

    if-nez v8, :cond_e

    :cond_d
    if-eqz p2, :cond_e

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v8

    if-lez v8, :cond_e

    .line 287
    invoke-virtual {p0, p2}, Lorg/mortbay/io/nio/ChannelEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v8

    add-int/2addr v5, v8

    .line 290
    :cond_e
    if-eqz p1, :cond_f

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v8

    if-nez v8, :cond_3

    :cond_f
    if-eqz p2, :cond_10

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v8

    if-nez v8, :cond_3

    :cond_10
    if-eqz p3, :cond_3

    invoke-interface {p3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 293
    invoke-virtual {p0, p3}, Lorg/mortbay/io/nio/ChannelEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_3
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    return-void
.end method

.method public getChannel()Ljava/nio/channels/ByteChannel;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    return-object v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 320
    :goto_0
    return-object v0

    .line 317
    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    :cond_1
    const-string v0, "0.0.0.0"

    goto :goto_0

    .line 320
    :cond_2
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 335
    :goto_0
    return-object v0

    .line 332
    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    :cond_1
    const-string v0, "0.0.0.0"

    goto :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 345
    const/4 v0, 0x0

    .line 348
    :goto_0
    return v0

    .line 346
    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_1

    .line 347
    const/4 v0, -0x1

    goto :goto_0

    .line 348
    :cond_1
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 357
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-object v0

    .line 360
    :cond_1
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    .line 362
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 371
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-object v0

    .line 374
    :cond_1
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    .line 376
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemotePort()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 385
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v1, :cond_1

    .line 386
    const/4 v0, 0x0

    .line 390
    :cond_0
    :goto_0
    return v0

    .line 388
    :cond_1
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    instance-of v0, v0, Ljava/nio/channels/SelectableChannel;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBufferingInput()Z
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public isBufferingOutput()Z
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method public isBufferred()Z
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    instance-of v1, v1, Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    .line 101
    .local v0, "socket":Ljava/net/Socket;
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 104
    .end local v0    # "socket":Ljava/net/Socket;
    :cond_0
    return-void
.end method
