.class public Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;
.super Ljava/lang/Object;
.source "GetAllMediaTaskDelegate.java"

# interfaces
.implements Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GetAllMediaTaskDelegate"


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
            "Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNeedsUiUpdate:Z

.field private mPhotoCount:S

.field private mVideoCount:S


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;Z)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "needsUiUpdate"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;->mListenerRef:Ljava/lang/ref/WeakReference;

    .line 37
    iput-boolean p3, p0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;->mNeedsUiUpdate:Z

    .line 38
    return-void
.end method

.method private retrieveMediaThumbnails(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;Ljava/util/List;Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 9
    .param p1, "downloader"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "task"    # Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            ">;",
            "Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;",
            ")",
            "Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "medias":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/armedia/ARMediaObject;>;"
    sget-object v4, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 122
    .local v4, "result":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    const/4 v0, 0x0

    .line 123
    .local v0, "foundMediasThumbnail":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {p3}, Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 124
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/arsdk/armedia/ARMediaObject;

    .line 125
    .local v2, "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    iget-object v6, v2, Lcom/parrot/arsdk/armedia/ARMediaObject;->media:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    invoke-virtual {p1, v6}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->getMediaThumbnail(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)[B

    move-result-object v5

    .line 126
    .local v5, "thumbnail":[B
    if-eqz v5, :cond_0

    .line 127
    add-int/lit8 v0, v0, 0x1

    .line 128
    iget-object v6, p0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, v2, Lcom/parrot/arsdk/armedia/ARMediaObject;->media:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    invoke-virtual {v2, v6, v7}, Lcom/parrot/arsdk/armedia/ARMediaObject;->updateThumbnailWithDataTransferMedia(Landroid/content/res/Resources;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)V

    .line 130
    :cond_0
    new-instance v3, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    const/4 v6, 0x0

    invoke-direct {v3, v2, v6}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;-><init>(Lcom/parrot/arsdk/armedia/ARMediaObject;F)V

    .line 131
    .local v3, "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    sget-object v6, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->FINISHED:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    invoke-virtual {v3, v6}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->setState(Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;)V

    .line 132
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-interface {p3, v6}, Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;->publishProgress([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V

    .line 123
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 134
    .end local v2    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    .end local v3    # "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    .end local v5    # "thumbnail":[B
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v0, v6, :cond_2

    invoke-interface {p3}, Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 135
    const-string v6, "GetAllMediaTaskDelegate"

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

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_2
    return-object v4
.end method


# virtual methods
.method public execute(Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 11
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
    .line 44
    invoke-static {p2}, Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate;->getAvailableMedias(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;)Landroid/util/Pair;

    move-result-object v1

    .line 45
    .local v1, "availableMediasResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;>;"
    iget-object v8, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 46
    .local v8, "result":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 47
    .local v0, "availableMedias":I
    if-lez v0, :cond_2

    .line 48
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v6, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/armedia/ARMediaObject;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    invoke-interface {p1}, Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 51
    :try_start_0
    invoke-virtual {p2, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->getAvailableMediaAtIndex(I)Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    move-result-object v4

    .line 52
    .local v4, "media":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;
    new-instance v5, Lcom/parrot/arsdk/armedia/ARMediaObject;

    invoke-direct {v5}, Lcom/parrot/arsdk/armedia/ARMediaObject;-><init>()V

    .line 53
    .local v5, "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v9, p0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v5, v9, v4}, Lcom/parrot/arsdk/armedia/ARMediaObject;->updateDataTransferMedia(Landroid/content/res/Resources;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)V

    .line 56
    sget-object v9, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$1;->$SwitchMap$com$parrot$arsdk$armedia$MEDIA_TYPE_ENUM:[I

    invoke-virtual {v5}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getMediaType()Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    move-result-object v10

    invoke-virtual {v10}, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 67
    :goto_1
    iget-boolean v9, p0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;->mNeedsUiUpdate:Z

    if-eqz v9, :cond_0

    .line 68
    new-instance v7, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    add-int/lit8 v9, v3, 0x1

    int-to-float v9, v9

    int-to-float v10, v0

    div-float/2addr v9, v10

    invoke-direct {v7, v5, v9}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;-><init>(Lcom/parrot/arsdk/armedia/ARMediaObject;F)V

    .line 69
    .local v7, "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    sget-object v9, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->FINISHED:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    invoke-virtual {v7, v9}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->setState(Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;)V

    .line 70
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-interface {p1, v9}, Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;->publishProgress([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V

    .line 49
    .end local v7    # "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    :pswitch_0
    iget-short v9, p0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;->mPhotoCount:S

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    iput-short v9, p0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;->mPhotoCount:S
    :try_end_0
    .catch Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 72
    .end local v4    # "media":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;
    .end local v5    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
    invoke-virtual {v2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;->printStackTrace()V

    .line 74
    invoke-virtual {v2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;->getError()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v8

    .line 75
    if-nez v8, :cond_1

    .line 76
    sget-object v8, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_ERROR:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 82
    .end local v2    # "e":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
    :cond_1
    iget-boolean v9, p0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;->mNeedsUiUpdate:Z

    if-eqz v9, :cond_2

    invoke-interface {p1}, Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_2

    .line 83
    invoke-direct {p0, p2, v6, p1}, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;->retrieveMediaThumbnails(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;Ljava/util/List;Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v8

    .line 86
    .end local v3    # "i":I
    .end local v6    # "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/armedia/ARMediaObject;>;"
    :cond_2
    return-object v8

    .line 61
    .restart local v3    # "i":I
    .restart local v4    # "media":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;
    .restart local v5    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    .restart local v6    # "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/armedia/ARMediaObject;>;"
    :pswitch_1
    :try_start_1
    iget-short v9, p0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;->mVideoCount:S

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    iput-short v9, p0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;->mVideoCount:S
    :try_end_1
    .catch Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public postResult(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;Z)V
    .locals 3
    .param p1, "result"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "canceled"    # Z

    .prologue
    .line 105
    iget-object v1, p0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;

    .line 106
    .local v0, "listener":Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;
    if-eqz v0, :cond_0

    .line 107
    iget-short v1, p0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;->mPhotoCount:S

    iget-short v2, p0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;->mVideoCount:S

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;->onRequestCompleted(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;ZSS)V

    .line 109
    :cond_0
    return-void
.end method

.method public varargs postUpdate([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V
    .locals 5
    .param p1, "results"    # [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    .prologue
    .line 91
    iget-object v3, p0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;

    .line 92
    .local v0, "listener":Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v3, p1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 93
    const/4 v3, 0x0

    aget-object v2, p1, v3

    .line 94
    .local v2, "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    invoke-virtual {v2}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->getMediaObject()Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;->onMediaObjectUpdated(Lcom/parrot/arsdk/armedia/ARMediaObject;)V

    .line 96
    invoke-virtual {v2}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->getProgress()F

    move-result v1

    .line 97
    .local v1, "progress":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    .line 98
    invoke-interface {v0}, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;->onMediaNamesLoaded()V

    .line 101
    .end local v1    # "progress":F
    .end local v2    # "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    :cond_0
    return-void
.end method
