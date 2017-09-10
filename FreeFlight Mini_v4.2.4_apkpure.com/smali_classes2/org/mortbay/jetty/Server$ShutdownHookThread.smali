.class Lorg/mortbay/jetty/Server$ShutdownHookThread;
.super Ljava/lang/Thread;
.source "Server.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/Server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShutdownHookThread"
.end annotation


# instance fields
.field private hooked:Z

.field private servers:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/Server$ShutdownHookThread;->hooked:Z

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/Server$ShutdownHookThread;->servers:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Lorg/mortbay/jetty/Server$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mortbay/jetty/Server$1;

    .prologue
    .line 463
    invoke-direct {p0}, Lorg/mortbay/jetty/Server$ShutdownHookThread;-><init>()V

    return-void
.end method

.method private createShutdownHook()V
    .locals 7

    .prologue
    .line 475
    const-string v2, "JETTY_NO_SHUTDOWN_HOOK"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/mortbay/jetty/Server$ShutdownHookThread;->hooked:Z

    if-nez v2, :cond_0

    .line 479
    :try_start_0
    sget-object v2, Lorg/mortbay/jetty/Server;->class$java$lang$Runtime:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "java.lang.Runtime"

    invoke-static {v2}, Lorg/mortbay/jetty/Server;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/jetty/Server;->class$java$lang$Runtime:Ljava/lang/Class;

    move-object v3, v2

    :goto_0
    const-string v4, "addShutdownHook"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v2, Lorg/mortbay/jetty/Server;->class$java$lang$Thread:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "java.lang.Thread"

    invoke-static {v2}, Lorg/mortbay/jetty/Server;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/jetty/Server;->class$java$lang$Thread:Ljava/lang/Class;

    :goto_1
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 481
    .local v1, "shutdownHook":Ljava/lang/reflect/Method;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/mortbay/jetty/Server$ShutdownHookThread;->hooked:Z

    .line 491
    .end local v1    # "shutdownHook":Ljava/lang/reflect/Method;
    :cond_0
    :goto_2
    return-void

    .line 479
    :cond_1
    sget-object v2, Lorg/mortbay/jetty/Server;->class$java$lang$Runtime:Ljava/lang/Class;

    move-object v3, v2

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/mortbay/jetty/Server;->class$java$lang$Thread:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 485
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    const-string v2, "No shutdown hook in JVM "

    invoke-static {v2, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public add(Lorg/mortbay/jetty/Server;)Z
    .locals 1
    .param p1, "server"    # Lorg/mortbay/jetty/Server;

    .prologue
    .line 498
    invoke-direct {p0}, Lorg/mortbay/jetty/Server$ShutdownHookThread;->createShutdownHook()V

    .line 499
    iget-object v0, p0, Lorg/mortbay/jetty/Server$ShutdownHookThread;->servers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 515
    invoke-direct {p0}, Lorg/mortbay/jetty/Server$ShutdownHookThread;->createShutdownHook()V

    .line 516
    iget-object v0, p0, Lorg/mortbay/jetty/Server$ShutdownHookThread;->servers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 524
    invoke-direct {p0}, Lorg/mortbay/jetty/Server$ShutdownHookThread;->createShutdownHook()V

    .line 525
    iget-object v0, p0, Lorg/mortbay/jetty/Server$ShutdownHookThread;->servers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 526
    return-void
.end method

.method public contains(Lorg/mortbay/jetty/Server;)Z
    .locals 1
    .param p1, "server"    # Lorg/mortbay/jetty/Server;

    .prologue
    .line 507
    iget-object v0, p0, Lorg/mortbay/jetty/Server$ShutdownHookThread;->servers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/mortbay/jetty/Server;)Z
    .locals 1
    .param p1, "server"    # Lorg/mortbay/jetty/Server;

    .prologue
    .line 533
    invoke-direct {p0}, Lorg/mortbay/jetty/Server$ShutdownHookThread;->createShutdownHook()V

    .line 534
    iget-object v0, p0, Lorg/mortbay/jetty/Server$ShutdownHookThread;->servers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 542
    invoke-direct {p0}, Lorg/mortbay/jetty/Server$ShutdownHookThread;->createShutdownHook()V

    .line 543
    iget-object v0, p0, Lorg/mortbay/jetty/Server$ShutdownHookThread;->servers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 551
    const-string v3, "Shutdown"

    invoke-virtual {p0, v3}, Lorg/mortbay/jetty/Server$ShutdownHookThread;->setName(Ljava/lang/String;)V

    .line 552
    const-string v3, "Shutdown hook executing"

    invoke-static {v3}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    .line 553
    iget-object v3, p0, Lorg/mortbay/jetty/Server$ShutdownHookThread;->servers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 554
    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 556
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mortbay/jetty/Server;

    .line 557
    .local v2, "svr":Lorg/mortbay/jetty/Server;
    if-eqz v2, :cond_0

    .line 561
    :try_start_0
    invoke-virtual {v2}, Lorg/mortbay/jetty/Server;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 567
    :goto_1
    const-string v3, "Shutdown hook complete"

    invoke-static {v3}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    .line 572
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 563
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 565
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 579
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "svr":Lorg/mortbay/jetty/Server;
    :cond_1
    return-void
.end method
