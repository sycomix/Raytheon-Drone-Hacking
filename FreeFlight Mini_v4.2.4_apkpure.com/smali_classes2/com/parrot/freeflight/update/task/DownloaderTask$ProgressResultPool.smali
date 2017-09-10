.class public Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;
.super Ljava/lang/Object;
.source "DownloaderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/task/DownloaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressResultPool"
.end annotation


# instance fields
.field private final mPool:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool",
            "<",
            "Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;->mPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    return-void
.end method


# virtual methods
.method public obtain()Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 467
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;->mPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    .line 468
    .local v0, "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    if-eqz v0, :cond_0

    .line 469
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mAlreadyDownloaded:Z

    .line 472
    .end local v0    # "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    :goto_0
    return-object v0

    .restart local v0    # "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    .end local v0    # "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;-><init>(F)V

    goto :goto_0
.end method

.method public recycle(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)V
    .locals 1
    .param p1, "result"    # Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 476
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;->mPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 477
    return-void
.end method
