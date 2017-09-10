.class Lcom/parrot/freeflight/update/task/DownloaderTask$4;
.super Ljava/lang/Object;
.source "DownloaderTask.java"

# interfaces
.implements Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadCompletionListener;


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
    .line 606
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$4;->this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlfDownloadComplete(Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V
    .locals 5
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "result"    # Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .prologue
    const/4 v4, 0x0

    .line 610
    const-string v1, "FFMini.Updater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plf download complete result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$4;->this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 613
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$4;->this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-static {v1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->access$200(Lcom/parrot/freeflight/update/task/DownloaderTask;)Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;->obtain()Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    move-result-object v0

    .line 614
    .local v0, "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne p2, v1, :cond_0

    instance-of v1, p1, [Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eqz v1, :cond_0

    .line 615
    check-cast p1, [Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .end local p1    # "arg":Ljava/lang/Object;
    check-cast p1, [Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object p1, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->downloadedProducts:[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 617
    :cond_0
    sget-object v1, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->FINISHED:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->setState(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;)V

    .line 618
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->setProgress(F)V

    .line 619
    iput-boolean v4, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mAlreadyDownloaded:Z

    .line 620
    invoke-virtual {p2}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getValue()I

    move-result v1

    invoke-static {v1}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->setError(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V

    .line 621
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$4;->this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/parrot/freeflight/update/task/DownloaderTask;->access$700(Lcom/parrot/freeflight/update/task/DownloaderTask;[Ljava/lang/Object;)V

    .line 623
    .end local v0    # "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    :cond_1
    return-void
.end method
