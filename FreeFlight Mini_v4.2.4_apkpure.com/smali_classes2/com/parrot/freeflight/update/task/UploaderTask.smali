.class public Lcom/parrot/freeflight/update/task/UploaderTask;
.super Landroid/os/AsyncTask;
.source "UploaderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;,
        Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResultPool;,
        Lcom/parrot/freeflight/update/task/UploaderTask$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;",
        "Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field public static final UPDATE_PORT:I = 0x33


# instance fields
.field private mCompletionResult:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCurrentProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
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

.field private mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMux:Lcom/parrot/mux/Mux;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mResultPool:Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResultPool;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mUploadCompletionListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadCompletionListener;

.field private final mUploadProgressListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadProgressListener;

.field private mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/media/task/FtpNetworkHandler;Lcom/parrot/freeflight/update/task/AvailableUpdate;Lcom/parrot/freeflight/update/task/UploaderTask$Listener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "networkHandler"    # Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "update"    # Lcom/parrot/freeflight/update/task/AvailableUpdate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "listener"    # Lcom/parrot/freeflight/update/task/UploaderTask$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 59
    new-instance v0, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResultPool;

    invoke-direct {v0}, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResultPool;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mResultPool:Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResultPool;

    .line 361
    new-instance v0, Lcom/parrot/freeflight/update/task/UploaderTask$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/update/task/UploaderTask$1;-><init>(Lcom/parrot/freeflight/update/task/UploaderTask;)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUploadProgressListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadProgressListener;

    .line 374
    new-instance v0, Lcom/parrot/freeflight/update/task/UploaderTask$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/update/task/UploaderTask$2;-><init>(Lcom/parrot/freeflight/update/task/UploaderTask;)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUploadCompletionListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadCompletionListener;

    .line 85
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mContext:Landroid/content/Context;

    .line 86
    iget-object v0, p3, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mCurrentProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 87
    iput-object p2, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    .line 89
    iget-boolean v0, p3, Lcom/parrot/freeflight/update/task/AvailableUpdate;->trampolineUpdate:Z

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkTrampolineFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mExternalDirectory:Ljava/lang/String;

    .line 95
    :goto_0
    iput-object p4, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mCurrentProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductNetworkFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_USBSERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->get(Landroid/content/Context;)Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->getMux()Lcom/parrot/mux/Mux;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mMux:Lcom/parrot/mux/Mux;

    .line 99
    :cond_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mExternalDirectory:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/update/task/UploaderTask;)Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResultPool;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/UploaderTask;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mResultPool:Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResultPool;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/update/task/UploaderTask;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/UploaderTask;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/UploaderTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/update/task/UploaderTask;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/UploaderTask;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mCurrentProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/update/task/UploaderTask;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/UploaderTask;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/parrot/freeflight/update/task/UploaderTask;->getPlfFile(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;J)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/update/task/UploaderTask;->checkRFCommPushedFileSize(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;J)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/update/task/UploaderTask;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/UploaderTask;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/UploaderTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private static checkRFCommPushedFileSize(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;J)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "network"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "filepath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requiredSize"    # J

    .prologue
    .line 417
    sget-object v6, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 418
    .local v6, "updaterError":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    sget-object v7, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 419
    .local v7, "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    const/4 v9, 0x1

    new-array v5, v9, [D

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    aput-wide v10, v5, v9

    .line 420
    .local v5, "size":[D
    sget-object v9, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BLESERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object/from16 v0, p1

    if-ne v0, v9, :cond_1

    .line 422
    :try_start_0
    new-instance v8, Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-direct {v8}, Lcom/parrot/arsdk/arutils/ARUtilsManager;-><init>()V

    .line 423
    .local v8, "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    invoke-static {p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v9

    const/16 v10, 0x33

    invoke-virtual {v8, p0, v9, v10}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->initBLEFtp(Landroid/content/Context;Landroid/bluetooth/BluetoothGatt;I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v7

    .line 424
    sget-object v9, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v7, v9, :cond_0

    .line 425
    invoke-static {p0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;

    move-result-object v2

    .line 427
    .local v2, "bleFtp":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v5}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sizeFileAL(Ljava/lang/String;[D)Z

    move-result v4

    .line 428
    .local v4, "ret":Z
    if-eqz v4, :cond_4

    .line 429
    const-string v9, "FFMini.Updater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file size = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-wide v12, v5, v11

    double-to-long v12, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], required = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p3

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v9, 0x0

    aget-wide v10, v5, v9

    double-to-long v10, v10

    cmp-long v9, p3, v10

    if-eqz v9, :cond_3

    .line 431
    sget-object v7, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_RFCOMM_FAILED:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 440
    .end local v2    # "bleFtp":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    .end local v4    # "ret":Z
    :cond_0
    :goto_0
    invoke-virtual {v8, p0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeBLEFtp(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 441
    invoke-virtual {v8}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arutils/ARUtilsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .end local v8    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_1
    :goto_1
    sget-object v9, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v7, v9, :cond_2

    .line 449
    const-string v9, "FFMini.Updater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    sget-object v6, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_UPLOADER_ARUTILS_ERROR:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 452
    :cond_2
    return-object v6

    .line 433
    .restart local v2    # "bleFtp":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    .restart local v4    # "ret":Z
    .restart local v8    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_3
    :try_start_1
    sget-object v7, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    goto :goto_0

    .line 436
    :cond_4
    const-string v9, "FFMini.Updater"

    const-string v10, "failed to retrieve file size"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    sget-object v7, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BLE_FAILED:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :try_end_1
    .catch Lcom/parrot/arsdk/arutils/ARUtilsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 442
    .end local v2    # "bleFtp":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    .end local v4    # "ret":Z
    .end local v8    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :catch_0
    move-exception v3

    .line 443
    .local v3, "e":Lcom/parrot/arsdk/arutils/ARUtilsException;
    invoke-virtual {v3}, Lcom/parrot/arsdk/arutils/ARUtilsException;->printStackTrace()V

    .line 444
    sget-object v7, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    goto :goto_1
.end method

.method private static cleanRFCommPlfFolder(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "network"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "filepath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 459
    const-string v5, "FFMini.Updater"

    const-string v6, "cleanRFCommPlfFolder"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-object v3, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 462
    .local v3, "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BLESERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne p1, v5, :cond_1

    .line 464
    :try_start_0
    new-instance v4, Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-direct {v4}, Lcom/parrot/arsdk/arutils/ARUtilsManager;-><init>()V

    .line 465
    .local v4, "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    invoke-static {p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v5

    const/16 v6, 0x33

    invoke-virtual {v4, p0, v5, v6}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->initBLEFtp(Landroid/content/Context;Landroid/bluetooth/BluetoothGatt;I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v3

    .line 466
    sget-object v5, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v3, v5, :cond_0

    .line 467
    invoke-static {p0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;

    move-result-object v0

    .line 468
    .local v0, "bleFtp":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    invoke-virtual {v0, p2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->deleteFileAL(Ljava/lang/String;)Z

    move-result v2

    .line 469
    .local v2, "ret":Z
    const-string v5, "FFMini.Updater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cleaning RFComm plf folder success = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .end local v0    # "bleFtp":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    .end local v2    # "ret":Z
    :cond_0
    invoke-virtual {v4, p0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeBLEFtp(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 472
    invoke-virtual {v4}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arutils/ARUtilsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_1
    :goto_0
    sget-object v5, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v3, v5, :cond_2

    .line 480
    const-string v5, "FFMini.Updater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_2
    return-object v3

    .line 473
    :catch_0
    move-exception v1

    .line 474
    .local v1, "e":Lcom/parrot/arsdk/arutils/ARUtilsException;
    invoke-virtual {v1}, Lcom/parrot/arsdk/arutils/ARUtilsException;->printStackTrace()V

    .line 475
    sget-object v3, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    goto :goto_0
.end method

.method private createMd5Manager()Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 244
    const/4 v1, 0x0

    .line 246
    .local v1, "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :try_start_0
    new-instance v2, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-direct {v2}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arsal/ARSALException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v1    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .local v2, "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :try_start_1
    invoke-virtual {v2}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->init()V
    :try_end_1
    .catch Lcom/parrot/arsdk/arsal/ARSALException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 256
    .end local v2    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v1    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :cond_0
    :goto_0
    return-object v1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Lcom/parrot/arsdk/arsal/ARSALException;
    :goto_1
    invoke-virtual {v0}, Lcom/parrot/arsdk/arsal/ARSALException;->printStackTrace()V

    .line 250
    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v1}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->close()Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 252
    invoke-virtual {v1}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->dispose()V

    .line 253
    const/4 v1, 0x0

    goto :goto_0

    .line 248
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
    .line 230
    :try_start_0
    new-instance v1, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-direct {v1}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arupdater/ARUpdaterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-object v1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Lcom/parrot/arsdk/arupdater/ARUpdaterException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;->printStackTrace()V

    .line 234
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createUtilsManager()Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 267
    :try_start_0
    new-instance v1, Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-direct {v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arutils/ARUtilsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-object v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Lcom/parrot/arsdk/arutils/ARUtilsException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsException;->printStackTrace()V

    .line 271
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getPlfFile(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/io/File;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 397
    const/4 v3, 0x0

    .line 398
    .local v3, "plfFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "plfFolder"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 399
    .local v4, "plfFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 400
    new-instance v2, Ljava/io/File;

    const-string v6, "%04x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 401
    .local v2, "plfDeviceFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 402
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 403
    .local v1, "files":[Ljava/io/File;
    array-length v6, v1

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v1, v5

    .line 404
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".plf"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 405
    move-object v3, v0

    .line 411
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "plfDeviceFolder":Ljava/io/File;
    :cond_0
    return-object v3

    .line 403
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v2    # "plfDeviceFolder":Ljava/io/File;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancelTask()V
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/task/UploaderTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 188
    const-string v0, "FFMini.Updater"

    const-string v1, "Cancel task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->cancel()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 192
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/update/task/UploaderTask;->cancel(Z)Z

    .line 194
    :cond_1
    return-void
.end method

.method clean()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->dispose()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 202
    iput-object v4, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->isCorrectlyInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/parrot/arsdk/arutils/ARUtilsManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->close([Lcom/parrot/arsdk/arutils/ARUtilsManager;)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V

    .line 209
    iput-object v4, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->close()Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 213
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->dispose()V

    .line 214
    iput-object v4, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->dispose()V

    .line 218
    iput-object v4, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    .line 220
    :cond_4
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 128
    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 129
    .local v2, "result":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    iget-object v5, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mCurrentProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductNetworkFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    .line 130
    .local v0, "network":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BLESERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v0, v5, :cond_0

    .line 131
    iget-object v5, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mCurrentProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v5, v6}, Lcom/parrot/freeflight/update/task/UploaderTask;->getPlfFile(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/io/File;

    move-result-object v1

    .line 132
    .local v1, "plfFile":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 133
    iget-object v5, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "./"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lcom/parrot/freeflight/update/task/UploaderTask;->cleanRFCommPlfFolder(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v4

    .line 134
    .local v4, "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    sget-object v5, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v4, v5, :cond_0

    .line 135
    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_UPLOADER_ARUTILS_ERROR:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 139
    .end local v1    # "plfFile":Ljava/io/File;
    .end local v4    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :cond_0
    sget-object v5, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v2, v5, :cond_3

    iget-object v5, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    if-eqz v5, :cond_3

    .line 140
    iget-object v5, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    invoke-virtual {v5}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->getUploaderRunnable()Ljava/lang/Runnable;

    move-result-object v3

    .line 141
    .local v3, "runnable":Ljava/lang/Runnable;
    if-nez v3, :cond_2

    .line 142
    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_MANAGER_NOT_INITIALIZED:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 149
    .end local v3    # "runnable":Ljava/lang/Runnable;
    :cond_1
    :goto_0
    return-object v2

    .line 143
    .restart local v3    # "runnable":Ljava/lang/Runnable;
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/task/UploaderTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 144
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 147
    .end local v3    # "runnable":Ljava/lang/Runnable;
    :cond_3
    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_UPLOADER:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/UploaderTask;->doInBackground([Ljava/lang/Void;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V
    .locals 2
    .param p1, "result"    # Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/update/task/UploaderTask$Listener;->onFinish(Z)V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/task/UploaderTask;->clean()V

    .line 170
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/UploaderTask;->onCancelled(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V

    return-void
.end method

.method protected onPostExecute(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V
    .locals 3
    .param p1, "result"    # Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .prologue
    .line 174
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mCompletionResult:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mCompletionResult:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    .line 177
    .local v0, "succeeded":Z
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    invoke-interface {v1, v0}, Lcom/parrot/freeflight/update/task/UploaderTask$Listener;->onFinish(Z)V

    .line 179
    .end local v0    # "succeeded":Z
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/task/UploaderTask;->clean()V

    .line 180
    return-void

    .line 175
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/UploaderTask;->onPostExecute(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/UploaderTask;->createUtilsManager()Lcom/parrot/arsdk/arutils/ARUtilsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    .line 105
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/UploaderTask;->createMd5Manager()Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    .line 106
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 107
    .local v1, "result":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    if-eqz v2, :cond_2

    .line 108
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/parrot/arsdk/arutils/ARUtilsManager;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->init([Lcom/parrot/arsdk/arutils/ARUtilsManager;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    .line 109
    .local v0, "ftpInitResult":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v0, v2, :cond_0

    .line 110
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_UPLOADER_ARUTILS_ERROR:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 112
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v1, v2, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/UploaderTask;->createUpdaterManager()Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    .line 114
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    if-eqz v2, :cond_3

    .line 115
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->getARUpdaterUploader()Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    .line 120
    :cond_1
    :goto_0
    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v1, v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    iget-object v4, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    iget-object v5, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mExternalDirectory:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/parrot/freeflight/update/task/UploaderTask;->setupUploader(Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;Lcom/parrot/arsdk/arutils/ARUtilsManager;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;Ljava/lang/String;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 124
    .end local v0    # "ftpInitResult":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :cond_2
    return-void

    .line 117
    .restart local v0    # "ftpInitResult":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :cond_3
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_MANAGER_NOT_INITIALIZED:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;)V
    .locals 4
    .param p1, "values"    # [Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;

    .prologue
    const/4 v3, 0x0

    .line 154
    aget-object v0, p1, v3

    .line 155
    .local v0, "result":Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;
    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->getState()Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;

    move-result-object v1

    sget-object v2, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;->FINISHED:Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;

    if-ne v1, v2, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->getError()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mCompletionResult:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->getProgress()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/update/task/UploaderTask$Listener;->onProgressChange(F)V

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mResultPool:Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResultPool;

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResultPool;->recycle(Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;)V

    .line 162
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, [Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/UploaderTask;->onProgressUpdate([Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;)V

    return-void
.end method

.method setupUploader(Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;Lcom/parrot/arsdk/arutils/ARUtilsManager;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;Ljava/lang/String;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 13
    .param p1, "uploader"    # Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ftpManager"    # Lcom/parrot/arsdk/arutils/ARUtilsManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "md5Manager"    # Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "externalDirectory"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 285
    sget-object v12, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 288
    .local v12, "result":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mMux:Lcom/parrot/mux/Mux;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mCurrentProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget-object v7, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUploadProgressListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadProgressListener;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/parrot/freeflight/update/task/UploaderTask;->mUploadCompletionListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadCompletionListener;

    const/4 v10, 0x0

    move-object v0, p1

    move-object/from16 v1, p4

    move-object v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v10}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->createUpdaterUploader(Ljava/lang/String;Lcom/parrot/mux/Mux;Lcom/parrot/arsdk/arutils/ARUtilsManager;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;ZLcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadCompletionListener;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/parrot/arsdk/arupdater/ARUpdaterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-object v12

    .line 290
    :catch_0
    move-exception v11

    .line 291
    .local v11, "e":Lcom/parrot/arsdk/arupdater/ARUpdaterException;
    const-string v0, "FFMini.Updater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARUpdaterException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;->getError()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v11}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;->printStackTrace()V

    .line 293
    invoke-virtual {v11}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;->getError()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v12

    goto :goto_0
.end method
