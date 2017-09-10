.class public Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate;
.super Ljava/lang/Object;
.source "GetMediaThumbnailTaskDelegate.java"

# interfaces
.implements Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GetMediaThumbTask"


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate$Listener;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate$Listener;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p3, "medias":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/armedia/ARMediaObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate;->mListenerRef:Ljava/lang/ref/WeakReference;

    .line 39
    iput-object p3, p0, Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate;->mMediaList:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public execute(Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 9
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
    .line 45
    sget-object v4, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 46
    .local v4, "result":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    const/4 v0, 0x0

    .line 47
    .local v0, "foundMediasThumbnail":I
    iget-object v6, p0, Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate;->mMediaList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {p1}, Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 48
    iget-object v6, p0, Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate;->mMediaList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/arsdk/armedia/ARMediaObject;

    .line 49
    .local v2, "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    invoke-virtual {v2}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_1

    .line 50
    iget-object v6, v2, Lcom/parrot/arsdk/armedia/ARMediaObject;->media:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    invoke-virtual {p2, v6}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->getMediaThumbnail(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)[B

    move-result-object v5

    .line 51
    .local v5, "thumbnail":[B
    if-eqz v5, :cond_0

    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    iget-object v6, p0, Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, v2, Lcom/parrot/arsdk/armedia/ARMediaObject;->media:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    invoke-virtual {v2, v6, v7}, Lcom/parrot/arsdk/armedia/ARMediaObject;->updateThumbnailWithDataTransferMedia(Landroid/content/res/Resources;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)V

    .line 55
    :cond_0
    new-instance v3, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    const/4 v6, 0x0

    invoke-direct {v3, v2, v6}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;-><init>(Lcom/parrot/arsdk/armedia/ARMediaObject;F)V

    .line 56
    .local v3, "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    sget-object v6, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->FINISHED:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    invoke-virtual {v3, v6}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->setState(Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;)V

    .line 57
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-interface {p1, v6}, Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;->publishProgress([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V

    .line 47
    .end local v3    # "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    .end local v5    # "thumbnail":[B
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 59
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    .end local v2    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    :cond_2
    iget-object v6, p0, Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate;->mMediaList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v0, v6, :cond_3

    invoke-interface {p1}, Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 63
    const-string v6, "GetMediaThumbTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Should not happen: foundMedias="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", medias.size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate;->mMediaList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_3
    return-object v4
.end method

.method public postResult(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;Z)V
    .locals 2
    .param p1, "result"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "canceled"    # Z

    .prologue
    .line 79
    iget-object v1, p0, Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate$Listener;

    .line 80
    .local v0, "listener":Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate$Listener;
    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate$Listener;->onRequestCompleted(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;Z)V

    .line 83
    :cond_0
    return-void
.end method

.method public varargs postUpdate([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V
    .locals 4
    .param p1, "results"    # [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 70
    iget-object v2, p0, Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate$Listener;

    .line 71
    .local v0, "listener":Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate$Listener;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 72
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 73
    .local v1, "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    invoke-virtual {v1}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->getMediaObject()Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate$Listener;->onMediaObjectUpdated(Lcom/parrot/arsdk/armedia/ARMediaObject;)V

    .line 75
    .end local v1    # "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    :cond_0
    return-void
.end method
