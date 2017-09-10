.class public Lcom/parrot/freeflight/update/task/DownloaderTask;
.super Landroid/os/AsyncTask;
.source "DownloaderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;,
        Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;,
        Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;,
        Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;,
        Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;",
        "Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final DUMMY_VERSION:Ljava/lang/String; = "0.0.0"


# instance fields
.field private final mAppVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCompletionResult:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCurrentDeviceVersionList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/update/task/DeviceVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentDownloadingVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDownloadCompletionListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadCompletionListener;

.field private final mDownloadListener:Lcom/parrot/arsdk/arupdater/ARUpdaterShouldDownloadPlfListener;

.field private final mDownloadProgressListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadProgressListener;

.field private mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mExternalDirectory:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGetUpdateInfoSyncTask:Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mInternetConnectionListener:Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;

.field private mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mLock:Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;

.field private mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProductToDownload:[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mResultPool:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mServerVersions:[Lcom/parrot/freeflight/util/Version;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTrampolineExternalDirectory:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mWillDownloadPlfListener:Lcom/parrot/arsdk/arupdater/ARUpdaterWillDownloadPlfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/update/task/DeviceVersion;",
            ">;",
            "Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "currentDeviceVersionList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/update/task/DeviceVersion;>;"
    const/4 v9, 0x0

    .line 108
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 75
    new-instance v6, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;

    invoke-direct {v6}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;-><init>()V

    iput-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mResultPool:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;

    .line 538
    new-instance v6, Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;

    invoke-direct {v6, v9}, Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;-><init>(Lcom/parrot/freeflight/update/task/DownloaderTask$1;)V

    iput-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mLock:Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;

    .line 544
    new-instance v6, Lcom/parrot/freeflight/update/task/DownloaderTask$1;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/update/task/DownloaderTask$1;-><init>(Lcom/parrot/freeflight/update/task/DownloaderTask;)V

    iput-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloadListener:Lcom/parrot/arsdk/arupdater/ARUpdaterShouldDownloadPlfListener;

    .line 575
    new-instance v6, Lcom/parrot/freeflight/update/task/DownloaderTask$2;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/update/task/DownloaderTask$2;-><init>(Lcom/parrot/freeflight/update/task/DownloaderTask;)V

    iput-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mWillDownloadPlfListener:Lcom/parrot/arsdk/arupdater/ARUpdaterWillDownloadPlfListener;

    .line 592
    new-instance v6, Lcom/parrot/freeflight/update/task/DownloaderTask$3;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/update/task/DownloaderTask$3;-><init>(Lcom/parrot/freeflight/update/task/DownloaderTask;)V

    iput-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloadProgressListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadProgressListener;

    .line 606
    new-instance v6, Lcom/parrot/freeflight/update/task/DownloaderTask$4;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/update/task/DownloaderTask$4;-><init>(Lcom/parrot/freeflight/update/task/DownloaderTask;)V

    iput-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloadCompletionListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadCompletionListener;

    .line 626
    new-instance v6, Lcom/parrot/freeflight/update/task/DownloaderTask$5;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/update/task/DownloaderTask$5;-><init>(Lcom/parrot/freeflight/update/task/DownloaderTask;)V

    iput-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mInternetConnectionListener:Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDeviceVersionList:Ljava/util/List;

    .line 113
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 114
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .local v0, "appVersion":Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mAppVersion:Ljava/lang/String;

    .line 120
    iget-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDeviceVersionList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/parrot/freeflight/util/Version;

    iput-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mServerVersions:[Lcom/parrot/freeflight/util/Version;

    .line 121
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDeviceVersionList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 122
    iget-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDeviceVersionList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/update/task/DeviceVersion;

    iget-object v6, v6, Lcom/parrot/freeflight/update/task/DeviceVersion;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {p1, v6}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getServerFirmwareVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "version":Ljava/lang/String;
    iget-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mServerVersions:[Lcom/parrot/freeflight/util/Version;

    new-instance v7, Lcom/parrot/freeflight/util/Version;

    if-eqz v5, :cond_0

    .end local v5    # "version":Ljava/lang/String;
    :goto_2
    invoke-direct {v7, v5}, Lcom/parrot/freeflight/util/Version;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v2

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    .end local v0    # "appVersion":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "size":I
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 117
    const-string v0, ""

    .restart local v0    # "appVersion":Ljava/lang/String;
    goto :goto_0

    .line 123
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "i":I
    .restart local v4    # "size":I
    .restart local v5    # "version":Ljava/lang/String;
    :cond_0
    const-string v5, "0.0.0"

    goto :goto_2

    .line 126
    .end local v5    # "version":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mExternalDirectory:Ljava/lang/String;

    .line 127
    iget-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkTrampolineFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mTrampolineExternalDirectory:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    .line 129
    new-instance v6, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;

    invoke-direct {v6, v9}, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;-><init>(Lcom/parrot/freeflight/update/task/DownloaderTask$1;)V

    iput-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mGetUpdateInfoSyncTask:Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;

    .line 130
    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/update/task/DownloaderTask;)Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mResultPool:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/update/task/DownloaderTask;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/update/task/DownloaderTask;)Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mLock:Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/update/task/DownloaderTask;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/update/task/DownloaderTask;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/update/task/DownloaderTask;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private createMd5Manager()Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 419
    .local v1, "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :try_start_0
    new-instance v2, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-direct {v2}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arsal/ARSALException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    .end local v1    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .local v2, "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :try_start_1
    invoke-virtual {v2}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->init()V
    :try_end_1
    .catch Lcom/parrot/arsdk/arsal/ARSALException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 429
    .end local v2    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v1    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :cond_0
    :goto_0
    return-object v1

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Lcom/parrot/arsdk/arsal/ARSALException;
    :goto_1
    invoke-virtual {v0}, Lcom/parrot/arsdk/arsal/ARSALException;->printStackTrace()V

    .line 423
    if-eqz v1, :cond_0

    .line 424
    invoke-virtual {v1}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->close()Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 425
    invoke-virtual {v1}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->dispose()V

    .line 426
    const/4 v1, 0x0

    goto :goto_0

    .line 421
    .end local v0    # "e":Lcom/parrot/arsdk/arsal/ARSALException;
    .end local v1    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v2    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v1    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    goto :goto_1
.end method

.method private createUpdaterManager()Lcom/parrot/arsdk/arupdater/ARUpdaterManager;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 403
    :try_start_0
    new-instance v1, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-direct {v1}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arupdater/ARUpdaterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    return-object v1

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Lcom/parrot/arsdk/arupdater/ARUpdaterException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;->printStackTrace()V

    .line 407
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private publishAlreadyDownloadResult(Ljava/util/Map;)V
    .locals 4
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "Lcom/parrot/freeflight/update/task/AvailableUpdate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "availableUpdateMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/update/task/AvailableUpdate;>;"
    const/4 v3, 0x1

    .line 270
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mResultPool:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;->obtain()Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    move-result-object v0

    .line 271
    .local v0, "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    sget-object v1, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->FINISHED:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->setState(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;)V

    .line 272
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->setProgress(F)V

    .line 273
    iput-boolean v3, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mAlreadyDownloaded:Z

    .line 274
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/parrot/freeflight/update/task/AvailableUpdate;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iput-object v1, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->availableUpdates:[Lcom/parrot/freeflight/update/task/AvailableUpdate;

    .line 275
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->setError(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V

    .line 276
    new-array v1, v3, [Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->publishProgress([Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method private publishAvailableDownloadResult(Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "Lcom/parrot/freeflight/update/task/AvailableUpdate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "availableUpdateMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/update/task/AvailableUpdate;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mResultPool:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;->obtain()Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    move-result-object v0

    .line 282
    .local v0, "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    sget-object v1, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->UPDATE_AVAILABLE:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->setState(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;)V

    .line 283
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/parrot/freeflight/update/task/AvailableUpdate;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iput-object v1, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->availableUpdates:[Lcom/parrot/freeflight/update/task/AvailableUpdate;

    .line 284
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->setError(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V

    .line 285
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->publishProgress([Ljava/lang/Object;)V

    .line 286
    return-void
.end method

.method private waitForUi()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 290
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mLock:Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;

    monitor-enter v1

    .line 291
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mLock:Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;

    iget-boolean v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 293
    :try_start_1
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mLock:Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    goto :goto_0

    .line 298
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mLock:Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;->finished:Z

    .line 299
    monitor-exit v1

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelTask()V
    .locals 2

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 366
    const-string v0, "FFMini.Updater"

    const-string v1, "Cancel task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->ready()V

    .line 368
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mGetUpdateInfoSyncTask:Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->cancel()V

    .line 369
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->cancel()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 372
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->cancel(Z)Z

    .line 374
    :cond_1
    return-void
.end method

.method clean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 380
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->dispose()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 382
    iput-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->close()Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 386
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->dispose()V

    .line 387
    iput-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->dispose()V

    .line 391
    iput-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    .line 393
    :cond_2
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 35
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 160
    sget-object v22, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 161
    .local v22, "result":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v5, "availableUpdateMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/update/task/AvailableUpdate;>;"
    const/16 v20, 0x0

    .line 163
    .local v20, "productCanBeUpdatedWithLocalVersion":Z
    new-instance v30, Lcom/parrot/freeflight/network/InternetConnectionChecker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mInternetConnectionListener:Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;

    move-object/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Lcom/parrot/freeflight/network/InternetConnectionChecker;-><init>(Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/parrot/freeflight/network/InternetConnectionChecker;->check(Landroid/content/Context;)Z

    move-result v10

    .line 164
    .local v10, "hasInternet":Z
    if-eqz v10, :cond_0

    .line 166
    new-instance v30, Lcom/parrot/freeflight/update/UpdateSyncable;

    invoke-direct/range {v30 .. v30}, Lcom/parrot/freeflight/update/UpdateSyncable;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/parrot/freeflight/update/UpdateSyncable;->doWork(Landroid/content/Context;)Z

    .line 168
    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDeviceVersionList:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v24

    .local v24, "size":I
    :goto_0
    move/from16 v0, v24

    if-ge v11, v0, :cond_e

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDeviceVersionList:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/update/task/DeviceVersion;

    .line 170
    .local v7, "deviceVersion":Lcom/parrot/freeflight/update/task/DeviceVersion;
    invoke-static {v7}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getTrampolineVersion(Lcom/parrot/freeflight/update/task/DeviceVersion;)Lcom/parrot/freeflight/util/Version;

    move-result-object v25

    .line 171
    .local v25, "trampolineVersion":Lcom/parrot/freeflight/util/Version;
    if-eqz v25, :cond_6

    iget-object v0, v7, Lcom/parrot/freeflight/update/task/DeviceVersion;->version:Lcom/parrot/freeflight/util/Version;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/util/Version;->compareTo(Lcom/parrot/freeflight/util/Version;)I

    move-result v30

    if-gez v30, :cond_6

    const/16 v19, 0x1

    .line 173
    .local v19, "needTrampolineUpdate":Z
    :goto_1
    if-eqz v19, :cond_7

    move-object/from16 v29, v25

    .line 174
    .local v29, "versionToCheck":Lcom/parrot/freeflight/util/Version;
    :goto_2
    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mTrampolineExternalDirectory:Ljava/lang/String;

    .line 176
    .local v9, "folder":Ljava/lang/String;
    :goto_3
    iget-object v0, v7, Lcom/parrot/freeflight/update/task/DeviceVersion;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v29}, Lcom/parrot/freeflight/util/Version;->getStringVersion()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v9, v1}, Lcom/parrot/freeflight/update/task/PlfChecker;->compareDownloadedPlfToVersion(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;

    move-result-object v16

    .line 177
    .local v16, "localPlfVersionInfo":Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
    const/4 v15, 0x0

    .line 178
    .local v15, "localPlfVersion":Lcom/parrot/freeflight/util/Version;
    if-eqz v16, :cond_1

    .line 179
    new-instance v15, Lcom/parrot/freeflight/util/Version;

    .end local v15    # "localPlfVersion":Lcom/parrot/freeflight/util/Version;
    invoke-virtual/range {v16 .. v16}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;->getLocalVersion()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v15, v0}, Lcom/parrot/freeflight/util/Version;-><init>(Ljava/lang/String;)V

    .line 181
    .restart local v15    # "localPlfVersion":Lcom/parrot/freeflight/util/Version;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mServerVersions:[Lcom/parrot/freeflight/util/Version;

    move-object/from16 v30, v0

    aget-object v30, v30, v11

    invoke-virtual/range {v30 .. v30}, Lcom/parrot/freeflight/util/Version;->getStringVersion()Ljava/lang/String;

    move-result-object v30

    const-string v31, "0.0.0"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_9

    iget-object v0, v7, Lcom/parrot/freeflight/update/task/DeviceVersion;->version:Lcom/parrot/freeflight/util/Version;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mServerVersions:[Lcom/parrot/freeflight/util/Version;

    move-object/from16 v31, v0

    aget-object v31, v31, v11

    invoke-virtual/range {v30 .. v31}, Lcom/parrot/freeflight/util/Version;->compareTo(Lcom/parrot/freeflight/util/Version;)I

    move-result v30

    if-ltz v30, :cond_9

    const/4 v6, 0x1

    .line 182
    .local v6, "deviceUpToDateFromServer":Z
    :goto_4
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;->isUpToDate()Z

    move-result v30

    if-nez v30, :cond_a

    const/4 v14, 0x1

    .line 183
    .local v14, "localPflVersionUpToDateFromServer":Z
    :goto_5
    if-eqz v16, :cond_b

    iget-object v0, v7, Lcom/parrot/freeflight/update/task/DeviceVersion;->version:Lcom/parrot/freeflight/util/Version;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Lcom/parrot/freeflight/util/Version;->compareTo(Lcom/parrot/freeflight/util/Version;)I

    move-result v30

    if-gez v30, :cond_b

    const/16 v17, 0x1

    .line 184
    .local v17, "localPlfVersionUpToDateFromDevice":Z
    :goto_6
    if-nez v6, :cond_2

    if-nez v17, :cond_2

    if-eqz v14, :cond_5

    .line 186
    :cond_2
    if-eqz v6, :cond_3

    if-eqz v17, :cond_c

    .line 187
    :cond_3
    invoke-virtual {v15}, Lcom/parrot/freeflight/util/Version;->getStringVersion()Ljava/lang/String;

    move-result-object v28

    .line 191
    .local v28, "version":Ljava/lang/String;
    :goto_7
    new-instance v26, Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iget-object v0, v7, Lcom/parrot/freeflight/update/task/DeviceVersion;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/update/task/AvailableUpdate;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Z)V

    .line 192
    .local v26, "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    if-eqz v6, :cond_4

    if-eqz v17, :cond_d

    :cond_4
    const/16 v30, 0x1

    :goto_8
    move/from16 v0, v30

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/parrot/freeflight/update/task/AvailableUpdate;->deviceNeedUpdate:Z

    .line 193
    move-object/from16 v0, v26

    iput-boolean v14, v0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->upToDateFromServer:Z

    .line 194
    iget-object v0, v7, Lcom/parrot/freeflight/update/task/DeviceVersion;->version:Lcom/parrot/freeflight/util/Version;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/parrot/freeflight/util/Version;->getStringVersion()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/parrot/freeflight/update/task/AvailableUpdate;->originalVersion:Ljava/lang/String;

    .line 195
    move/from16 v0, v19

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/parrot/freeflight/update/task/AvailableUpdate;->trampolineUpdate:Z

    .line 196
    iget-object v0, v7, Lcom/parrot/freeflight/update/task/DeviceVersion;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    if-eqz v17, :cond_5

    .line 198
    const/16 v20, 0x1

    .line 168
    .end local v26    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    .end local v28    # "version":Ljava/lang/String;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 171
    .end local v6    # "deviceUpToDateFromServer":Z
    .end local v9    # "folder":Ljava/lang/String;
    .end local v14    # "localPflVersionUpToDateFromServer":Z
    .end local v15    # "localPlfVersion":Lcom/parrot/freeflight/util/Version;
    .end local v16    # "localPlfVersionInfo":Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
    .end local v17    # "localPlfVersionUpToDateFromDevice":Z
    .end local v19    # "needTrampolineUpdate":Z
    .end local v29    # "versionToCheck":Lcom/parrot/freeflight/util/Version;
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 173
    .restart local v19    # "needTrampolineUpdate":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mServerVersions:[Lcom/parrot/freeflight/util/Version;

    move-object/from16 v30, v0

    aget-object v29, v30, v11

    goto/16 :goto_2

    .line 174
    .restart local v29    # "versionToCheck":Lcom/parrot/freeflight/util/Version;
    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mExternalDirectory:Ljava/lang/String;

    goto/16 :goto_3

    .line 181
    .restart local v9    # "folder":Ljava/lang/String;
    .restart local v15    # "localPlfVersion":Lcom/parrot/freeflight/util/Version;
    .restart local v16    # "localPlfVersionInfo":Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 182
    .restart local v6    # "deviceUpToDateFromServer":Z
    :cond_a
    const/4 v14, 0x0

    goto :goto_5

    .line 183
    .restart local v14    # "localPflVersionUpToDateFromServer":Z
    :cond_b
    const/16 v17, 0x0

    goto :goto_6

    .line 189
    .restart local v17    # "localPlfVersionUpToDateFromDevice":Z
    :cond_c
    iget-object v0, v7, Lcom/parrot/freeflight/update/task/DeviceVersion;->version:Lcom/parrot/freeflight/util/Version;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/parrot/freeflight/util/Version;->getStringVersion()Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "version":Ljava/lang/String;
    goto :goto_7

    .line 192
    .restart local v26    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    :cond_d
    const/16 v30, 0x0

    goto :goto_8

    .line 202
    .end local v6    # "deviceUpToDateFromServer":Z
    .end local v7    # "deviceVersion":Lcom/parrot/freeflight/update/task/DeviceVersion;
    .end local v9    # "folder":Ljava/lang/String;
    .end local v14    # "localPflVersionUpToDateFromServer":Z
    .end local v15    # "localPlfVersion":Lcom/parrot/freeflight/util/Version;
    .end local v16    # "localPlfVersionInfo":Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
    .end local v17    # "localPlfVersionUpToDateFromDevice":Z
    .end local v19    # "needTrampolineUpdate":Z
    .end local v25    # "trampolineVersion":Lcom/parrot/freeflight/util/Version;
    .end local v26    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    .end local v28    # "version":Ljava/lang/String;
    .end local v29    # "versionToCheck":Lcom/parrot/freeflight/util/Version;
    :cond_e
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDeviceVersionList:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_10

    .line 203
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/parrot/freeflight/update/task/DownloaderTask;->publishAlreadyDownloadResult(Ljava/util/Map;)V

    .line 265
    :cond_f
    :goto_9
    return-object v22

    .line 205
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1f

    .line 206
    if-eqz v10, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->isCancelled()Z

    move-result v30

    if-nez v30, :cond_1d

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mGetUpdateInfoSyncTask:Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mExternalDirectory:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mAppVersion:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDeviceVersionList:Ljava/util/List;

    move-object/from16 v33, v0

    invoke-virtual/range {v30 .. v33}, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->execute(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;

    move-result-object v12

    .line 208
    .local v12, "info":[Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;
    array-length v0, v12

    move/from16 v32, v0

    const/16 v30, 0x0

    move/from16 v31, v30

    :goto_a
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_15

    aget-object v8, v12, v31

    .line 209
    .local v8, "downloadInfo":Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;
    iget-object v0, v8, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_13

    .line 210
    new-instance v26, Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iget-object v0, v8, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;->plfVersion:Ljava/lang/String;

    move-object/from16 v30, v0

    iget-object v0, v8, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/update/task/AvailableUpdate;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Z)V

    .line 211
    .restart local v26    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    iget-object v0, v8, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;->plfVersion:Ljava/lang/String;

    move-object/from16 v30, v0

    iget-object v0, v8, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object/from16 v33, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->isTrampolineVersion(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/parrot/freeflight/update/task/AvailableUpdate;->trampolineUpdate:Z

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDeviceVersionList:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_11
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_12

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/update/task/DeviceVersion;

    .line 214
    .restart local v7    # "deviceVersion":Lcom/parrot/freeflight/update/task/DeviceVersion;
    iget-object v0, v7, Lcom/parrot/freeflight/update/task/DeviceVersion;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object/from16 v33, v0

    iget-object v0, v8, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_11

    .line 215
    iget-object v0, v7, Lcom/parrot/freeflight/update/task/DeviceVersion;->version:Lcom/parrot/freeflight/util/Version;

    move-object/from16 v30, v0

    new-instance v33, Lcom/parrot/freeflight/util/Version;

    iget-object v0, v8, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;->plfVersion:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Lcom/parrot/freeflight/util/Version;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/util/Version;->compareTo(Lcom/parrot/freeflight/util/Version;)I

    move-result v30

    if-gez v30, :cond_14

    const/16 v30, 0x1

    :goto_b
    move/from16 v0, v30

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/parrot/freeflight/update/task/AvailableUpdate;->deviceNeedUpdate:Z

    .line 216
    iget-object v0, v7, Lcom/parrot/freeflight/update/task/DeviceVersion;->version:Lcom/parrot/freeflight/util/Version;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/parrot/freeflight/util/Version;->getStringVersion()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/parrot/freeflight/update/task/AvailableUpdate;->originalVersion:Ljava/lang/String;

    .line 220
    .end local v7    # "deviceVersion":Lcom/parrot/freeflight/update/task/DeviceVersion;
    :cond_12
    iget-object v0, v8, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .end local v26    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    :cond_13
    add-int/lit8 v30, v31, 0x1

    move/from16 v31, v30

    goto/16 :goto_a

    .line 215
    .restart local v7    # "deviceVersion":Lcom/parrot/freeflight/update/task/DeviceVersion;
    .restart local v26    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    :cond_14
    const/16 v30, 0x0

    goto :goto_b

    .line 223
    .end local v7    # "deviceVersion":Lcom/parrot/freeflight/update/task/DeviceVersion;
    .end local v8    # "downloadInfo":Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;
    .end local v26    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    :cond_15
    const/16 v18, 0x0

    .line 224
    .local v18, "needDownload":Z
    const/16 v27, 0x0

    .line 225
    .local v27, "updateAvailable":Z
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 226
    .local v13, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/freeflight/update/task/AvailableUpdate;>;"
    :cond_16
    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_18

    .line 227
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/parrot/freeflight/update/task/AvailableUpdate;

    .line 228
    .restart local v26    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->deviceNeedUpdate:Z

    move/from16 v30, v0

    if-eqz v30, :cond_17

    .line 229
    const/16 v27, 0x1

    .line 230
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->downloaded:Z

    move/from16 v30, v0

    if-nez v30, :cond_16

    .line 231
    const/16 v18, 0x1

    goto :goto_c

    .line 234
    :cond_17
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 237
    .end local v26    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    :cond_18
    if-eqz v27, :cond_19

    if-nez v18, :cond_1a

    .line 238
    :cond_19
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/parrot/freeflight/update/task/DownloaderTask;->publishAlreadyDownloadResult(Ljava/util/Map;)V

    goto/16 :goto_9

    .line 240
    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/parrot/freeflight/update/task/DownloaderTask;->publishAvailableDownloadResult(Ljava/util/Map;)V

    .line 241
    array-length v0, v12

    move/from16 v30, v0

    if-lez v30, :cond_1b

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->waitForUi()V

    .line 244
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mExternalDirectory:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mProductToDownload:[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/update/task/DownloaderTask;->setupDownloader(Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;Ljava/lang/String;[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->getDownloaderRunnable()Ljava/lang/Runnable;

    move-result-object v23

    .line 246
    .local v23, "runnable":Ljava/lang/Runnable;
    if-nez v23, :cond_1c

    .line 247
    sget-object v22, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_MANAGER_NOT_INITIALIZED:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    goto/16 :goto_9

    .line 248
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->isCancelled()Z

    move-result v30

    if-nez v30, :cond_f

    .line 249
    invoke-interface/range {v23 .. v23}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_9

    .line 252
    .end local v12    # "info":[Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;
    .end local v13    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/freeflight/update/task/AvailableUpdate;>;"
    .end local v18    # "needDownload":Z
    .end local v23    # "runnable":Ljava/lang/Runnable;
    .end local v27    # "updateAvailable":Z
    :cond_1d
    if-eqz v20, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->isCancelled()Z

    move-result v30

    if-nez v30, :cond_1e

    .line 253
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/parrot/freeflight/update/task/DownloaderTask;->publishAlreadyDownloadResult(Ljava/util/Map;)V

    goto/16 :goto_9

    .line 255
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mResultPool:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;->obtain()Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    move-result-object v21

    .line 256
    .local v21, "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    sget-object v30, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->INTERNET_NEEDED:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->setState(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;)V

    .line 257
    const/16 v30, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->setProgress(F)V

    .line 258
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v21, v30, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->publishProgress([Ljava/lang/Object;)V

    .line 259
    sget-object v22, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_UPLOADER_ARUTILS_ERROR:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 260
    goto/16 :goto_9

    .line 262
    .end local v21    # "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    :cond_1f
    sget-object v22, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_UPLOADER:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    goto/16 :goto_9
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->doInBackground([Ljava/lang/Void;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V
    .locals 3
    .param p1, "result"    # Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;->onFinish(Z[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->clean()V

    .line 348
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->onCancelled(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V

    return-void
.end method

.method protected onPostExecute(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V
    .locals 3
    .param p1, "result"    # Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .prologue
    .line 352
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCompletionResult:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCompletionResult:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    .line 355
    .local v0, "succeeded":Z
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;->onFinish(Z[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 357
    .end local v0    # "succeeded":Z
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->clean()V

    .line 358
    return-void

    .line 353
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->onPostExecute(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->createMd5Manager()Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->createUpdaterManager()Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->getARUpdaterDownloader()Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    .line 156
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)V
    .locals 6
    .param p1, "values"    # [Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    .prologue
    const/4 v2, 0x0

    .line 304
    aget-object v0, p1, v2

    .line 305
    .local v0, "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    iget-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    if-eqz v3, :cond_0

    .line 306
    sget-object v3, Lcom/parrot/freeflight/update/task/DownloaderTask$6;->$SwitchMap$com$parrot$freeflight$update$task$DownloaderTask$ProgressResult$State:[I

    iget-object v4, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->state:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    invoke-virtual {v4}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 339
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mResultPool:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;->recycle(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)V

    .line 340
    return-void

    .line 308
    :pswitch_0
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    invoke-interface {v2}, Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;->onInternetNeeded()V

    goto :goto_0

    .line 312
    :pswitch_1
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    iget-object v3, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->availableUpdates:[Lcom/parrot/freeflight/update/task/AvailableUpdate;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;->onUpdateAvailable(Ljava/util/List;)Z

    move-result v1

    .line 313
    .local v1, "shouldBlock":Z
    if-nez v1, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->ready()V

    goto :goto_0

    .line 319
    .end local v1    # "shouldBlock":Z
    :pswitch_2
    iget-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->version:Ljava/lang/String;

    iput-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDownloadingVersion:Ljava/lang/String;

    .line 320
    iget-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 321
    const-string v2, "FFMini.Updater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "starting download of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDownloadingVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget-object v4, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDownloadingVersion:Ljava/lang/String;

    iget v5, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mProgress:F

    invoke-interface {v2, v3, v4, v5}, Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;->onProgressChange(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;F)V

    goto :goto_0

    .line 326
    :pswitch_3
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget-object v4, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDownloadingVersion:Ljava/lang/String;

    iget v5, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mProgress:F

    invoke-interface {v2, v3, v4, v5}, Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;->onProgressChange(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;F)V

    goto :goto_0

    .line 330
    :pswitch_4
    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->getError()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCompletionResult:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 331
    iget-boolean v3, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mAlreadyDownloaded:Z

    if-eqz v3, :cond_1

    .line 332
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    iget-object v3, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->availableUpdates:[Lcom/parrot/freeflight/update/task/AvailableUpdate;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;->onAlreadyDownloaded(Ljava/util/List;)V

    goto :goto_0

    .line 334
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    iget-object v4, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mError:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    sget-object v5, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    iget-object v4, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->downloadedProducts:[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-interface {v3, v2, v4}, Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;->onFinish(Z[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    goto/16 :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, [Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->onProgressUpdate([Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)V

    return-void
.end method

.method public ready()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mLock:Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mLock:Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;->finished:Z

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mLock:Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 144
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readyForDownloading([Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 3
    .param p1, "products"    # [Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mLock:Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;

    monitor-enter v1

    .line 134
    :try_start_0
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mProductToDownload:[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mLock:Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;->finished:Z

    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mLock:Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 137
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setupDownloader(Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;Ljava/lang/String;[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 16
    .param p1, "downloader"    # Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "md5Manager"    # Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "externalDirectory"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "productToDownload"    # [Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 444
    sget-object v15, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 445
    .local v15, "result":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    if-eqz p4, :cond_0

    .line 447
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mAppVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloadListener:Lcom/parrot/arsdk/arupdater/ARUpdaterShouldDownloadPlfListener;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mWillDownloadPlfListener:Lcom/parrot/arsdk/arupdater/ARUpdaterWillDownloadPlfListener;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloadProgressListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadProgressListener;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloadCompletionListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadCompletionListener;

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v13, p4

    invoke-virtual/range {v2 .. v13}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->createUpdaterDownloader(Ljava/lang/String;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;Ljava/lang/String;Lcom/parrot/arsdk/arupdater/ARUpdaterShouldDownloadPlfListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterWillDownloadPlfListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadCompletionListener;Ljava/lang/Object;)V

    .line 449
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->setUpdatesProductList([Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    :try_end_0
    .catch Lcom/parrot/arsdk/arupdater/ARUpdaterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_0
    :goto_0
    return-object v15

    .line 450
    :catch_0
    move-exception v14

    .line 451
    .local v14, "e":Lcom/parrot/arsdk/arupdater/ARUpdaterException;
    const-string v2, "FFMini.Updater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ARUpdaterException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;->getError()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v14}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;->printStackTrace()V

    .line 453
    invoke-virtual {v14}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;->getError()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v15

    goto :goto_0
.end method
