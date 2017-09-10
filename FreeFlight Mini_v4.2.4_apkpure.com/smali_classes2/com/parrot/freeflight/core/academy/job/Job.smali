.class public abstract Lcom/parrot/freeflight/core/academy/job/Job;
.super Ljava/lang/Object;
.source "Job.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Job"


# instance fields
.field private final mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mJobHolder:Lcom/parrot/freeflight/core/academy/job/IJobHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/core/academy/job/IJobHolder",
            "<TJ;>;"
        }
    .end annotation
.end field

.field private mStopped:Z


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V
    .locals 1
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
    .line 20
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/Job;, "Lcom/parrot/freeflight/core/academy/job/Job<TJ;TR;>;"
    .local p1, "jobHolder":Lcom/parrot/freeflight/core/academy/job/IJobHolder;, "Lcom/parrot/freeflight/core/academy/job/IJobHolder<TJ;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/job/Job;->mStopped:Z

    .line 21
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/job/Job;->mJobHolder:Lcom/parrot/freeflight/core/academy/job/IJobHolder;

    .line 22
    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/job/Job;->mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/academy/job/Job;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/job/Job;

    .prologue
    .line 7
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/job/Job;->mStopped:Z

    return v0
.end method


# virtual methods
.method protected dispatchResult(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2
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
    .line 53
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/Job;, "Lcom/parrot/freeflight/core/academy/job/Job<TJ;TR;>;"
    .local p1, "job":Ljava/lang/Object;, "TJ;"
    .local p2, "result":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/Job;->mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    new-instance v1, Lcom/parrot/freeflight/core/academy/job/Job$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/Job$2;-><init>(Lcom/parrot/freeflight/core/academy/job/Job;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;->post(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/Job;, "Lcom/parrot/freeflight/core/academy/job/Job<TJ;TR;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/job/Job;->mStopped:Z

    return v0
.end method

.method protected abstract next()V
.end method

.method protected onFinish(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 3
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
    .line 69
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/Job;, "Lcom/parrot/freeflight/core/academy/job/Job<TJ;TR;>;"
    .local p1, "job":Ljava/lang/Object;, "TJ;"
    .local p2, "result":Ljava/lang/Object;, "TR;"
    const-string v0, "Job"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-eqz p3, :cond_0

    const-string v0, "Job"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "with error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-void
.end method

.method protected post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 74
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/Job;, "Lcom/parrot/freeflight/core/academy/job/Job<TJ;TR;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/Job;->mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;->post(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 26
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/Job;, "Lcom/parrot/freeflight/core/academy/job/Job<TJ;TR;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/job/Job;->mStopped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/Job;->mJobHolder:Lcom/parrot/freeflight/core/academy/job/IJobHolder;

    invoke-interface {v0}, Lcom/parrot/freeflight/core/academy/job/IJobHolder;->getJobCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/job/Job;->mStopped:Z

    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/Job;->mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    new-instance v1, Lcom/parrot/freeflight/core/academy/job/Job$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/academy/job/Job$1;-><init>(Lcom/parrot/freeflight/core/academy/job/Job;)V

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;->post(Ljava/lang/Runnable;)V

    .line 36
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 39
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/Job;, "Lcom/parrot/freeflight/core/academy/job/Job<TJ;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/job/Job;->mStopped:Z

    .line 40
    const-string v0, "Job"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method
