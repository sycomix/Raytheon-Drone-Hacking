.class public Lcom/parrot/freeflight/core/academy/PudDownloadTask;
.super Landroid/os/AsyncTask;
.source "PudDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PudDownloadTask"


# instance fields
.field private mDataTransferManager:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalPath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRemotePath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/media/task/FtpNetworkHandler;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;)V
    .locals 1
    .param p1, "networkHandler"    # Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "service"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "remoteDirectory"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "localDirectory"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "listener"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    sget-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 47
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    .line 48
    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 49
    iput-object p3, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mRemotePath:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mLocalPath:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mListenerRef:Ljava/lang/ref/WeakReference;

    .line 52
    return-void
.end method

.method private clean()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 132
    const-string v0, "PudDownloadTask"

    const-string v1, "Cleaning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->dispose()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 135
    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->isCorrectlyInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    new-array v1, v5, [Lcom/parrot/arsdk/arutils/ARUtilsManager;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->close([Lcom/parrot/arsdk/arutils/ARUtilsManager;)V

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V

    .line 142
    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->isCorrectlyInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    new-array v1, v5, [Lcom/parrot/arsdk/arutils/ARUtilsManager;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->close([Lcom/parrot/arsdk/arutils/ARUtilsManager;)V

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V

    .line 149
    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDataTransferManager:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;

    if-eqz v0, :cond_5

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDataTransferManager:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->dispose()V

    .line 153
    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDataTransferManager:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;

    .line 155
    :cond_5
    return-void
.end method

.method private createDataTransferManager()Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 180
    :try_start_0
    new-instance v1, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;

    invoke-direct {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-object v1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;->printStackTrace()V

    .line 184
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createUtilsManager()Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 165
    :try_start_0
    new-instance v1, Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-direct {v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arutils/ARUtilsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-object v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Lcom/parrot/arsdk/arutils/ARUtilsException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsException;->printStackTrace()V

    .line 169
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelTask()V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 115
    const-string v0, "PudDownloadTask"

    const-string v1, "Cancel task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->cancelAvailableFiles()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 118
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->cancelThread()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 120
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->cancel(Z)Z

    .line 122
    :cond_1
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 83
    const-string v1, "PudDownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->getDownloaderRunnable()Ljava/lang/Runnable;

    move-result-object v0

    .line 86
    .local v0, "downloaderQueueRunnable":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 88
    .end local v0    # "downloaderQueueRunnable":Ljava/lang/Runnable;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isUpToDate(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z
    .locals 1
    .param p1, "service"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 3
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->clean()V

    .line 94
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;

    .line 95
    .local v0, "listener":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;
    if-eqz v0, :cond_0

    .line 96
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_ERROR_CANCELED:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    invoke-interface {v0, v2, v2, v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;->didDataDownloaderFileComplete(Ljava/lang/Object;Ljava/lang/String;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    .line 98
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->clean()V

    .line 103
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;

    .line 104
    .local v0, "listener":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;
    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    invoke-interface {v0, v2, v2, v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;->didDataDownloaderFileComplete(Ljava/lang/Object;Ljava/lang/String;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    .line 107
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->createUtilsManager()Lcom/parrot/arsdk/arutils/ARUtilsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    .line 57
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->createUtilsManager()Lcom/parrot/arsdk/arutils/ARUtilsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    if-eqz v0, :cond_4

    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/parrot/arsdk/arutils/ARUtilsManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->init([Lcom/parrot/arsdk/arutils/ARUtilsManager;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v6

    .line 61
    .local v6, "ftpInitResult":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v6, v0, :cond_0

    .line 62
    sget-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_ERROR_FTP:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    .line 65
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->createDataTransferManager()Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDataTransferManager:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;

    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDataTransferManager:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDataTransferManager:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->getARDataTransferDataDownloader()Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    .line 72
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-ne v0, v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mRemotePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mLocalPath:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->setupDownloader(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;Lcom/parrot/arsdk/arutils/ARUtilsManager;Lcom/parrot/arsdk/arutils/ARUtilsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 75
    :cond_2
    const-string v0, "PudDownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreExecuteResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v6    # "ftpInitResult":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :goto_1
    return-void

    .line 69
    .restart local v6    # "ftpInitResult":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :cond_3
    sget-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_ERROR_NOT_INITIALIZED:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    goto :goto_0

    .line 77
    .end local v6    # "ftpInitResult":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :cond_4
    sget-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_ERROR:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    goto :goto_1
.end method

.method setupDownloader(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;Lcom/parrot/arsdk/arutils/ARUtilsManager;Lcom/parrot/arsdk/arutils/ARUtilsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 9
    .param p1, "downloader"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ftpListManager"    # Lcom/parrot/arsdk/arutils/ARUtilsManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "ftpQueueManager"    # Lcom/parrot/arsdk/arutils/ARUtilsManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "massStoragePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "externalDirectory"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 199
    sget-object v8, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 201
    .local v8, "result":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->createDataDownloader(Lcom/parrot/arsdk/arutils/ARUtilsManager;Lcom/parrot/arsdk/arutils/ARUtilsManager;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-object v8

    .line 202
    :catch_0
    move-exception v7

    .line 203
    .local v7, "e":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
    const-string v0, "PudDownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARDataTransferException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;->getError()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v7}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;->printStackTrace()V

    .line 205
    invoke-virtual {v7}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;->getError()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v8

    goto :goto_0
.end method
