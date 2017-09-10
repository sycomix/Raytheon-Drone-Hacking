.class public Lorg/mortbay/jetty/Server;
.super Lorg/mortbay/jetty/handler/HandlerWrapper;
.source "Server.java"

# interfaces
.implements Lorg/mortbay/util/Attributes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/Server$1;,
        Lorg/mortbay/jetty/Server$Graceful;,
        Lorg/mortbay/jetty/Server$ShutdownHookThread;
    }
.end annotation


# static fields
.field public static final SNAPSHOT_VERSION:Ljava/lang/String; = "6.1-SNAPSHOT"

.field public static final UNKNOWN_VERSION:Ljava/lang/String; = "6.1.x"

.field private static _version:Ljava/lang/String;

.field static class$java$lang$Runtime:Ljava/lang/Class;

.field static class$java$lang$Thread:Ljava/lang/Class;

.field static class$org$mortbay$jetty$Connector:Ljava/lang/Class;

.field static class$org$mortbay$jetty$Server:Ljava/lang/Class;

.field static class$org$mortbay$jetty$Server$Graceful:Ljava/lang/Class;

.field static class$org$mortbay$jetty$security$UserRealm:Ljava/lang/Class;

.field private static hookThread:Lorg/mortbay/jetty/Server$ShutdownHookThread;


# instance fields
.field private _attributes:Lorg/mortbay/util/AttributesMap;

