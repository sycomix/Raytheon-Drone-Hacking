.class public Lorg/mortbay/jetty/servlet/HashSessionIdManager;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "HashSessionIdManager.java"

# interfaces
.implements Lorg/mortbay/jetty/SessionIdManager;


# static fields
.field private static final __NEW_SESSION_ID:Ljava/lang/String; = "org.mortbay.jetty.newSessionId"


# instance fields
.field protected _random:Ljava/util/Random;

.field _sessions:Lorg/mortbay/util/MultiMap;

.field private _weakRandom:Z

.field private _workerName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 0
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    .line 53
    return-void
.end method


# virtual methods
.method public addSession(Ljavax/servlet/http/HttpSession;)V
    .locals 2
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 155
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    invoke-interface {p1}, Ljavax/servlet/http/HttpSession;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    monitor-exit p0

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected doStart()V
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    if-nez v1, :cond_0

    .line 119
    :try_start_0
    const-string v1, "Init SecureRandom."

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 120
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    new-instance v1, Lorg/mortbay/util/MultiMap;

    invoke-direct {v1}, Lorg/mortbay/util/MultiMap;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    .line 130
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Could not generate SecureRandom for session-id randomness"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_weakRandom:Z

    goto :goto_0
.end method

.method protected doStop()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0}, Lorg/mortbay/util/MultiMap;->clear()V

    .line 137
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    .line 138
    return-void
.end method

.method public getClusterId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 105
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 106
    .local v0, "dot":I
    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "nodeId":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public getNodeId(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 3
    .param p1, "clusterId"    # Ljava/lang/String;
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    const/16 v2, 0x2e

    .line 87
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 88
    .local v0, "worker":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    .line 89
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    .end local p1    # "clusterId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p1

    .line 87
    .end local v0    # "worker":Ljava/lang/String;
    .restart local p1    # "clusterId":Ljava/lang/String;
    :cond_1
    const-string v1, "org.mortbay.http.ajp.JVMRoute"

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    .line 91
    .restart local v0    # "worker":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_workerName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 92
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_workerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public getRandom()Ljava/util/Random;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    return-object v0
.end method

.method public getWorkerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_workerName:Ljava/lang/String;

    return-object v0
.end method

.method public idInUse(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0, p1}, Lorg/mortbay/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public invalidateAll(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 181
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 182
    .local v1, "session":Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v2, p1}, Lorg/mortbay/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lorg/mortbay/util/MultiMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-object v1, v0

    .line 187
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v2, p1, v1}, Lorg/mortbay/util/MultiMap;->removeValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 191
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->invalidate()V

    goto :goto_0

    .line 190
    :cond_1
    :try_start_1
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public newSessionId(Ljavax/servlet/http/HttpServletRequest;J)Ljava/lang/String;
    .locals 13
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "created"    # J

    .prologue
    .line 208
    monitor-enter p0

    .line 211
    :try_start_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "requested_id":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 215
    invoke-virtual {p0, v3}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "cluster_id":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 217
    monitor-exit p0

    .line 245
    .end local v0    # "cluster_id":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 221
    :cond_0
    const-string v8, "org.mortbay.jetty.newSessionId"

    invoke-interface {p1, v8}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 222
    .local v2, "new_id":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 223
    monitor-exit p0

    move-object v0, v2

    goto :goto_0

    .line 226
    :cond_1
    const/4 v1, 0x0

    .line 227
    .local v1, "id":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 229
    :cond_2
    iget-boolean v8, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_weakRandom:Z

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    int-to-long v8, v8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    xor-long/2addr v8, v10

    iget-object v10, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

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

    .line 232
    .local v4, "r0":J
    :goto_2
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    .line 233
    .local v6, "r1":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gez v8, :cond_3

    .line 234
    neg-long v4, v4

    .line 235
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_4

    .line 236
    neg-long v6, v6

    .line 237
    :cond_4
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

    .line 238
    goto :goto_1

    .line 229
    .end local v4    # "r0":J
    .end local v6    # "r1":J
    :cond_5
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    goto :goto_2

    .line 241
    :cond_6
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_workerName:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 242
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_workerName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    :cond_7
    const-string v8, "org.mortbay.jetty.newSessionId"

    invoke-interface {p1, v8, v1}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    monitor-exit p0

    move-object v0, v1

    goto/16 :goto_0

    .line 246
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

.method public removeSession(Ljavax/servlet/http/HttpSession;)V
    .locals 2
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 167
    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_sessions:Lorg/mortbay/util/MultiMap;

    invoke-interface {p1}, Ljavax/servlet/http/HttpSession;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/mortbay/util/MultiMap;->removeValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    monitor-exit p0

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRandom(Ljava/util/Random;)V
    .locals 1
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 258
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_weakRandom:Z

    .line 260
    return-void
.end method

.method public setWorkerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "workerName"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_workerName:Ljava/lang/String;

    .line 77
    return-void
.end method
