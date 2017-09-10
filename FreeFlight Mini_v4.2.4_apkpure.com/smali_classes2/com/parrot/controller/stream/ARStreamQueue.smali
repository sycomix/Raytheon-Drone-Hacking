.class public Lcom/parrot/controller/stream/ARStreamQueue;
.super Ljava/lang/Object;
.source "ARStreamQueue.java"


# instance fields
.field private flushOnIFrame:Z

.field private frameArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/controller/stream/ARFrame;",
            ">;"
        }
    .end annotation
.end field

.field private semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "flushOnIFrame"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p2, p0, Lcom/parrot/controller/stream/ARStreamQueue;->flushOnIFrame:Z

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/stream/ARStreamQueue;->frameArray:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/stream/ARStreamQueue;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 22
    return-void
.end method

.method private declared-synchronized internalPop()Lcom/parrot/controller/stream/ARFrame;
    .locals 3

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/stream/ARStreamQueue;->frameArray:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/controller/stream/ARFrame;

    .line 90
    .local v0, "retFrame":Lcom/parrot/controller/stream/ARFrame;
    iget-object v1, p0, Lcom/parrot/controller/stream/ARStreamQueue;->frameArray:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-object v0

    .line 89
    .end local v0    # "retFrame":Lcom/parrot/controller/stream/ARFrame;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/parrot/controller/stream/ARStreamQueue;->tryPop()Lcom/parrot/controller/stream/ARFrame;

    move-result-object v0

    .line 80
    .local v0, "frame":Lcom/parrot/controller/stream/ARFrame;
    :goto_0
    if-eqz v0, :cond_0

    .line 82
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/stream/ARFrame;->setAvailable(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/parrot/controller/stream/ARStreamQueue;->tryPop()Lcom/parrot/controller/stream/ARFrame;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method public pop()Lcom/parrot/controller/stream/ARFrame;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, "retFrame":Lcom/parrot/controller/stream/ARFrame;
    iget-object v1, p0, Lcom/parrot/controller/stream/ARStreamQueue;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 40
    invoke-direct {p0}, Lcom/parrot/controller/stream/ARStreamQueue;->internalPop()Lcom/parrot/controller/stream/ARFrame;

    move-result-object v0

    .line 42
    return-object v0
.end method

.method public popWithTimeout(J)Lcom/parrot/controller/stream/ARFrame;
    .locals 5
    .param p1, "timeoutMs"    # J

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 63
    .local v1, "retFrame":Lcom/parrot/controller/stream/ARFrame;
    :try_start_0
    iget-object v2, p0, Lcom/parrot/controller/stream/ARStreamQueue;->semaphore:Ljava/util/concurrent/Semaphore;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/parrot/controller/stream/ARStreamQueue;->internalPop()Lcom/parrot/controller/stream/ARFrame;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    :cond_0
    :goto_0
    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized push(Lcom/parrot/controller/stream/ARFrame;)V
    .locals 1
    .param p1, "frame"    # Lcom/parrot/controller/stream/ARFrame;

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/controller/stream/ARStreamQueue;->flushOnIFrame:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->isIFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/parrot/controller/stream/ARStreamQueue;->flush()V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/stream/ARStreamQueue;->frameArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/parrot/controller/stream/ARStreamQueue;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryPop()Lcom/parrot/controller/stream/ARFrame;
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, "retFrame":Lcom/parrot/controller/stream/ARFrame;
    iget-object v1, p0, Lcom/parrot/controller/stream/ARStreamQueue;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/parrot/controller/stream/ARStreamQueue;->internalPop()Lcom/parrot/controller/stream/ARFrame;

    move-result-object v0

    .line 54
    :cond_0
    return-object v0
.end method
