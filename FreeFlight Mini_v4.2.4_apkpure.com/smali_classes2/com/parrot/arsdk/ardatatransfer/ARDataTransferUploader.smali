.class public Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;
.super Ljava/lang/Object;
.source "ARDataTransferUploader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isInit:Z

.field private nativeManager:J

.field private uploaderRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->TAG:Ljava/lang/String;

    .line 177
    invoke-static {}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->nativeStaticInit()Z

    .line 178
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 3
    .param p1, "_nativeManager"    # J

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->isInit:Z

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->nativeManager:J

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->uploaderRunnable:Ljava/lang/Runnable;

    .line 66
    iput-wide p1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->nativeManager:J

    .line 68
    new-instance v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader$1;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader$1;-><init>(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->uploaderRunnable:Ljava/lang/Runnable;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->nativeManager:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;J)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;
    .param p1, "x1"    # J

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->nativeThreadRun(J)V

    return-void
.end method

.method private native nativeCancelThread(J)I
.end method

.method private native nativeDelete(J)I
.end method

.method private native nativeNew(JJLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploaderProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploaderCompletionListener;Ljava/lang/Object;I)I
.end method

.method private static native nativeStaticInit()Z
.end method

.method private native nativeThreadRun(J)V
.end method


# virtual methods
.method public cancelThread()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 4

    .prologue
    .line 167
    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->nativeCancelThread(J)I

    move-result v1

    .line 169
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    .line 171
    .local v0, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    return-object v0
.end method

.method public createUploader(Lcom/parrot/arsdk/arutils/ARUtilsManager;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploaderProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploaderCompletionListener;Ljava/lang/Object;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_UPLOADER_RESUME_ENUM;)V
    .locals 14
    .param p1, "utilsManager"    # Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .param p2, "remotePath"    # Ljava/lang/String;
    .param p3, "localPath"    # Ljava/lang/String;
    .param p4, "progressListener"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploaderProgressListener;
    .param p5, "progressArg"    # Ljava/lang/Object;
    .param p6, "completionListener"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploaderCompletionListener;
    .param p7, "completionArg"    # Ljava/lang/Object;
    .param p8, "resume"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_UPLOADER_RESUME_ENUM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
        }
    .end annotation

    .prologue
    .line 85
    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->nativeManager:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->getManager()J

    move-result-wide v4

    invoke-virtual/range {p8 .. p8}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_UPLOADER_RESUME_ENUM;->getValue()I

    move-result v12

    move-object v1, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v12}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->nativeNew(JJLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploaderProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploaderCompletionListener;Ljava/lang/Object;I)I

    move-result v13

    .line 87
    .local v13, "result":I
    invoke-static {v13}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    .line 89
    .local v0, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-eq v0, v1, :cond_0

    .line 91
    new-instance v1, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;-><init>(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    throw v1

    .line 95
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->isInit:Z

    .line 97
    return-void
.end method

.method public dispose()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 4

    .prologue
    .line 105
    sget-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 107
    .local v0, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    iget-boolean v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->isInit:Z

    if-eqz v2, :cond_0

    .line 109
    iget-wide v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->nativeDelete(J)I

    move-result v1

    .line 111
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    .line 112
    sget-object v2, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-ne v0, v2, :cond_0

    .line 114
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->isInit:Z

    .line 118
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
    .line 129
    :try_start_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->isInit:Z

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->TAG:Ljava/lang/String;

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

    .line 132
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->dispose()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    .line 133
    .local v0, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-eq v0, v1, :cond_0

    .line 135
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->TAG:Ljava/lang/String;

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

    .line 141
    .end local v0    # "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 143
    return-void

    .line 141
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getUploaderRunnable()Ljava/lang/Runnable;
    .locals 3

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->isInit:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 155
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->uploaderRunnable:Ljava/lang/Runnable;

    .line 158
    :cond_0
    return-object v0
.end method
