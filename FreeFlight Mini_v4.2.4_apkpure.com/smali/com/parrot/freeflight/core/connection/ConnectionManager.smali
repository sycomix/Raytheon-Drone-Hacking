.class public Lcom/parrot/freeflight/core/connection/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;,
        Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;,
        Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    }
.end annotation


# instance fields
.field private mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDeviceControllerNetworkEventDisconnection:Landroid/content/BroadcastReceiver;

.field private mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnDeviceControllerFailed:Landroid/content/BroadcastReceiver;

.field private final mOnDeviceControllerStarted:Landroid/content/BroadcastReceiver;

.field private final mOnDeviceControllerStopped:Landroid/content/BroadcastReceiver;

.field private final mOnSkyControllerConnectionStateChanged:Landroid/content/BroadcastReceiver;

.field private final mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mWifiLogger:Lcom/parrot/freeflight/core/connection/WifiLogger;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "policy"    # Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 866
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;-><init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnDeviceControllerStarted:Landroid/content/BroadcastReceiver;

    .line 905
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$2;-><init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnDeviceControllerStopped:Landroid/content/BroadcastReceiver;

    .line 953
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$3;-><init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnDeviceControllerFailed:Landroid/content/BroadcastReceiver;

    .line 1005
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$4;-><init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceControllerNetworkEventDisconnection:Landroid/content/BroadcastReceiver;

    .line 1044
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$5;-><init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnSkyControllerConnectionStateChanged:Landroid/content/BroadcastReceiver;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mContext:Landroid/content/Context;

    .line 114
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 115
    iput-object p2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    .line 116
    new-instance v0, Lcom/parrot/freeflight/core/connection/WifiLogger;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/core/connection/WifiLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mWifiLogger:Lcom/parrot/freeflight/core/connection/WifiLogger;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/controller/devicecontrollers/DeviceController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/controller/devicecontrollers/DeviceController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/freeflight/core/connection/WifiLogger;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mWifiLogger:Lcom/parrot/freeflight/core/connection/WifiLogger;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object p1
.end method

