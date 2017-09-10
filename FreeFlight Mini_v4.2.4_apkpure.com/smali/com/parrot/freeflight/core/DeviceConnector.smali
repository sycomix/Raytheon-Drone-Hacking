.class public Lcom/parrot/freeflight/core/DeviceConnector;
.super Lcom/parrot/freeflight/core/BaseDeviceConnector;
.source "DeviceConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/DeviceConnector$State;,
        Lcom/parrot/freeflight/core/DeviceConnector$Event;,
        Lcom/parrot/freeflight/core/DeviceConnector$IDeviceListListener;,
        Lcom/parrot/freeflight/core/DeviceConnector$IListener;
    }
.end annotation


# static fields
.field public static final CONNECTING_DRONE:I = 0x3

.field public static final DISCONNECTING_DRONE:I = 0x5

.field public static final DRONE_CONNECTED:I = 0x4

.field private static final MAC_ADDRESS_LENGTH:I = 0x6

.field public static final NO_DRONE:I = 0x1

.field public static final SWITCHING_DRONE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "FFMini.DC"

.field public static final UNKNOWN:I = 0x0

.field public static final WAITING_DRONE:I = 0x2


# instance fields
.field private final mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDeviceListListener:Lcom/parrot/freeflight/core/DeviceConnector$IDeviceListListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDiscoveredDrones:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiscoveryListener:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;

.field private final mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDiscoveryUid:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDiscoveryWanted:Z

.field private mDroneState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/DeviceConnector$IListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnUserDroneChangeListener:Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mStarted:Z

.field private mState:I

