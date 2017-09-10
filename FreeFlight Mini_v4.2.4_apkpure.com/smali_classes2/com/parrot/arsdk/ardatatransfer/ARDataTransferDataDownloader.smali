.class public Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;
.super Ljava/lang/Object;
.source "ARDataTransferDataDownloader.java"


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
    .line 55
    const-class v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->TAG:Ljava/lang/String;

    .line 198
    invoke-static {}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->nativeStaticInit()Z

    .line 199
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 3
    .param p1, "_nativeManager"    # J

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->isInit:Z

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->nativeManager:J

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->downloaderRunnable:Ljava/lang/Runnable;

    .line 68
    iput-wide p1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->nativeManager:J

    .line 70
    new-instance v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader$1;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader$1;-><init>(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->downloaderRunnable:Ljava/lang/Runnable;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->nativeManager:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;J)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;
    .param p1, "x1"    # J

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->nativeThreadRun(J)V

    return-void
.end method

.method private native nativeCancelAvailableFiles(J)I
.end method

.method private native nativeCancelThread(J)I
.end method

.method private native nativeDelete(J)I
.end method

.method private native nativeGetAvailableFiles(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
        }
    .end annotation
.end method

.method private native nativeNew(JJJLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;Ljava/lang/Object;)I
.end method

.method private static native nativeStaticInit()Z
.end method

.method private native nativeThreadRun(J)V
.end method


# virtual methods
.method public cancelAvailableFiles()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 4

    .prologue
    .line 161
    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->nativeCancelAvailableFiles(J)I

    move-result v1

    .line 163
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    .line 164
    .local v0, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    return-object v0
.end method

.method public cancelThread()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 4

    .prologue
    .line 189
    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->nativeCancelThread(J)I

    move-result v1

    .line 191
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    .line 192
    .local v0, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    return-object v0
.end method

.method public createDataDownloader(Lcom/parrot/arsdk/arutils/ARUtilsManager;Lcom/parrot/arsdk/arutils/ARUtilsManager;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;Ljava/lang/Object;)V
    .locals 13
    .param p1, "utilsListManager"    # Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .param p2, "utilsDataManager"    # Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .param p3, "remoteDirectory"    # Ljava/lang/String;
    .param p4, "localDirectory"    # Ljava/lang/String;
    .param p5, "fileCompletionListener"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;
    .param p6, "fileCompletionArg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
        }
    .end annotation

    .prologue
    .line 84
    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->nativeManager:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->getManager()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->getManager()J

    move-result-wide v6

    move-object v1, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->nativeNew(JJJLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;Ljava/lang/Object;)I

    move-result v12

    .line 86
    .local v12, "result":I
    invoke-static {v12}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    .line 88
    .local v0, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-eq v0, v1, :cond_0

    .line 90
    new-instance v1, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;-><init>(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    throw v1

    .line 94
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->isInit:Z

    .line 96
    return-void
.end method

.method public dispose()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 4

    .prologue
    .line 104
    sget-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 106
    .local v0, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    iget-boolean v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->isInit:Z

    if-eqz v2, :cond_0

    .line 108
    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->nativeDelete(J)I

    move-result v1

    .line 110
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    .line 111
    sget-object v2, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-ne v0, v2, :cond_0

    .line 113
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->isInit:Z

    .line 117
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
    .line 128
    :try_start_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->isInit:Z

    if-eqz v1, :cond_0

    .line 130
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->TAG:Ljava/lang/String;

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

    .line 131
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->dispose()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    .line 132
    .local v0, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-eq v0, v1, :cond_0

    .line 134
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->TAG:Ljava/lang/String;

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

    .line 140
    .end local v0    # "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 142
    return-void

    .line 140
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getAvailableFiles()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
        }
    .end annotation

    .prologue
    .line 150
    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->nativeGetAvailableFiles(J)J

    move-result-wide v0

    .line 152
    .local v0, "result":J
    return-wide v0
.end method

.method public getDownloaderRunnable()Ljava/lang/Runnable;
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->isInit:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 177
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->downloaderRunnable:Ljava/lang/Runnable;

    .line 180
    :cond_0
    return-object v0
.end method
