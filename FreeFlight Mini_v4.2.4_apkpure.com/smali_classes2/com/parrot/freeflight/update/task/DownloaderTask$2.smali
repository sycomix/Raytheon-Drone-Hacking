.class Lcom/parrot/freeflight/update/task/DownloaderTask$2;
.super Ljava/lang/Object;
.source "DownloaderTask.java"

# interfaces
.implements Lcom/parrot/arsdk/arupdater/ARUpdaterWillDownloadPlfListener;


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
    .line 575
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWillDownloadPlf(Ljava/lang/Object;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)V
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .param p3, "remotePlfVersion"    # Ljava/lang/String;

    .prologue
    .line 579
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-static {v1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->access$200(Lcom/parrot/freeflight/update/task/DownloaderTask;)Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;->obtain()Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    move-result-object v0

    .line 581
    .local v0, "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    sget-object v1, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->STARTING:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->setState(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;)V

    .line 582
    iput-object p2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 583
    iput-object p3, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->version:Ljava/lang/String;

    .line 584
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->setProgress(F)V

    .line 585
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->setError(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V

    .line 586
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/parrot/freeflight/update/task/DownloaderTask;->access$500(Lcom/parrot/freeflight/update/task/DownloaderTask;[Ljava/lang/Object;)V

    .line 588
    .end local v0    # "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    :cond_0
    return-void
.end method
