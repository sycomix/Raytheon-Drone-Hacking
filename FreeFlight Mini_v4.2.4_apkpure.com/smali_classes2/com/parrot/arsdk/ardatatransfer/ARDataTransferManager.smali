.class public Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;
.super Ljava/lang/Object;
.source "ARDataTransferManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field dataDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

.field downloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;

.field private isInit:Z

.field mediasDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

.field private nativeManager:J

.field uploader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->TAG:Ljava/lang/String;

    .line 218
    invoke-static {}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->nativeStaticInit()Z

    .line 219
    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->nativeManager:J

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->isInit:Z

    .line 52
    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->dataDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    .line 53
    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->mediasDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    .line 54
    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->downloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;

    .line 55
    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->uploader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;

    .line 66
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->isInit:Z

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->nativeNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->nativeManager:J

    .line 71
    :cond_0
    iget-wide v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->nativeManager:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->isInit:Z

    .line 75
    :cond_1
    return-void
.end method

.method private native nativeDelete(J)V
.end method

.method private native nativeNew()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
        }
    .end annotation
.end method

.method private static native nativeStaticInit()Z
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 82
    iget-wide v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->nativeManager:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->dataDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->dataDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->dispose()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->mediasDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->mediasDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->dispose()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->downloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->downloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;->dispose()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->uploader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->uploader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->dispose()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 104
    :cond_3
    iget-wide v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->nativeManager:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->nativeDelete(J)V

    .line 105
    iput-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->nativeManager:J

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->isInit:Z

    .line 108
    :cond_4
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->isInit:Z

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not disposed !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 128
    return-void

    .line 126
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getARDataTransferDataDownloader()Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;
    .locals 4

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->isInit:Z

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->dataDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    if-nez v0, :cond_1

    .line 152
    new-instance v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->nativeManager:J

    invoke-direct {v0, v2, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;-><init>(J)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->dataDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->dataDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    goto :goto_0
.end method

.method public getARDataTransferDownloader()Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;
    .locals 4

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->isInit:Z

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 193
    :goto_0
    return-object v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->downloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;

    if-nez v0, :cond_1

    .line 190
    new-instance v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;

    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->nativeManager:J

    invoke-direct {v0, v2, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;-><init>(J)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->downloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->downloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;

    goto :goto_0
.end method

.method public getARDataTransferMediasDownloader()Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;
    .locals 4

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->isInit:Z

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->mediasDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    if-nez v0, :cond_1

    .line 171
    new-instance v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->nativeManager:J

    invoke-direct {v0, v2, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;-><init>(J)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->mediasDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->mediasDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    goto :goto_0
.end method

.method public getARDataTransferUploader()Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;
    .locals 4

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->isInit:Z

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 212
    :goto_0
    return-object v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->uploader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;

    if-nez v0, :cond_1

    .line 209
    new-instance v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;

    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->nativeManager:J

    invoke-direct {v0, v2, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;-><init>(J)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->uploader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->uploader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->isInit:Z

    return v0
.end method
