.class public Lorg/mortbay/io/bio/StreamEndPoint;
.super Ljava/lang/Object;
.source "StreamEndPoint.java"

# interfaces
.implements Lorg/mortbay/io/EndPoint;


# instance fields
.field _in:Ljava/io/InputStream;

.field _out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/mortbay/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    .line 43
    iput-object p2, p0, Lorg/mortbay/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    .line 44
    return-void
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
    .line 53
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
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 91
    :cond_0
    iput-object v1, p0, Lorg/mortbay/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    .line 92
    iget-object v0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 94
    :cond_1
    iput-object v1, p0, Lorg/mortbay/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    .line 95
    return-void
.end method

.method public fill(Lorg/mortbay/io/Buffer;)I
    .locals 4
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 103
    iget-object v2, p0, Lorg/mortbay/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    if-nez v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->space()I

    move-result v1

    .line 107
    .local v1, "space":I
    if-gtz v1, :cond_2

    .line 109
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->hasContent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    new-instance v2, Ljava/io/IOException;

    const-string v3, "FULL"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_2
    iget-object v2, p0, Lorg/mortbay/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    invoke-interface {p1, v2, v1}, Lorg/mortbay/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result v0

    .line 116
    .local v0, "len":I
    goto :goto_0
.end method

.method public flush(Lorg/mortbay/io/Buffer;)I
    .locals 2
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v1, p0, Lorg/mortbay/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    .line 126
    const/4 v0, -0x1

    .line 131
    :goto_0
    return v0

    .line 127
    :cond_0
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    .line 128
    .local v0, "length":I
    if-lez v0, :cond_1

    .line 129
    iget-object v1, p0, Lorg/mortbay/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    invoke-interface {p1, v1}, Lorg/mortbay/io/Buffer;->writeTo(Ljava/io/OutputStream;)V

    .line 130
    :cond_1
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->clear()V

    goto :goto_0
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
    .line 139
    const/4 v1, 0x0

    .line 144
    .local v1, "len":I
    if-eqz p1, :cond_1

    .line 146
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    .line 147
    .local v2, "tw":I
    if-lez v2, :cond_1

    .line 149
    invoke-virtual {p0, p1}, Lorg/mortbay/io/bio/StreamEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v0

    .line 150
    .local v0, "f":I
    move v1, v0

    .line 151
    if-ge v0, v2, :cond_1

    move v0, v1

    .line 181
    .end local v0    # "f":I
    .end local v2    # "tw":I
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    if-eqz p2, :cond_3

    .line 158
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    .line 159
    .restart local v2    # "tw":I
    if-lez v2, :cond_3

    .line 161
    invoke-virtual {p0, p2}, Lorg/mortbay/io/bio/StreamEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v0

    .line 162
    .restart local v0    # "f":I
    if-gez v0, :cond_2

    .line 163
    if-lez v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 164
    :cond_2
    add-int/2addr v1, v0

    .line 165
    if-ge v0, v2, :cond_3

    move v0, v1

    .line 166
    goto :goto_0

    .line 170
    .end local v0    # "f":I
    .end local v2    # "tw":I
    :cond_3
    if-eqz p3, :cond_5

    .line 172
    invoke-interface {p3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    .line 173
    .restart local v2    # "tw":I
    if-lez v2, :cond_5

    .line 175
    invoke-virtual {p0, p3}, Lorg/mortbay/io/bio/StreamEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v0

    .line 176
    .restart local v0    # "f":I
    if-gez v0, :cond_4

    .line 177
    if-lez v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 178
    :cond_4
    add-int/2addr v1, v0

    .end local v0    # "f":I
    .end local v2    # "tw":I
    :cond_5
    move v0, v1

    .line 181
    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 277
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public isBufferingInput()Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public isBufferingOutput()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public isBufferred()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public final isClosed()Z
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/mortbay/io/bio/StreamEndPoint;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 256
    iput-object p1, p0, Lorg/mortbay/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    .line 257
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 268
    iput-object p1, p0, Lorg/mortbay/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    .line 269
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
    .line 82
    return-void
.end method
