.class public Lcom/parrot/arsdk/aracademy/ARAcademyUploader;
.super Ljava/lang/Object;
.source "ARAcademyUploader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isInit:Z

.field private nativeUploader:J

.field private uploaderRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->TAG:Ljava/lang/String;

    .line 240
    invoke-static {}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeStaticInit()Z

    .line 241
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeUploader:J

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->isInit:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->uploaderRunnable:Ljava/lang/Runnable;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/arsdk/aracademy/ARAcademyUploader;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/arsdk/aracademy/ARAcademyUploader;

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeUploader:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/aracademy/ARAcademyUploader;J)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/aracademy/ARAcademyUploader;
    .param p1, "x1"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeThreadRun(J)V

    return-void
.end method

.method private native nativeBuildAcademyFile(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeCancelThread(J)I
.end method

.method private native nativeDelete(J)I
.end method

.method private native nativeGetAvailableFiles(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeGzipPud(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method private native nativeNew(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/parrot/arsdk/aracademy/ARAcademyUploaderFileProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/aracademy/ARAcademyUploaderFileCompletionListener;Ljava/lang/Object;Lcom/parrot/arsdk/aracademy/ARAcademyUploaderCompletionListener;Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativePause(J)I
.end method

.method private native nativePostRun(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeResume(J)I
.end method

.method private static native nativeStaticInit()Z
.end method

.method private native nativeThreadRun(J)V
.end method


# virtual methods
.method public buildAcademyFile(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .locals 4
    .param p1, "productFileName"    # Ljava/lang/String;
    .param p2, "academyFileName"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->isInit:Z

    if-eqz v2, :cond_0

    .line 89
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeUploader:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeBuildAcademyFile(JLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 90
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 96
    .end local v1    # "result":I
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    :goto_0
    return-object v0

    .line 94
    .end local v0    # "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .restart local v0    # "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    goto :goto_0
.end method

.method public cancelThread()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .locals 4

    .prologue
    .line 210
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeUploader:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeCancelThread(J)I

    move-result v0

    .line 212
    .local v0, "result":I
    invoke-static {v0}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    return-object v1
.end method

.method public createUploader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;Lcom/parrot/arsdk/aracademy/ARAcademyUploaderFileProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/aracademy/ARAcademyUploaderFileCompletionListener;Ljava/lang/Object;Lcom/parrot/arsdk/aracademy/ARAcademyUploaderCompletionListener;Ljava/lang/Object;)V
    .locals 18
    .param p1, "deviceIP"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "localDirectory"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/String;
    .param p7, "md5Manager"    # Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .param p8, "fileProgressListener"    # Lcom/parrot/arsdk/aracademy/ARAcademyUploaderFileProgressListener;
    .param p9, "fileProgressArg"    # Ljava/lang/Object;
    .param p10, "fileCompletionListener"    # Lcom/parrot/arsdk/aracademy/ARAcademyUploaderFileCompletionListener;
    .param p11, "fileCompletionArg"    # Ljava/lang/Object;
    .param p12, "completionListener"    # Lcom/parrot/arsdk/aracademy/ARAcademyUploaderCompletionListener;
    .param p13, "completionArg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 61
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->isInit:Z

    if-nez v2, :cond_0

    .line 63
    invoke-virtual/range {p7 .. p7}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->getNativeManager()J

    move-result-wide v10

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    invoke-direct/range {v3 .. v17}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeNew(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/parrot/arsdk/aracademy/ARAcademyUploaderFileProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/aracademy/ARAcademyUploaderFileCompletionListener;Ljava/lang/Object;Lcom/parrot/arsdk/aracademy/ARAcademyUploaderCompletionListener;Ljava/lang/Object;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeUploader:J

    .line 66
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeUploader:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 68
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->isInit:Z

    .line 70
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyUploader$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader$1;-><init>(Lcom/parrot/arsdk/aracademy/ARAcademyUploader;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->uploaderRunnable:Ljava/lang/Runnable;

    .line 76
    :cond_1
    return-void
.end method

.method public dispose()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .locals 4

    .prologue
    .line 134
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 136
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->isInit:Z

    if-eqz v2, :cond_0

    .line 138
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeUploader:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeDelete(J)I

    move-result v1

    .line 140
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 141
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_0

    .line 143
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeUploader:J

    .line 144
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->isInit:Z

    .line 147
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
    .line 158
    :try_start_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->isInit:Z

    if-eqz v1, :cond_0

    .line 160
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->TAG:Ljava/lang/String;

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

    .line 161
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->dispose()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 162
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v1, :cond_0

    .line 164
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->TAG:Ljava/lang/String;

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

    .line 170
    .end local v0    # "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 172
    return-void

    .line 170
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getAvailableFiles()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeUploader:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeGetAvailableFiles(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUploaderRunnable()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->isInit:Z

    if-eqz v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->uploaderRunnable:Ljava/lang/Runnable;

    .line 201
    :cond_0
    return-object v0
.end method

.method public gzipPud(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "gzipFileName"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeGzipPud(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->isInit:Z

    return v0
.end method

.method public pause()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .locals 4

    .prologue
    .line 221
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeUploader:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativePause(J)I

    move-result v0

    .line 223
    .local v0, "result":I
    invoke-static {v0}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    return-object v1
.end method

.method public resume()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .locals 4

    .prologue
    .line 232
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeUploader:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeResume(J)I

    move-result v0

    .line 234
    .local v0, "result":I
    invoke-static {v0}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    return-object v1
.end method

.method public uploadPostRun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "serverUri"    # Ljava/lang/String;
    .param p2, "gzipFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->isInit:Z

    if-eqz v0, :cond_0

    .line 120
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativeUploader:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->nativePostRun(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
