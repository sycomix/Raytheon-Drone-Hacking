.class public Lorg/mortbay/util/ajax/WaitingContinuation;
.super Ljava/lang/Object;
.source "WaitingContinuation.java"

# interfaces
.implements Lorg/mortbay/util/ajax/Continuation;


# instance fields
.field _mutex:Ljava/lang/Object;

.field _new:Z

.field _object:Ljava/lang/Object;

.field _pending:Z

.field _resumed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_new:Z

    .line 25
    iput-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_resumed:Z

    .line 26
    iput-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_pending:Z

    .line 30
    iput-object p0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_mutex:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "mutex"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_new:Z

    .line 25
    iput-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_resumed:Z

    .line 26
    iput-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_pending:Z

    .line 35
    if-nez p1, :cond_0

    move-object p1, p0

    .end local p1    # "mutex":Ljava/lang/Object;
    :cond_0
    iput-object p1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_mutex:Ljava/lang/Object;

    .line 36
    return-void
.end method


# virtual methods
.method public getMutex()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_mutex:Ljava/lang/Object;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_object:Ljava/lang/Object;

    return-object v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_new:Z

    return v0
.end method

.method public isPending()Z
    .locals 2

    .prologue
    .line 97
    iget-object v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_pending:Z

    monitor-exit v1

    return v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isResumed()Z
    .locals 2

    .prologue
    .line 105
    iget-object v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_resumed:Z

    monitor-exit v1

    return v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 49
    iget-object v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_resumed:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_pending:Z

    .line 53
    iget-object v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 40
    iget-object v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_resumed:Z

    .line 43
    iget-object v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 44
    monitor-exit v1

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMutex(Ljava/lang/Object;)V
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;

    .prologue
    .line 128
    iget-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_pending:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_mutex:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 130
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .end local p1    # "mutex":Ljava/lang/Object;
    :cond_1
    iput-object p1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_mutex:Ljava/lang/Object;

    .line 131
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 118
    iput-object p1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_object:Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public suspend(J)Z
    .locals 7
    .param p1, "timeout"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 64
    iget-object v3, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 66
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_new:Z

    .line 67
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_pending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :try_start_1
    iget-boolean v2, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_resumed:Z

    if-nez v2, :cond_0

    cmp-long v2, p1, v4

    if-ltz v2, :cond_0

    .line 73
    cmp-long v2, p1, v4

    if-nez v2, :cond_1

    .line 74
    iget-object v2, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_mutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_resumed:Z

    .line 87
    .local v1, "result":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_resumed:Z

    .line 88
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_pending:Z

    .line 91
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    .line 75
    .end local v1    # "result":Z
    :cond_1
    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    .line 76
    :try_start_3
    iget-object v2, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_mutex:Ljava/lang/Object;

    invoke-virtual {v2, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 86
    :try_start_5
    iget-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_resumed:Z

    .line 87
    .restart local v1    # "result":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_resumed:Z

    .line 88
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_pending:Z

    goto :goto_1

    .line 92
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 86
    :catchall_1
    move-exception v2

    :try_start_6
    iget-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_resumed:Z

    .line 87
    .restart local v1    # "result":Z
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_resumed:Z

    .line 88
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_pending:Z

    .line 86
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    monitor-enter p0

    .line 137
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "WaitingContinuation@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_new:Z

    if-eqz v0, :cond_0

    const-string v0, ",new"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_pending:Z

    if-eqz v0, :cond_1

    const-string v0, ",pending"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->_resumed:Z

    if-eqz v0, :cond_2

    const-string v0, ",resumed"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