.field private _connectors:[Lorg/mortbay/jetty/Connector;

.field private _container:Lorg/mortbay/component/Container;

.field private _dependentLifeCycles:Ljava/util/List;

.field private _graceful:I

.field private _realms:[Lorg/mortbay/jetty/security/UserRealm;

.field private _sendDateHeader:Z

.field private _sendServerVersion:Z

.field private _sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

.field private _threadPool:Lorg/mortbay/thread/ThreadPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lorg/mortbay/jetty/Server$ShutdownHookThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mortbay/jetty/Server$ShutdownHookThread;-><init>(Lorg/mortbay/jetty/Server$1;)V

    sput-object v0, Lorg/mortbay/jetty/Server;->hookThread:Lorg/mortbay/jetty/Server$ShutdownHookThread;

    .line 56
    sget-object v0, Lorg/mortbay/jetty/Server;->class$org$mortbay$jetty$Server:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.jetty.Server"

    invoke-static {v0}, Lorg/mortbay/jetty/Server;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/Server;->class$org$mortbay$jetty$Server:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/mortbay/jetty/Server;->class$org$mortbay$jetty$Server:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "org.mortbay.jetty.Server"

    invoke-static {v0}, Lorg/mortbay/jetty/Server;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/Server;->class$org$mortbay$jetty$Server:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/mortbay/jetty/Server;->class$org$mortbay$jetty$Server:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "org.mortbay.jetty.Server"

    invoke-static {v0}, Lorg/mortbay/jetty/Server;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/Server;->class$org$mortbay$jetty$Server:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    :goto_3
    sput-object v0, Lorg/mortbay/jetty/Server;->_version:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Lorg/mortbay/jetty/Server;->class$org$mortbay$jetty$Server:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/mortbay/jetty/Server;->class$org$mortbay$jetty$Server:Ljava/lang/Class;

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/mortbay/jetty/Server;->class$org$mortbay$jetty$Server:Ljava/lang/Class;

    goto :goto_2

    :cond_3
    const-string v0, "6.1.x"

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    .line 63
    new-instance v0, Lorg/mortbay/component/Container;

    invoke-direct {v0}, Lorg/mortbay/component/Container;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/Server;->_container:Lorg/mortbay/component/Container;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/Server;->_sendServerVersion:Z

    .line 66
    iput-boolean v1, p0, Lorg/mortbay/jetty/Server;->_sendDateHeader:Z

    .line 67
    new-instance v0, Lorg/mortbay/util/AttributesMap;

    invoke-direct {v0}, Lorg/mortbay/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/Server;->_attributes:Lorg/mortbay/util/AttributesMap;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/Server;->_dependentLifeCycles:Ljava/util/List;

    .line 69
    iput v1, p0, Lorg/mortbay/jetty/Server;->_graceful:I

    .line 74
    invoke-virtual {p0, p0}, Lorg/mortbay/jetty/Server;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "port"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    .line 63
    new-instance v1, Lorg/mortbay/component/Container;

    invoke-direct {v1}, Lorg/mortbay/component/Container;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/Server;->_container:Lorg/mortbay/component/Container;

    .line 65
    iput-boolean v3, p0, Lorg/mortbay/jetty/Server;->_sendServerVersion:Z

    .line 66
    iput-boolean v2, p0, Lorg/mortbay/jetty/Server;->_sendDateHeader:Z

    .line 67
    new-instance v1, Lorg/mortbay/util/AttributesMap;

    invoke-direct {v1}, Lorg/mortbay/util/AttributesMap;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/Server;->_attributes:Lorg/mortbay/util/AttributesMap;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/Server;->_dependentLifeCycles:Ljava/util/List;

    .line 69
    iput v2, p0, Lorg/mortbay/jetty/Server;->_graceful:I

    .line 83
    invoke-virtual {p0, p0}, Lorg/mortbay/jetty/Server;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 85
    new-instance v0, Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-direct {v0}, Lorg/mortbay/jetty/bio/SocketConnector;-><init>()V

    .line 86
    .local v0, "connector":Lorg/mortbay/jetty/Connector;
    invoke-interface {v0, p1}, Lorg/mortbay/jetty/Connector;->setPort(I)V

    .line 87
    new-array v1, v3, [Lorg/mortbay/jetty/Connector;

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/Server;->setConnectors([Lorg/mortbay/jetty/Connector;)V

    .line 88
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lorg/mortbay/jetty/Server;->_version:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addConnector(Lorg/mortbay/jetty/Connector;)V
    .locals 2
    .param p1, "connector"    # Lorg/mortbay/jetty/Connector;

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getConnectors()[Lorg/mortbay/jetty/Connector;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/Server;->class$org$mortbay$jetty$Connector:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.jetty.Connector"

    invoke-static {v0}, Lorg/mortbay/jetty/Server;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/Server;->class$org$mortbay$jetty$Connector:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/Connector;

    check-cast v0, [Lorg/mortbay/jetty/Connector;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Server;->setConnectors([Lorg/mortbay/jetty/Connector;)V

    .line 135
    return-void

    .line 134
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/Server;->class$org$mortbay$jetty$Connector:Ljava/lang/Class;

    goto :goto_0
.end method

.method public addHandler(Lorg/mortbay/jetty/Handler;)V
    .locals 4
    .param p1, "handler"    # Lorg/mortbay/jetty/Handler;

    .prologue
    .line 590
    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 591
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/Server;->setHandler(Lorg/mortbay/jetty/Handler;)V

    .line 600
    :goto_0
    return-void

    .line 592
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v1

    instance-of v1, v1, Lorg/mortbay/jetty/handler/HandlerCollection;

    if-eqz v1, :cond_1

    .line 593
    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/handler/HandlerCollection;

    invoke-virtual {v1, p1}, Lorg/mortbay/jetty/handler/HandlerCollection;->addHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0

    .line 596
    :cond_1
    new-instance v0, Lorg/mortbay/jetty/handler/HandlerCollection;

    invoke-direct {v0}, Lorg/mortbay/jetty/handler/HandlerCollection;-><init>()V

    .line 597
    .local v0, "collection":Lorg/mortbay/jetty/handler/HandlerCollection;
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/mortbay/jetty/Handler;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/handler/HandlerCollection;->setHandlers([Lorg/mortbay/jetty/Handler;)V

    .line 598
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Server;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0
.end method

.method public addLifeCycle(Lorg/mortbay/component/LifeCycle;)V
    .locals 2
    .param p1, "c"    # Lorg/mortbay/component/LifeCycle;

    .prologue
    .line 422
    if-nez p1, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/Server;->_dependentLifeCycles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 426
    iget-object v1, p0, Lorg/mortbay/jetty/Server;->_dependentLifeCycles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v1, p0, Lorg/mortbay/jetty/Server;->_container:Lorg/mortbay/component/Container;

    invoke-virtual {v1, p1}, Lorg/mortbay/component/Container;->addBean(Ljava/lang/Object;)V

    .line 431
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    invoke-interface {p1}, Lorg/mortbay/component/LifeCycle;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V
    .locals 2
    .param p1, "realm"    # Lorg/mortbay/jetty/security/UserRealm;

    .prologue
    .line 357
    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getUserRealms()[Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/Server;->class$org$mortbay$jetty$security$UserRealm:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.jetty.security.UserRealm"

    invoke-static {v0}, Lorg/mortbay/jetty/Server;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/Server;->class$org$mortbay$jetty$security$UserRealm:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/security/UserRealm;

    check-cast v0, [Lorg/mortbay/jetty/security/UserRealm;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Server;->setUserRealms([Lorg/mortbay/jetty/security/UserRealm;)V

    .line 358
    return-void

    .line 357
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/Server;->class$org$mortbay$jetty$security$UserRealm:Ljava/lang/Class;

    goto :goto_0
.end method

.method public clearAttributes()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lorg/mortbay/jetty/Server;->_attributes:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {v0}, Lorg/mortbay/util/AttributesMap;->clearAttributes()V

    .line 646
    return-void
.end method

.method protected doStart()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "jetty-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/Server;->_version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    .line 187
    sget-object v5, Lorg/mortbay/jetty/Server;->_version:Ljava/lang/String;

    invoke-static {v5}, Lorg/mortbay/jetty/HttpGenerator;->setServerVersion(Ljava/lang/String;)V

    .line 188
    new-instance v3, Lorg/mortbay/util/MultiException;

    invoke-direct {v3}, Lorg/mortbay/util/MultiException;-><init>()V

    .line 190
    .local v3, "mex":Lorg/mortbay/util/MultiException;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lorg/mortbay/jetty/Server;->_realms:[Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/mortbay/jetty/Server;->_realms:[Lorg/mortbay/jetty/security/UserRealm;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 192
    iget-object v5, p0, Lorg/mortbay/jetty/Server;->_realms:[Lorg/mortbay/jetty/security/UserRealm;

    aget-object v5, v5, v1

    instance-of v5, v5, Lorg/mortbay/component/LifeCycle;

    if-eqz v5, :cond_0

    .line 193
    iget-object v5, p0, Lorg/mortbay/jetty/Server;->_realms:[Lorg/mortbay/jetty/security/UserRealm;

    aget-object v5, v5, v1

    check-cast v5, Lorg/mortbay/component/LifeCycle;

    invoke-interface {v5}, Lorg/mortbay/component/LifeCycle;->start()V

    .line 190
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_1
    iget-object v5, p0, Lorg/mortbay/jetty/Server;->_dependentLifeCycles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 197
    .local v2, "itor":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 201
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mortbay/component/LifeCycle;

    invoke-interface {v5}, Lorg/mortbay/component/LifeCycle;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 203
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v3, v0}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 206
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-object v5, p0, Lorg/mortbay/jetty/Server;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    if-nez v5, :cond_3

    .line 208
    new-instance v4, Lorg/mortbay/thread/QueuedThreadPool;

    invoke-direct {v4}, Lorg/mortbay/thread/QueuedThreadPool;-><init>()V

    .line 209
    .local v4, "tp":Lorg/mortbay/thread/QueuedThreadPool;
    invoke-virtual {p0, v4}, Lorg/mortbay/jetty/Server;->setThreadPool(Lorg/mortbay/thread/ThreadPool;)V

    .line 212
    .end local v4    # "tp":Lorg/mortbay/thread/QueuedThreadPool;
    :cond_3
    iget-object v5, p0, Lorg/mortbay/jetty/Server;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    if-eqz v5, :cond_4

    .line 213
    iget-object v5, p0, Lorg/mortbay/jetty/Server;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    invoke-interface {v5}, Lorg/mortbay/jetty/SessionIdManager;->start()V

    .line 217
    :cond_4
    :try_start_1
    iget-object v5, p0, Lorg/mortbay/jetty/Server;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    instance-of v5, v5, Lorg/mortbay/component/LifeCycle;

    if-eqz v5, :cond_5

    .line 218
    iget-object v5, p0, Lorg/mortbay/jetty/Server;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    check-cast v5, Lorg/mortbay/component/LifeCycle;

    invoke-interface {v5}, Lorg/mortbay/component/LifeCycle;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    :cond_5
    :goto_2
    :try_start_2
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStart()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 231
    :goto_3
    iget-object v5, p0, Lorg/mortbay/jetty/Server;->_connectors:[Lorg/mortbay/jetty/Connector;

    if-eqz v5, :cond_6

    .line 233
    const/4 v1, 0x0

    :goto_4
    iget-object v5, p0, Lorg/mortbay/jetty/Server;->_connectors:[Lorg/mortbay/jetty/Connector;

    array-length v5, v5

    if-ge v1, v5, :cond_6

    .line 235
    :try_start_3
    iget-object v5, p0, Lorg/mortbay/jetty/Server;->_connectors:[Lorg/mortbay/jetty/Connector;

    aget-object v5, v5, v1

    invoke-interface {v5}, Lorg/mortbay/jetty/Connector;->start()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 233
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 220
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v3, v0}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 226
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 228
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v5, "Error starting handlers"

    invoke-static {v5, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 236
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 238
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v3, v0}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 242
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v3}, Lorg/mortbay/util/MultiException;->ifExceptionThrow()V

    .line 243
    return-void
.end method

.method protected doStop()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v7, Lorg/mortbay/util/MultiException;

    invoke-direct {v7}, Lorg/mortbay/util/MultiException;-><init>()V

    .line 250
    .local v7, "mex":Lorg/mortbay/util/MultiException;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v8, p0, Lorg/mortbay/jetty/Server;->_realms:[Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lorg/mortbay/jetty/Server;->_realms:[Lorg/mortbay/jetty/security/UserRealm;

    array-length v8, v8

    if-ge v4, v8, :cond_1

    .line 252
    iget-object v8, p0, Lorg/mortbay/jetty/Server;->_realms:[Lorg/mortbay/jetty/security/UserRealm;

    aget-object v8, v8, v4

    instance-of v8, v8, Lorg/mortbay/component/LifeCycle;

    if-eqz v8, :cond_0

    .line 253
    iget-object v8, p0, Lorg/mortbay/jetty/Server;->_realms:[Lorg/mortbay/jetty/security/UserRealm;

    aget-object v8, v8, v4

    check-cast v8, Lorg/mortbay/component/LifeCycle;

    invoke-interface {v8}, Lorg/mortbay/component/LifeCycle;->stop()V

    .line 250
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 256
    :cond_1
    iget v8, p0, Lorg/mortbay/jetty/Server;->_graceful:I

    if-lez v8, :cond_5

    .line 258
    iget-object v8, p0, Lorg/mortbay/jetty/Server;->_connectors:[Lorg/mortbay/jetty/Connector;

    if-eqz v8, :cond_2

    .line 260
    iget-object v8, p0, Lorg/mortbay/jetty/Server;->_connectors:[Lorg/mortbay/jetty/Connector;

    array-length v4, v8

    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    if-lez v5, :cond_2

    .line 262
    const-string v8, "Graceful shutdown {}"

    iget-object v9, p0, Lorg/mortbay/jetty/Server;->_connectors:[Lorg/mortbay/jetty/Connector;

    aget-object v9, v9, v4

    invoke-static {v8, v9}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    :try_start_0
    iget-object v8, p0, Lorg/mortbay/jetty/Server;->_connectors:[Lorg/mortbay/jetty/Connector;

    aget-object v8, v8, v4

    invoke-interface {v8}, Lorg/mortbay/jetty/Connector;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v7, v3}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .line 267
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_2
    sget-object v8, Lorg/mortbay/jetty/Server;->class$org$mortbay$jetty$Server$Graceful:Ljava/lang/Class;

    if-nez v8, :cond_3

    const-string v8, "org.mortbay.jetty.Server$Graceful"

    invoke-static {v8}, Lorg/mortbay/jetty/Server;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/mortbay/jetty/Server;->class$org$mortbay$jetty$Server$Graceful:Ljava/lang/Class;

    :goto_2
    invoke-virtual {p0, v8}, Lorg/mortbay/jetty/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;

    move-result-object v2

    .line 268
    .local v2, "contexts":[Lorg/mortbay/jetty/Handler;
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_3
    array-length v8, v2

    if-ge v0, v8, :cond_4

    .line 270
    aget-object v1, v2, v0

    check-cast v1, Lorg/mortbay/jetty/Server$Graceful;

    .line 271
    .local v1, "context":Lorg/mortbay/jetty/Server$Graceful;
    const-string v8, "Graceful shutdown {}"

    invoke-static {v8, v1}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    const/4 v8, 0x1

    invoke-interface {v1, v8}, Lorg/mortbay/jetty/Server$Graceful;->setShutdown(Z)V

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 267
    .end local v0    # "c":I
    .end local v1    # "context":Lorg/mortbay/jetty/Server$Graceful;
    .end local v2    # "contexts":[Lorg/mortbay/jetty/Handler;
    :cond_3
    sget-object v8, Lorg/mortbay/jetty/Server;->class$org$mortbay$jetty$Server$Graceful:Ljava/lang/Class;

    goto :goto_2

    .line 274
    .restart local v0    # "c":I
    .restart local v2    # "contexts":[Lorg/mortbay/jetty/Handler;
    :cond_4
    iget v8, p0, Lorg/mortbay/jetty/Server;->_graceful:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 277
    .end local v0    # "c":I
    .end local v2    # "contexts":[Lorg/mortbay/jetty/Handler;
    :cond_5
    iget-object v8, p0, Lorg/mortbay/jetty/Server;->_connectors:[Lorg/mortbay/jetty/Connector;

    if-eqz v8, :cond_6

    .line 279
    iget-object v8, p0, Lorg/mortbay/jetty/Server;->_connectors:[Lorg/mortbay/jetty/Connector;

    array-length v4, v8

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    :goto_4
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    if-lez v5, :cond_6

    .line 280
    :try_start_1
    iget-object v8, p0, Lorg/mortbay/jetty/Server;->_connectors:[Lorg/mortbay/jetty/Connector;

    aget-object v8, v8, v4

    invoke-interface {v8}, Lorg/mortbay/jetty/Connector;->stop()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_4

    .end local v5    # "i":I
    .restart local v4    # "i":I
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-virtual {v7, v3}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_4

    .line 283
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_6
    :try_start_2
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStop()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 285
    :goto_5
    iget-object v8, p0, Lorg/mortbay/jetty/Server;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    if-eqz v8, :cond_7

    .line 286
    iget-object v8, p0, Lorg/mortbay/jetty/Server;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    invoke-interface {v8}, Lorg/mortbay/jetty/SessionIdManager;->stop()V

    .line 290
    :cond_7
    :try_start_3
    iget-object v8, p0, Lorg/mortbay/jetty/Server;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    instance-of v8, v8, Lorg/mortbay/component/LifeCycle;

    if-eqz v8, :cond_8

    .line 291
    iget-object v8, p0, Lorg/mortbay/jetty/Server;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    check-cast v8, Lorg/mortbay/component/LifeCycle;

    invoke-interface {v8}, Lorg/mortbay/component/LifeCycle;->stop()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 295
    :cond_8
    :goto_6
    iget-object v8, p0, Lorg/mortbay/jetty/Server;->_dependentLifeCycles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 297
    iget-object v8, p0, Lorg/mortbay/jetty/Server;->_dependentLifeCycles:Ljava/util/List;

    iget-object v9, p0, Lorg/mortbay/jetty/Server;->_dependentLifeCycles:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 298
    .local v6, "itor":Ljava/util/ListIterator;
    :goto_7
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 302
    :try_start_4
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mortbay/component/LifeCycle;

    invoke-interface {v8}, Lorg/mortbay/component/LifeCycle;->stop()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    .line 304
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-virtual {v7, v3}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 283
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v6    # "itor":Ljava/util/ListIterator;
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-virtual {v7, v3}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 293
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-virtual {v7, v3}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 308
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v7}, Lorg/mortbay/util/MultiException;->ifExceptionThrow()V

    .line 309
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 654
    iget-object v0, p0, Lorg/mortbay/jetty/Server;->_attributes:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/mortbay/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lorg/mortbay/jetty/Server;->_attributes:Lorg/mortbay/util/AttributesMap;

    invoke-static {v0}, Lorg/mortbay/util/AttributesMap;->getAttributeNamesCopy(Lorg/mortbay/util/Attributes;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getConnectors()[Lorg/mortbay/jetty/Connector;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/mortbay/jetty/Server;->_connectors:[Lorg/mortbay/jetty/Connector;

    return-object v0
.end method

.method public getContainer()Lorg/mortbay/component/Container;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/mortbay/jetty/Server;->_container:Lorg/mortbay/component/Container;

    return-object v0
.end method

.method public getGracefulShutdown()I
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Lorg/mortbay/jetty/Server;->_graceful:I

    return v0
.end method

.method public getHandlers()[Lorg/mortbay/jetty/Handler;
    .locals 1

    .prologue
    .line 616
    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    instance-of v0, v0, Lorg/mortbay/jetty/handler/HandlerCollection;

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/handler/HandlerCollection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v0

    .line 619
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSendDateHeader()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lorg/mortbay/jetty/Server;->_sendDateHeader:Z

    return v0
.end method

.method public getSendServerVersion()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lorg/mortbay/jetty/Server;->_sendServerVersion:Z

    return v0
.end method

.method public getSessionIdManager()Lorg/mortbay/jetty/SessionIdManager;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/mortbay/jetty/Server;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    return-object v0
.end method

.method public getStopAtShutdown()Z
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lorg/mortbay/jetty/Server;->hookThread:Lorg/mortbay/jetty/Server$ShutdownHookThread;

    invoke-virtual {v0, p0}, Lorg/mortbay/jetty/Server$ShutdownHookThread;->contains(Lorg/mortbay/jetty/Server;)Z

    move-result v0

    return v0
.end method

.method public getThreadPool()Lorg/mortbay/thread/ThreadPool;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/mortbay/jetty/Server;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    return-object v0
.end method

.method public getUserRealms()[Lorg/mortbay/jetty/security/UserRealm;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lorg/mortbay/jetty/Server;->_realms:[Lorg/mortbay/jetty/security/UserRealm;

    return-object v0
.end method

.method public handle(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 4
    .param p1, "connection"    # Lorg/mortbay/jetty/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 318
    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "target":Ljava/lang/String;
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "REQUEST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/mortbay/jetty/Server;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 323
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "RESPONSE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/mortbay/jetty/Server;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    goto :goto_0
.end method

.method public join()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/thread/ThreadPool;->join()V

    .line 333
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 672
    iget-object v0, p0, Lorg/mortbay/jetty/Server;->_attributes:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/mortbay/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public removeConnector(Lorg/mortbay/jetty/Connector;)V
    .locals 1
    .param p1, "connector"    # Lorg/mortbay/jetty/Connector;

    .prologue
    .line 144
    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getConnectors()[Lorg/mortbay/jetty/Connector;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->removeFromArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/Connector;

    check-cast v0, [Lorg/mortbay/jetty/Connector;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Server;->setConnectors([Lorg/mortbay/jetty/Connector;)V

    .line 145
    return-void
.end method

.method public removeHandler(Lorg/mortbay/jetty/Handler;)V
    .locals 1
    .param p1, "handler"    # Lorg/mortbay/jetty/Handler;

    .prologue
    .line 607
    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    instance-of v0, v0, Lorg/mortbay/jetty/handler/HandlerCollection;

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/handler/HandlerCollection;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/HandlerCollection;->removeHandler(Lorg/mortbay/jetty/Handler;)V

    .line 609
    :cond_0
    return-void
.end method

.method public removeLifeCycle(Lorg/mortbay/component/LifeCycle;)V
    .locals 1
    .param p1, "c"    # Lorg/mortbay/component/LifeCycle;

    .prologue
    .line 447
    if-nez p1, :cond_0

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Server;->_dependentLifeCycles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 450
    iget-object v0, p0, Lorg/mortbay/jetty/Server;->_container:Lorg/mortbay/component/Container;

    invoke-virtual {v0, p1}, Lorg/mortbay/component/Container;->removeBean(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V
    .locals 1
    .param p1, "realm"    # Lorg/mortbay/jetty/security/UserRealm;

    .prologue
    .line 363
    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getUserRealms()[Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->removeFromArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/security/UserRealm;

    check-cast v0, [Lorg/mortbay/jetty/security/UserRealm;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Server;->setUserRealms([Lorg/mortbay/jetty/security/UserRealm;)V

    .line 364
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/Object;

    .prologue
    .line 681
    iget-object v0, p0, Lorg/mortbay/jetty/Server;->_attributes:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {v0, p1, p2}, Lorg/mortbay/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    return-void
.end method

.method public setConnectors([Lorg/mortbay/jetty/Connector;)V
    .locals 4
    .param p1, "connectors"    # [Lorg/mortbay/jetty/Connector;

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 157
    aget-object v1, p1, v0

    invoke-interface {v1, p0}, Lorg/mortbay/jetty/Connector;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/Server;->_container:Lorg/mortbay/component/Container;

    iget-object v2, p0, Lorg/mortbay/jetty/Server;->_connectors:[Lorg/mortbay/jetty/Connector;

    const-string v3, "connector"

    invoke-virtual {v1, p0, v2, p1, v3}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iput-object p1, p0, Lorg/mortbay/jetty/Server;->_connectors:[Lorg/mortbay/jetty/Connector;

    .line 162
    return-void
.end method

.method public setGracefulShutdown(I)V
    .locals 0
    .param p1, "timeoutMS"    # I

    .prologue
    .line 705
    iput p1, p0, Lorg/mortbay/jetty/Server;->_graceful:I

    .line 706
    return-void
.end method

.method public setHandlers([Lorg/mortbay/jetty/Handler;)V
    .locals 2
    .param p1, "handlers"    # [Lorg/mortbay/jetty/Handler;

    .prologue
    .line 628
    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v1

    instance-of v1, v1, Lorg/mortbay/jetty/handler/HandlerCollection;

    if-eqz v1, :cond_0

    .line 629
    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/handler/HandlerCollection;

    .line 636
    .local v0, "collection":Lorg/mortbay/jetty/handler/HandlerCollection;
    :goto_0
    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/HandlerCollection;->setHandlers([Lorg/mortbay/jetty/Handler;)V

    .line 637
    return-void

    .line 632
    .end local v0    # "collection":Lorg/mortbay/jetty/handler/HandlerCollection;
    :cond_0
    new-instance v0, Lorg/mortbay/jetty/handler/HandlerCollection;

    invoke-direct {v0}, Lorg/mortbay/jetty/handler/HandlerCollection;-><init>()V

    .line 633
    .restart local v0    # "collection":Lorg/mortbay/jetty/handler/HandlerCollection;
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Server;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0
.end method

.method public setSendDateHeader(Z)V
    .locals 0
    .param p1, "sendDateHeader"    # Z

    .prologue
    .line 405
    iput-boolean p1, p0, Lorg/mortbay/jetty/Server;->_sendDateHeader:Z

    .line 406
    return-void
.end method

.method public setSendServerVersion(Z)V
    .locals 0
    .param p1, "sendServerVersion"    # Z

    .prologue
    .line 390
    iput-boolean p1, p0, Lorg/mortbay/jetty/Server;->_sendServerVersion:Z

    .line 391
    return-void
.end method

.method public setSessionIdManager(Lorg/mortbay/jetty/SessionIdManager;)V
    .locals 6
    .param p1, "sessionIdManager"    # Lorg/mortbay/jetty/SessionIdManager;

    .prologue
    .line 383
    iget-object v0, p0, Lorg/mortbay/jetty/Server;->_container:Lorg/mortbay/component/Container;

    iget-object v2, p0, Lorg/mortbay/jetty/Server;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    const-string v4, "sessionIdManager"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 384
    iput-object p1, p0, Lorg/mortbay/jetty/Server;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    .line 385
    return-void
.end method

.method public setStopAtShutdown(Z)V
    .locals 1
    .param p1, "stop"    # Z

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    sget-object v0, Lorg/mortbay/jetty/Server;->hookThread:Lorg/mortbay/jetty/Server$ShutdownHookThread;

    invoke-virtual {v0, p0}, Lorg/mortbay/jetty/Server$ShutdownHookThread;->add(Lorg/mortbay/jetty/Server;)Z

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/Server;->hookThread:Lorg/mortbay/jetty/Server$ShutdownHookThread;

    invoke-virtual {v0, p0}, Lorg/mortbay/jetty/Server$ShutdownHookThread;->remove(Lorg/mortbay/jetty/Server;)Z

    goto :goto_0
.end method

.method public setThreadPool(Lorg/mortbay/thread/ThreadPool;)V
    .locals 6
    .param p1, "threadPool"    # Lorg/mortbay/thread/ThreadPool;

    .prologue
    .line 179
    iget-object v0, p0, Lorg/mortbay/jetty/Server;->_container:Lorg/mortbay/component/Container;

    iget-object v2, p0, Lorg/mortbay/jetty/Server;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    const-string v4, "threadpool"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 180
    iput-object p1, p0, Lorg/mortbay/jetty/Server;->_threadPool:Lorg/mortbay/thread/ThreadPool;

    .line 181
    return-void
.end method

.method public setUserRealms([Lorg/mortbay/jetty/security/UserRealm;)V
    .locals 6
    .param p1, "realms"    # [Lorg/mortbay/jetty/security/UserRealm;

    .prologue
    .line 350
    iget-object v0, p0, Lorg/mortbay/jetty/Server;->_container:Lorg/mortbay/component/Container;

    iget-object v2, p0, Lorg/mortbay/jetty/Server;->_realms:[Lorg/mortbay/jetty/security/UserRealm;

    const-string v4, "realm"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 351
    iput-object p1, p0, Lorg/mortbay/jetty/Server;->_realms:[Lorg/mortbay/jetty/security/UserRealm;

    .line 352
    return-void
.end method
