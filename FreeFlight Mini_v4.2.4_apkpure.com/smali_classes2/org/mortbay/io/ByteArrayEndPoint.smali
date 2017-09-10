.class public Lorg/mortbay/io/ByteArrayEndPoint;
.super Ljava/lang/Object;
.source "ByteArrayEndPoint.java"

# interfaces
.implements Lorg/mortbay/io/EndPoint;


# instance fields
.field _closed:Z

.field _growOutput:Z

.field _in:Lorg/mortbay/io/ByteArrayBuffer;

.field _inBytes:[B

.field _nonBlocking:Z

.field _out:Lorg/mortbay/io/ByteArrayBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "outputSize"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_inBytes:[B

    .line 69
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([B)V

    iput-object v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    .line 70
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v0, p2}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    .line 71
    return-void
.end method


# virtual methods
.method public blockReadable(J)Z
    .locals 1
    .param p1, "millisecs"    # J

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public blockWritable(J)Z
    .locals 1
    .param p1, "millisecs"    # J

    .prologue
    .line 132
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
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_closed:Z

    .line 150
    return-void
.end method

.method public fill(Lorg/mortbay/io/Buffer;)I
    .locals 3
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 158
    iget-boolean v2, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_closed:Z

    if-eqz v2, :cond_0

    .line 159
    new-instance v1, Ljava/io/IOException;

    const-string v2, "CLOSED"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_0
    iget-object v2, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    if-nez v2, :cond_2

    .line 166
    :cond_1
    :goto_0
    return v1

    .line 162
    :cond_2
    iget-object v2, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/mortbay/io/ByteArrayBuffer;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 163
    iget-boolean v2, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_nonBlocking:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 164
    :cond_3
    iget-object v1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-interface {p1, v1}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    move-result v0

    .line 165
    .local v0, "len":I
    iget-object v1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v1, v0}, Lorg/mortbay/io/ByteArrayBuffer;->skip(I)I

    move v1, v0

    .line 166
    goto :goto_0
.end method

.method public flush(Lorg/mortbay/io/Buffer;)I
    .locals 5
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-boolean v2, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_closed:Z

    if-eqz v2, :cond_0

    .line 176
    new-instance v2, Ljava/io/IOException;

    const-string v3, "CLOSED"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_0
    iget-boolean v2, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_growOutput:Z

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    iget-object v3, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v3}, Lorg/mortbay/io/ByteArrayBuffer;->space()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 179
    iget-object v2, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/mortbay/io/ByteArrayBuffer;->compact()V

    .line 181
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    iget-object v3, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v3}, Lorg/mortbay/io/ByteArrayBuffer;->space()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 183
    new-instance v1, Lorg/mortbay/io/ByteArrayBuffer;

    iget-object v2, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/mortbay/io/ByteArrayBuffer;->putIndex()I

    move-result v2

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    .line 185
    .local v1, "n":Lorg/mortbay/io/ByteArrayBuffer;
    iget-object v2, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v4}, Lorg/mortbay/io/ByteArrayBuffer;->putIndex()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/mortbay/io/ByteArrayBuffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mortbay/io/ByteArrayBuffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 186
    iget-object v2, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/mortbay/io/ByteArrayBuffer;->getIndex()I

    move-result v2

    if-lez v2, :cond_1

    .line 188
    invoke-virtual {v1}, Lorg/mortbay/io/ByteArrayBuffer;->mark()V

    .line 189
    iget-object v2, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/mortbay/io/ByteArrayBuffer;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mortbay/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 191
    :cond_1
    iput-object v1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    .line 194
    .end local v1    # "n":Lorg/mortbay/io/ByteArrayBuffer;
    :cond_2
    iget-object v2, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v2, p1}, Lorg/mortbay/io/ByteArrayBuffer;->put(Lorg/mortbay/io/Buffer;)I

    move-result v0

    .line 195
    .local v0, "len":I
    invoke-interface {p1, v0}, Lorg/mortbay/io/Buffer;->skip(I)I

    .line 196
    return v0
.end method

.method public flush(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)I
    .locals 3
    .param p1, "header"    # Lorg/mortbay/io/Buffer;
    .param p2, "buffer"    # Lorg/mortbay/io/Buffer;
    .param p3, "trailer"    # Lorg/mortbay/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-boolean v1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_closed:Z

    if-eqz v1, :cond_0

    .line 206
    new-instance v1, Ljava/io/IOException;

    const-string v2, "CLOSED"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_0
    const/4 v0, 0x0

    .line 210
    .local v0, "flushed":I
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 211
    invoke-virtual {p0, p1}, Lorg/mortbay/io/ByteArrayEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v0

    .line 213
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 215
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 216
    invoke-virtual {p0, p2}, Lorg/mortbay/io/ByteArrayEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 220
    :cond_4
    if-eqz p3, :cond_5

    invoke-interface {p3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 222
    invoke-virtual {p0, p3}, Lorg/mortbay/io/ByteArrayEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 227
    :cond_5
    return v0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    return-void
.end method

.method public getIn()Lorg/mortbay/io/ByteArrayBuffer;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    return-object v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public getOut()Lorg/mortbay/io/ByteArrayBuffer;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    return-object v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_inBytes:[B

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_nonBlocking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBufferingInput()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public isBufferingOutput()Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public isBufferred()Z
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public isGrowOutput()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_growOutput:Z

    return v0
.end method

.method public isNonBlocking()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_nonBlocking:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_closed:Z

    .line 237
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/ByteArrayBuffer;->clear()V

    .line 238
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/ByteArrayBuffer;->clear()V

    .line 239
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_inBytes:[B

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_inBytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 241
    :cond_0
    return-void
.end method

.method public setGrowOutput(Z)V
    .locals 0
    .param p1, "growOutput"    # Z

    .prologue
    .line 344
    iput-boolean p1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_growOutput:Z

    .line 345
    return-void
.end method

.method public setIn(Lorg/mortbay/io/ByteArrayBuffer;)V
    .locals 0
    .param p1, "in"    # Lorg/mortbay/io/ByteArrayBuffer;

    .prologue
    .line 87
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    .line 88
    return-void
.end method

.method public setNonBlocking(Z)V
    .locals 0
    .param p1, "nonBlocking"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_nonBlocking:Z

    .line 60
    return-void
.end method

.method public setOut(Lorg/mortbay/io/ByteArrayBuffer;)V
    .locals 0
    .param p1, "out"    # Lorg/mortbay/io/ByteArrayBuffer;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    .line 104
    return-void
.end method

.method public shutdownOutput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    return-void
.end method
