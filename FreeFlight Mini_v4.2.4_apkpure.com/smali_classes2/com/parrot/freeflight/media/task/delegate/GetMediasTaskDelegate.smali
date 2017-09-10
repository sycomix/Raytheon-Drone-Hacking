.class public Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate;
.super Ljava/lang/Object;
.source "GetMediasTaskDelegate.java"

# interfaces
.implements Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GetMediasTaskDelegate"


# instance fields
.field private mAvailableMedia:I

.field private final mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate;->mAvailableMedia:I

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate;->mListenerRef:Ljava/lang/ref/WeakReference;

    .line 27
    return-void
.end method

.method public static getAvailableMedias(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;)Landroid/util/Pair;
    .locals 5
    .param p0, "downloader"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    sget-object v2, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 69
    .local v2, "result":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    const/4 v0, -0x1

    .line 71
    .local v0, "availableMedias":I
    if-eqz p0, :cond_1

    .line 73
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->getAvailableMediasSync(Z)I
    :try_end_0
    .catch Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 85
    :cond_0
    :goto_0
    new-instance v3, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
    const-string v3, "GetMediasTaskDelegate"

    const-string v4, "failed to get available media"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;->printStackTrace()V

    .line 77
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;->getError()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v2

    .line 78
    if-nez v2, :cond_0

    .line 79
    sget-object v2, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_ERROR:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    goto :goto_0

    .line 83
    .end local v1    # "e":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_ERROR_NOT_INITIALIZED:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 3
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
    .line 33
    invoke-static {p2}, Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate;->getAvailableMedias(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;)Landroid/util/Pair;

    move-result-object v0

    .line 34
    .local v0, "availableMediasResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 35
    .local v1, "result":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    sget-object v2, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-ne v1, v2, :cond_0

    .line 36
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate;->mAvailableMedia:I

    .line 38
    :cond_0
    return-object v1
.end method

.method public postResult(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;Z)V
    .locals 2
    .param p1, "result"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "canceled"    # Z

    .prologue
    .line 47
    iget-object v1, p0, Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate$Listener;

    .line 48
    .local v0, "listener":Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate$Listener;
    if-eqz v0, :cond_0

    .line 49
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-ne p1, v1, :cond_1

    .line 50
    iget v1, p0, Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate;->mAvailableMedia:I

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate$Listener;->onMediasLoaded(I)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-interface {v0, p1}, Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate$Listener;->onLoadingMediasError(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    goto :goto_0
.end method

.method public varargs postUpdate([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V
    .locals 0
    .param p1, "results"    # [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    return-void
.end method
