.class public Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;
.super Ljava/lang/Object;
.source "ARUpdaterUploader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ARUpdaterUploader"


# instance fields
.field private isInit:Z

.field private nativeManager:J

.field private uploaderRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 63
    invoke-static {}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->nativeStaticInit()V

    .line 64
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 3
    .param p1, "_nativeManager"    # J

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->nativeManager:J

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->uploaderRunnable:Ljava/lang/Runnable;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->isInit:Z

    .line 68
    iput-wide p1, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->nativeManager:J

    .line 69
    new-instance v0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader$1;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader$1;-><init>(Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->uploaderRunnable:Ljava/lang/Runnable;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->nativeManager:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;J)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;
    .param p1, "x1"    # J

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->nativeThreadRun(J)V

    return-void
.end method

.method private native nativeCancelThread(J)I
.end method

.method private native nativeDelete(J)I
.end method

.method private native nativeNew(JLjava/lang/String;JJJIILcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadCompletionListener;Ljava/lang/Object;)I
.end method

.method private static native nativeStaticInit()V
.end method

.method private native nativeThreadRun(J)V
.end method


# virtual methods
.method public cancel()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 4

    .prologue
    .line 174
    iget-wide v2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->nativeCancelThread(J)I

    move-result v1

    .line 176
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    .line 178
    .local v0, "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    return-object v0
.end method

.method public createUpdaterUploader(Ljava/lang/String;Lcom/parrot/mux/Mux;Lcom/parrot/arsdk/arutils/ARUtilsManager;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;ZLcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadCompletionListener;Ljava/lang/Object;)V
    .locals 21
    .param p1, "rootFolder"    # Ljava/lang/String;
    .param p2, "mux"    # Lcom/parrot/mux/Mux;
    .param p3, "utilsManager"    # Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .param p4, "md5Manager"    # Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .param p5, "isAndroidApp"    # Z
    .param p6, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .param p7, "plfUploadProgressListener"    # Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadProgressListener;
    .param p8, "progressArgs"    # Ljava/lang/Object;
    .param p9, "plfUploadCompletionListener"    # Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadCompletionListener;
    .param p10, "completionArgs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arupdater/ARUpdaterException;
        }
    .end annotation

    .prologue
    .line 94
    if-eqz p5, :cond_0

    const/4 v12, 0x1

    .line 99
    .local v12, "isAndroidAppInt":I
    :goto_0
    if-eqz p2, :cond_1

    .line 101
    invoke-virtual/range {p2 .. p2}, Lcom/parrot/mux/Mux;->newMuxRef()Lcom/parrot/mux/Mux$Ref;

    move-result-object v19

    .line 102
    .local v19, "muxRef":Lcom/parrot/mux/Mux$Ref;
    invoke-virtual/range {v19 .. v19}, Lcom/parrot/mux/Mux$Ref;->getCPtr()J

    move-result-wide v6

    .line 103
    .local v6, "muxNative":J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->nativeManager:J

    invoke-virtual/range {p3 .. p3}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->getManager()J

    move-result-wide v8

    .line 104
    invoke-virtual/range {p4 .. p4}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->getNativeManager()J

    move-result-wide v10

    invoke-virtual/range {p6 .. p6}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v13

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    .line 103
    invoke-direct/range {v2 .. v17}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->nativeNew(JLjava/lang/String;JJJIILcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadCompletionListener;Ljava/lang/Object;)I

    move-result v20

    .line 106
    .local v20, "result":I
    invoke-virtual/range {v19 .. v19}, Lcom/parrot/mux/Mux$Ref;->release()V

    .line 114
    .end local v19    # "muxRef":Lcom/parrot/mux/Mux$Ref;
    :goto_1
    invoke-static/range {v20 .. v20}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v18

    .line 116
    .local v18, "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_2

    .line 118
    new-instance v2, Lcom/parrot/arsdk/arupdater/ARUpdaterException;

    invoke-direct {v2}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;-><init>()V

    throw v2

    .line 94
    .end local v6    # "muxNative":J
    .end local v12    # "isAndroidAppInt":I
    .end local v18    # "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .end local v20    # "result":I
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 108
    .restart local v12    # "isAndroidAppInt":I
    :cond_1
    const-wide/16 v6, 0x0

    .line 109
    .restart local v6    # "muxNative":J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->nativeManager:J

    invoke-virtual/range {p3 .. p3}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->getManager()J

    move-result-wide v8

    .line 110
    invoke-virtual/range {p4 .. p4}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->getNativeManager()J

    move-result-wide v10

    invoke-virtual/range {p6 .. p6}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v13

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    .line 109
    invoke-direct/range {v2 .. v17}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->nativeNew(JLjava/lang/String;JJJIILcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadCompletionListener;Ljava/lang/Object;)I

    move-result v20

    .restart local v20    # "result":I
    goto :goto_1

    .line 122
    .restart local v18    # "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->isInit:Z

    .line 124
    return-void
.end method

.method public dispose()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 4

    .prologue
    .line 132
    sget-object v0, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 134
    .local v0, "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    iget-boolean v2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->isInit:Z

    if-eqz v2, :cond_0

    .line 136
    iget-wide v2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->nativeDelete(J)I

    move-result v1

    .line 138
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    .line 139
    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v0, v2, :cond_0

    .line 141
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->isInit:Z

    .line 145
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
    .line 156
    :try_start_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->isInit:Z

    if-eqz v1, :cond_0

    .line 158
    const-string v1, "ARUpdaterUploader"

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

    .line 159
    invoke-virtual {p0}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->dispose()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    .line 160
    .local v0, "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-eq v0, v1, :cond_0

    .line 162
    const-string v1, "ARUpdaterUploader"

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

    .line 168
    .end local v0    # "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 170
    return-void

    .line 168
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getUploaderRunnable()Ljava/lang/Runnable;
    .locals 3

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->isInit:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 188
    iget-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->uploaderRunnable:Ljava/lang/Runnable;

    .line 191
    :cond_0
    return-object v0
.end method
