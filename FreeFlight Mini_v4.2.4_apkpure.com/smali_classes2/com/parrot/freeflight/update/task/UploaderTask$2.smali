.class Lcom/parrot/freeflight/update/task/UploaderTask$2;
.super Ljava/lang/Object;
.source "UploaderTask.java"

# interfaces
.implements Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/task/UploaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/task/UploaderTask;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/task/UploaderTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/task/UploaderTask;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/UploaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/UploaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlfUploadComplete(Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V
    .locals 8
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "result"    # Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .prologue
    .line 378
    const-string v4, "FFMini.Updater"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upload complete: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v4, p0, Lcom/parrot/freeflight/update/task/UploaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/UploaderTask;

    invoke-static {v4}, Lcom/parrot/freeflight/update/task/UploaderTask;->access$000(Lcom/parrot/freeflight/update/task/UploaderTask;)Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResultPool;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResultPool;->obtain()Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;

    move-result-object v3

    .line 381
    .local v3, "progressResult":Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;
    sget-object v4, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;->FINISHED:Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->setState(Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;)V

    .line 382
    invoke-virtual {p2}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v1

    .line 383
    .local v1, "newResult":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    iget-object v4, p0, Lcom/parrot/freeflight/update/task/UploaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/UploaderTask;

    invoke-static {v4}, Lcom/parrot/freeflight/update/task/UploaderTask;->access$200(Lcom/parrot/freeflight/update/task/UploaderTask;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v4

    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductNetworkFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    .line 384
    .local v0, "network":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    sget-object v4, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v1, v4, :cond_0

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BLESERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v0, v4, :cond_0

    .line 385
    iget-object v4, p0, Lcom/parrot/freeflight/update/task/UploaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/UploaderTask;

    invoke-static {v4}, Lcom/parrot/freeflight/update/task/UploaderTask;->access$300(Lcom/parrot/freeflight/update/task/UploaderTask;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/update/task/UploaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/UploaderTask;

    invoke-static {v5}, Lcom/parrot/freeflight/update/task/UploaderTask;->access$200(Lcom/parrot/freeflight/update/task/UploaderTask;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parrot/freeflight/update/task/UploaderTask;->access$400(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/io/File;

    move-result-object v2

    .line 386
    .local v2, "plfFile":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 387
    iget-object v4, p0, Lcom/parrot/freeflight/update/task/UploaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/UploaderTask;

    invoke-static {v4}, Lcom/parrot/freeflight/update/task/UploaderTask;->access$300(Lcom/parrot/freeflight/update/task/UploaderTask;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v4, v0, v5, v6, v7}, Lcom/parrot/freeflight/update/task/UploaderTask;->access$500(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;J)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v1

    .line 390
    .end local v2    # "plfFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->setError(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V

    .line 391
    iget-object v4, p0, Lcom/parrot/freeflight/update/task/UploaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/UploaderTask;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/parrot/freeflight/update/task/UploaderTask;->access$600(Lcom/parrot/freeflight/update/task/UploaderTask;[Ljava/lang/Object;)V

    .line 392
    return-void
.end method
