.class public Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;
.super Ljava/lang/Object;
.source "ARDataTransferMediasDownloader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private downloaderRunnable:Ljava/lang/Runnable;

.field private isInit:Z

.field private nativeManager:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->TAG:Ljava/lang/String;

    .line 291
    invoke-static {}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeStaticInit()Z

    .line 292
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 3
    .param p1, "_nativeManager"    # J

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->isInit:Z

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeManager:J

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->downloaderRunnable:Ljava/lang/Runnable;

    .line 75
    iput-wide p1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeManager:J

    .line 77
    new-instance v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader$1;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader$1;-><init>(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->downloaderRunnable:Ljava/lang/Runnable;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeManager:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;J)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;
    .param p1, "x1"    # J

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeQueueThreadRun(J)V

    return-void
.end method

.method private native nativeAddMediaToQueue(JLcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderCompletionListener;Ljava/lang/Object;)I
.end method

.method private native nativeCancelGetAvailableMedias(J)I
.end method

.method private native nativeCancelQueueThread(J)I
.end method

.method private native nativeDelete(J)I
.end method

.method private native nativeDeleteMedia(JLcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)I
.end method

.method private native nativeGetAvailableMediaAtIndex(JI)Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;
.end method

.method private native nativeGetAvailableMediasAsync(JLcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderAvailableMediaListener;Ljava/lang/Object;)I
.end method

.method private native nativeGetAvailableMediasSync(JZ)I
.end method

.method private native nativeGetMediaThumbnail(JLcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)[B
.end method

.method private native nativeNew(JJJLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeQueueThreadRun(J)V
.end method

.method private static native nativeStaticInit()Z
.end method


# virtual methods
.method public addMediaToQueue(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderCompletionListener;Ljava/lang/Object;)V
    .locals 10
    .param p1, "media"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;
    .param p2, "progressListener"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderProgressListener;
    .param p3, "progressArg"    # Ljava/lang/Object;
    .param p4, "completionListener"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderCompletionListener;
    .param p5, "completionArg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
        }
    .end annotation

    .prologue
    .line 249
    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeManager:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeAddMediaToQueue(JLcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderCompletionListener;Ljava/lang/Object;)I

    move-result v9

    .line 251
    .local v9, "result":I
    invoke-static {v9}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    .line 253
    .local v0, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-eq v0, v1, :cond_0

    .line 255
    new-instance v1, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;-><init>(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    throw v1

    .line 257
    :cond_0
    return-void
.end method

.method public cancelGetAvailableMedias()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 4

    .prologue
    .line 199
    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeCancelGetAvailableMedias(J)I

    move-result v1

    .line 201
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    .line 203
    .local v0, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    return-object v0
.end method

.method public cancelQueueThread()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 4

    .prologue
    .line 281
    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeCancelQueueThread(J)I

    move-result v1

    .line 283
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    .line 285
    .local v0, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    return-object v0
.end method

.method public createMediasDownloader(Lcom/parrot/arsdk/arutils/ARUtilsManager;Lcom/parrot/arsdk/arutils/ARUtilsManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "utilsListManager"    # Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .param p2, "utilsQueueManager"    # Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .param p3, "remoteDirectory"    # Ljava/lang/String;
    .param p4, "localDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
        }
    .end annotation

    .prologue
    .line 95
    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeManager:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->getManager()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->getManager()J

    move-result-wide v6

    move-object v1, p0

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeNew(JJJLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 97
    .local v10, "result":I
    invoke-static {v10}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    .line 99
    .local v0, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-eq v0, v1, :cond_0

    .line 101
    new-instance v1, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;-><init>(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    throw v1

    .line 105
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->isInit:Z

    .line 107
    return-void
.end method

.method public deleteMedia(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 4
    .param p1, "media"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    .prologue
    .line 213
    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeManager:J

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeDeleteMedia(JLcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)I

    move-result v1

    .line 215
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    .line 217
    .local v0, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    return-object v0
.end method

.method public dispose()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 4

    .prologue
    .line 115
    sget-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 117
    .local v0, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    iget-boolean v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->isInit:Z

    if-eqz v2, :cond_0

    .line 119
    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeDelete(J)I

    move-result v1

    .line 121
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    .line 122
    sget-object v2, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-ne v0, v2, :cond_0

    .line 124
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->isInit:Z

    .line 128
    .end local v1    # "result":I
    :cond_0
    return-object v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 139
    :try_start_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->isInit:Z

    if-eqz v1, :cond_0

    .line 141
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not disposed !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->dispose()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    .line 143
    .local v0, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-eq v0, v1, :cond_0

    .line 145
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to dispose object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ... leaking memory !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v0    # "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 153
    return-void

    .line 151
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getAvailableMediaAtIndex(I)Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
        }
    .end annotation

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeManager:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeGetAvailableMediaAtIndex(JI)Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableMediasAsync(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderAvailableMediaListener;Ljava/lang/Object;)V
    .locals 4
    .param p1, "availableMediaListener"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderAvailableMediaListener;
    .param p2, "availableMediaArg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
        }
    .end annotation

    .prologue
    .line 183
    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeManager:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeGetAvailableMediasAsync(JLcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloaderAvailableMediaListener;Ljava/lang/Object;)I

    move-result v1

    .line 185
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    .line 187
    .local v0, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    sget-object v2, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-eq v0, v2, :cond_0

    .line 189
    new-instance v2, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;-><init>(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    throw v2

    .line 191
    :cond_0
    return-void
.end method

.method public getAvailableMediasSync(Z)I
    .locals 2
    .param p1, "withThumbnail"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
        }
    .end annotation

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeManager:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeGetAvailableMediasSync(JZ)I

    move-result v0

    return v0
.end method

.method public getDownloaderQueueRunnable()Ljava/lang/Runnable;
    .locals 3

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 267
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->isInit:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 269
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->downloaderRunnable:Ljava/lang/Runnable;

    .line 272
    :cond_0
    return-object v0
.end method

.method public getMediaThumbnail(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)[B
    .locals 4
    .param p1, "media"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    .prologue
    .line 227
    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeManager:J

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->nativeGetMediaThumbnail(JLcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)[B

    move-result-object v0

    .line 229
    .local v0, "result":[B
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->setThumbail([B)V

    .line 234
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getThumbnail()[B

    move-result-object v1

    return-object v1
.end method
