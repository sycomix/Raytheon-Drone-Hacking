.class public Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate;
.super Ljava/lang/Object;
.source "DeleteMediaTaskDelegate.java"

# interfaces
.implements Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;
    }
.end annotation


# instance fields
.field private final mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaObjects:[Lcom/parrot/arsdk/armedia/ARMediaObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/parrot/arsdk/armedia/ARMediaObject;Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;)V
    .locals 1
    .param p1, "objects"    # [Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "l"    # Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate;->mMediaObjects:[Lcom/parrot/arsdk/armedia/ARMediaObject;

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate;->mListenerRef:Ljava/lang/ref/WeakReference;

    .line 24
    return-void
.end method


# virtual methods
.method public execute(Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 10
    .param p1, "task"    # Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "downloader"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 29
    sget-object v4, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 30
    .local v4, "result":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    iget-object v7, p0, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate;->mMediaObjects:[Lcom/parrot/arsdk/armedia/ARMediaObject;

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v1, v7, v5

    .line 31
    .local v1, "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    invoke-interface {p1}, Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 44
    .end local v1    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    :cond_0
    return-object v4

    .line 34
    .restart local v1    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    :cond_1
    const/4 v2, 0x0

    .line 35
    .local v2, "progress":F
    iget-object v9, v1, Lcom/parrot/arsdk/armedia/ARMediaObject;->media:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    invoke-virtual {p2, v9}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->deleteMedia(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    .line 36
    .local v0, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    sget-object v9, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-ne v0, v9, :cond_2

    .line 37
    const/high16 v2, 0x42c80000    # 100.0f

    .line 39
    :cond_2
    new-instance v3, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    invoke-direct {v3, v1, v2}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;-><init>(Lcom/parrot/arsdk/armedia/ARMediaObject;F)V

    .line 40
    .local v3, "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->setError(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    .line 41
    sget-object v9, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->FINISHED:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    invoke-virtual {v3, v9}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->setState(Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;)V

    .line 42
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    aput-object v3, v9, v6

    invoke-interface {p1, v9}, Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;->publishProgress([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V

    .line 30
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public postResult(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;Z)V
    .locals 2
    .param p1, "result"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "canceled"    # Z

    .prologue
    .line 58
    iget-object v1, p0, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;

    .line 59
    .local v0, "listener":Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;
    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;->onRequestCompleted(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;Z)V

    .line 62
    :cond_0
    return-void
.end method

.method public varargs postUpdate([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V
    .locals 4
    .param p1, "results"    # [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    .prologue
    .line 49
    iget-object v2, p0, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;

    .line 50
    .local v0, "listener":Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 51
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 52
    .local v1, "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    invoke-virtual {v1}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->getMediaObject()Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;->onMediaObjectDeleted(Lcom/parrot/arsdk/armedia/ARMediaObject;)V

    .line 54
    .end local v1    # "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    :cond_0
    return-void
.end method
