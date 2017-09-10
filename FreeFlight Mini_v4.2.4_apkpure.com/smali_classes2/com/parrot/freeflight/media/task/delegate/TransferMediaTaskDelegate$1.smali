.class Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$1;
.super Ljava/lang/Object;
.source "TransferMediaTaskDelegate.java"

# interfaces
.implements Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$1;->this$0:Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didMediaComplete(Ljava/lang/Object;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V
    .locals 5
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "media"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;
    .param p3, "error"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .prologue
    .line 47
    iget-object v2, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$1;->this$0:Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;

    invoke-static {v2}, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->access$000(Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;)Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v2, p1, Lcom/parrot/arsdk/armedia/ARMediaObject;

    if-eqz v2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$1;->this$0:Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;

    invoke-static {v2}, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->access$100(Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;)Lcom/parrot/freeflight/media/task/MediaTask$ProgressResultPool;

    move-result-object v2

    check-cast p1, Lcom/parrot/arsdk/armedia/ARMediaObject;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResultPool;->obtainFrom(Lcom/parrot/arsdk/armedia/ARMediaObject;)Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    move-result-object v1

    .line 49
    .local v1, "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    sget-object v2, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->FINISHED:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->setState(Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;)V

    .line 50
    sget-object v2, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-ne p3, v2, :cond_2

    .line 51
    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->setProgress(F)V

    .line 52
    iget-object v2, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$1;->this$0:Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;

    invoke-static {v2}, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->access$200(Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;)Lcom/parrot/freeflight/media/MediaDateChecker;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/parrot/freeflight/media/MediaDateChecker;->changeMediaDateIfNeeded(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)V

    .line 53
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$1;->this$0:Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;

    invoke-static {v2}, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->access$300(Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;)Lcom/parrot/arsdk/armedia/ARMediaManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/parrot/arsdk/armedia/ARMediaManager;->addMedia(Ljava/io/File;)Z

    .line 60
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$1;->this$0:Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;

    invoke-static {v2}, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->access$000(Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;)Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-interface {v2, v3}, Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;->publishProgress([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V

    .line 62
    .end local v1    # "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    :cond_1
    return-void

    .line 58
    .restart local v1    # "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    :cond_2
    invoke-virtual {v1, p3}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->setError(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    goto :goto_0
.end method
