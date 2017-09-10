.class Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$2;
.super Ljava/lang/Object;
.source "TransferMediaTaskDelegate.java"

# interfaces
.implements Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderProgressListener;


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
    .line 66
    iput-object p1, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$2;->this$0:Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didMediaProgress(Ljava/lang/Object;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;F)V
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "media"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;
    .param p3, "percent"    # F

    .prologue
    .line 69
    iget-object v1, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$2;->this$0:Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;

    invoke-static {v1}, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->access$000(Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;)Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/parrot/arsdk/armedia/ARMediaObject;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$2;->this$0:Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;

    invoke-static {v1}, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->access$100(Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;)Lcom/parrot/freeflight/media/task/MediaTask$ProgressResultPool;

    move-result-object v1

    check-cast p1, Lcom/parrot/arsdk/armedia/ARMediaObject;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResultPool;->obtainFrom(Lcom/parrot/arsdk/armedia/ARMediaObject;)Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    move-result-object v0

    .line 71
    .local v0, "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    sget-object v1, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->ONGOING:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->setState(Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;)V

    .line 72
    invoke-virtual {v0, p3}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->setProgress(F)V

    .line 73
    iget-object v1, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$2;->this$0:Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;

    invoke-static {v1}, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->access$000(Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;)Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;->publishProgress([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V

    .line 75
    .end local v0    # "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    :cond_0
    return-void
.end method
