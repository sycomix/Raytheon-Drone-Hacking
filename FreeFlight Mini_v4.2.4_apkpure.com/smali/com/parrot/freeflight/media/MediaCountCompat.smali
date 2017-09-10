.class public Lcom/parrot/freeflight/media/MediaCountCompat;
.super Ljava/lang/Object;
.source "MediaCountCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/MediaCountCompat$Listener;
    }
.end annotation


# instance fields
.field private final mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGetMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGetMediasDelegateListener:Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/media/MediaCountCompat$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMassStoragePath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSkyDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;Lcom/parrot/freeflight/media/MediaCountCompat$Listener;)V
    .locals 1
    .param p1, "droneMemoryInitializationInfo"    # Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/media/MediaCountCompat$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/parrot/freeflight/media/MediaCountCompat$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/MediaCountCompat$1;-><init>(Lcom/parrot/freeflight/media/MediaCountCompat;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mGetMediasDelegateListener:Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate$Listener;

    .line 56
    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->getDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 57
    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->getSkyDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mSkyDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 58
    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->getMassStoragePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mMassStoragePath:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mListener:Lcom/parrot/freeflight/media/MediaCountCompat$Listener;

    .line 60
    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/media/MediaCountCompat;Lcom/parrot/freeflight/media/task/MediaTask;)Lcom/parrot/freeflight/media/task/MediaTask;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/MediaCountCompat;
    .param p1, "x1"    # Lcom/parrot/freeflight/media/task/MediaTask;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mGetMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/media/MediaCountCompat;)Lcom/parrot/freeflight/media/MediaCountCompat$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/MediaCountCompat;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mListener:Lcom/parrot/freeflight/media/MediaCountCompat$Listener;

    return-object v0
.end method

.method private cancelRunningTask()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mGetMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mGetMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/task/MediaTask;->cancelTask()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mGetMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    .line 86
    :cond_0
    return-void
.end method

.method public static getReadMediaCount(Lcom/parrot/freeflight/core/model/Model;)I
    .locals 1
    .param p0, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 119
    instance-of v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 120
    check-cast p0, Lcom/parrot/freeflight/core/model/DelosModel;

    .end local p0    # "model":Lcom/parrot/freeflight/core/model/Model;
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getReadMediaCount()I

    move-result v0

    .line 122
    :goto_0
    return v0

    .restart local p0    # "model":Lcom/parrot/freeflight/core/model/Model;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static incrementPhotosCount(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 2
    .param p0, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 101
    instance-of v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 102
    check-cast v0, Lcom/parrot/freeflight/core/model/DelosModel;

    .line 103
    .local v0, "delosModel":Lcom/parrot/freeflight/core/model/DelosModel;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->isMassStorageNbPhotosCmdSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getPhotosCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->setPhotosCount(I)V

    .line 107
    .end local v0    # "delosModel":Lcom/parrot/freeflight/core/model/DelosModel;
    :cond_0
    return-void
.end method

.method public static incrementPhotosCountTakenDuringRun(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 2
    .param p0, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 110
    instance-of v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 111
    check-cast v0, Lcom/parrot/freeflight/core/model/DelosModel;

    .line 112
    .local v0, "delosModel":Lcom/parrot/freeflight/core/model/DelosModel;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->isMassStorageNbPhotosCmdSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getPhotoCountTakenDuringRun()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->setPhotoCountTakenDuringRun(I)V

    .line 116
    .end local v0    # "delosModel":Lcom/parrot/freeflight/core/model/DelosModel;
    :cond_0
    return-void
.end method

.method public static updateReadMediaCount(Lcom/parrot/freeflight/core/model/Model;SS)V
    .locals 2
    .param p0, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "photosCount"    # S
    .param p2, "videosCount"    # S

    .prologue
    .line 93
    instance-of v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 94
    check-cast v0, Lcom/parrot/freeflight/core/model/DelosModel;

    .line 95
    .local v0, "delosModel":Lcom/parrot/freeflight/core/model/DelosModel;
    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->setReadMediaCount(I)V

    .line 97
    .end local v0    # "delosModel":Lcom/parrot/freeflight/core/model/DelosModel;
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mListener:Lcom/parrot/freeflight/media/MediaCountCompat$Listener;

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mListener:Lcom/parrot/freeflight/media/MediaCountCompat$Listener;

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/media/MediaCountCompat;->cancelRunningTask()V

    .line 79
    return-void
.end method

.method public getMediaCountAsync(Ljava/lang/String;)V
    .locals 5
    .param p1, "massStoragePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    iput-object p1, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mMassStoragePath:Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iget-object v3, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mSkyDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->getFtpNetworkHandler(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    move-result-object v1

    .line 66
    .local v1, "ftpNetworkHandler":Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
    if-eqz v1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/parrot/freeflight/media/MediaCountCompat;->cancelRunningTask()V

    .line 68
    new-instance v0, Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate;

    iget-object v2, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mGetMediasDelegateListener:Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate$Listener;

    invoke-direct {v0, v2}, Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate;-><init>(Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate$Listener;)V

    .line 69
    .local v0, "delegate":Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate;
    new-instance v2, Lcom/parrot/freeflight/media/task/MediaTask;

    iget-object v3, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mMassStoragePath:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/parrot/freeflight/media/task/MediaTask;-><init>(Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;Lcom/parrot/freeflight/media/task/FtpNetworkHandler;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mGetMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    .line 70
    iget-object v2, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mGetMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    invoke-static {}, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->getFtpOperationExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/media/task/MediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 72
    .end local v0    # "delegate":Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate;
    :cond_0
    return-void
.end method
