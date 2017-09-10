.class public Lorg/mortbay/jetty/nio/BlockingChannelConnector;
.super Lorg/mortbay/jetty/nio/AbstractNIOConnector;
.source "BlockingChannelConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;
    }
.end annotation


# instance fields
.field private transient _acceptChannel:Ljava/nio/channels/ServerSocketChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/mortbay/jetty/nio/AbstractNIOConnector;-><init>()V

    .line 55
    return-void
.end method

.method static access$000(Lorg/mortbay/jetty/nio/BlockingChannelConnector;Lorg/mortbay/jetty/HttpConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/jetty/nio/BlockingChannelConnector;
    .param p1, "x1"    # Lorg/mortbay/jetty/HttpConnection;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->connectionOpened(Lorg/mortbay/jetty/HttpConnection;)V

    return-void
.end method

.method static access$100(Lorg/mortbay/jetty/nio/BlockingChannelConnector;Lorg/mortbay/jetty/HttpConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/jetty/nio/BlockingChannelConnector;
    .param p1, "x1"    # Lorg/mortbay/jetty/HttpConnection;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->connectionClosed(Lorg/mortbay/jetty/HttpConnection;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 4
    .param p1, "acceptorID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v3, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 88
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 89
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    .line 90
    .local v2, "socket":Ljava/net/Socket;
    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->configure(Ljava/net/Socket;)V

    .line 92
    new-instance v1, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;

    invoke-direct {v1, p0, v0}, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;-><init>(Lorg/mortbay/jetty/nio/BlockingChannelConnector;Ljava/nio/channels/ByteChannel;)V

    .line 93
    .local v1, "connection":Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;
    invoke-virtual {v1}, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->dispatch()V

    .line 94
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 81
    return-void
.end method

.method public customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V
    .locals 3
    .param p1, "endpoint"    # Lorg/mortbay/io/EndPoint;
    .param p2, "request"    # Lorg/mortbay/jetty/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p1

    check-cast v0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;

    .line 101
    .local v0, "connection":Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;
    iget v1, v0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->_sotimeout:I

    iget v2, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->_maxIdleTime:I

    if-eq v1, v2, :cond_0

    .line 103
    iget v1, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->_maxIdleTime:I

    iput v1, v0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->_sotimeout:I

    .line 104
    invoke-interface {p1}, Lorg/mortbay/io/EndPoint;->getTransport()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    iget v2, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->_maxIdleTime:I

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 107
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V

    .line 108
    invoke-interface {p1}, Lorg/mortbay/io/EndPoint;->getTransport()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->configure(Ljava/net/Socket;)V

    .line 109
    return-void
.end method

.method public getConnection()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    const/4 v0, -0x1

    .line 117
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 68
    iget-object v1, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 71
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->getPort()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 72
    .local v0, "addr":Ljava/net/InetSocketAddress;
    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->getAcceptQueueSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 73
    return-void

    .line 71
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method
