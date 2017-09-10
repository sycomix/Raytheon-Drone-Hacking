.class public Lorg/mortbay/jetty/bio/SocketConnector;
.super Lorg/mortbay/jetty/AbstractConnector;
.source "SocketConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/bio/SocketConnector$Connection;
    }
.end annotation


# instance fields
.field protected _connections:Ljava/util/Set;

.field protected _serverSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/mortbay/jetty/AbstractConnector;-><init>()V

    .line 60
    return-void
.end method

.method static access$000(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/jetty/bio/SocketConnector;
    .param p1, "x1"    # Lorg/mortbay/jetty/HttpConnection;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/bio/SocketConnector;->connectionOpened(Lorg/mortbay/jetty/HttpConnection;)V

    return-void
.end method

.method static access$100(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/jetty/bio/SocketConnector;
    .param p1, "x1"    # Lorg/mortbay/jetty/HttpConnection;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/bio/SocketConnector;->connectionClosed(Lorg/mortbay/jetty/HttpConnection;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3
    .param p1, "acceptorID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v2, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 100
    .local v1, "socket":Ljava/net/Socket;
    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/bio/SocketConnector;->configure(Ljava/net/Socket;)V

    .line 102
    new-instance v0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;

    invoke-direct {v0, p0, v1}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;-><init>(Lorg/mortbay/jetty/bio/SocketConnector;Ljava/net/Socket;)V

    .line 103
    .local v0, "connection":Lorg/mortbay/jetty/bio/SocketConnector$Connection;
    invoke-virtual {v0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->dispatch()V

    .line 104
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
    .line 90
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 92
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    .line 93
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
    .line 125
    move-object v0, p1

    check-cast v0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;

    .line 126
    .local v0, "connection":Lorg/mortbay/jetty/bio/SocketConnector$Connection;
    iget v1, v0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_sotimeout:I

    iget v2, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_maxIdleTime:I

    if-eq v1, v2, :cond_0

    .line 128
    iget v1, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_maxIdleTime:I

    iput v1, v0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_sotimeout:I

    .line 129
    invoke-interface {p1}, Lorg/mortbay/io/EndPoint;->getTransport()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Socket;

    iget v2, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_maxIdleTime:I

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 132
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mortbay/jetty/AbstractConnector;->customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V

    .line 133
    return-void
.end method

.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    .line 147
    invoke-super {p0}, Lorg/mortbay/jetty/AbstractConnector;->doStart()V

    .line 148
    return-void
.end method

.method protected doStop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 153
    invoke-super {p0}, Lorg/mortbay/jetty/AbstractConnector;->doStop()V

    .line 154
    const/4 v2, 0x0

    .line 156
    .local v2, "set":Ljava/util/Set;
    iget-object v5, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v5

    .line 158
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v2    # "set":Ljava/util/Set;
    .local v3, "set":Ljava/util/Set;
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 162
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;

    .line 165
    .local v0, "connection":Lorg/mortbay/jetty/bio/SocketConnector$Connection;
    invoke-virtual {v0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->close()V

    goto :goto_0

    .line 159
    .end local v0    # "connection":Lorg/mortbay/jetty/bio/SocketConnector$Connection;
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v3    # "set":Ljava/util/Set;
    .restart local v2    # "set":Ljava/util/Set;
    :catchall_0
    move-exception v4

    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 167
    .end local v2    # "set":Ljava/util/Set;
    .restart local v1    # "iter":Ljava/util/Iterator;
    .restart local v3    # "set":Ljava/util/Set;
    :cond_0
    return-void

    .line 159
    .end local v1    # "iter":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "set":Ljava/util/Set;
    .restart local v2    # "set":Ljava/util/Set;
    goto :goto_1
.end method

.method public getConnection()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    const/4 v0, -0x1

    .line 140
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method protected newBuffer(I)Lorg/mortbay/io/Buffer;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 118
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method protected newHttpConnection(Lorg/mortbay/io/EndPoint;)Lorg/mortbay/jetty/HttpConnection;
    .locals 2
    .param p1, "endpoint"    # Lorg/mortbay/io/EndPoint;

    .prologue
    .line 112
    new-instance v0, Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/bio/SocketConnector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/mortbay/jetty/HttpConnection;-><init>(Lorg/mortbay/jetty/Connector;Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Server;)V

    return-object v0
.end method

.method protected newServerSocket(Ljava/lang/String;II)Ljava/net/ServerSocket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    if-nez p1, :cond_0

    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p2, p3}, Ljava/net/ServerSocket;-><init>(II)V

    .line 84
    .local v0, "ss":Ljava/net/ServerSocket;
    :goto_0
    return-object v0

    .line 80
    .end local v0    # "ss":Ljava/net/ServerSocket;
    :cond_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

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
    .line 72
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/bio/SocketConnector;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/bio/SocketConnector;->getPort()I

    move-result v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/bio/SocketConnector;->getAcceptQueueSize()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/mortbay/jetty/bio/SocketConnector;->newServerSocket(Ljava/lang/String;II)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    .line 74
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {p0}, Lorg/mortbay/jetty/bio/SocketConnector;->getReuseAddress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 75
    return-void
.end method
