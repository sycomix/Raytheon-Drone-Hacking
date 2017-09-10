.class public Lcom/parrot/freeflight/media/task/MediaTask;
.super Landroid/os/AsyncTask;
.source "MediaTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;,
        Lcom/parrot/freeflight/media/task/MediaTask$ProgressResultPool;,
        Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;",
        "Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaTask"


# instance fields
.field private mDataTransferManager:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mExternalDirectory:Ljava/lang/String;
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

.field private final mRemotePath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTaskActionListener:Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTaskDelegate:Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;Lcom/parrot/freeflight/media/task/FtpNetworkHandler;ILjava/lang/String;)V
    .locals 2
    .param p1, "delegate"    # Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "networkHandler"    # Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "productID"    # I
    .param p4, "massStoragePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    new-instance v1, Lcom/parrot/freeflight/media/task/MediaTask$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/media/task/MediaTask$1;-><init>(Lcom/parrot/freeflight/media/task/MediaTask;)V

    iput-object v1, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mTaskActionListener:Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;

    .line 62
    iput-object p1, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mTaskDelegate:Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;

    .line 63
    iput-object p2, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    .line 64
    invoke-static {p3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "productName":Ljava/lang/String;
    sget-object v1, Lcom/parrot/arsdk/armedia/ARMediaManager;->LOCAL_MEDIA_MASS_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mExternalDirectory:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mRemotePath:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/media/task/MediaTask;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/task/MediaTask;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/media/task/MediaTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private createDataTransfertManager()Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 171
    :try_start_0
    new-instance v1, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;

    invoke-direct {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-object v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;->printStackTrace()V

    .line 175
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createUtilsManager()Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 186
    :try_start_0
    new-instance v1, Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-direct {v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arutils/ARUtilsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-object v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Lcom/parrot/arsdk/arutils/ARUtilsException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsException;->printStackTrace()V

    .line 190
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelTask()V
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/task/MediaTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 126
    const-string v0, "MediaTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->cancelGetAvailableMedias()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->cancelQueueThread()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 131
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/media/task/MediaTask;->cancel(Z)Z

    .line 133
    :cond_1
    return-void
.end method

.method clean()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->dispose()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 141
    iput-object v3, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->isCorrectlyInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    new-array v1, v5, [Lcom/parrot/arsdk/arutils/ARUtilsManager;

    iget-object v2, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->close([Lcom/parrot/arsdk/arutils/ARUtilsManager;)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V

    .line 148
    iput-object v3, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->isCorrectlyInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    new-array v1, v5, [Lcom/parrot/arsdk/arutils/ARUtilsManager;

    iget-object v2, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->close([Lcom/parrot/arsdk/arutils/ARUtilsManager;)V

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V

    .line 155
    iput-object v3, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mDataTransferManager:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;

    if-eqz v0, :cond_5

    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mDataTransferManager:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->dispose()V

    .line 159
    iput-object v3, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mDataTransferManager:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;

    .line 161
    :cond_5
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 97
    const-string v0, "MediaTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media task doInBackground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mTaskDelegate:Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;

    iget-object v1, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mTaskActionListener:Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;

    iget-object v2, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;->execute(Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/media/task/MediaTask;->doInBackground([Ljava/lang/Void;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V
    .locals 3
    .param p1, "result"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .prologue
    .line 108
    const-string v0, "MediaTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media task onCancelled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mTaskDelegate:Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;

    if-nez p1, :cond_0

    sget-object p1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .end local p1    # "result":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;->postResult(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;Z)V

    .line 110
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/task/MediaTask;->clean()V

    .line 111
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/media/task/MediaTask;->onCancelled(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    return-void
.end method

.method protected onPostExecute(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V
    .locals 3
    .param p1, "result"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .prologue
    .line 115
    const-string v0, "MediaTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media task onPostExecute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mTaskDelegate:Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;

    if-nez p1, :cond_0

    sget-object p1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .end local p1    # "result":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;->postResult(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;Z)V

    .line 117
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/task/MediaTask;->clean()V

    .line 118
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/media/task/MediaTask;->onPostExecute(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 8

    .prologue
    .line 72
    const-string v0, "MediaTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media task onPreExecute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0}, Lcom/parrot/freeflight/media/task/MediaTask;->createUtilsManager()Lcom/parrot/arsdk/arutils/ARUtilsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    .line 74
    invoke-direct {p0}, Lcom/parrot/freeflight/media/task/MediaTask;->createUtilsManager()Lcom/parrot/arsdk/arutils/ARUtilsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    .line 75
    sget-object v7, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 76
    .local v7, "result":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/parrot/arsdk/arutils/ARUtilsManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->init([Lcom/parrot/arsdk/arutils/ARUtilsManager;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v6

    .line 78
    .local v6, "ftpInitResult":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v6, v0, :cond_0

    .line 79
    sget-object v7, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_ERROR_FTP:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 81
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-ne v7, v0, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/parrot/freeflight/media/task/MediaTask;->createDataTransfertManager()Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mDataTransferManager:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;

    .line 83
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mDataTransferManager:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mDataTransferManager:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->getARDataTransferMediasDownloader()Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    .line 89
    :cond_1
    :goto_0
    sget-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-ne v7, v0, :cond_2

    .line 90
    iget-object v1, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mDownloader:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    iget-object v2, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    iget-object v3, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mFtpQueueManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    iget-object v4, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mRemotePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mExternalDirectory:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/media/task/MediaTask;->setupMediasDownloader(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;Lcom/parrot/arsdk/arutils/ARUtilsManager;Lcom/parrot/arsdk/arutils/ARUtilsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 93
    .end local v6    # "ftpInitResult":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :cond_2
    return-void

    .line 86
    .restart local v6    # "ftpInitResult":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :cond_3
    sget-object v7, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_ERROR_NOT_INITIALIZED:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V
    .locals 1
    .param p1, "values"    # [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask;->mTaskDelegate:Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;->postUpdate([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V

    .line 104
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/media/task/MediaTask;->onProgressUpdate([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V

    return-void
.end method

.method setupMediasDownloader(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;Lcom/parrot/arsdk/arutils/ARUtilsManager;Lcom/parrot/arsdk/arutils/ARUtilsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 5
    .param p1, "downloader"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;
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
    .line 205
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 208
    .local v1, "result":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    :try_start_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->createMediasDownloader(Lcom/parrot/arsdk/arutils/ARUtilsManager;Lcom/parrot/arsdk/arutils/ARUtilsManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-object v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;
    const-string v2, "MediaTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ARDataTransferException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;->getError()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;->printStackTrace()V

    .line 212
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException;->getError()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method
