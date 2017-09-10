.class public final Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;
.super Ljava/lang/Object;
.source "LocalServerReceiver.java"

# interfaces
.implements Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$CallbackHandler;,
        Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;
    }
.end annotation


# static fields
.field private static final CALLBACK_PATH:Ljava/lang/String; = "/Callback"


# instance fields
.field code:Ljava/lang/String;

.field error:Ljava/lang/String;

.field final gotAuthorizationResponse:Ljava/util/concurrent/locks/Condition;

.field private final host:Ljava/lang/String;

.field final lock:Ljava/util/concurrent/locks/Lock;

.field private port:I

.field private server:Lorg/mortbay/jetty/Server;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "localhost"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;-><init>(Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->lock:Ljava/util/concurrent/locks/Lock;

    .line 62
    iget-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->gotAuthorizationResponse:Ljava/util/concurrent/locks/Condition;

    .line 88
    iput-object p1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->host:Ljava/lang/String;

    .line 89
    iput p2, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->port:I

    .line 90
    return-void
.end method

.method private static getUnusedPort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 144
    .local v0, "s":Ljava/net/Socket;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 146
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 148
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    throw v1
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->port:I

    return v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    iget v4, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->port:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 95
    invoke-static {}, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->getUnusedPort()I

    move-result v4

    iput v4, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->port:I

    .line 97
    :cond_0
    new-instance v4, Lorg/mortbay/jetty/Server;

    iget v5, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->port:I

    invoke-direct {v4, v5}, Lorg/mortbay/jetty/Server;-><init>(I)V

    iput-object v4, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->server:Lorg/mortbay/jetty/Server;

    .line 98
    iget-object v4, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->server:Lorg/mortbay/jetty/Server;

    invoke-virtual {v4}, Lorg/mortbay/jetty/Server;->getConnectors()[Lorg/mortbay/jetty/Connector;

    move-result-object v0

    .local v0, "arr$":[Lorg/mortbay/jetty/Connector;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 99
    .local v1, "c":Lorg/mortbay/jetty/Connector;
    iget-object v4, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->host:Ljava/lang/String;

    invoke-interface {v1, v4}, Lorg/mortbay/jetty/Connector;->setHost(Ljava/lang/String;)V

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "c":Lorg/mortbay/jetty/Connector;
    :cond_1
    iget-object v4, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->server:Lorg/mortbay/jetty/Server;

    new-instance v5, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$CallbackHandler;

    invoke-direct {v5, p0}, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$CallbackHandler;-><init>(Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;)V

    invoke-virtual {v4, v5}, Lorg/mortbay/jetty/Server;->addHandler(Lorg/mortbay/jetty/Handler;)V

    .line 102
    iget-object v4, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->server:Lorg/mortbay/jetty/Server;

    invoke-virtual {v4}, Lorg/mortbay/jetty/Server;->start()V

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Callback"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->server:Lorg/mortbay/jetty/Server;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->server:Lorg/mortbay/jetty/Server;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->stop()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->server:Lorg/mortbay/jetty/Server;

    .line 128
    :cond_0
    return-void
.end method

.method public waitForCode()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 110
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->code:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->error:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->gotAuthorizationResponse:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 113
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->error:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User authorization failed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->code:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    iget-object v1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method
