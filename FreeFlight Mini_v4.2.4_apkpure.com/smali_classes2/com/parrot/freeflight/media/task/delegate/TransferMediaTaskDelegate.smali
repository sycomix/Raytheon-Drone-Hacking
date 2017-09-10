.class public Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;
.super Ljava/lang/Object;
.source "TransferMediaTaskDelegate.java"

# interfaces
.implements Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$Listener;
    }
.end annotation


# instance fields
.field private final completionListener:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderCompletionListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaDateChecker:Lcom/parrot/freeflight/media/MediaDateChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMediaManager:Lcom/parrot/arsdk/armedia/ARMediaManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMediaObjects:[Lcom/parrot/arsdk/armedia/ARMediaObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRemaining:I

.field private final mResultPool:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResultPool;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTaskListener:Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final progressListener:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderProgressListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/armedia/ARMediaManager;[Lcom/parrot/arsdk/armedia/ARMediaObject;Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$Listener;)V
    .locals 1
    .param p1, "arMediaManager"    # Lcom/parrot/arsdk/armedia/ARMediaManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "objects"    # [Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/parrot/freeflight/media/MediaDateChecker;

    invoke-direct {v0}, Lcom/parrot/freeflight/media/MediaDateChecker;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mMediaDateChecker:Lcom/parrot/freeflight/media/MediaDateChecker;

    .line 26
    new-instance v0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResultPool;

    invoke-direct {v0}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResultPool;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mResultPool:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResultPool;

    .line 43
    new-instance v0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$1;-><init>(Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->completionListener:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderCompletionListener;

    .line 65
    new-instance v0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$2;-><init>(Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->progressListener:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderProgressListener;

    .line 82
    iput-object p1, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mMediaManager:Lcom/parrot/arsdk/armedia/ARMediaManager;

    .line 83
    iput-object p2, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mMediaObjects:[Lcom/parrot/arsdk/armedia/ARMediaObject;

    .line 84
    array-length v0, p2

    iput v0, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mRemaining:I

    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mListenerRef:Ljava/lang/ref/WeakReference;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;)Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mTaskListener:Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;)Lcom/parrot/freeflight/media/task/MediaTask$ProgressResultPool;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mResultPool:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResultPool;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;)Lcom/parrot/freeflight/media/MediaDateChecker;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mMediaDateChecker:Lcom/parrot/freeflight/media/MediaDateChecker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;)Lcom/parrot/arsdk/armedia/ARMediaManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mMediaManager:Lcom/parrot/arsdk/armedia/ARMediaManager;

    return-object v0
.end method


# virtual methods
.method public execute(Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 12
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
    .line 91
    iput-object p1, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mTaskListener:Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;

    .line 92
    iput-object p2, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    .line 93
    sget-object v8, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 94
    .local v8, "result":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    invoke-virtual {p2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->getDownloaderQueueRunnable()Ljava/lang/Runnable;

    move-result-object v6

    .line 95
    .local v6, "downloaderQueueRunnable":Ljava/lang/Runnable;
    iget-object v10, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mMediaObjects:[Lcom/parrot/arsdk/armedia/ARMediaObject;

    array-length v11, v10

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v3, v10, v9

    .line 96
    .local v3, "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    invoke-interface {p1}, Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    .end local v3    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    :cond_0
    invoke-interface {p1}, Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v6, :cond_1

    .line 110
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 112
    :cond_1
    return-object v8

    .line 100
    .restart local v3    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    :cond_2
    :try_start_0
    iget-object v1, v3, Lcom/parrot/arsdk/armedia/ARMediaObject;->media:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    iget-object v2, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->progressListener:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderProgressListener;

    iget-object v4, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->completionListener:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderCompletionListener;

    move-object v0, p2

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->addMediaToQueue(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderCompletionListener;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_3
    :goto_1
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v7

    .line 102
    .local v7, "e":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
    invoke-virtual {v7}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;->printStackTrace()V

    .line 103
    invoke-virtual {v7}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;->getError()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v8

    .line 104
    if-nez v8, :cond_3

    .line 105
    sget-object v8, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_ERROR:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    goto :goto_1
.end method

.method public postResult(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;Z)V
    .locals 2
    .param p1, "result"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "canceled"    # Z

    .prologue
    .line 139
    iget-object v1, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$Listener;

    .line 140
    .local v0, "listener":Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$Listener;
    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$Listener;->onRequestCompleted(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;Z)V

    .line 143
    :cond_0
    return-void
.end method

.method public varargs postUpdate([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V
    .locals 8
    .param p1, "results"    # [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 117
    iget-object v6, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$Listener;

    .line 118
    .local v0, "listener":Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$Listener;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v6, p1

    if-ne v6, v4, :cond_0

    .line 119
    aget-object v2, p1, v5

    .line 120
    .local v2, "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    invoke-virtual {v2}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->getMediaObject()Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v1

    .line 121
    .local v1, "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    invoke-virtual {v2}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->getState()Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    move-result-object v3

    .line 122
    .local v3, "state":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;
    sget-object v6, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->ONGOING:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    if-ne v3, v6, :cond_1

    .line 123
    invoke-virtual {v2}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->getProgress()F

    move-result v5

    invoke-interface {v0, v1, v5}, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$Listener;->onTransferringMediaObject(Lcom/parrot/arsdk/armedia/ARMediaObject;F)V

    .line 135
    .end local v1    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    .end local v2    # "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    .end local v3    # "state":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;
    :cond_0
    :goto_0
    return-void

    .line 125
    .restart local v1    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    .restart local v2    # "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    .restart local v3    # "state":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;
    :cond_1
    sget-object v6, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->FINISHED:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    if-ne v3, v6, :cond_2

    .line 126
    iget v6, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mRemaining:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mRemaining:I

    .line 127
    iget v6, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mRemaining:I

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    if-eqz v6, :cond_2

    .line 128
    iget-object v6, p0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    invoke-virtual {v6}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->cancelQueueThread()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 131
    :cond_2
    sget-object v6, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->FINISHED:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    if-ne v3, v6, :cond_3

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->getError()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v6

    sget-object v7, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-ne v6, v7, :cond_3

    .line 132
    .local v4, "succeeded":Z
    :goto_1
    invoke-interface {v0, v1, v4}, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$Listener;->onMediaObjectTransferComplete(Lcom/parrot/arsdk/armedia/ARMediaObject;Z)V

    goto :goto_0

    .end local v4    # "succeeded":Z
    :cond_3
    move v4, v5

    .line 131
    goto :goto_1
.end method
