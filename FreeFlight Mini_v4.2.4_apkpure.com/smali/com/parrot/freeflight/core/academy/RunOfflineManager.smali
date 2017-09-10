.class public Lcom/parrot/freeflight/core/academy/RunOfflineManager;
.super Ljava/lang/Object;
.source "RunOfflineManager.java"


# static fields
.field public static final ACADEMY_FILES_PATH:Ljava/lang/String;

.field private static final ACADEMY_FTP_PORT:I = 0x15

.field public static final GZIP_EXTENSION:Ljava/lang/String; = ".gz"

.field public static final JSON_EXTENSION:Ljava/lang/String; = ".txt"

.field public static final PUD_EXTENSION:Ljava/lang/String; = ".pud"

.field public static final PUD_FILES_PATH:Ljava/lang/String;

.field public static final RUN_DETAILS_FILES_PATH:Ljava/lang/String;

.field public static final RUN_SUMMARY_FILES_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "RunOfflineManager"


# instance fields
.field private mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mBLEManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mCheckTaskRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGetAllRunsRequestId:I

.field private mInternetAvailable:Z

.field private final mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

.field private mListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPudDownloadCompleteListener:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;

.field private mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRunsOfflineHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRunsOfflineThread:Landroid/os/HandlerThread;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mStopWorkThreadRunnable:Ljava/lang/Runnable;

.field private mStopped:Z

