.class public Lorg/mortbay/jetty/nio/InheritedChannelConnector;
.super Lorg/mortbay/jetty/nio/SelectChannelConnector;
.source "InheritedChannelConnector.java"


# static fields
.field static class$java$lang$System:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 35
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


# virtual methods
.method public open()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    monitor-enter p0

    .line 35
    :try_start_0
    sget-object v3, Lorg/mortbay/jetty/nio/InheritedChannelConnector;->class$java$lang$System:Ljava/lang/Class;

    if-nez v3, :cond_2

    const-string v3, "java.lang.System"

    invoke-static {v3}, Lorg/mortbay/jetty/nio/InheritedChannelConnector;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/mortbay/jetty/nio/InheritedChannelConnector;->class$java$lang$System:Ljava/lang/Class;

    :goto_0
    const-string v4, "inheritedChannel"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 36
    .local v2, "m":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 38
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/Channel;

    .line 39
    .local v0, "channel":Ljava/nio/channels/Channel;
    instance-of v3, v0, Ljava/nio/channels/ServerSocketChannel;

    if-eqz v3, :cond_0

    .line 40
    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    .end local v0    # "channel":Ljava/nio/channels/Channel;
    iput-object v0, p0, Lorg/mortbay/jetty/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 43
    :cond_0
    iget-object v3, p0, Lorg/mortbay/jetty/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v3, :cond_1

    .line 44
    iget-object v3, p0, Lorg/mortbay/jetty/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    :try_start_1
    iget-object v3, p0, Lorg/mortbay/jetty/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-nez v3, :cond_3

    .line 52
    invoke-super {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->open()V

    .line 55
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    return-void

    .line 35
    :cond_2
    :try_start_2
    sget-object v3, Lorg/mortbay/jetty/nio/InheritedChannelConnector;->class$java$lang$System:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 54
    :cond_3
    :try_start_4
    new-instance v3, Ljava/io/IOException;

    const-string v4, "No System.inheritedChannel()"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
