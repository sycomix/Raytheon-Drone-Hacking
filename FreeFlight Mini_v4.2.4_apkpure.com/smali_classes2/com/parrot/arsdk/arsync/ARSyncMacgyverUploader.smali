.class public Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;
.super Ljava/lang/Object;
.source "ARSyncMacgyverUploader.java"


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
    .line 47
    const-class v0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->TAG:Ljava/lang/String;

    .line 173
    invoke-static {}, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->nativeStaticInit()Z

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDLcom/parrot/arsdk/arsync/ARSyncMacgyverListener;)V
    .locals 5
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "controllerModel"    # Ljava/lang/String;
    .param p4, "controllerType"    # Ljava/lang/String;
    .param p5, "gpsLatitude"    # D
    .param p7, "gpsLongitude"    # D
    .param p9, "listener"    # Lcom/parrot/arsdk/arsync/ARSyncMacgyverListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arsync/ARSyncException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->isInit:Z

    .line 49
    iput-wide v2, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->nativeManager:J

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->uploaderRunnable:Ljava/lang/Runnable;

    .line 70
    iget-boolean v0, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->isInit:Z

    if-nez v0, :cond_0

    .line 72
    invoke-direct/range {p0 .. p9}, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->nativeNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDLcom/parrot/arsdk/arsync/ARSyncMacgyverListener;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->nativeManager:J

    .line 75
    :cond_0
    iget-wide v0, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->nativeManager:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->isInit:Z

    .line 80
    :cond_1
    new-instance v0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader$1;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader$1;-><init>(Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->uploaderRunnable:Ljava/lang/Runnable;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->nativeManager:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;J)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;
    .param p1, "x1"    # J

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->nativeThreadRun(J)V

    return-void
.end method

.method private native nativeCancelThread(J)I
.end method

.method private native nativeDelete(J)V
.end method

.method private native nativeNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDLcom/parrot/arsdk/arsync/ARSyncMacgyverListener;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arsync/ARSyncException;
        }
    .end annotation
.end method

.method private native nativePause(J)I
.end method

.method private native nativeResume(J)I
.end method

.method private static native nativeStaticInit()Z
.end method

.method private native nativeThreadRun(J)V
.end method


# virtual methods
.method public cancelThread()Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .locals 4

    .prologue
    .line 142
    iget-wide v2, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->nativeCancelThread(J)I

    move-result v1

    .line 144
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    move-result-object v0

    .line 145
    .local v0, "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    return-object v0
.end method

.method public dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 92
    iget-wide v0, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->nativeManager:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 94
    iget-wide v0, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->nativeManager:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->nativeDelete(J)V

    .line 96
    iput-wide v2, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->nativeManager:J

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->isInit:Z

    .line 99
    :cond_0
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
    .line 109
    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->isInit:Z

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->TAG:Ljava/lang/String;

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

    .line 112
    invoke-virtual {p0}, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 119
    return-void

    .line 117
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getUploaderRunnable()Ljava/lang/Runnable;
    .locals 3

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->isInit:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->uploaderRunnable:Ljava/lang/Runnable;

    .line 134
    :cond_0
    return-object v0
.end method

.method public pause()Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .locals 4

    .prologue
    .line 153
    iget-wide v2, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->nativePause(J)I

    move-result v1

    .line 155
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    move-result-object v0

    .line 156
    .local v0, "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    return-object v0
.end method

.method public resume()Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .locals 4

    .prologue
    .line 164
    iget-wide v2, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->nativeResume(J)I

    move-result v1

    .line 166
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    move-result-object v0

    .line 167
    .local v0, "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    return-object v0
.end method
