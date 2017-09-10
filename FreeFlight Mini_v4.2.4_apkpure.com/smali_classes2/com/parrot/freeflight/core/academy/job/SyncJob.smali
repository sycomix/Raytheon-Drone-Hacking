.class public abstract Lcom/parrot/freeflight/core/academy/job/SyncJob;
.super Lcom/parrot/freeflight/core/academy/job/Job;
.source "SyncJob.java"


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


# instance fields
.field private mWorkExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V
    .locals 1
    .param p1    # Lcom/parrot/freeflight/core/academy/job/IJobHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;
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
    .line 24
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/SyncJob;, "Lcom/parrot/freeflight/core/academy/job/SyncJob<TJ;TR;>;"
    .local p1, "jobHolder":Lcom/parrot/freeflight/core/academy/job/IJobHolder;, "Lcom/parrot/freeflight/core/academy/job/IJobHolder<TJ;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/core/academy/job/SyncJob;-><init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/core/academy/job/IJobHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "jobExecutor"    # Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "workExecutor"    # Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/academy/job/IJobHolder",
            "<TJ;>;",
            "Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;",
            "Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/SyncJob;, "Lcom/parrot/freeflight/core/academy/job/SyncJob<TJ;TR;>;"
    .local p1, "jobHolder":Lcom/parrot/freeflight/core/academy/job/IJobHolder;, "Lcom/parrot/freeflight/core/academy/job/IJobHolder<TJ;>;"
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/academy/job/Job;-><init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V

    .line 29
    iput-object p3, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob;->mWorkExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/academy/job/SyncJob;)Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/job/SyncJob;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob;->mWorkExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    return-object v0
.end method


# virtual methods
.method protected handle(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/SyncJob;, "Lcom/parrot/freeflight/core/academy/job/SyncJob<TJ;TR;>;"
    .local p1, "job":Ljava/lang/Object;, "TJ;"
    new-instance v0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;

    invoke-direct {v0, p0, p1}, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;-><init>(Lcom/parrot/freeflight/core/academy/job/SyncJob;Ljava/lang/Object;)V

    .line 77
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob;->mWorkExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob;->mWorkExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    invoke-interface {v1, v0}, Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;->post(Ljava/lang/Runnable;)V

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected next()V
    .locals 2

    .prologue
    .line 34
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/SyncJob;, "Lcom/parrot/freeflight/core/academy/job/SyncJob<TJ;TR;>;"
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/job/SyncJob;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob;->mJobHolder:Lcom/parrot/freeflight/core/academy/job/IJobHolder;

    invoke-interface {v1}, Lcom/parrot/freeflight/core/academy/job/IJobHolder;->getOne()Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "job":Ljava/lang/Object;, "TJ;"
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/core/academy/job/SyncJob;->handle(Ljava/lang/Object;)V

    .line 39
    .end local v0    # "job":Ljava/lang/Object;, "TJ;"
    :cond_0
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
    .line 93
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/SyncJob;, "Lcom/parrot/freeflight/core/academy/job/SyncJob<TJ;TR;>;"
    .local p1, "job":Ljava/lang/Object;, "TJ;"
    .local p2, "result":Ljava/lang/Object;, "TR;"
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/Job;->onFinish(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob;->mJobHolder:Lcom/parrot/freeflight/core/academy/job/IJobHolder;

    invoke-interface {v0}, Lcom/parrot/freeflight/core/academy/job/IJobHolder;->getJobCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/job/SyncJob;->stop()V

    .line 97
    :cond_0
    return-void
.end method

.method protected abstract process(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
