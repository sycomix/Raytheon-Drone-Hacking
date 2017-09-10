.class public Lcom/parrot/freeflight/update/UpdaterController;
.super Landroid/support/v4/app/Fragment;
.source "UpdaterController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;,
        Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;,
        Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;,
        Lcom/parrot/freeflight/update/UpdaterController$StateListener;,
        Lcom/parrot/freeflight/update/UpdaterController$Event;,
        Lcom/parrot/freeflight/update/UpdaterController$State;
    }
.end annotation


# instance fields
.field private final mAvailableUpdateList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/update/task/AvailableUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothPairStateReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentProgress:F

.field private final mDownloaderListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

.field private mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDownloadingProductVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

.field private final mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mKnownGamePadList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;"
        }
    .end annotation
.end field

.field private final mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProcessingListener:Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProgressListener:Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRebootHandler:Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;

.field private mRegistered:Z

.field private final mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mState:Lcom/parrot/freeflight/update/UpdaterController$State;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mStateListener:Lcom/parrot/freeflight/update/UpdaterController$StateListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mUploaderListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

.field private mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 93
    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UNKNOWN:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 661
    new-instance v2, Lcom/parrot/freeflight/update/UpdaterController$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/update/UpdaterController$1;-><init>(Lcom/parrot/freeflight/update/UpdaterController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mBluetoothPairStateReceiver:Landroid/content/BroadcastReceiver;

    .line 682
    new-instance v2, Lcom/parrot/freeflight/update/UpdaterController$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/update/UpdaterController$2;-><init>(Lcom/parrot/freeflight/update/UpdaterController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    .line 691
    new-instance v2, Lcom/parrot/freeflight/update/UpdaterController$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/update/UpdaterController$3;-><init>(Lcom/parrot/freeflight/update/UpdaterController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    .line 757
    new-instance v2, Lcom/parrot/freeflight/update/UpdaterController$4;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/update/UpdaterController$4;-><init>(Lcom/parrot/freeflight/update/UpdaterController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    .line 138
    new-instance v2, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;-><init>(Lcom/parrot/freeflight/update/UpdaterController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mRebootHandler:Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mKnownGamePadList:Ljava/util/List;

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mAvailableUpdateList:Ljava/util/List;

    .line 141
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    .line 142
    .local v0, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 143
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->getRemoteCtrlModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    .line 144
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    .line 145
    .local v1, "model":Lcom/parrot/freeflight/core/model/Model;
    if-nez v1, :cond_0

    .line 146
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    .line 147
    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_NO_DRONE:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v2, Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-direct {v2, v1}, Lcom/parrot/freeflight/update/DroneModelWrapper;-><init>(Lcom/parrot/freeflight/core/model/Model;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;
    .param p1, "x1"    # Lcom/parrot/freeflight/update/UpdaterController$Event;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/update/UpdaterController;->runStateMachine(Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/task/UploaderTask;)Lcom/parrot/freeflight/update/task/UploaderTask;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;
    .param p1, "x1"    # Lcom/parrot/freeflight/update/task/UploaderTask;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/update/UpdaterController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyProcessingListenerChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/update/UpdaterController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->unregisterBroadCast()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/update/UpdaterController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mKnownGamePadList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/update/UpdaterController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mAvailableUpdateList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/update/UpdaterController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloadingProductVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/update/UpdaterController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloadingProductVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/update/UpdaterController;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method static synthetic access$602(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object p1
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/update/UpdaterController;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 35
    iget v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mCurrentProgress:F

    return v0
.end method

.method static synthetic access$702(Lcom/parrot/freeflight/update/UpdaterController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;
    .param p1, "x1"    # F

    .prologue
    .line 35
    iput p1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mCurrentProgress:F

    return p1
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/update/UpdaterController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyProgressChange()V

    return-void
.end method

.method static synthetic access$902(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/task/DownloaderTask;)Lcom/parrot/freeflight/update/task/DownloaderTask;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;
    .param p1, "x1"    # Lcom/parrot/freeflight/update/task/DownloaderTask;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    return-object p1
.end method

.method private doDownloadTask()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 590
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mAvailableUpdateList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 591
    iput-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloadingProductVersion:Ljava/lang/String;

    .line 592
    iput-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 593
    const/4 v2, 0x0

    iput v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mCurrentProgress:F

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v0, "deviceVersionList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/update/task/DeviceVersion;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mKnownGamePadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/gamepad/GamePad;

    .line 596
    .local v1, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/GamePadUpdaterHelper;->addGamePadToDeviceVersionList(Ljava/util/List;Lcom/parrot/freeflight/gamepad/GamePad;)V

    goto :goto_0

    .line 598
    .end local v1    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    if-eqz v2, :cond_1

    .line 599
    new-instance v2, Lcom/parrot/freeflight/update/task/DeviceVersion;

    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v3}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v4}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/parrot/freeflight/update/task/DeviceVersion;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    if-nez v2, :cond_2

    .line 602
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 603
    new-instance v2, Lcom/parrot/freeflight/update/task/DownloaderTask;

    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    invoke-direct {v2, v3, v0, v4}, Lcom/parrot/freeflight/update/task/DownloaderTask;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    .line 604
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/update/task/DownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 606
    :cond_2
    return-void
.end method

.method private doProcessing()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mRebootHandler:Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->start(Lcom/parrot/freeflight/update/task/AvailableUpdate;)V

    .line 643
    :cond_0
    return-void
.end method

.method private doRebootDrone()V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/DroneModelWrapper;->reboot()V

    .line 624
    :cond_0
    return-void
.end method

.method private doUploadTask()V
    .locals 5

    .prologue
    .line 609
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mCurrentProgress:F

    .line 610
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    if-eqz v0, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->registerBroadCast()V

    .line 612
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/parrot/freeflight/update/UploadTaskFactory;->create(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/update/task/AvailableUpdate;Lcom/parrot/freeflight/update/task/UploaderTask$Listener;)Lcom/parrot/freeflight/update/task/UploaderTask;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    .line 614
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/task/UploaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 616
    :cond_0
    return-void

    .line 612
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needProcessing()Z
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BEBOP_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_LIGHT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_BRICK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_HYDROFOIL:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_DELOS3:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_WINGX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyProcessingListenerChange()V
    .locals 3

    .prologue
    .line 563
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProcessingListener:Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProcessingListener:Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mRebootHandler:Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->getProgress()F

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mRebootHandler:Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;

    invoke-static {v2}, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->access$000(Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;->onProcessingProgressChange(FI)V

    .line 566
    :cond_0
    return-void
.end method

.method private notifyProgressChange()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProgressListener:Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProgressListener:Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;

    iget v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mCurrentProgress:F

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;->onProgressChange(F)V

    .line 560
    :cond_0
    return-void
.end method

.method private notifyStateChange()V
    .locals 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mStateListener:Lcom/parrot/freeflight/update/UpdaterController$StateListener;

    if-eqz v0, :cond_0

    .line 552
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mStateListener:Lcom/parrot/freeflight/update/UpdaterController$StateListener;

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/parrot/freeflight/update/UpdaterController$StateListener;->onStateChange(Lcom/parrot/freeflight/update/UpdaterController$State;Lcom/parrot/freeflight/core/model/Model;)V

    .line 554
    :cond_0
    return-void

    .line 552
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerBroadCast()V
    .locals 4

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mRegistered:Z

    if-nez v0, :cond_0

    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mRegistered:Z

    .line 650
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mBluetoothPairStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 652
    :cond_0
    return-void
.end method

.method private runStateMachine(Lcom/parrot/freeflight/update/UpdaterController$Event;)V
    .locals 7
    .param p1, "event"    # Lcom/parrot/freeflight/update/UpdaterController$Event;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 294
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$State:[I

    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-virtual {v6}, Lcom/parrot/freeflight/update/UpdaterController$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 548
    :goto_0
    :pswitch_0
    return-void

    .line 296
    :pswitch_1
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 304
    :pswitch_2
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_CHECKING_SERVER:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 305
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    .line 306
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->doDownloadTask()V

    goto :goto_0

    .line 312
    :pswitch_3
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    .line 323
    :cond_0
    :goto_1
    :pswitch_4
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_3

    goto :goto_0

    .line 325
    :pswitch_5
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_NO_INTERNET:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 326
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto :goto_0

    .line 314
    :pswitch_6
    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mKnownGamePadList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 315
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_CHECKING_SERVER:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 316
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    .line 317
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->doDownloadTask()V

    goto :goto_1

    .line 330
    :pswitch_7
    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mAvailableUpdateList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 331
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_ASKING_DOWNLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 335
    :goto_2
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto :goto_0

    .line 333
    :cond_1
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_NO_UPDATE_ON_SERVER:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    goto :goto_2

    .line 339
    :pswitch_8
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_CONNECT_DRONE_FOR_UPLOAD:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v1, "connectedProducts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v5}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 342
    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v5}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_2
    const/4 v0, 0x0

    .line 345
    .local v0, "connectedGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mKnownGamePadList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/gamepad/GamePad;

    .line 346
    .local v2, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 347
    move-object v0, v2

    .line 351
    .end local v2    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_4
    if-eqz v0, :cond_5

    .line 352
    invoke-static {v1, v0}, Lcom/parrot/freeflight/update/GamePadUpdaterHelper;->addGamePadToConnectedProductList(Ljava/util/List;Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 354
    :cond_5
    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mAvailableUpdateList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 355
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/freeflight/update/task/AvailableUpdate;>;"
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 356
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/update/task/AvailableUpdate;

    .line 357
    .local v4, "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    iget-boolean v5, v4, Lcom/parrot/freeflight/update/task/AvailableUpdate;->downloaded:Z

    if-eqz v5, :cond_7

    iget-boolean v5, v4, Lcom/parrot/freeflight/update/task/AvailableUpdate;->deviceNeedUpdate:Z

    if-eqz v5, :cond_7

    iget-object v5, v4, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 358
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 361
    .end local v4    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    :cond_8
    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mAvailableUpdateList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 362
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_ASKING_UPLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 364
    :cond_9
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto/16 :goto_0

    .line 368
    .end local v0    # "connectedGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    .end local v1    # "connectedProducts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/freeflight/update/task/AvailableUpdate;>;"
    :pswitch_9
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_DEVICES_UP_TO_DATE:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 369
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto/16 :goto_0

    .line 373
    :pswitch_a
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_DOWNLOAD_FAILED:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 374
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto/16 :goto_0

    .line 380
    :pswitch_b
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_4

    goto/16 :goto_0

    .line 382
    :pswitch_c
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_DOWNLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 383
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto/16 :goto_0

    .line 386
    :pswitch_d
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_CONNECT_DRONE_FOR_UPLOAD:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 387
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .restart local v1    # "connectedProducts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v5}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 389
    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v5}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_a
    const/4 v0, 0x0

    .line 392
    .restart local v0    # "connectedGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mKnownGamePadList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/gamepad/GamePad;

    .line 393
    .restart local v2    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 394
    move-object v0, v2

    .line 398
    .end local v2    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_c
    if-eqz v0, :cond_d

    .line 399
    invoke-static {v1, v0}, Lcom/parrot/freeflight/update/GamePadUpdaterHelper;->addGamePadToConnectedProductList(Ljava/util/List;Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 401
    :cond_d
    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mAvailableUpdateList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 402
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/freeflight/update/task/AvailableUpdate;>;"
    :cond_e
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 403
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/update/task/AvailableUpdate;

    .line 404
    .restart local v4    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    iget-boolean v5, v4, Lcom/parrot/freeflight/update/task/AvailableUpdate;->downloaded:Z

    if-eqz v5, :cond_f

    iget-boolean v5, v4, Lcom/parrot/freeflight/update/task/AvailableUpdate;->deviceNeedUpdate:Z

    if-eqz v5, :cond_f

    iget-object v5, v4, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 405
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 408
    .end local v4    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    :cond_10
    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mAvailableUpdateList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 409
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_ASKING_UPLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 411
    :cond_11
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto/16 :goto_0

    .line 417
    .end local v0    # "connectedGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    .end local v1    # "connectedProducts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/freeflight/update/task/AvailableUpdate;>;"
    :pswitch_e
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_5

    goto/16 :goto_0

    .line 453
    :pswitch_f
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_DOWNLOAD_FAILED:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 454
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto/16 :goto_0

    .line 419
    :pswitch_10
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_START_DOWNLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 420
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    .line 421
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_DOWNLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 422
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto/16 :goto_0

    .line 425
    :pswitch_11
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_CONNECT_DRONE_FOR_UPLOAD:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .restart local v1    # "connectedProducts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v5}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 428
    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v5}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_12
    const/4 v0, 0x0

    .line 431
    .restart local v0    # "connectedGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mKnownGamePadList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/gamepad/GamePad;

    .line 432
    .restart local v2    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 433
    move-object v0, v2

    .line 437
    .end local v2    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_14
    if-eqz v0, :cond_15

    .line 438
    invoke-static {v1, v0}, Lcom/parrot/freeflight/update/GamePadUpdaterHelper;->addGamePadToConnectedProductList(Ljava/util/List;Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 440
    :cond_15
    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mAvailableUpdateList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 441
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/freeflight/update/task/AvailableUpdate;>;"
    :cond_16
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 442
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/update/task/AvailableUpdate;

    .line 443
    .restart local v4    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    iget-boolean v5, v4, Lcom/parrot/freeflight/update/task/AvailableUpdate;->downloaded:Z

    if-eqz v5, :cond_17

    iget-boolean v5, v4, Lcom/parrot/freeflight/update/task/AvailableUpdate;->deviceNeedUpdate:Z

    if-eqz v5, :cond_17

    iget-object v5, v4, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 444
    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 447
    .end local v4    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    :cond_18
    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mAvailableUpdateList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_19

    .line 448
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_ASKING_UPLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 450
    :cond_19
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto/16 :goto_0

    .line 460
    .end local v0    # "connectedGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    .end local v1    # "connectedProducts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/freeflight/update/task/AvailableUpdate;>;"
    :pswitch_12
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_6

    goto/16 :goto_0

    .line 462
    :pswitch_13
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_CHECKING_SERVER:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 463
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    .line 464
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->doDownloadTask()V

    goto/16 :goto_0

    .line 470
    :pswitch_14
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_7

    goto/16 :goto_0

    .line 472
    :pswitch_15
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UPLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 473
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    .line 474
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->doUploadTask()V

    goto/16 :goto_0

    .line 478
    :pswitch_16
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UPLOAD_FAILED:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 479
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto/16 :goto_0

    .line 485
    :pswitch_17
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_8

    goto/16 :goto_0

    .line 503
    :pswitch_18
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UPLOAD_FAILED:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 504
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto/16 :goto_0

    .line 487
    :pswitch_19
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_WAITING_PAIRING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 488
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto/16 :goto_0

    .line 492
    :pswitch_1a
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->needProcessing()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 493
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_PROCESSING_UPDATE:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 494
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->doProcessing()V

    .line 499
    :goto_6
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto/16 :goto_0

    .line 496
    :cond_1a
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_REBOOTING_DRONE:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 497
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->doRebootDrone()V

    goto :goto_6

    .line 510
    :pswitch_1b
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_9

    goto/16 :goto_0

    .line 512
    :pswitch_1c
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UPLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 513
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto/16 :goto_0

    .line 519
    :pswitch_1d
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_a

    goto/16 :goto_0

    .line 521
    :pswitch_1e
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UPLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 522
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    .line 523
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->doUploadTask()V

    goto/16 :goto_0

    .line 529
    :pswitch_1f
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_b

    goto/16 :goto_0

    .line 531
    :pswitch_20
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_REBOOTING_DRONE:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 532
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    .line 533
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->doRebootDrone()V

    goto/16 :goto_0

    .line 539
    :pswitch_21
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_c

    goto/16 :goto_0

    .line 541
    :pswitch_22
    sget-object v5, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_REBOOTING_DRONE:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 542
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    .line 543
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->doRebootDrone()V

    goto/16 :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_e
        :pswitch_12
        :pswitch_14
        :pswitch_17
        :pswitch_1b
        :pswitch_1d
        :pswitch_1f
        :pswitch_21
    .end packed-switch

    .line 296
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 312
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch

    .line 323
    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 380
    :pswitch_data_4
    .packed-switch 0x8
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 417
    :pswitch_data_5
    .packed-switch 0x7
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 460
    :pswitch_data_6
    .packed-switch 0xa
        :pswitch_13
    .end packed-switch

    .line 470
    :pswitch_data_7
    .packed-switch 0xb
        :pswitch_15
        :pswitch_16
    .end packed-switch

    .line 485
    :pswitch_data_8
    .packed-switch 0xc
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    .line 510
    :pswitch_data_9
    .packed-switch 0xf
        :pswitch_1c
    .end packed-switch

    .line 519
    :pswitch_data_a
    .packed-switch 0x10
        :pswitch_1e
    .end packed-switch

    .line 529
    :pswitch_data_b
    .packed-switch 0x11
        :pswitch_20
    .end packed-switch

    .line 539
    :pswitch_data_c
    .packed-switch 0x11
        :pswitch_22
    .end packed-switch
.end method

.method private unregisterBroadCast()V
    .locals 2

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mRegistered:Z

    .line 657
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mBluetoothPairStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 659
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_CLOSED:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 225
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->cancelTask()V

    .line 227
    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/UploaderTask;->cancelTask()V

    .line 231
    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    .line 233
    :cond_1
    return-void
.end method

.method public getAvailableUpdateList()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/update/task/AvailableUpdate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mAvailableUpdateList:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentProgress()F
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mCurrentProgress:F

    return v0
.end method

.method public getDownloadingProductName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/UpdaterController;->getProductName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDownloadingProductVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloadingProductVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getModelVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getUploadingUpdate()Lcom/parrot/freeflight/update/task/AvailableUpdate;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    return-object v0
.end method

.method public isDeviceReadyForUpload()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 267
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    if-eqz v6, :cond_5

    .line 268
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iget-object v4, v6, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 269
    .local v4, "uploadingProduct":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v6}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v6

    if-ne v6, v4, :cond_0

    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v6}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 290
    .end local v4    # "uploadingProduct":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :goto_0
    return v5

    .line 273
    .restart local v4    # "uploadingProduct":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v1, "connectedProducts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    const/4 v0, 0x0

    .line 275
    .local v0, "connectedGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterController;->mKnownGamePadList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/gamepad/GamePad;

    .line 276
    .local v2, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 277
    move-object v0, v2

    .line 281
    .end local v2    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_2
    if-eqz v0, :cond_3

    .line 282
    invoke-static {v1, v0}, Lcom/parrot/freeflight/update/GamePadUpdaterHelper;->addGamePadToConnectedProductList(Ljava/util/List;Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 284
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 285
    .local v3, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    if-ne v3, v4, :cond_4

    goto :goto_0

    .line 290
    .end local v0    # "connectedGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    .end local v1    # "connectedProducts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    .end local v3    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v4    # "uploadingProduct":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/update/UpdaterController;->setRetainInstance(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/UpdaterController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mContext:Landroid/content/Context;

    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addGamePadListListener(Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;)V

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UNKNOWN:Lcom/parrot/freeflight/update/UpdaterController$State;

    if-ne v0, v1, :cond_0

    .line 160
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_CHECK_VERSION:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/update/UpdaterController;->runStateMachine(Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mStateListener:Lcom/parrot/freeflight/update/UpdaterController$StateListener;

    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeGamePadListListener(Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;)V

    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->cancelTask()V

    .line 170
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->ready()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/UploaderTask;->cancelTask()V

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->unregisterBroadCast()V

    .line 176
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 177
    return-void
.end method

.method public readyForDownloading([Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 1
    .param p1, "products"    # [Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 236
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->readyForDownloading([Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 239
    :cond_0
    return-void
.end method

.method public rebootDrone()V
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_REBOOT_DRONE:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/update/UpdaterController;->runStateMachine(Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 264
    return-void
.end method

.method public retryDownload()V
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_RETRY_DOWNLOAD:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/update/UpdaterController;->runStateMachine(Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 256
    return-void
.end method

.method public retryUpload()V
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_RETRY_UPLOAD:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/update/UpdaterController;->runStateMachine(Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 260
    return-void
.end method

.method public setProcessingListener(Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;)V
    .locals 3
    .param p1, "processingListener"    # Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 583
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProcessingListener:Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;

    .line 584
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProcessingListener:Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_PROCESSING_UPDATE:Lcom/parrot/freeflight/update/UpdaterController$State;

    if-ne v0, v1, :cond_0

    .line 585
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProcessingListener:Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mRebootHandler:Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->getProgress()F

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mRebootHandler:Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;

    invoke-static {v2}, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->access$000(Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;->onProcessingProgressChange(FI)V

    .line 587
    :cond_0
    return-void
.end method

.method public setProgressListener(Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;)V
    .locals 2
    .param p1, "progressListener"    # Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 576
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProgressListener:Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;

    .line 577
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProgressListener:Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProgressListener:Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;

    iget v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mCurrentProgress:F

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;->onProgressChange(F)V

    .line 580
    :cond_0
    return-void
.end method

.method public setStateListener(Lcom/parrot/freeflight/update/UpdaterController$StateListener;)V
    .locals 3
    .param p1, "stateListener"    # Lcom/parrot/freeflight/update/UpdaterController$StateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 569
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mStateListener:Lcom/parrot/freeflight/update/UpdaterController$StateListener;

    .line 570
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mStateListener:Lcom/parrot/freeflight/update/UpdaterController$StateListener;

    if-eqz v0, :cond_0

    .line 571
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mStateListener:Lcom/parrot/freeflight/update/UpdaterController$StateListener;

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/parrot/freeflight/update/UpdaterController$StateListener;->onStateChange(Lcom/parrot/freeflight/update/UpdaterController$State;Lcom/parrot/freeflight/core/model/Model;)V

    .line 573
    :cond_0
    return-void

    .line 571
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startUpload(Lcom/parrot/freeflight/update/task/AvailableUpdate;)V
    .locals 3
    .param p1, "availableUpdate"    # Lcom/parrot/freeflight/update/task/AvailableUpdate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 243
    const-string v0, "FFMini.Updater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start upload task for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    .line 247
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/UpdaterController;->isDeviceReadyForUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_START_UPLOAD:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/update/UpdaterController;->runStateMachine(Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_UPLOADING_FAILED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/update/UpdaterController;->runStateMachine(Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    goto :goto_0
.end method
