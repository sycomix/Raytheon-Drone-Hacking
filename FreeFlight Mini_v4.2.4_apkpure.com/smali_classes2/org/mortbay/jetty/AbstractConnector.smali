.class public abstract Lorg/mortbay/jetty/AbstractConnector;
.super Lorg/mortbay/jetty/AbstractBuffers;
.source "AbstractConnector.java"

# interfaces
.implements Lorg/mortbay/jetty/Connector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/AbstractConnector$Acceptor;
    }
.end annotation


# instance fields
.field private _acceptQueueSize:I

.field private _acceptorPriorityOffset:I

.field private transient _acceptorThread:[Ljava/lang/Thread;

.field private _acceptors:I

.field private _confidentialPort:I

.field private _confidentialScheme:Ljava/lang/String;

.field transient _connections:I

.field transient _connectionsDurationMax:J

.field transient _connectionsDurationMin:J

.field transient _connectionsDurationTotal:J

.field transient _connectionsOpen:I

.field transient _connectionsOpenMax:I

.field transient _connectionsOpenMin:I

.field transient _connectionsRequestsMax:I

.field transient _connectionsRequestsMin:I

.field private _forwarded:Z

.field private _forwardedForHeader:Ljava/lang/String;

.field private _forwardedHostHeader:Ljava/lang/String;

.field private _forwardedServerHeader:Ljava/lang/String;

.field private _host:Ljava/lang/String;

.field private _hostHeader:Ljava/lang/String;

.field private _integralPort:I

.field private _integralScheme:Ljava/lang/String;

.field protected _lowResourceMaxIdleTime:I

.field protected _maxIdleTime:I

.field private _name:Ljava/lang/String;

.field private _port:I

.field transient _requests:I

.field private _reuseAddress:Z

.field private _server:Lorg/mortbay/jetty/Server;

.field protected _soLingerTime:I

.field _statsLock:Ljava/lang/Object;

.field transient _statsStartedAt:J

.field private _threadPool:Lorg/mortbay/thread/ThreadPool;

.field private _useDNS:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Lorg/mortbay/jetty/AbstractBuffers;-><init>()V

    .line 54
    iput v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_port:I

    .line 55
    const-string v0, "https"

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_integralScheme:Ljava/lang/String;

    .line 56
    iput v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_integralPort:I

    .line 57
    const-string v0, "https"

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_confidentialScheme:Ljava/lang/String;

    .line 58
    iput v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_confidentialPort:I

    .line 59
    iput v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_acceptQueueSize:I

    .line 60
    iput v3, p0, Lorg/mortbay/jetty/AbstractConnector;->_acceptors:I

    .line 61
    iput v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_acceptorPriorityOffset:I

    .line 65
    const-string v0, "X-Forwarded-Host"

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_forwardedHostHeader:Ljava/lang/String;

    .line 66
    const-string v0, "X-Forwarded-Server"

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_forwardedServerHeader:Ljava/lang/String;

    .line 67
    const-string v0, "X-Forwarded-For"

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_forwardedForHeader:Ljava/lang/String;

    .line 68
    iput-boolean v3, p0, Lorg/mortbay/jetty/AbstractConnector;->_reuseAddress:Z

    .line 70
    const v0, 0x30d40

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_maxIdleTime:I

    .line 71
    iput v2, p0, Lorg/mortbay/jetty/AbstractConnector;->_lowResourceMaxIdleTime:I

    .line 72
    iput v2, p0, Lorg/mortbay/jetty/AbstractConnector;->_soLingerTime:I

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_statsLock:Ljava/lang/Object;

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_statsStartedAt:J

    .line 98
    return-void
.end method

.method static access$000(Lorg/mortbay/jetty/AbstractConnector;)[Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/AbstractConnector;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_acceptorThread:[Ljava/lang/Thread;

    return-object v0
.end method

.method static access$100(Lorg/mortbay/jetty/AbstractConnector;)I
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/AbstractConnector;

    .prologue
    .line 47
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_acceptorPriorityOffset:I

    return v0
.end method


# virtual methods
.method protected abstract accept(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method protected checkForwardedHeaders(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V
    .locals 10
    .param p1, "endpoint"    # Lorg/mortbay/io/EndPoint;
    .param p2, "request"    # Lorg/mortbay/jetty/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 384
    invoke-virtual {p2}, Lorg/mortbay/jetty/Request;->getConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v4

    .line 387
    .local v4, "httpFields":Lorg/mortbay/jetty/HttpFields;
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getForwardedHostHeader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/mortbay/jetty/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/mortbay/jetty/AbstractConnector;->getLeftMostValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "forwardedHost":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getForwardedServerHeader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/mortbay/jetty/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/mortbay/jetty/AbstractConnector;->getLeftMostValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "forwardedServer":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getForwardedForHeader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/mortbay/jetty/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/mortbay/jetty/AbstractConnector;->getLeftMostValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "forwardedFor":Ljava/lang/String;
    iget-object v6, p0, Lorg/mortbay/jetty/AbstractConnector;->_hostHeader:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 394
    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->HOST_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/AbstractConnector;->_hostHeader:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2, v9}, Lorg/mortbay/jetty/Request;->setServerName(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2, v8}, Lorg/mortbay/jetty/Request;->setServerPort(I)V

    .line 397
    invoke-virtual {p2}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    .line 413
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 415
    invoke-virtual {p2, v1}, Lorg/mortbay/jetty/Request;->setRemoteAddr(Ljava/lang/String;)V

    .line 416
    const/4 v5, 0x0

    .line 418
    .local v5, "inetAddress":Ljava/net/InetAddress;
    iget-boolean v6, p0, Lorg/mortbay/jetty/AbstractConnector;->_useDNS:Z

    if-eqz v6, :cond_1

    .line 422
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 430
    :cond_1
    :goto_1
    if-nez v5, :cond_5

    .end local v1    # "forwardedFor":Ljava/lang/String;
    :goto_2
    invoke-virtual {p2, v1}, Lorg/mortbay/jetty/Request;->setRemoteHost(Ljava/lang/String;)V

    .line 432
    .end local v5    # "inetAddress":Ljava/net/InetAddress;
    :cond_2
    return-void

    .line 399
    .restart local v1    # "forwardedFor":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 402
    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->HOST_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v4, v6, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2, v9}, Lorg/mortbay/jetty/Request;->setServerName(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2, v8}, Lorg/mortbay/jetty/Request;->setServerPort(I)V

    .line 405
    invoke-virtual {p2}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    goto :goto_0

    .line 407
    :cond_4
    if-eqz v3, :cond_0

    .line 410
    invoke-virtual {p2, v3}, Lorg/mortbay/jetty/Request;->setServerName(Ljava/lang/String;)V

    goto :goto_0

    .line 424
    .restart local v5    # "inetAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 430
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_5
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method protected configure(Ljava/net/Socket;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 358
    iget v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_maxIdleTime:I

    if-ltz v1, :cond_0

    .line 359
    iget v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_maxIdleTime:I

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 360
    :cond_0
    iget v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_soLingerTime:I

    if-ltz v1, :cond_1

    .line 361
    const/4 v1, 0x1

    iget v2, p0, Lorg/mortbay/jetty/AbstractConnector;->_soLingerTime:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {p1, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 369
    :goto_0
    return-void

    .line 363
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected connectionClosed(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 10
    .param p1, "connection"    # Lorg/mortbay/jetty/HttpConnection;

    .prologue
    const-wide/16 v8, 0x0

    .line 921
    iget-wide v4, p0, Lorg/mortbay/jetty/AbstractConnector;->_statsStartedAt:J

    cmp-long v3, v4, v8

    if-ltz v3, :cond_8

    .line 923
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getTimeStamp()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 924
    .local v0, "duration":J
    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getRequests()I

    move-result v2

    .line 925
    .local v2, "requests":I
    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector;->_statsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 927
    :try_start_0
    iget v3, p0, Lorg/mortbay/jetty/AbstractConnector;->_requests:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/mortbay/jetty/AbstractConnector;->_requests:I

    .line 928
    iget v3, p0, Lorg/mortbay/jetty/AbstractConnector;->_connections:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mortbay/jetty/AbstractConnector;->_connections:I

    .line 929
    iget v3, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpen:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpen:I

    .line 930
    iget-wide v6, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsDurationTotal:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsDurationTotal:J

    .line 931
    iget v3, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpen:I

    if-gez v3, :cond_0

    .line 932
    const/4 v3, 0x0

    iput v3, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpen:I

    .line 933
    :cond_0
    iget v3, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpen:I

    iget v5, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpenMin:I

    if-ge v3, v5, :cond_1

    .line 934
    iget v3, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpen:I

    iput v3, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpenMin:I

    .line 935
    :cond_1
    iget-wide v6, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsDurationMin:J

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    iget-wide v6, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsDurationMin:J

    cmp-long v3, v0, v6

    if-gez v3, :cond_3

    .line 936
    :cond_2
    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsDurationMin:J

    .line 937
    :cond_3
    iget-wide v6, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsDurationMax:J

    cmp-long v3, v0, v6

    if-lez v3, :cond_4

    .line 938
    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsDurationMax:J

    .line 939
    :cond_4
    iget v3, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsRequestsMin:I

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsRequestsMin:I

    if-ge v2, v3, :cond_6

    .line 940
    :cond_5
    iput v2, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsRequestsMin:I

    .line 941
    :cond_6
    iget v3, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsRequestsMax:I

    if-le v2, v3, :cond_7

    .line 942
    iput v2, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsRequestsMax:I

    .line 943
    :cond_7
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    .end local v0    # "duration":J
    .end local v2    # "requests":I
    :cond_8
    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->destroy()V

    .line 947
    return-void

    .line 943
    .restart local v0    # "duration":J
    .restart local v2    # "requests":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected connectionOpened(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 4
    .param p1, "connection"    # Lorg/mortbay/jetty/HttpConnection;

    .prologue
    .line 908
    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_statsStartedAt:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 916
    :goto_0
    return-void

    .line 910
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_statsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 912
    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpen:I

    .line 913
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpen:I

    iget v2, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpenMax:I

    if-le v0, v2, :cond_1

    .line 914
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpen:I

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpenMax:I

    .line 915
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V
    .locals 1
    .param p1, "endpoint"    # Lorg/mortbay/io/EndPoint;
    .param p2, "request"    # Lorg/mortbay/jetty/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->isForwarded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/AbstractConnector;->checkForwardedHeaders(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V

    .line 378
    :cond_0
    return-void
.end method

.method protected doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_server:Lorg/mortbay/jetty/Server;

    if-nez v1, :cond_0

    .line 280
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No server"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->open()V

    .line 285
    invoke-super {p0}, Lorg/mortbay/jetty/AbstractBuffers;->doStart()V

    .line 287
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    if-nez v1, :cond_1

    .line 288
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_server:Lorg/mortbay/jetty/Server;

    invoke-virtual {v1}, Lorg/mortbay/jetty/Server;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    .line 289
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractConnector;->_server:Lorg/mortbay/jetty/Server;

    invoke-virtual {v2}, Lorg/mortbay/jetty/Server;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    instance-of v1, v1, Lorg/mortbay/component/LifeCycle;

    if-eqz v1, :cond_2

    .line 290
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    check-cast v1, Lorg/mortbay/component/LifeCycle;

    invoke-interface {v1}, Lorg/mortbay/component/LifeCycle;->start()V

    .line 293
    :cond_2
    monitor-enter p0

    .line 295
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getAcceptors()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Thread;

    iput-object v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_acceptorThread:[Ljava/lang/Thread;

    .line 297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_acceptorThread:[Ljava/lang/Thread;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 299
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    new-instance v2, Lorg/mortbay/jetty/AbstractConnector$Acceptor;

    invoke-direct {v2, p0, v0}, Lorg/mortbay/jetty/AbstractConnector$Acceptor;-><init>(Lorg/mortbay/jetty/AbstractConnector;I)V

    invoke-interface {v1, v2}, Lorg/mortbay/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 301
    const-string v1, "insufficient maxThreads configured for {}"

    invoke-static {v1, p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    const-string v1, "Started {}"

    invoke-static {v1, p0}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    return-void

    .line 297
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected doStop()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 313
    const-string v4, "Stopped {}"

    invoke-static {v4, p0}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    iget-object v5, p0, Lorg/mortbay/jetty/AbstractConnector;->_server:Lorg/mortbay/jetty/Server;

    invoke-virtual {v5}, Lorg/mortbay/jetty/Server;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 317
    iput-object v6, p0, Lorg/mortbay/jetty/AbstractConnector;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    .line 321
    :cond_0
    :goto_1
    invoke-super {p0}, Lorg/mortbay/jetty/AbstractBuffers;->doStop()V

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "acceptors":[Ljava/lang/Thread;
    monitor-enter p0

    .line 326
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_acceptorThread:[Ljava/lang/Thread;

    .line 327
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/mortbay/jetty/AbstractConnector;->_acceptorThread:[Ljava/lang/Thread;

    .line 328
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    if-eqz v0, :cond_3

    .line 331
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 333
    aget-object v3, v0, v2

    .line 334
    .local v3, "thread":Ljava/lang/Thread;
    if-eqz v3, :cond_1

    .line 335
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 331
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 314
    .end local v0    # "acceptors":[Ljava/lang/Thread;
    .end local v2    # "i":I
    .end local v3    # "thread":Ljava/lang/Thread;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 318
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    instance-of v4, v4, Lorg/mortbay/component/LifeCycle;

    if-eqz v4, :cond_0

    .line 319
    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    check-cast v4, Lorg/mortbay/component/LifeCycle;

    invoke-interface {v4}, Lorg/mortbay/component/LifeCycle;->stop()V

    goto :goto_1

    .line 328
    .restart local v0    # "acceptors":[Ljava/lang/Thread;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 339
    :cond_3
    return-void
.end method

.method public getAcceptQueueSize()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_acceptQueueSize:I

    return v0
.end method

.method public getAcceptorPriorityOffset()I
    .locals 1

    .prologue
    .line 955
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_acceptorPriorityOffset:I

    return v0
.end method

.method public getAcceptors()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_acceptors:I

    return v0
.end method

.method public getConfidentialPort()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_confidentialPort:I

    return v0
.end method

.method public getConfidentialScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_confidentialScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getConnections()I
    .locals 1

    .prologue
    .line 808
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connections:I

    return v0
.end method

.method public getConnectionsDurationAve()J
    .locals 4

    .prologue
    .line 829
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connections:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsDurationTotal:J

    iget v2, p0, Lorg/mortbay/jetty/AbstractConnector;->_connections:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public getConnectionsDurationMax()J
    .locals 2

    .prologue
    .line 836
    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsDurationMax:J

    return-wide v0
.end method

.method public getConnectionsDurationMin()J
    .locals 2

    .prologue
    .line 772
    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsDurationMin:J

    return-wide v0
.end method

.method public getConnectionsDurationTotal()J
    .locals 2

    .prologue
    .line 781
    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsDurationTotal:J

    return-wide v0
.end method

.method public getConnectionsOpen()I
    .locals 1

    .prologue
    .line 815
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpen:I

    return v0
.end method

.method public getConnectionsOpenMax()I
    .locals 1

    .prologue
    .line 822
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpenMax:I

    return v0
.end method

.method public getConnectionsOpenMin()I
    .locals 1

    .prologue
    .line 790
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpenMin:I

    return v0
.end method

.method public getConnectionsRequestsAve()I
    .locals 2

    .prologue
    .line 843
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connections:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_requests:I

    iget v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_connections:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method public getConnectionsRequestsMax()I
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsRequestsMax:I

    return v0
.end method

.method public getConnectionsRequestsMin()I
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsRequestsMin:I

    return v0
.end method

.method public getForwardedForHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_forwardedForHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getForwardedHostHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_forwardedHostHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getForwardedServerHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_forwardedServerHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_hostHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getIntegralPort()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_integralPort:I

    return v0
.end method

.method public getIntegralScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_integralScheme:Ljava/lang/String;

    return-object v0
.end method

.method protected getLeftMostValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 436
    if-nez p1, :cond_1

    .line 437
    const/4 p1, 0x0

    .line 448
    .end local p1    # "headerValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 439
    .restart local p1    # "headerValue":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 441
    .local v0, "commaIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 448
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getLowResourceMaxIdleTime()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_lowResourceMaxIdleTime:I

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_maxIdleTime:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 746
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "0.0.0.0"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getLocalPort()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getPort()I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_name:Ljava/lang/String;

    .line 747
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_name:Ljava/lang/String;

    return-object v0

    .line 746
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getLocalPort()I

    move-result v0

    goto :goto_1
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_port:I

    return v0
.end method

.method public getRequests()I
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_requests:I

    return v0
.end method

.method public getResolveNames()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_useDNS:Z

    return v0
.end method

.method public getReuseAddress()Z
    .locals 1

    .prologue
    .line 976
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_reuseAddress:Z

    return v0
.end method

.method public getServer()Lorg/mortbay/jetty/Server;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_server:Lorg/mortbay/jetty/Server;

    return-object v0
.end method

.method public getSoLingerTime()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_soLingerTime:I

    return v0
.end method

.method public getStatsOn()Z
    .locals 4

    .prologue
    .line 893
    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_statsStartedAt:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatsOnMs()J
    .locals 4

    .prologue
    .line 902
    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_statsStartedAt:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/mortbay/jetty/AbstractConnector;->_statsStartedAt:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getThreadPool()Lorg/mortbay/thread/ThreadPool;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    return-object v0
.end method

.method public isConfidential(Lorg/mortbay/jetty/Request;)Z
    .locals 1
    .param p1, "request"    # Lorg/mortbay/jetty/Request;

    .prologue
    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public isForwarded()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_forwarded:Z

    return v0
.end method

.method public isIntegral(Lorg/mortbay/jetty/Request;)Z
    .locals 1
    .param p1, "request"    # Lorg/mortbay/jetty/Request;

    .prologue
    .line 484
    const/4 v0, 0x0

    return v0
.end method

.method public join()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_acceptorThread:[Ljava/lang/Thread;

    .line 345
    .local v1, "threads":[Ljava/lang/Thread;
    if-eqz v1, :cond_1

    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 347
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 348
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 346
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public newContinuation()Lorg/mortbay/util/ajax/Continuation;
    .locals 1

    .prologue
    .line 553
    new-instance v0, Lorg/mortbay/util/ajax/WaitingContinuation;

    invoke-direct {v0}, Lorg/mortbay/util/ajax/WaitingContinuation;-><init>()V

    return-object v0
.end method

.method public persist(Lorg/mortbay/io/EndPoint;)V
    .locals 0
    .param p1, "endpoint"    # Lorg/mortbay/io/EndPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    return-void
.end method

.method public setAcceptQueueSize(I)V
    .locals 0
    .param p1, "acceptQueueSize"    # I

    .prologue
    .line 246
    iput p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_acceptQueueSize:I

    .line 247
    return-void
.end method

.method public setAcceptorPriorityOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 967
    iput p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_acceptorPriorityOffset:I

    .line 968
    return-void
.end method

.method public setAcceptors(I)V
    .locals 0
    .param p1, "acceptors"    # I

    .prologue
    .line 264
    iput p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_acceptors:I

    .line 265
    return-void
.end method

.method public setConfidentialPort(I)V
    .locals 0
    .param p1, "confidentialPort"    # I

    .prologue
    .line 520
    iput p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_confidentialPort:I

    .line 521
    return-void
.end method

.method public setConfidentialScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "confidentialScheme"    # Ljava/lang/String;

    .prologue
    .line 529
    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_confidentialScheme:Ljava/lang/String;

    .line 530
    return-void
.end method

.method public setForwarded(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 593
    if-eqz p1, :cond_0

    .line 594
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " is forwarded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 595
    :cond_0
    iput-boolean p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_forwarded:Z

    .line 596
    return-void
.end method

.method public setForwardedForHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "forwardedRemoteAddressHeader"    # Ljava/lang/String;

    .prologue
    .line 658
    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_forwardedForHeader:Ljava/lang/String;

    .line 659
    return-void
.end method

.method public setForwardedHostHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "forwardedHostHeader"    # Ljava/lang/String;

    .prologue
    .line 628
    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_forwardedHostHeader:Ljava/lang/String;

    .line 629
    return-void
.end method

.method public setForwardedServerHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "forwardedServerHeader"    # Ljava/lang/String;

    .prologue
    .line 643
    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_forwardedServerHeader:Ljava/lang/String;

    .line 644
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_host:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setHostHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostHeader"    # Ljava/lang/String;

    .prologue
    .line 613
    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_hostHeader:Ljava/lang/String;

    .line 614
    return-void
.end method

.method public setIntegralPort(I)V
    .locals 0
    .param p1, "integralPort"    # I

    .prologue
    .line 538
    iput p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_integralPort:I

    .line 539
    return-void
.end method

.method public setIntegralScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "integralScheme"    # Ljava/lang/String;

    .prologue
    .line 547
    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_integralScheme:Ljava/lang/String;

    .line 548
    return-void
.end method

.method public setLowResourceMaxIdleTime(I)V
    .locals 0
    .param p1, "maxIdleTime"    # I

    .prologue
    .line 219
    iput p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_lowResourceMaxIdleTime:I

    .line 220
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 0
    .param p1, "maxIdleTime"    # I

    .prologue
    .line 201
    iput p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_maxIdleTime:I

    .line 202
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 753
    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_name:Ljava/lang/String;

    .line 754
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 151
    iput p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_port:I

    .line 152
    return-void
.end method

.method public setResolveNames(Z)V
    .locals 0
    .param p1, "resolve"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_useDNS:Z

    .line 574
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 0
    .param p1, "reuseAddress"    # Z

    .prologue
    .line 985
    iput-boolean p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_reuseAddress:Z

    .line 986
    return-void
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 0
    .param p1, "server"    # Lorg/mortbay/jetty/Server;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_server:Lorg/mortbay/jetty/Server;

    .line 112
    return-void
.end method

.method public setSoLingerTime(I)V
    .locals 0
    .param p1, "soLingerTime"    # I

    .prologue
    .line 273
    iput p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_soLingerTime:I

    .line 274
    return-void
.end method

.method public setStatsOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const-wide/16 v0, -0x1

    .line 880
    if-eqz p1, :cond_0

    iget-wide v2, p0, Lorg/mortbay/jetty/AbstractConnector;->_statsStartedAt:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 885
    :goto_0
    return-void

    .line 882
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Statistics on = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->statsReset()V

    .line 884
    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_1
    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_statsStartedAt:J

    goto :goto_0
.end method

.method public setThreadPool(Lorg/mortbay/thread/ThreadPool;)V
    .locals 0
    .param p1, "pool"    # Lorg/mortbay/thread/ThreadPool;

    .prologue
    .line 126
    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    .line 127
    return-void
.end method

.method public statsReset()V
    .locals 8

    .prologue
    const-wide/16 v0, -0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 859
    iget-wide v2, p0, Lorg/mortbay/jetty/AbstractConnector;->_statsStartedAt:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_statsStartedAt:J

    .line 861
    iput v4, p0, Lorg/mortbay/jetty/AbstractConnector;->_connections:I

    .line 863
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpen:I

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpenMin:I

    .line 864
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpen:I

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpenMax:I

    .line 865
    iput v4, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsOpen:I

    .line 867
    iput-wide v6, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsDurationMin:J

    .line 868
    iput-wide v6, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsDurationMax:J

    .line 869
    iput-wide v6, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsDurationTotal:J

    .line 871
    iput v4, p0, Lorg/mortbay/jetty/AbstractConnector;->_requests:I

    .line 873
    iput v4, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsRequestsMin:I

    .line 874
    iput v4, p0, Lorg/mortbay/jetty/AbstractConnector;->_connectionsRequestsMax:I

    .line 875
    return-void

    .line 859
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public stopAccept(I)V
    .locals 0
    .param p1, "acceptorID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 562
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 664
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 666
    .local v0, "dot":I
    if-lez v0, :cond_0

    .line 667
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 669
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "0.0.0.0"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getLocalPort()I

    move-result v2

    if-gtz v2, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getPort()I

    move-result v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getLocalPort()I

    move-result v2

    goto :goto_1
.end method
