.class public abstract Lcom/parrot/freeflight/core/academy/job/AsyncJob;
.super Lcom/parrot/freeflight/core/academy/job/Job;
.source "AsyncJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/parrot/freeflight/core/academy/job/Job",
        "<TJ;TR;>;"
    }
.end annotation


# static fields
.field private static final MAX_REQUEST_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AsyncJob"


# instance fields
.field private final mJobRequests:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TJ;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V
    .locals 2
    .param p1    # Lcom/parrot/freeflight/core/academy/job/IJobHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "jobExecutor"    # Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/academy/job/IJobHolder",
            "<TJ;>;",
            "Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/AsyncJob;, "Lcom/parrot/freeflight/core/academy/job/AsyncJob<TJ;TR;>;"
    .local p1, "jobHolder":Lcom/parrot/freeflight/core/academy/job/IJobHolder;, "Lcom/parrot/freeflight/core/academy/job/IJobHolder<TJ;>;"
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/academy/job/Job;-><init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->mJobRequests:Ljava/util/Map;

    .line 31
    return-void
.end method


# virtual methods
.method protected abstract cancelRequest(I)V
.end method

.method protected next()V
    .locals 4

    .prologue
    .line 35
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/AsyncJob;, "Lcom/parrot/freeflight/core/academy/job/AsyncJob<TJ;TR;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->isStopped()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->mJobHolder:Lcom/parrot/freeflight/core/academy/job/IJobHolder;

    invoke-interface {v2}, Lcom/parrot/freeflight/core/academy/job/IJobHolder;->getJobCount()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->mJobRequests:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 36
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->mJobHolder:Lcom/parrot/freeflight/core/academy/job/IJobHolder;

    invoke-interface {v2}, Lcom/parrot/freeflight/core/academy/job/IJobHolder;->getOne()Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "job":Ljava/lang/Object;, "TJ;"
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->process(Ljava/lang/Object;)I

    move-result v1

    .line 39
    .local v1, "requestId":I
    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->mJobRequests:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 42
    .end local v0    # "job":Ljava/lang/Object;, "TJ;"
    .end local v1    # "requestId":I
    :cond_1
    return-void
.end method

.method protected onFinish(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "error"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;TR;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/AsyncJob;, "Lcom/parrot/freeflight/core/academy/job/AsyncJob<TJ;TR;>;"
    .local p1, "job":Ljava/lang/Object;, "TJ;"
    .local p2, "result":Ljava/lang/Object;, "TR;"
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/Job;->onFinish(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->mJobRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->mJobRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->mJobHolder:Lcom/parrot/freeflight/core/academy/job/IJobHolder;

    invoke-interface {v0}, Lcom/parrot/freeflight/core/academy/job/IJobHolder;->getJobCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->stop()V

    .line 84
    :cond_0
    return-void
.end method

.method protected abstract process(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)I"
        }
    .end annotation
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 54
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/AsyncJob;, "Lcom/parrot/freeflight/core/academy/job/AsyncJob<TJ;TR;>;"
    invoke-super {p0}, Lcom/parrot/freeflight/core/academy/job/Job;->stop()V

    .line 55
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->mJobRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->mJobRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 57
    .local v0, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TJ;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->cancelRequest(I)V

    .line 58
    new-instance v1, Lcom/parrot/freeflight/core/academy/job/AsyncJob$1;

    invoke-direct {v1, p0, v0}, Lcom/parrot/freeflight/core/academy/job/AsyncJob$1;-><init>(Lcom/parrot/freeflight/core/academy/job/AsyncJob;Ljava/util/Map$Entry;)V

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 65
    .end local v0    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TJ;Ljava/lang/Integer;>;"
    :cond_0
    const-string v1, "AsyncJob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop current job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->mJobRequests:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->mJobRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 68
    :cond_1
    return-void
.end method
