.class public Lcom/parrot/freeflight/core/CoreManager;
.super Ljava/lang/Object;
.source "CoreManager.java"


# static fields
.field private static mInstance:Lcom/parrot/freeflight/core/CoreManager;


# instance fields
.field private final mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBlackboxManager:Lcom/parrot/freeflight/blackbox/BlackboxManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLocationManagerPolicy:Lcom/parrot/freeflight/location/LocationPolicy;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPurchaseManager:Lcom/parrot/freeflight/core/PurchaseManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mStarted:Z

.field private final mUncaughtExceptionController:Lcom/parrot/freeflight/core/UncaughtExceptionController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUsbAccessoryManager:Lcom/parrot/freeflight/core/UsbAccessoryManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUserSettings:Lcom/parrot/freeflight/UserSettings;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/ApplicationManager;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "applicationManager"    # Lcom/parrot/freeflight/core/ApplicationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Lcom/parrot/freeflight/core/UsbAccessoryManager;

    invoke-direct {v0}, Lcom/parrot/freeflight/core/UsbAccessoryManager;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mUsbAccessoryManager:Lcom/parrot/freeflight/core/UsbAccessoryManager;

    .line 89
    new-instance v0, Lcom/parrot/freeflight/UserSettings;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/UserSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mUserSettings:Lcom/parrot/freeflight/UserSettings;

    .line 90
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager;

    new-instance v1, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-direct {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .line 91
    new-instance v0, Lcom/parrot/freeflight/core/UncaughtExceptionController;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/core/UncaughtExceptionController;-><init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mUncaughtExceptionController:Lcom/parrot/freeflight/core/UncaughtExceptionController;

    .line 92
    new-instance v0, Lcom/parrot/freeflight/core/ScreenConfiguration;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/core/ScreenConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;

    .line 93
    new-instance v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;

    invoke-direct {v0, p1, v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/ScreenConfiguration;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .line 94
    new-instance v0, Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 95
    new-instance v0, Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v3, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v4, p0, Lcom/parrot/freeflight/core/CoreManager;->mUserSettings:Lcom/parrot/freeflight/UserSettings;

    iget-object v5, p0, Lcom/parrot/freeflight/core/CoreManager;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/core/model/ModelStore;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;Landroid/content/Context;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/UserSettings;Lcom/parrot/freeflight/location/SmartLocationManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 96
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    .line 97
    new-instance v0, Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/core/academy/MediaManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    .line 98
    new-instance v0, Lcom/parrot/freeflight/core/BitmapCache;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/core/BitmapCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;

    .line 99
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-direct {v0, p2, v1, p1}, Lcom/parrot/freeflight/gamepad/GamePadManager;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;Lcom/parrot/freeflight/core/model/ModelStore;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 100
    new-instance v0, Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v3, p0, Lcom/parrot/freeflight/core/CoreManager;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    iget-object v4, p0, Lcom/parrot/freeflight/core/CoreManager;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v5, p0, Lcom/parrot/freeflight/core/CoreManager;->mUserSettings:Lcom/parrot/freeflight/UserSettings;

    iget-object v6, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/core/DeviceConnector;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/discovery/DiscoveryManager;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/UserSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    .line 101
    new-instance v0, Lcom/parrot/freeflight/location/LocationPolicy;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-direct {v0, p2, v1, v2}, Lcom/parrot/freeflight/location/LocationPolicy;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/core/model/ModelStore;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mLocationManagerPolicy:Lcom/parrot/freeflight/location/LocationPolicy;

    .line 102
    new-instance v0, Lcom/parrot/freeflight/blackbox/BlackboxManager;

    iget-object v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v3, p0, Lcom/parrot/freeflight/core/CoreManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v4, p0, Lcom/parrot/freeflight/core/CoreManager;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v5, p0, Lcom/parrot/freeflight/core/CoreManager;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/blackbox/BlackboxManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/core/DeviceConnector;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mBlackboxManager:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    .line 103
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchManager;

    iget-object v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/core/CoreManager;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v4, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v5, p0, Lcom/parrot/freeflight/core/CoreManager;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/core/AutoLaunchManager;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;Landroid/content/Context;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    .line 104
    new-instance v0, Lcom/parrot/freeflight/core/PurchaseManager;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/core/PurchaseManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mPurchaseManager:Lcom/parrot/freeflight/core/PurchaseManager;

    .line 105
    new-instance v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;-><init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .line 106
    return-void
.end method

.method public static create(Landroid/app/Application;)V
    .locals 4
    .param p0, "application"    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    const-class v1, Lcom/parrot/freeflight/core/CoreManager;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/parrot/freeflight/core/CoreManager;->mInstance:Lcom/parrot/freeflight/core/CoreManager;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/core/ApplicationManager;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/core/ApplicationManager;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, v2, v3}, Lcom/parrot/freeflight/core/CoreManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/ApplicationManager;)V

    sput-object v0, Lcom/parrot/freeflight/core/CoreManager;->mInstance:Lcom/parrot/freeflight/core/CoreManager;

    .line 79
    :cond_0
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/parrot/freeflight/core/CoreManager;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/parrot/freeflight/core/CoreManager;->mInstance:Lcom/parrot/freeflight/core/CoreManager;

    return-object v0
