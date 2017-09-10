.class public Lorg/mortbay/io/bio/SocketEndPoint;
.super Lorg/mortbay/io/bio/StreamEndPoint;
.source "SocketEndPoint.java"


# instance fields
.field final _local:Ljava/net/InetSocketAddress;

.field final _remote:Ljava/net/InetSocketAddress;

.field final _socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/bio/StreamEndPoint;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 45
    iput-object p1, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    .line 46
    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    .line 47
    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    .line 48
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 75
    iput-object v1, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_in:Ljava/io/InputStream;

    .line 76
    iput-object v1, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_out:Ljava/io/OutputStream;

    .line 77
    return-void
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    const-string v0, "0.0.0.0"

    .line 89
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    const-string v0, "0.0.0.0"

    .line 101
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, -0x1

    .line 112
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v2, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-nez v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-object v1

    .line 123
    :cond_1
    iget-object v2, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 124
    .local v0, "addr":Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 145
    const/4 v0, -0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lorg/mortbay/io/bio/StreamEndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 66
    :cond_0
    return-void
.end method
