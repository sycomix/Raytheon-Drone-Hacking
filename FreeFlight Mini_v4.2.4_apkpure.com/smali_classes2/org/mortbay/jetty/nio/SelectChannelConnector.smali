.class public Lorg/mortbay/jetty/nio/SelectChannelConnector;
.super Lorg/mortbay/jetty/nio/AbstractNIOConnector;
.source "SelectChannelConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;,
        Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;
    }
.end annotation


# instance fields
.field protected transient _acceptChannel:Ljava/nio/channels/ServerSocketChannel;

.field private _lowResourcesConnections:J

.field private _lowResourcesMaxIdleTime:J

.field private _manager:Lorg/mortbay/io/nio/SelectorManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/mortbay/jetty/nio/AbstractNIOConnector;-><init>()V

    .line 70
    new-instance v0, Lorg/mortbay/jetty/nio/SelectChannelConnector$1;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$1;-><init>(Lorg/mortbay/jetty/nio/SelectChannelConnector;)V

    iput-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    .line 119
    return-void
.end method

.method static access$000(Lorg/mortbay/jetty/nio/SelectChannelConnector;Ljava/net/Socket;)V
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/jetty/nio/SelectChannelConnector;
    .param p1, "x1"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->configure(Ljava/net/Socket;)V

    return-void
.end method

.method static access$100(Lorg/mortbay/jetty/nio/SelectChannelConnector;Lorg/mortbay/jetty/HttpConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/jetty/nio/SelectChannelConnector;
    .param p1, "x1"    # Lorg/mortbay/jetty/HttpConnection;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->connectionClosed(Lorg/mortbay/jetty/HttpConnection;)V

    return-void
.end method

.method static access$200(Lorg/mortbay/jetty/nio/SelectChannelConnector;Lorg/mortbay/jetty/HttpConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/jetty/nio/SelectChannelConnector;
    .param p1, "x1"    # Lorg/mortbay/jetty/HttpConnection;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->connectionOpened(Lorg/mortbay/jetty/HttpConnection;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "acceptorID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/nio/SelectorManager;->doSelect(I)V

    .line 125
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectorManager;->isRunning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    :try_start_1
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectorManager;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 145
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 146
    monitor-exit p0

    .line 147
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V
    .locals 4
    .param p1, "endpoint"    # Lorg/mortbay/io/EndPoint;
    .param p2, "request"    # Lorg/mortbay/jetty/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p1

    check-cast v0, Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;

    .line 153
    .local v0, "cep":Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;
    invoke-virtual {v0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;->cancelIdle()V

    .line 154
    invoke-virtual {v0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;->getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lorg/mortbay/jetty/Request;->setTimeStamp(J)V

    .line 155
    invoke-super {p0, p1, p2}, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V

    .line 156
    return-void
.end method

.method protected doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->getAcceptors()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/nio/SelectorManager;->setSelectSets(I)V

    .line 311
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->getMaxIdleTime()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/io/nio/SelectorManager;->setMaxIdleTime(J)V

    .line 312
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->getLowResourcesConnections()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/io/nio/SelectorManager;->setLowResourcesConnections(J)V

    .line 313
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->getLowResourcesMaxIdleTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/io/nio/SelectorManager;->setLowResourcesMaxIdleTime(J)V

    .line 314
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectorManager;->start()V

    .line 315
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->open()V

    .line 316
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/nio/SelectorManager;->register(Ljava/nio/channels/ServerSocketChannel;)V

    .line 317
    invoke-super {p0}, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->doStart()V

    .line 318
    return-void
.end method

.method protected doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 326
    invoke-super {p0}, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->doStop()V

    .line 327
    return-void
.end method

.method public getConnection()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    return-object v0
.end method

.method public getDelaySelectKeyUpdate()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectorManager;->isDelaySelectKeyUpdate()Z

    move-result v0

    return v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 186
    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    :cond_0
    const/4 v0, -0x1

    monitor-exit p0

    .line 190
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLowResourcesConnections()J
    .locals 2

    .prologue
    .line 251
    iget-wide v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_lowResourcesConnections:J

    return-wide v0
.end method

.method public getLowResourcesMaxIdleTime()J
    .locals 2

    .prologue
    .line 272
    iget-wide v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_lowResourcesMaxIdleTime:J

    return-wide v0
.end method

.method protected newConnection(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectChannelEndPoint;)Lorg/mortbay/io/Connection;
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "endpoint"    # Lorg/mortbay/io/nio/SelectChannelEndPoint;

    .prologue
    .line 338
    new-instance v0, Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1}, Lorg/mortbay/jetty/HttpConnection;-><init>(Lorg/mortbay/jetty/Connector;Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Server;)V

    return-object v0
.end method

.method public newContinuation()Lorg/mortbay/util/ajax/Continuation;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;

    invoke-direct {v0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;-><init>()V

    return-object v0
.end method

.method protected newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "selectSet"    # Lorg/mortbay/io/nio/SelectorManager$SelectSet;
    .param p3, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;

    invoke-direct {v0, p1, p2, p3}, Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;-><init>(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)V

    return-object v0
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-nez v1, :cond_0

    .line 211
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 214
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->getReuseAddress()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 215
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->getPort()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 216
    .local v0, "addr":Ljava/net/InetSocketAddress;
    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->getAcceptQueueSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 219
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 222
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_0
    monitor-exit p0

    .line 223
    return-void

    .line 215
    :cond_1
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public persist(Lorg/mortbay/io/EndPoint;)V
    .locals 1
    .param p1, "endpoint"    # Lorg/mortbay/io/EndPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p1

    check-cast v0, Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;

    invoke-virtual {v0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;->scheduleIdle()V

    .line 162
    invoke-super {p0, p1}, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->persist(Lorg/mortbay/io/EndPoint;)V

    .line 163
    return-void
.end method

.method public setDelaySelectKeyUpdate(Z)V
    .locals 1
    .param p1, "delay"    # Z

    .prologue
    .line 234
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/nio/SelectorManager;->setDelaySelectKeyUpdate(Z)V

    .line 235
    return-void
.end method

.method public setLowResourceMaxIdleTime(I)V
    .locals 2
    .param p1, "lowResourcesMaxIdleTime"    # I

    .prologue
    .line 300
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_lowResourcesMaxIdleTime:J

    .line 301
    invoke-super {p0, p1}, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->setLowResourceMaxIdleTime(I)V

    .line 302
    return-void
.end method

.method public setLowResourcesConnections(J)V
    .locals 1
    .param p1, "lowResourcesConnections"    # J

    .prologue
    .line 263
    iput-wide p1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_lowResourcesConnections:J

    .line 264
    return-void
.end method

.method public setLowResourcesMaxIdleTime(J)V
    .locals 1
    .param p1, "lowResourcesMaxIdleTime"    # J

    .prologue
    .line 286
    iput-wide p1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_lowResourcesMaxIdleTime:J

    .line 287
    long-to-int v0, p1

    invoke-super {p0, v0}, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->setLowResourceMaxIdleTime(I)V

    .line 288
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 4
    .param p1, "maxIdleTime"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/io/nio/SelectorManager;->setMaxIdleTime(J)V

    .line 241
    invoke-super {p0, p1}, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->setMaxIdleTime(I)V

    .line 242
    return-void
.end method
