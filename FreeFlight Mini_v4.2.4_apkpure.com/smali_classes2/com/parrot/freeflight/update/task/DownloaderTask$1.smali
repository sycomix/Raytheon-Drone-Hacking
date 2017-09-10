.class Lcom/parrot/freeflight/update/task/DownloaderTask$1;
.super Ljava/lang/Object;
.source "DownloaderTask.java"

# interfaces
.implements Lcom/parrot/arsdk/arupdater/ARUpdaterShouldDownloadPlfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/task/DownloaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/task/DownloaderTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/task/DownloaderTask;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadPlf(Ljava/lang/Object;ILcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V
    .locals 6
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "nbPlfToBeDownloaded"    # I
    .param p3, "error"    # Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .prologue
    const/4 v5, 0x0

    .line 549
    const-string v2, "FFMini.Updater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nb plf to be updater ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {p3}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getValue()I

    move-result v2

    invoke-static {v2}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v1

    .line 552
    .local v1, "result":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-virtual {v2}, Lcom/parrot/freeflight/update/task/DownloaderTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v1, v2, :cond_1

    .line 553
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-static {v2}, Lcom/parrot/freeflight/update/task/DownloaderTask;->access$200(Lcom/parrot/freeflight/update/task/DownloaderTask;)Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;->obtain()Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    move-result-object v0

    .line 554
    .local v0, "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    sget-object v2, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->UPDATE_AVAILABLE:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->setState(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;)V

    .line 555
    int-to-float v2, p2

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->setProgress(F)V

    .line 556
    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->setError(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V

    .line 557
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/parrot/freeflight/update/task/DownloaderTask;->access$300(Lcom/parrot/freeflight/update/task/DownloaderTask;[Ljava/lang/Object;)V

    .line 558
    if-lez p2, :cond_1

    .line 560
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-static {v2}, Lcom/parrot/freeflight/update/task/DownloaderTask;->access$400(Lcom/parrot/freeflight/update/task/DownloaderTask;)Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;

    move-result-object v3

    monitor-enter v3

    .line 561
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-static {v2}, Lcom/parrot/freeflight/update/task/DownloaderTask;->access$400(Lcom/parrot/freeflight/update/task/DownloaderTask;)Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;

    move-result-object v2

    iget-boolean v2, v2, Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 563
    :try_start_1
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-static {v2}, Lcom/parrot/freeflight/update/task/DownloaderTask;->access$400(Lcom/parrot/freeflight/update/task/DownloaderTask;)Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 564
    :catch_0
    move-exception v2

    goto :goto_0

    .line 568
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-static {v2}, Lcom/parrot/freeflight/update/task/DownloaderTask;->access$400(Lcom/parrot/freeflight/update/task/DownloaderTask;)Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;

    move-result-object v2

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;->finished:Z

    .line 569
    monitor-exit v3

    .line 572
    .end local v0    # "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    :cond_1
    return-void

    .line 569
    .restart local v0    # "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
