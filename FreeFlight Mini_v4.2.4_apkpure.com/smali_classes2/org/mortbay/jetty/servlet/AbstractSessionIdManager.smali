.class public abstract Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "AbstractSessionIdManager.java"

# interfaces
.implements Lorg/mortbay/jetty/SessionIdManager;


# static fields
.field private static final __NEW_SESSION_ID:Ljava/lang/String; = "org.mortbay.jetty.newSessionId"


# instance fields
.field protected _random:Ljava/util/Random;

.field protected _server:Lorg/mortbay/jetty/Server;

.field protected _weakRandom:Z

.field protected _workerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/Server;)V
    .locals 0
    .param p1, "server"    # Lorg/mortbay/jetty/Server;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_server:Lorg/mortbay/jetty/Server;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/Server;Ljava/util/Random;)V
    .locals 0
    .param p1, "server"    # Lorg/mortbay/jetty/Server;
    .param p2, "random"    # Ljava/util/Random;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 45
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    .line 46
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_server:Lorg/mortbay/jetty/Server;

    .line 47
    return-void
.end method


# virtual methods
.method public doStart()V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->initRandom()V

    .line 127
    return-void
.end method

.method public getRandom()Ljava/util/Random;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    return-object v0
.end method

.method public getWorkerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    return-object v0
.end method

.method public initRandom()V
    .locals 6

    .prologue
    .line 136
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    if-nez v1, :cond_0

    .line 140
    :try_start_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_weakRandom:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    int-to-long v4, v4

    xor-long/2addr v2, v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 151
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Could not generate SecureRandom for session-id randomness"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    .line 147
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_weakRandom:Z

    goto :goto_0
.end method

.method public newSessionId(Ljavax/servlet/http/HttpServletRequest;J)Ljava/lang/String;
    .locals 13
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "created"    # J

    .prologue
    .line 78
    monitor-enter p0

    .line 81
    :try_start_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "requested_id":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {p0, v3}, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "cluster_id":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 86
    monitor-exit p0

    .line 120
    .end local v0    # "cluster_id":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 90
    :cond_0
    const-string v8, "org.mortbay.jetty.newSessionId"

    invoke-interface {p1, v8}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    .local v2, "new_id":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 92
    monitor-exit p0

    move-object v0, v2

    goto :goto_0

    .line 97
    :cond_1
    const/4 v1, 0x0

    .line 98
    .local v1, "id":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 100
    :cond_3
    iget-boolean v8, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_weakRandom:Z

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    int-to-long v8, v8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    xor-long/2addr v8, v10

    iget-object v10, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextInt()I

    move-result v10

    int-to-long v10, v10

    xor-long/2addr v8, v10

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    int-to-long v10, v10

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    xor-long v4, v8, v10

    .line 103
    .local v4, "r0":J
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gez v8, :cond_4

    .line 104
    neg-long v4, v4

    .line 105
    :cond_4
    iget-boolean v8, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_weakRandom:Z

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    int-to-long v8, v8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    xor-long/2addr v8, v10

    iget-object v10, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextInt()I

    move-result v10

    int-to-long v10, v10

    xor-long/2addr v8, v10

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    int-to-long v10, v10

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    xor-long v6, v8, v10

    .line 108
    .local v6, "r1":J
    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_5

    .line 109
    neg-long v6, v6

    .line 110
    :cond_5
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v9, 0x24

    invoke-static {v4, v5, v9}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x24

    invoke-static {v6, v7, v9}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 115
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 100
    .end local v4    # "r0":J
    .end local v6    # "r1":J
    :cond_6
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    goto :goto_2

    .line 105
    .restart local v4    # "r0":J
    :cond_7
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    goto :goto_3

    .line 119
    .end local v4    # "r0":J
    :cond_8
    const-string v8, "org.mortbay.jetty.newSessionId"

    invoke-interface {p1, v8, v1}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    monitor-exit p0

    move-object v0, v1

    goto/16 :goto_0

    .line 121
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "new_id":Ljava/lang/String;
    .end local v3    # "requested_id":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public setRandom(Ljava/util/Random;)V
    .locals 1
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_weakRandom:Z

    .line 70
    return-void
.end method

.method public setWorkerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    .line 57
    return-void
.end method