.field private mUserDrone:Lcom/parrot/freeflight/UserDrone;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUserDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mUserSettings:Lcom/parrot/freeflight/UserSettings;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/ApplicationManager;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/discovery/DiscoveryManager;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/UserSettings;Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationManager"    # Lcom/parrot/freeflight/core/ApplicationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "connectionManager"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "discoveryManager"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "gamePadManager"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "userSettings"    # Lcom/parrot/freeflight/UserSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 115
    invoke-direct {p0, p6}, Lcom/parrot/freeflight/core/BaseDeviceConnector;-><init>(Landroid/content/Context;)V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    .line 72
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_UNKNOWN:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 75
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;->ARDISCOVERY_CONNECTION_STATE_UNKNOWN:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mListeners:Ljava/util/List;

    .line 452
    new-instance v0, Lcom/parrot/freeflight/core/DeviceConnector$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/DeviceConnector$2;-><init>(Lcom/parrot/freeflight/core/DeviceConnector;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryListener:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;

    .line 459
    new-instance v0, Lcom/parrot/freeflight/core/DeviceConnector$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/DeviceConnector$3;-><init>(Lcom/parrot/freeflight/core/DeviceConnector;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    .line 479
    new-instance v0, Lcom/parrot/freeflight/core/DeviceConnector$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/DeviceConnector$4;-><init>(Lcom/parrot/freeflight/core/DeviceConnector;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    .line 488
    new-instance v0, Lcom/parrot/freeflight/core/DeviceConnector$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/DeviceConnector$5;-><init>(Lcom/parrot/freeflight/core/DeviceConnector;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mOnUserDroneChangeListener:Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;

    .line 116
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryUid:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .line 118
    iput-object p3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .line 119
    iput-object p4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 120
    iput-object p5, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserSettings:Lcom/parrot/freeflight/UserSettings;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveredDrones:Ljava/util/List;

    .line 122
    new-instance v0, Lcom/parrot/freeflight/core/DeviceConnector$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/DeviceConnector$1;-><init>(Lcom/parrot/freeflight/core/DeviceConnector;)V

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/core/ApplicationManager;->addOnApplicationVisibilityChangeListener(Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;)V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/DeviceConnector;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/DeviceConnector;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->stop()V

    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/core/DeviceConnector;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/core/DeviceConnector;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveredDrones:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/DeviceConnector;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object p1
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object p1
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;
    .param p1, "x1"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/core/DeviceConnector$Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/DeviceConnector$Event;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/DeviceConnector;->runStateMachine(Lcom/parrot/freeflight/core/DeviceConnector$Event;)V

    return-void
.end method

.method static synthetic access$602(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object p1
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/core/DeviceConnector;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyPairedRemote()V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/core/DeviceConnector;)Lcom/parrot/freeflight/UserDrone;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    return-object v0
.end method

.method static synthetic access$802(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/UserDrone;)Lcom/parrot/freeflight/UserDrone;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;
    .param p1, "x1"    # Lcom/parrot/freeflight/UserDrone;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    return-object p1
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/core/DeviceConnector;)Lcom/parrot/freeflight/UserSettings;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserSettings:Lcom/parrot/freeflight/UserSettings;

    return-object v0
.end method

.method private notifyChanged()V
    .locals 5

    .prologue
    .line 203
    const-string v1, "FFMini.DC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyChanged State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    .line 206
    .local v0, "listener":Lcom/parrot/freeflight/core/DeviceConnector$IListener;
    iget v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    iget-object v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    invoke-interface {v0, v2, v3, v4}, Lcom/parrot/freeflight/core/DeviceConnector$IListener;->onStateChanged(ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;Lcom/parrot/freeflight/UserDrone;)V

    goto :goto_0

    .line 208
    .end local v0    # "listener":Lcom/parrot/freeflight/core/DeviceConnector$IListener;
    :cond_0
    return-void
.end method

.method private notifyPairedRemote()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 404
    iget v5, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    if-ne v5, v7, :cond_0

    iget-object v5, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 407
    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v5

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 408
    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 409
    const-string v5, "FFMini.DC"

    const-string v6, "Drone and game pad connected => sending game pad address to drone"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v5, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/GamePad;->getUid()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 411
    .local v4, "parts":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    .line 413
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v4, v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-short v3, v5

    .line 414
    .local v3, "msbMac":S
    const/4 v5, 0x2

    aget-object v5, v4, v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x3

    aget-object v6, v4, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-short v2, v5

    .line 415
    .local v2, "midMac":S
    const/4 v5, 0x4

    aget-object v5, v4, v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x5

    aget-object v6, v4, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-short v1, v5

    .line 416
    .local v1, "lsbMac":S
    iget-object v5, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v5, v3, v2, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestSetPairedRemote(SSS)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v1    # "lsbMac":S
    .end local v2    # "midMac":S
    .end local v3    # "msbMac":S
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 417
    .restart local v4    # "parts":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_UNKNOWN:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 157
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;->ARDISCOVERY_CONNECTION_STATE_UNKNOWN:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    .line 158
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryWanted:Z

    .line 159
    iput-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    .line 160
    iput v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    .line 161
    iput-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 162
    iput-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 163
    iput-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 164
    iput-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    .line 165
    return-void
.end method

.method private runStateMachine(Lcom/parrot/freeflight/core/DeviceConnector$Event;)V
    .locals 9
    .param p1, "event"    # Lcom/parrot/freeflight/core/DeviceConnector$Event;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x4

    .line 211
    iget v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 213
    :pswitch_0
    sget-object v2, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$DeviceConnector$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/DeviceConnector$Event;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-nez v2, :cond_2

    .line 216
    const/4 v2, 0x1

    iput v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    .line 228
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->updateDiscovery()V

    .line 229
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyPairedRemote()V

    .line 230
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyChanged()V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    sget-object v3, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne v2, v3, :cond_3

    .line 219
    iput v5, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    goto :goto_1

    .line 220
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/UserDrone;->matchDeviceService(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    sget-object v3, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne v2, v3, :cond_4

    .line 222
    iput v6, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    goto :goto_1

    .line 223
    :cond_4
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    sget-object v3, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne v2, v3, :cond_1

    .line 224
    iput v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    goto :goto_1

    .line 236
    :pswitch_2
    sget-object v2, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$DeviceConnector$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/DeviceConnector$Event;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    goto :goto_0

    .line 238
    :pswitch_3
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/UserDrone;->matchDeviceService(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    sget-object v3, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne v2, v3, :cond_5

    .line 240
    iput v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    .line 245
    :goto_2
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->updateDiscovery()V

    .line 246
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyPairedRemote()V

    .line 247
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyChanged()V

    goto :goto_0

    .line 242
    :cond_5
    const-string v2, "FFMini.DC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event USER_DRONE_CHANGED while state NO_DRONE with bad state: mUserDrone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mConnectionState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentDroneDeviceService="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 253
    :pswitch_4
    sget-object v2, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$DeviceConnector$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/DeviceConnector$Event;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_0

    .line 274
    :pswitch_5
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/UserDrone;->matchDeviceService(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    sget-object v3, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne v2, v3, :cond_8

    .line 276
    iput v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    .line 281
    :goto_3
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->updateDiscovery()V

    .line 282
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyPairedRemote()V

    .line 283
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyChanged()V

    goto/16 :goto_0

    .line 255
    :pswitch_6
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;->ARDISCOVERY_CONNECTION_STATE_UNKNOWN:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    iput-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    .line 256
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveredDrones:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 257
    .local v1, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/UserDrone;->matchDeviceService(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 258
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    .line 259
    .local v0, "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    if-eqz v0, :cond_7

    .line 260
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->getConnectionState()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    .line 261
    const-string v2, "FFMini.DC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found user drone with state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;->ARDISCOVERY_CONNECTION_STATE_AVAILABLE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    if-ne v2, v3, :cond_7

    .line 263
    iput v6, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    .line 264
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->connectDrone(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 270
    .end local v0    # "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    .end local v1    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :cond_7
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->updateDiscovery()V

    .line 271
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyChanged()V

    goto/16 :goto_0

    .line 278
    :cond_8
    const-string v2, "FFMini.DC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event USER_DRONE_CHANGED while state WAITING_DRONE with bad state: mUserDrone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mConnectionState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentDroneDeviceService="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 286
    :pswitch_7
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/UserDrone;->matchDeviceService(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    sget-object v3, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne v2, v3, :cond_0

    .line 289
    iput v8, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    .line 290
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->updateDiscovery()V

    .line 291
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyChanged()V

    goto/16 :goto_0

    .line 298
    :pswitch_8
    sget-object v2, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$DeviceConnector$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/DeviceConnector$Event;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_0

    .line 300
    :pswitch_9
    sget-object v2, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionState:[I

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_5

    goto/16 :goto_0

    .line 302
    :pswitch_a
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/UserDrone;->matchDeviceService(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    iput v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    .line 304
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->updateDiscovery()V

    .line 305
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyPairedRemote()V

    .line 306
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyChanged()V

    goto/16 :goto_0

    .line 310
    :pswitch_b
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/UserDrone;->matchDeviceService(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    iput v7, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    .line 312
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->updateDiscovery()V

    .line 313
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyChanged()V

    goto/16 :goto_0

    .line 322
    :pswitch_c
    sget-object v2, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$DeviceConnector$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/DeviceConnector$Event;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_6

    goto/16 :goto_0

    .line 324
    :pswitch_d
    sget-object v2, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionState:[I

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_7

    goto/16 :goto_0

    .line 331
    :pswitch_e
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/UserDrone;->matchDeviceService(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    iput v7, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    .line 333
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->updateDiscovery()V

    .line 334
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyChanged()V

    goto/16 :goto_0

    .line 326
    :pswitch_f
    iput v5, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    .line 327
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->updateDiscovery()V

    .line 328
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyChanged()V

    goto/16 :goto_0

    .line 343
    :pswitch_10
    sget-object v2, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$DeviceConnector$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/DeviceConnector$Event;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_8

    goto/16 :goto_0

    .line 345
    :pswitch_11
    sget-object v2, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionState:[I

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_9

    goto/16 :goto_0

    .line 347
    :pswitch_12
    iput v5, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    .line 348
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->updateDiscovery()V

    .line 349
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyChanged()V

    goto/16 :goto_0

    .line 352
    :pswitch_13
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/UserDrone;->matchDeviceService(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    iput v8, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    .line 355
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->updateDiscovery()V

    .line 356
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyChanged()V

    goto/16 :goto_0

    .line 365
    :pswitch_14
    sget-object v2, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$DeviceConnector$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/DeviceConnector$Event;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a

    :pswitch_15
    goto/16 :goto_0

    .line 374
    :pswitch_16
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/UserDrone;->matchDeviceService(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    sget-object v3, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne v2, v3, :cond_0

    .line 376
    iput v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    .line 377
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->updateDiscovery()V

    .line 378
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyPairedRemote()V

    .line 379
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyChanged()V

    goto/16 :goto_0

    .line 367
    :pswitch_17
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    sget-object v3, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne v2, v3, :cond_0

    .line 368
    iput v5, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    .line 369
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->updateDiscovery()V

    .line 370
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyChanged()V

    goto/16 :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_14
    .end packed-switch

    .line 213
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 236
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    .line 253
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 298
    :pswitch_data_4
    .packed-switch 0x3
        :pswitch_9
    .end packed-switch

    .line 300
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 322
    :pswitch_data_6
    .packed-switch 0x3
        :pswitch_d
    .end packed-switch

    .line 324
    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 343
    :pswitch_data_8
    .packed-switch 0x3
        :pswitch_11
    .end packed-switch

    .line 345
    :pswitch_data_9
    .packed-switch 0x3
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 365
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method

.method private start()V
    .locals 3

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mStarted:Z

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mStarted:Z

    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->registerListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserSettings:Lcom/parrot/freeflight/UserSettings;

    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mOnUserDroneChangeListener:Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/UserSettings;->addOnUserDroneChangeListener(Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;)V

    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryUid:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryListener:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->connect(Ljava/lang/String;Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;)V

    .line 142
    :cond_0
    return-void
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mStarted:Z

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mStarted:Z

    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->unregisterListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserSettings:Lcom/parrot/freeflight/UserSettings;

    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mOnUserDroneChangeListener:Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/UserSettings;->removeOnUserDroneChangeListener(Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->disconnect(Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->reset()V

    .line 153
    :cond_0
    return-void
.end method

.method private updateDiscovery()V
    .locals 3

    .prologue
    .line 388
    iget v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 390
    const-string v0, "FFMini.DC"

    const-string v1, "State = WAITING_DRONE => starting discovery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->startBLEDiscovery()V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    const-string v0, "FFMini.DC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State != WAITING_DRONE => stopping discovery if not wanted (wanted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryWanted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryWanted:Z

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->stopBLEDiscovery()V

    goto :goto_0
.end method


# virtual methods
.method public forgetCurrentUserDrone()V
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserSettings:Lcom/parrot/freeflight/UserSettings;

    invoke-virtual {v0}, Lcom/parrot/freeflight/UserSettings;->forgetCurrentUserDrone()V

    .line 196
    iget v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->disconnectDrone()V

    .line 199
    :cond_0
    return-void
.end method

.method public onDroneListUpdated(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveredDrones:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 426
    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveredDrones:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 427
    iget-boolean v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mStarted:Z

    if-eqz v3, :cond_4

    .line 428
    sget-object v3, Lcom/parrot/freeflight/core/DeviceConnector$Event;->DEVICE_LIST_CHANGED:Lcom/parrot/freeflight/core/DeviceConnector$Event;

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/core/DeviceConnector;->runStateMachine(Lcom/parrot/freeflight/core/DeviceConnector$Event;)V

    .line 430
    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v3, :cond_0

    .line 431
    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveredDrones:Ljava/util/List;

    iget-object v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 433
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveredDrones:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 434
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 435
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 436
    .local v1, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/UserDrone;->matchDeviceService(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 439
    :cond_2
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    .line 440
    .local v0, "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->getConnectionState()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    move-result-object v3

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;->ARDISCOVERY_CONNECTION_STATE_AVAILABLE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    if-eq v3, v4, :cond_1

    .line 441
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 445
    .end local v0    # "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    .end local v1    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :cond_3
    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDeviceListListener:Lcom/parrot/freeflight/core/DeviceConnector$IDeviceListListener;

    if-eqz v3, :cond_4

    .line 446
    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDeviceListListener:Lcom/parrot/freeflight/core/DeviceConnector$IDeviceListListener;

    iget-object v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveredDrones:Ljava/util/List;

    invoke-interface {v3, v4}, Lcom/parrot/freeflight/core/DeviceConnector$IDeviceListListener;->onDeviceListChanged(Ljava/util/List;)V

    .line 449
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    :cond_4
    return-void
.end method

.method public registerListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/parrot/freeflight/core/DeviceConnector$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    invoke-interface {p1, v0, v1, v2}, Lcom/parrot/freeflight/core/DeviceConnector$IListener;->onStateChanged(ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;Lcom/parrot/freeflight/UserDrone;)V

    .line 172
    :cond_0
    return-void
.end method

.method public requestDiscovery(Lcom/parrot/freeflight/core/DeviceConnector$IDeviceListListener;)V
    .locals 2
    .param p1, "deviceListListener"    # Lcom/parrot/freeflight/core/DeviceConnector$IDeviceListListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryWanted:Z

    .line 180
    iput-object p1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDeviceListListener:Lcom/parrot/freeflight/core/DeviceConnector$IDeviceListListener;

    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDeviceListListener:Lcom/parrot/freeflight/core/DeviceConnector$IDeviceListListener;

    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveredDrones:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/core/DeviceConnector$IDeviceListListener;->onDeviceListChanged(Ljava/util/List;)V

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->startBLEDiscovery()V

    .line 183
    return-void
.end method

.method public stopDiscovery()V
    .locals 2

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryWanted:Z

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDeviceListListener:Lcom/parrot/freeflight/core/DeviceConnector$IDeviceListListener;

    .line 188
    iget v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->stopBLEDiscovery()V

    .line 191
    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/DeviceConnector$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method