.method private checkRemoteDroneConnection()V
    .locals 3

    .prologue
    .line 784
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v1, :cond_1

    .line 785
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->getRemoteDroneService(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v0

    .line 786
    .local v0, "remoteDrone":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    if-eqz v0, :cond_0

    .line 787
    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 788
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_CONNECTED_TO_DRONE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 793
    .end local v0    # "remoteDrone":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    const-string v1, "FFMini.Connect"

    const-string v2, "Connection Manager : calling checkRemoteDroneConnection while mRemoteCtrlDeviceController == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createDeviceController(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/DeviceController;
    .locals 3
    .param p1, "service"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 763
    const/4 v0, 0x0

    .line 764
    .local v0, "deviceController":Lcom/parrot/controller/devicecontrollers/DeviceController;
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$6;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v2

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 777
    :goto_0
    return-object v0

    .line 771
    :pswitch_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->create(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    move-result-object v0

    .line 772
    goto :goto_0

    .line 764
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doConnect()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 824
    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v2, :cond_0

    .line 825
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 826
    .local v1, "service":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    iput-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 827
    invoke-static {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->isRemoteControl(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v0

    .line 828
    .local v0, "remoteControl":Z
    if-eqz v0, :cond_1

    .line 829
    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 830
    iput-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 836
    .end local v0    # "remoteControl":Z
    .end local v1    # "service":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 832
    .restart local v0    # "remoteControl":Z
    .restart local v1    # "service":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :cond_1
    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 833
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->createDeviceController(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/DeviceController;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    goto :goto_0
.end method

.method private doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 0
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 840
    if-eqz p1, :cond_0

    .line 841
    invoke-virtual {p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopInstance()V

    .line 843
    :cond_0
    return-void
.end method

.method private getRemoteDroneService(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 9
    .param p1, "remoteCtrlDeviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 804
    instance-of v7, p1, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v7, :cond_0

    .line 805
    invoke-virtual {p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v4

    .line 806
    .local v4, "notificationDictionary":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v7, "SkyControllerDeviceControllerDeviceStateConnexionChangedNotification"

    invoke-virtual {v4, v7}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 807
    const-string v7, "SkyControllerDeviceControllerDeviceStateConnexionChangedNotification"

    invoke-virtual {v4, v7}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 808
    .local v3, "notificationBundle":Landroid/os/Bundle;
    const-string v7, "SkyControllerDeviceControllerDeviceStateConnexionChangedNotificationDeviceNameKey"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "deviceName":Ljava/lang/String;
    const-string v7, "SkyControllerDeviceControllerDeviceStateConnexionChangedNotificationDeviceProductIDKey"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result v1

    .line 810
    .local v1, "deviceProductID":I
    const-string v7, "SkyControllerDeviceControllerDeviceStateConnexionChangedNotificationStatusKey"

    sget-object v8, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

    invoke-virtual {v8}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;->getValue()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 811
    .local v6, "stateValue":I
    invoke-static {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

    move-result-object v5

    .line 812
    .local v5, "state":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;
    sget-object v7, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_CONNECTED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

    if-ne v5, v7, :cond_0

    .line 813
    new-instance v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-direct {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;-><init>()V

    .line 814
    .local v2, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    invoke-virtual {v2, v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->setName(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v2, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->setProductID(I)V

    .line 820
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v1    # "deviceProductID":I
    .end local v2    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .end local v3    # "notificationBundle":Landroid/os/Bundle;
    .end local v4    # "notificationDictionary":Lcom/parrot/controller/devicecontrollers/ARBundle;
    .end local v5    # "state":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;
    .end local v6    # "stateValue":I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isRemoteControl(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z
    .locals 2
    .param p0, "device"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1094
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v1

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    .line 1095
    .local v0, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyChanged()V
    .locals 7

    .prologue
    .line 857
    const-string v1, "FFMini.Connect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    .line 862
    .local v0, "listener":Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v4, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iget-object v5, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-interface/range {v0 .. v5}, Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;->onStateChange(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto :goto_0

    .line 864
    .end local v0    # "listener":Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;
    :cond_0
    return-void
.end method

.method private onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 2
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 846
    if-eqz p1, :cond_0

    .line 847
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-ne v0, p1, :cond_1

    .line 848
    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    goto :goto_0
.end method

.method private runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 164
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionState:[I

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 166
    :pswitch_0
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 169
    :pswitch_1
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : connect device while not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-static {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->isRemoteControl(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    :goto_1
    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 173
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doConnect()Z

    .line 174
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto :goto_0

    .line 172
    :cond_1
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    goto :goto_1

    .line 176
    :cond_2
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : connect device while mDeviceToConnect==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :pswitch_2
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : receiving EVENT_CANCEL or EVENT_DISCONNECT_DEVICE while state is STATE_NOT_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iput-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 184
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 185
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 186
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto :goto_0

    .line 194
    :pswitch_3
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 268
    const-string v0, "FFMini.Connect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 197
    :pswitch_4
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : service clicked while connecting drone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 201
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-nez v0, :cond_4

    .line 204
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager: request service auto selection while STATE_DRONE_CONNECTING not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-nez v0, :cond_5

    .line 206
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager: state is STATE_DRONE_CONNECTING but mCurrentDroneService == null while receiving EVENT_CONNECT_DEVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 208
    :cond_5
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 209
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 210
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 216
    :pswitch_5
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : did connect while connecting drone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 220
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 224
    :pswitch_6
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 227
    :pswitch_7
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : canceled while connecting drone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 230
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 231
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 236
    :pswitch_8
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : failed or stop while connecting drone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onUnwantedDisconnection()V

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v0, :cond_6

    .line 243
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 244
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doConnect()Z

    goto/16 :goto_0

    .line 246
    :cond_6
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : state is STATE_DRONE_CONNECTING but mCurrentDroneService == null while receiving EVENT_DRONE_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 251
    :pswitch_9
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : app exiting while state is STATE_DRONE_CONNECTING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iput-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 254
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 256
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 260
    :pswitch_a
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : failed while connecting drone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_FAILED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 264
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 265
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 274
    :pswitch_b
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    .line 319
    :pswitch_c
    const-string v0, "FFMini.Connect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 277
    :pswitch_d
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : service clicked while connected to drone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 280
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 281
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 286
    :pswitch_e
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : did stop while connected to drone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 290
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onUnwantedDisconnection()V

    .line 291
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 292
    iput-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 293
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 294
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 295
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 299
    :pswitch_f
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 302
    :pswitch_10
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : disconnection requested while connected to drone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 305
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 306
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 311
    :pswitch_11
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : app exiting while state is STATE_DRONE_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 314
    iput-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 315
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 316
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 325
    :pswitch_12
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4

    .line 361
    :pswitch_13
    const-string v0, "FFMini.Connect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 328
    :pswitch_14
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : device clicked while disconnecting drone"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 334
    :pswitch_15
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : did stop while disconnecting drone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 337
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 338
    iput-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 339
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v0, :cond_7

    .line 340
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 341
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doConnect()Z

    .line 345
    :goto_2
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 343
    :cond_7
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    goto :goto_2

    .line 348
    :pswitch_16
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 349
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 353
    :pswitch_17
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : app exiting while state is STATE_DRONE_DISCONNECTING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 356
    iput-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 357
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 358
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 367
    :pswitch_18
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5

    .line 434
    :pswitch_19
    const-string v0, "FFMini.Connect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 371
    :pswitch_1a
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 372
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 373
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 374
    :cond_8
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-nez v0, :cond_9

    .line 375
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager: request service auto selection while STATE_REMOTE_CTRL_CONNECTING not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 376
    :cond_9
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-nez v0, :cond_a

    .line 377
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager: state is STATE_REMOTE_CTRL_CONNECTING but mCurrentRemoteCtrlService == null while receiving EVENT_CONNECT_DEVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 379
    :cond_a
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 380
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 381
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 387
    :pswitch_1b
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : did connect while connecting remote controller"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 390
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 391
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->checkRemoteDroneConnection()V

    goto/16 :goto_0

    .line 395
    :pswitch_1c
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : cancelled while connecting remote controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 398
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 399
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 414
    :pswitch_1d
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : did stop or failed while connecting remote controller"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 417
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 418
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onUnwantedDisconnection()V

    .line 419
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 421
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_CONNECT_DEVICE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    goto/16 :goto_0

    .line 424
    :pswitch_1e
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 427
    :pswitch_1f
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : app exiting while state is STATE_REMOTE_CTRL_CONNECTING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 430
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 431
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 440
    :pswitch_20
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 480
    const-string v0, "FFMini.Connect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 444
    :sswitch_0
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : service clicked while connected to remote controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 447
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 448
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 453
    :sswitch_1
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : did stop while connected to remote controller"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 457
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 458
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 459
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 460
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 461
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onUnwantedDisconnection()V

    goto/16 :goto_0

    .line 464
    :sswitch_2
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : did connect while remote control already connected to remote drone"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 466
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 467
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doConnect()Z

    goto/16 :goto_0

    .line 470
    :sswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 473
    :sswitch_4
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : app exiting while state is STATE_REMOTE_CTRL_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 476
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 477
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 486
    :pswitch_21
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_1

    .line 506
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : Did stop while disconnecting remote Controller"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 510
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 511
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 512
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 513
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 514
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 515
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_CONNECT_DEVICE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    goto/16 :goto_0

    .line 490
    :sswitch_5
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : device clicked while disconnecting remote controller"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 495
    :sswitch_6
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 498
    :sswitch_7
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : app exiting while state is STATE_REMOTE_CTRL_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 501
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 502
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 516
    :cond_b
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-nez v0, :cond_0

    .line 517
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : state is STATE_REMOTE_CTRL_DISCONNECTING but mCurrentRemoteCtrlService == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 524
    :pswitch_22
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6

    :pswitch_23
    goto/16 :goto_0

    .line 554
    :pswitch_24
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 557
    :pswitch_25
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : app exiting while state is STATE_REMOTE_CTRL_RECONNECTING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 560
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 561
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 527
    :pswitch_26
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : Did stop while reconnecting remote Controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 531
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 532
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doConnect()Z

    goto/16 :goto_0

    .line 536
    :pswitch_27
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : Did connect while reconnecting remote Controller"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 539
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 540
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->checkRemoteDroneConnection()V

    goto/16 :goto_0

    .line 544
    :pswitch_28
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : Canceled while reconnecting remote Controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 547
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 548
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 549
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 551
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    goto/16 :goto_0

    .line 569
    :pswitch_29
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7

    .line 616
    :pswitch_2a
    const-string v0, "FFMini.Connect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 582
    :pswitch_2b
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 583
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 587
    :pswitch_2c
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : Disconnect requested while connecting remote drone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 590
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 591
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 592
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 597
    :pswitch_2d
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : Failed or Stop while connecting remote drone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 601
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doConnect()Z

    goto/16 :goto_0

    .line 604
    :pswitch_2e
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 607
    :pswitch_2f
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : app exiting while state is STATE_REMOTE_DRONE_CONNECTING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 610
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 611
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 612
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 613
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 622
    :pswitch_30
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_2

    .line 677
    const-string v0, "FFMini.Connect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 626
    :sswitch_8
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : service clicked while connected remote drone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 629
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 630
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 631
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 632
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 637
    :sswitch_9
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : Remote Controller did stop while connected to remote drone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 641
    iput-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 642
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 643
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 644
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 645
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 649
    :sswitch_a
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : Disconnection requested while connected to remote drone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 652
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 656
    :sswitch_b
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : Remote did disconnect while connected to remote drone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 659
    iput-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 660
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 661
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 662
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 665
    :sswitch_c
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 668
    :sswitch_d
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : app exiting while state is STATE_REMOTE_DRONE_CONNECTING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 671
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 672
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 673
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 674
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 683
    :pswitch_31
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_3

    .line 698
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : Did stop while disconnecting remote drone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 702
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 703
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 704
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 705
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 706
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 707
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_CONNECT_DEVICE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    goto/16 :goto_0

    .line 685
    :sswitch_e
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 688
    :sswitch_f
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : app exiting while state is STATE_REMOTE_DRONE_DISCONNECTING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 691
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 692
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 693
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 694
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 708
    :cond_c
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-nez v0, :cond_0

    .line 709
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : state is STATE_REMOTE_DRONE_DISCONNECTING but mCurrentRemoteCtrlService == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 716
    :pswitch_32
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_4

    goto/16 :goto_0

    .line 740
    :sswitch_10
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 743
    :sswitch_11
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : app exiting while state is STATE_REMOTE_DRONE_RECONNECTING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 746
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 747
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 748
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 749
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 718
    :sswitch_12
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 719
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 723
    :sswitch_13
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : did connect while remote control already connected to remote drone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 726
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 727
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doConnect()Z

    goto/16 :goto_0

    .line 731
    :sswitch_14
    const-string v0, "FFMini.Connect"

    const-string v1, "Connection Manager : Canceled while reconnecting remote drone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 734
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 735
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 737
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    goto/16 :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_b
        :pswitch_12
        :pswitch_18
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_29
        :pswitch_30
        :pswitch_31
        :pswitch_32
    .end packed-switch

    .line 166
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 194
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 274
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_c
        :pswitch_10
        :pswitch_e
        :pswitch_11
    .end packed-switch

    .line 325
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_14
        :pswitch_16
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_15
        :pswitch_17
    .end packed-switch

    .line 367
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1e
        :pswitch_1c
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1f
        :pswitch_19
        :pswitch_1b
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch

    .line 440
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x7 -> :sswitch_4
        0xb -> :sswitch_1
        0xd -> :sswitch_2
    .end sparse-switch

    .line 486
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_6
        0x7 -> :sswitch_7
    .end sparse-switch

    .line 524
    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_24
        :pswitch_28
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_25
        :pswitch_23
        :pswitch_27
        :pswitch_23
        :pswitch_26
    .end packed-switch

    .line 569
    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_2e
        :pswitch_2a
        :pswitch_2a
        :pswitch_2c
        :pswitch_2d
        :pswitch_2f
        :pswitch_2d
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2b
    .end packed-switch

    .line 622
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_c
        0x5 -> :sswitch_a
        0x7 -> :sswitch_d
        0xb -> :sswitch_9
        0xf -> :sswitch_b
    .end sparse-switch

    .line 683
    :sswitch_data_3
    .sparse-switch
        0x2 -> :sswitch_e
        0x7 -> :sswitch_f
    .end sparse-switch

    .line 716
    :sswitch_data_4
    .sparse-switch
        0x2 -> :sswitch_10
        0x3 -> :sswitch_14
        0x7 -> :sswitch_11
        0xd -> :sswitch_13
        0xe -> :sswitch_12
    .end sparse-switch
.end method


# virtual methods
.method public connectDrone(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 1
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 152
    iput-object p1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 153
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_CONNECT_DEVICE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 154
    return-void
.end method

.method public disconnectDrone()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 158
    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 159
    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 160
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_DISCONNECT_DEVICE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 161
    return-void
.end method

.method public registerListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 143
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v4, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iget-object v5, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;->onStateChange(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 144
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 120
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 121
    .local v0, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnDeviceControllerStarted:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "DeviceControllerDidStartNotification"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 122
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnDeviceControllerStopped:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "DeviceControllerDidStopNotification"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 123
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnDeviceControllerFailed:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "DeviceControllerDidFailNotification"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 124
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceControllerNetworkEventDisconnection:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "DeviceControllerNetworkEventDisconnectionNotification"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 125
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnSkyControllerConnectionStateChanged:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "SkyControllerDeviceControllerDeviceStateConnexionChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 126
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 130
    .local v0, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnSkyControllerConnectionStateChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceControllerNetworkEventDisconnection:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnDeviceControllerFailed:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnDeviceControllerStopped:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnDeviceControllerStarted:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    iput-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 136
    iput-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 137
    iput-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 138
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_APP_EXIT:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 139
    return-void
.end method

.method public unregisterListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method