.end method


# virtual methods
.method public getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    return-object v0
.end method

.method public getAutoLaunchManager()Lcom/parrot/freeflight/core/AutoLaunchManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    return-object v0
.end method

.method public getBitmapCache()Lcom/parrot/freeflight/core/BitmapCache;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;

    return-object v0
.end method

.method public getConnectionManager()Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    return-object v0
.end method

.method public getDeviceConnector()Lcom/parrot/freeflight/core/DeviceConnector;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    return-object v0
.end method

.method public getDiscoveryManager()Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    return-object v0
.end method

.method public getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    return-object v0
.end method

.method public getMediaManager()Lcom/parrot/freeflight/core/academy/MediaManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    return-object v0
.end method

.method public getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    return-object v0
.end method

.method public getPurchaseManager()Lcom/parrot/freeflight/core/PurchaseManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mPurchaseManager:Lcom/parrot/freeflight/core/PurchaseManager;

    return-object v0
.end method

.method public getSmartLocationManager()Lcom/parrot/freeflight/location/SmartLocationManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    return-object v0
.end method

.method public getUserSettings()Lcom/parrot/freeflight/UserSettings;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mUserSettings:Lcom/parrot/freeflight/UserSettings;

    return-object v0
.end method

.method public getVideoStreamingController()Lcom/parrot/freeflight/core/video/VideoStreamingController;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    return-object v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mStarted:Z

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mStarted:Z

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->start()V

    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mBlackboxManager:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->start()V

    .line 118
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->start()V

    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mUncaughtExceptionController:Lcom/parrot/freeflight/core/UncaughtExceptionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/UncaughtExceptionController;->start()V

    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/ScreenConfiguration;->start()V

    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/ModelStore;->start()V

    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->start()V

    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->start()V

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mPurchaseManager:Lcom/parrot/freeflight/core/PurchaseManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/PurchaseManager;->start()V

    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->start()V

    .line 127
    :cond_0
    return-void
.end method

.method public startMux()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mUsbAccessoryManager:Lcom/parrot/freeflight/core/UsbAccessoryManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/UsbAccessoryManager;->startMux(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mStarted:Z

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mStarted:Z

    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mBlackboxManager:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->stop()V

    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->stop()V

    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->close()V

    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/ScreenConfiguration;->stop()V

    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/ModelStore;->close()V

    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->stop()V

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->close()V

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/BitmapCache;->clear()V

    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mUsbAccessoryManager:Lcom/parrot/freeflight/core/UsbAccessoryManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/UsbAccessoryManager;->stop()V

    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->stop()V

    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mPurchaseManager:Lcom/parrot/freeflight/core/PurchaseManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/PurchaseManager;->stop()V

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->stop()V

    .line 145
    :cond_0
    return-void
.end method
