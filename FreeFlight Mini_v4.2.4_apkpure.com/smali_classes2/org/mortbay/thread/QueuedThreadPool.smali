.class public Lorg/mortbay/thread/QueuedThreadPool;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "QueuedThreadPool.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/mortbay/thread/ThreadPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/thread/QueuedThreadPool$1;,
        Lorg/mortbay/thread/QueuedThreadPool$Lock;,
        Lorg/mortbay/thread/QueuedThreadPool$PoolThread;
    }
.end annotation


# instance fields
.field private _daemon:Z

.field private _id:I

.field private _idle:Ljava/util/List;

.field private _jobs:[Ljava/lang/Runnable;

.field private final _joinLock:Ljava/lang/Object;

.field private _lastShrink:J

.field private final _lock:Ljava/lang/Object;

.field private _lowThreads:I

.field private _maxIdleTimeMs:I

.field private _maxQueued:I

.field private _maxStopTimeMs:I

.field private _maxThreads:I

.field private _minThreads:I

.field private _name:Ljava/lang/String;

.field private _nextJob:I

.field private _nextJobSlot:I

.field private _priority:I

.field private _queued:I

.field private _spawnOrShrinkAt:I

.field private _threads:Ljava/util/Set;

.field private final _threadsLock:Ljava/lang/Object;

.field private _warned:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 55
    new-instance v0, Lorg/mortbay/thread/QueuedThreadPool$Lock;

    invoke-direct {v0, p0, v2}, Lorg/mortbay/thread/QueuedThreadPool$Lock;-><init>(Lorg/mortbay/thread/QueuedThreadPool;Lorg/mortbay/thread/QueuedThreadPool$1;)V

    iput-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_lock:Ljava/lang/Object;

    .line 56
    new-instance v0, Lorg/mortbay/thread/QueuedThreadPool$Lock;

    invoke-direct {v0, p0, v2}, Lorg/mortbay/thread/QueuedThreadPool$Lock;-><init>(Lorg/mortbay/thread/QueuedThreadPool;Lorg/mortbay/thread/QueuedThreadPool$1;)V

    iput-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threadsLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Lorg/mortbay/thread/QueuedThreadPool$Lock;

    invoke-direct {v0, p0, v2}, Lorg/mortbay/thread/QueuedThreadPool$Lock;-><init>(Lorg/mortbay/thread/QueuedThreadPool;Lorg/mortbay/thread/QueuedThreadPool$1;)V

    iput-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_joinLock:Ljava/lang/Object;

    .line 60
    const v0, 0xea60

    iput v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxIdleTimeMs:I

    .line 61
    const/16 v0, 0xfa

    iput v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxThreads:I

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_minThreads:I

    .line 63
    iput-boolean v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_warned:Z

    .line 64
    iput v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_lowThreads:I

    .line 65
    const/4 v0, 0x5

    iput v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_priority:I

    .line 66
    iput v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_spawnOrShrinkAt:I

    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "qtp-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_name:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxThreads"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/mortbay/thread/QueuedThreadPool;-><init>()V

    .line 84
    invoke-virtual {p0, p1}, Lorg/mortbay/thread/QueuedThreadPool;->setMaxThreads(I)V

    .line 85
    return-void
.end method

.method static access$100(Lorg/mortbay/thread/QueuedThreadPool;)Z
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/thread/QueuedThreadPool;

    .prologue
    .line 41
    iget-boolean v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_daemon:Z

    return v0
.end method

.method static access$1000(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/thread/QueuedThreadPool;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_idle:Ljava/util/List;

    return-object v0
.end method

.method static access$1100(Lorg/mortbay/thread/QueuedThreadPool;)I
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/thread/QueuedThreadPool;

    .prologue
    .line 41
    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_spawnOrShrinkAt:I

    return v0
.end method

.method static access$1200(Lorg/mortbay/thread/QueuedThreadPool;)J
    .locals 2
    .param p0, "x0"    # Lorg/mortbay/thread/QueuedThreadPool;

    .prologue
    .line 41
    iget-wide v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_lastShrink:J

    return-wide v0
.end method

.method static access$1202(Lorg/mortbay/thread/QueuedThreadPool;J)J
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/thread/QueuedThreadPool;
    .param p1, "x1"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_lastShrink:J

    return-wide p1
.end method

.method static access$1300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/thread/QueuedThreadPool;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threadsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static access$200(Lorg/mortbay/thread/QueuedThreadPool;)I
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/thread/QueuedThreadPool;

    .prologue
    .line 41
    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_priority:I

    return v0
.end method

.method static access$300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/thread/QueuedThreadPool;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_lock:Ljava/lang/Object;

    return-object v0
.end method

.method static access$400(Lorg/mortbay/thread/QueuedThreadPool;)I
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/thread/QueuedThreadPool;

    .prologue
    .line 41
    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    return v0
.end method

.method static access$410(Lorg/mortbay/thread/QueuedThreadPool;)I
    .locals 2
    .param p0, "x0"    # Lorg/mortbay/thread/QueuedThreadPool;

    .prologue
    .line 41
    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    return v0
.end method

.method static access$500(Lorg/mortbay/thread/QueuedThreadPool;)[Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/thread/QueuedThreadPool;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_jobs:[Ljava/lang/Runnable;

    return-object v0
.end method

.method static access$600(Lorg/mortbay/thread/QueuedThreadPool;)I
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/thread/QueuedThreadPool;

    .prologue
    .line 41
    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJob:I

    return v0
.end method

.method static access$602(Lorg/mortbay/thread/QueuedThreadPool;I)I
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/thread/QueuedThreadPool;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJob:I

    return p1
.end method

.method static access$608(Lorg/mortbay/thread/QueuedThreadPool;)I
    .locals 2
    .param p0, "x0"    # Lorg/mortbay/thread/QueuedThreadPool;

    .prologue
    .line 41
    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJob:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJob:I

    return v0
.end method

.method static access$700(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/thread/QueuedThreadPool;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    return-object v0
.end method

.method static access$800(Lorg/mortbay/thread/QueuedThreadPool;)I
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/thread/QueuedThreadPool;

    .prologue
    .line 41
    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_minThreads:I

    return v0
.end method

.method static access$900(Lorg/mortbay/thread/QueuedThreadPool;)I
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/thread/QueuedThreadPool;

    .prologue
    .line 41
    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxThreads:I

    return v0
.end method


# virtual methods
.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 12
    .param p1, "job"    # Ljava/lang/Runnable;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 93
    invoke-virtual {p0}, Lorg/mortbay/thread/QueuedThreadPool;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v7, v6

    .line 141
    :cond_1
    :goto_0
    return v7

    .line 96
    :cond_2
    const/4 v5, 0x0

    .line 97
    .local v5, "thread":Lorg/mortbay/thread/QueuedThreadPool$PoolThread;
    const/4 v3, 0x0

    .line 99
    .local v3, "spawn":Z
    iget-object v8, p0, Lorg/mortbay/thread/QueuedThreadPool;->_lock:Ljava/lang/Object;

    monitor-enter v8

    .line 102
    :try_start_0
    iget-object v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_idle:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    .line 103
    .local v1, "idle":I
    if-lez v1, :cond_3

    .line 104
    iget-object v6, p0, Lorg/mortbay/thread/QueuedThreadPool;->_idle:Ljava/util/List;

    add-int/lit8 v9, v1, -0x1

    invoke-interface {v6, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;

    move-object v5, v0

    .line 131
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    if-eqz v5, :cond_a

    .line 135
    invoke-virtual {v5, p1}, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->dispatch(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 108
    :cond_3
    :try_start_1
    iget v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    .line 109
    iget v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    iget v10, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxQueued:I

    if-le v9, v10, :cond_4

    .line 110
    iget v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    iput v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxQueued:I

    .line 111
    :cond_4
    iget-object v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_jobs:[Ljava/lang/Runnable;

    iget v10, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJobSlot:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJobSlot:I

    aput-object p1, v9, v10

    .line 112
    iget v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJobSlot:I

    iget-object v10, p0, Lorg/mortbay/thread/QueuedThreadPool;->_jobs:[Ljava/lang/Runnable;

    array-length v10, v10

    if-ne v9, v10, :cond_5

    .line 113
    const/4 v9, 0x0

    iput v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJobSlot:I

    .line 114
    :cond_5
    iget v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJobSlot:I

    iget v10, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJob:I

    if-ne v9, v10, :cond_8

    .line 117
    iget-object v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_jobs:[Ljava/lang/Runnable;

    array-length v9, v9

    iget v10, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxThreads:I

    add-int/2addr v9, v10

    new-array v2, v9, [Ljava/lang/Runnable;

    .line 118
    .local v2, "jobs":[Ljava/lang/Runnable;
    iget-object v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_jobs:[Ljava/lang/Runnable;

    array-length v9, v9

    iget v10, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJob:I

    sub-int v4, v9, v10

    .line 119
    .local v4, "split":I
    if-lez v4, :cond_6

    .line 120
    iget-object v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_jobs:[Ljava/lang/Runnable;

    iget v10, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJob:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v2, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    :cond_6
    iget v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJob:I

    if-eqz v9, :cond_7

    .line 122
    iget-object v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_jobs:[Ljava/lang/Runnable;

    const/4 v10, 0x0

    iget v11, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJobSlot:I

    invoke-static {v9, v10, v2, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    :cond_7
    iput-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool;->_jobs:[Ljava/lang/Runnable;

    .line 125
    const/4 v9, 0x0

    iput v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJob:I

    .line 126
    iget v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    iput v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJobSlot:I

    .line 129
    .end local v2    # "jobs":[Ljava/lang/Runnable;
    .end local v4    # "split":I
    :cond_8
    iget v9, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    iget v10, p0, Lorg/mortbay/thread/QueuedThreadPool;->_spawnOrShrinkAt:I

    if-le v9, v10, :cond_9

    move v3, v7

    :goto_2
    goto :goto_1

    :cond_9
    move v3, v6

    goto :goto_2

    .line 131
    .end local v1    # "idle":I
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 137
    .restart local v1    # "idle":I
    :cond_a
    if-eqz v3, :cond_1

    .line 139
    invoke-virtual {p0}, Lorg/mortbay/thread/QueuedThreadPool;->newThread()V

    goto/16 :goto_0
.end method

.method protected doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 394
    iget v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxThreads:I

    iget v2, p0, Lorg/mortbay/thread/QueuedThreadPool;->_minThreads:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_minThreads:I

    if-gtz v1, :cond_1

    .line 395
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "!0<minThreads<maxThreads"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    .line 398
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_idle:Ljava/util/List;

    .line 399
    iget v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxThreads:I

    new-array v1, v1, [Ljava/lang/Runnable;

    iput-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_jobs:[Ljava/lang/Runnable;

    .line 401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_minThreads:I

    if-ge v0, v1, :cond_2

    .line 403
    invoke-virtual {p0}, Lorg/mortbay/thread/QueuedThreadPool;->newThread()V

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_2
    return-void
.end method

.method protected doStop()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 417
    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStop()V

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 420
    .local v2, "start":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x64

    if-ge v0, v4, :cond_1

    .line 422
    iget-object v5, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threadsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 424
    :try_start_0
    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 425
    .local v1, "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 426
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 427
    .end local v1    # "iter":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "iter":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 430
    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxStopTimeMs:I

    if-lez v4, :cond_3

    iget v4, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxStopTimeMs:I

    int-to-long v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 443
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 444
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " threads could not be stopped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 446
    :cond_2
    iget-object v5, p0, Lorg/mortbay/thread/QueuedThreadPool;->_joinLock:Ljava/lang/Object;

    monitor-enter v5

    .line 448
    :try_start_2
    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool;->_joinLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 449
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 450
    return-void

    .line 435
    .restart local v1    # "iter":Ljava/util/Iterator;
    :cond_3
    mul-int/lit8 v4, v0, 0x64

    int-to-long v4, v4

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 420
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    .end local v1    # "iter":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 437
    .restart local v1    # "iter":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public dump()Ljava/lang/String;
    .locals 6

    .prologue
    .line 489
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 491
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threadsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 493
    :try_start_0
    iget-object v3, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 495
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 496
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 498
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v2    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getIdleThreads()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_idle:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_idle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getLowThreads()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_lowThreads:I

    return v0
.end method

.method public getMaxIdleTimeMs()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxIdleTimeMs:I

    return v0
.end method

.method public getMaxQueued()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxQueued:I

    return v0
.end method

.method public getMaxStopTimeMs()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxStopTimeMs:I

    return v0
.end method

.method public getMaxThreads()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxThreads:I

    return v0
.end method

.method public getMinThreads()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_minThreads:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    return v0
.end method

.method public getSpawnOrShrinkAt()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_spawnOrShrinkAt:I

    return v0
.end method

.method public getThreads()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getThreadsPriority()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_priority:I

    return v0
.end method

.method public interruptThread(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 533
    iget-object v3, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threadsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 535
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 537
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 538
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 541
    const/4 v2, 0x1

    monitor-exit v3

    .line 545
    .end local v1    # "thread":Ljava/lang/Thread;
    :goto_0
    return v2

    .line 544
    :cond_1
    monitor-exit v3

    .line 545
    const/4 v2, 0x0

    goto :goto_0

    .line 544
    .end local v0    # "i":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isDaemon()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_daemon:Z

    return v0
.end method

.method public isLowOnThreads()Z
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    iget v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_lowThreads:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public join()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_joinLock:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/thread/QueuedThreadPool;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_joinLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :goto_1
    invoke-virtual {p0}, Lorg/mortbay/thread/QueuedThreadPool;->isStopping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 304
    :cond_1
    return-void
.end method

.method protected newThread()V
    .locals 5

    .prologue
    .line 455
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threadsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 457
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v3, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxThreads:I

    if-ge v1, v3, :cond_1

    .line 459
    new-instance v0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;

    invoke-direct {v0, p0}, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;-><init>(Lorg/mortbay/thread/QueuedThreadPool;)V

    .line 460
    .local v0, "thread":Lorg/mortbay/thread/QueuedThreadPool$PoolThread;
    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/mortbay/thread/QueuedThreadPool;->_name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lorg/mortbay/thread/QueuedThreadPool;->_id:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mortbay/thread/QueuedThreadPool;->_id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->setName(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0}, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->start()V

    .line 469
    .end local v0    # "thread":Lorg/mortbay/thread/QueuedThreadPool$PoolThread;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 470
    return-void

    .line 464
    :cond_1
    iget-boolean v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_warned:Z

    if-nez v1, :cond_0

    .line 466
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_warned:Z

    .line 467
    const-string v1, "Max threads for {}"

    invoke-static {v1, p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 469
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDaemon(Z)V
    .locals 0
    .param p1, "daemon"    # Z

    .prologue
    .line 312
    iput-boolean p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_daemon:Z

    .line 313
    return-void
.end method

.method public setLowThreads(I)V
    .locals 0
    .param p1, "lowThreads"    # I

    .prologue
    .line 321
    iput p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_lowThreads:I

    .line 322
    return-void
.end method

.method public setMaxIdleTimeMs(I)V
    .locals 0
    .param p1, "maxIdleTimeMs"    # I

    .prologue
    .line 334
    iput p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxIdleTimeMs:I

    .line 335
    return-void
.end method

.method public setMaxStopTimeMs(I)V
    .locals 0
    .param p1, "stopTimeMs"    # I

    .prologue
    .line 274
    iput p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxStopTimeMs:I

    .line 275
    return-void
.end method

.method public setMaxThreads(I)V
    .locals 2
    .param p1, "maxThreads"    # I

    .prologue
    .line 345
    invoke-virtual {p0}, Lorg/mortbay/thread/QueuedThreadPool;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_minThreads:I

    if-ge p1, v0, :cond_0

    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "!minThreads<maxThreads"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    iput p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxThreads:I

    .line 348
    return-void
.end method

.method public setMinThreads(I)V
    .locals 3
    .param p1, "minThreads"    # I

    .prologue
    .line 358
    invoke-virtual {p0}, Lorg/mortbay/thread/QueuedThreadPool;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxThreads:I

    if-le p1, v0, :cond_1

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "!0<=minThreads<maxThreads"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
    iput p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_minThreads:I

    .line 361
    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threadsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/thread/QueuedThreadPool;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v2, p0, Lorg/mortbay/thread/QueuedThreadPool;->_minThreads:I

    if-ge v0, v2, :cond_2

    .line 365
    invoke-virtual {p0}, Lorg/mortbay/thread/QueuedThreadPool;->newThread()V

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 376
    iput-object p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_name:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setSpawnOrShrinkAt(I)V
    .locals 0
    .param p1, "spawnOrShrinkAt"    # I

    .prologue
    .line 256
    iput p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_spawnOrShrinkAt:I

    .line 257
    return-void
.end method

.method public setThreadsPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 385
    iput p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_priority:I

    .line 386
    return-void
.end method

.method protected stopJob(Ljava/lang/Thread;Ljava/lang/Object;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "job"    # Ljava/lang/Object;

    .prologue
    .line 482
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 483
    return-void
.end method

.method public stopThread(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 511
    iget-object v3, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threadsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 513
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 516
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    invoke-virtual {v1}, Ljava/lang/Thread;->stop()V

    .line 519
    const/4 v2, 0x1

    monitor-exit v3

    .line 523
    .end local v1    # "thread":Ljava/lang/Thread;
    :goto_0
    return v2

    .line 522
    :cond_1
    monitor-exit v3

    .line 523
    const/4 v2, 0x0

    goto :goto_0

    .line 522
    .end local v0    # "i":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