.field private mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mWorkExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ACADEMY/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "externalFolder":Ljava/lang/String;
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x1

    .line 60
    .local v2, "preCondition":Z
    :goto_0
    if-eqz v2, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 63
    sput-object v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->ACADEMY_FILES_PATH:Ljava/lang/String;

    .line 67
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->ACADEMY_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "academy/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->PUD_FILES_PATH:Ljava/lang/String;

    .line 68
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->PUD_FILES_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 70
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->ACADEMY_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "runSummary/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_SUMMARY_FILES_PATH:Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/io/File;

    .end local v1    # "folder":Ljava/io/File;
    sget-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_SUMMARY_FILES_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .restart local v1    # "folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 73
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->ACADEMY_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "runDetails/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_DETAILS_FILES_PATH:Ljava/lang/String;

    .line 74
    new-instance v1, Ljava/io/File;

    .end local v1    # "folder":Ljava/io/File;
    sget-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_DETAILS_FILES_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .restart local v1    # "folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 76
    :cond_2
    return-void

    .line 59
    .end local v1    # "folder":Ljava/io/File;
    .end local v2    # "preCondition":Z
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 65
    .restart local v2    # "preCondition":Z
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ACADEMY/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->ACADEMY_FILES_PATH:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mainHandle"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mInternetAvailable:Z

    .line 110
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mStopped:Z

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mGetAllRunsRequestId:I

    .line 113
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$1;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mStopWorkThreadRunnable:Ljava/lang/Runnable;

    .line 124
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$2;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    .line 134
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$3;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mWorkExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    .line 142
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mCheckTaskRunnable:Ljava/lang/Runnable;

    .line 165
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$5;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadCompleteListener:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;

    .line 174
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mMainHandler:Landroid/os/Handler;

    .line 177
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-direct {v0}, Lcom/parrot/freeflight/core/academy/RunCollection;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 179
    invoke-static {p1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mBLEManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mBLEManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/RunCollection;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkDownload()V

    return-void
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkDelete()V

    return-void
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkUpdateGrade()V

    return-void
.end method

.method static synthetic access$1302(Lcom/parrot/freeflight/core/academy/RunOfflineManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mGetAllRunsRequestId:I

    return p1
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mCheckTaskRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mStopped:Z

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkLocalPudFile()V

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mInternetAvailable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkUpload()V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkRunAddress()V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/arsdk/aracademy/ARAcademyManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    return-object v0
.end method

.method private checkDelete()V
    .locals 4

    .prologue
    .line 276
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->isAcademyConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->getDeleteRunHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getJobCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getDeleteRunHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;Lcom/parrot/arsdk/aracademy/ARAcademyManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->start()V

    .line 282
    :cond_1
    return-void
.end method

.method private checkDownload()V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->isAcademyConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->getDownloadHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getJobCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getDownloadHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;-><init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;Lcom/parrot/arsdk/aracademy/ARAcademyManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;->start()V

    .line 264
    :cond_1
    return-void
.end method

.method private checkLocalPudFile()V
    .locals 5

    .prologue
    .line 310
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 311
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->PUD_FILES_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .local v2, "pudFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 313
    .local v1, "listFiles":[Ljava/io/File;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 314
    .local v0, "hadPudFile":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 315
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    new-instance v4, Lcom/parrot/freeflight/core/academy/RunOfflineManager$8;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$8;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    .end local v0    # "hadPudFile":Z
    .end local v1    # "listFiles":[Ljava/io/File;
    .end local v2    # "pudFolder":Ljava/io/File;
    :cond_0
    return-void

    .line 313
    .restart local v1    # "listFiles":[Ljava/io/File;
    .restart local v2    # "pudFolder":Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkRunAddress()V
    .locals 4

    .prologue
    .line 301
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->getDetectAddressHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getJobCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getDetectAddressHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mWorkExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;-><init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;->start()V

    .line 307
    :cond_1
    return-void
.end method

.method private checkTask()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mCheckTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 330
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mCheckTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    :cond_0
    return-void
.end method

.method private checkUpdateGrade()V
    .locals 4

    .prologue
    .line 267
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->isAcademyConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->getUpdateGradeHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getJobCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getUpdateGradeHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;-><init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;Lcom/parrot/arsdk/aracademy/ARAcademyManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->start()V

    .line 273
    :cond_1
    return-void
.end method

.method private checkUpload()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 285
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/RunCollection;->getUploadHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getJobCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 286
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mContext:Landroid/content/Context;

    const-string v4, "academy_shared_preferences"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 287
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "academy_username"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "userName":Ljava/lang/String;
    const-string v3, "academy_password"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "password":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 290
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    if-nez v3, :cond_0

    .line 291
    new-instance v3, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/RunCollection;->getUploadHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    invoke-direct {v3, v4, v5, v2, v0}, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    .line 293
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->start()V

    .line 298
    .end local v0    # "password":Ljava/lang/String;
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v2    # "userName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 295
    .restart local v0    # "password":Ljava/lang/String;
    .restart local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v2    # "userName":Ljava/lang/String;
    :cond_2
    const-string v3, "RunOfflineManager"

    const-string v4, "NO user saved..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private destroyAllUserTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->stopCheckServer()V

    .line 386
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;->stop()V

    .line 388
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;->stop()V

    .line 393
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->stop()V

    .line 398
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    if-eqz v0, :cond_3

    .line 402
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->stop()V

    .line 403
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    if-eqz v0, :cond_4

    .line 407
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->stop()V

    .line 408
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    .line 410
    :cond_4
    return-void
.end method

.method private isAcademyConnected()Z
    .locals 3

    .prologue
    .line 335
    const/4 v1, 0x0

    .line 336
    .local v1, "isConnected":Z
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-eqz v2, :cond_0

    .line 338
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->isConnected()Z
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 343
    :cond_0
    :goto_0
    return v1

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopCheckServer()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mGetAllRunsRequestId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    iget v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mGetAllRunsRequestId:I

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->cancelRequest(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 253
    const-string v0, "RunOfflineManager"

    const-string v1, "stop check server..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    return-void
.end method


# virtual methods
.method public checkAcademyServer()V
    .locals 5

    .prologue
    .line 217
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->isAcademyConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mGetAllRunsRequestId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 219
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 220
    .local v1, "requestDate":Ljava/util/Date;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    new-instance v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;

    invoke-direct {v3, p0, v1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Ljava/util/Date;)V

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->asyncAuthGetRuns(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsListener;)I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mGetAllRunsRequestId:I

    .line 243
    const-string v2, "RunOfflineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check academy server all runs, request id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mGetAllRunsRequestId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v1    # "requestDate":Ljava/util/Date;
    :cond_0
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRunInformation(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getRunByUuid(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v0

    return-object v0
.end method

.method public onAcademyConnected(Lcom/parrot/arsdk/aracademy/ARAcademyManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "academyManager"    # Lcom/parrot/arsdk/aracademy/ARAcademyManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "userName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 186
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    .line 187
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mStopped:Z

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager$6;

    invoke-direct {v1, p0, p2}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$6;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkTask()V

    .line 198
    :cond_1
    return-void
.end method

.method public onAcademyDisconnected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    .line 202
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->stopCheckServer()V

    .line 203
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;->stop()V

    .line 204
    :cond_0
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->stop()V

    .line 206
    :cond_1
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->stop()V

    .line 208
    :cond_2
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    .line 210
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->stop()V

    .line 212
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    .line 214
    :cond_3
    return-void
.end method

.method public onNetworkChanged(Z)V
    .locals 1
    .param p1, "internetAvailable"    # Z

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mStopped:Z

    if-nez v0, :cond_0

    .line 505
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mInternetAvailable:Z

    .line 506
    if-eqz p1, :cond_1

    .line 507
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkTask()V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->stopCheckServer()V

    .line 510
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->stop()V

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;->stop()V

    .line 512
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->stop()V

    .line 513
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;->stop()V

    .line 514
    :cond_5
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->stop()V

    goto :goto_0
.end method

.method public registerListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 465
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    .line 466
    return-void
.end method

.method public removeRun(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 429
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 437
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager$11;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$11;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public requestFlights(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 413
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 426
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager$10;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$10;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mStopped:Z

    .line 348
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mStopWorkThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 356
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager$9;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$9;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void

    .line 351
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunOfflineManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineThread:Landroid/os/HandlerThread;

    .line 352
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 353
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    .line 354
    const-string v0, "RunOfflineManager"

    const-string v1, "create work thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startPudDownload(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 6
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x15

    .line 469
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->isUpToDate(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->cancelTask()V

    .line 471
    iput-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 476
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    if-eqz v0, :cond_3

    .line 478
    new-instance v1, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$FtpWifiHandler;

    invoke-direct {v1, v2, v3}, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$FtpWifiHandler;-><init>(Ljava/lang/String;I)V

    .line 486
    .local v1, "networkHandler":Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
    :goto_0
    if-eqz v1, :cond_2

    .line 488
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;->stop()V

    .line 490
    :cond_1
    new-instance v0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    const-string v3, "internal_000"

    sget-object v4, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->ACADEMY_FILES_PATH:Ljava/lang/String;

    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadCompleteListener:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;-><init>(Lcom/parrot/freeflight/media/task/FtpNetworkHandler;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    .line 491
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    invoke-static {}, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->getFtpDefaultExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 494
    .end local v1    # "networkHandler":Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
    :cond_2
    return-void

    .line 479
    :cond_3
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    if-eqz v0, :cond_4

    .line 480
    new-instance v1, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$FtpWifiHandler;

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$FtpWifiHandler;-><init>(Ljava/lang/String;I)V

    .restart local v1    # "networkHandler":Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
    goto :goto_0

    .line 481
    .end local v1    # "networkHandler":Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
    :cond_4
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mBLEManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    if-eqz v0, :cond_5

    .line 482
    new-instance v1, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$BLEFtpHandler;

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mBLEManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-direct {v1, v0, v2, v3}, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$BLEFtpHandler;-><init>(Landroid/content/Context;Lcom/parrot/arsdk/arsal/ARSALBLEManager;I)V

    .restart local v1    # "networkHandler":Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
    goto :goto_0

    .line 484
    .end local v1    # "networkHandler":Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "networkHandler":Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mStopped:Z

    .line 371
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->destroyAllUserTask()V

    .line 372
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->stopPudDownload()V

    .line 374
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    .line 375
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mInternetAvailable:Z

    .line 378
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 380
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mStopWorkThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 382
    :cond_0
    return-void
.end method

.method public stopPudDownload()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->cancelTask()V

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    .line 501
    :cond_0
    return-void
.end method

.method public updateRunGrade(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "grade"    # I
    .param p3, "visible"    # Z

    .prologue
    .line 440
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->getRunInformation(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v0

    .line 445
    .local v0, "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v0, :cond_0

    .line 449
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    new-instance v2, Lcom/parrot/freeflight/core/academy/RunOfflineManager$12;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$12;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Lcom/parrot/freeflight/core/academy/RunInformation;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
