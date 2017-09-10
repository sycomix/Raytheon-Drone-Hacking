.class public Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
.super Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceControllerAndLibARCommands;
.source "ARDrone3DeviceController.java"

# interfaces
.implements Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;,
        Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;,
        Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;,
        Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;
    }
.end annotation


# static fields
.field private static ARDRONE3_DEVICE_CONTROLLER_NB_CAMERA_CMD_TO_SEND:I

.field public static ARDrone3DeviceControllerEmergencyState:Ljava/lang/String;

.field public static ARDrone3DeviceControllerEmergencyStateChangedNotification:Ljava/lang/String;

.field public static ARDrone3DeviceControllerFlyingState:Ljava/lang/String;

.field public static ARDrone3DeviceControllerFlyingStateChangedNotification:Ljava/lang/String;

.field private static LOOP_INTERVAL:D

.field private static TAG:Ljava/lang/String;


# instance fields
.field private cameraCommandCounter:I

.field private droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

.field private final droneStateLock:Ljava/util/concurrent/locks/Lock;

.field private intentCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private pcmdCommandCounter:I

.field private pcmdCommandSeqNum:I

.field private photoRecordController:Lcom/parrot/controller/recordcontrollers/ARDrone3PhotoRecordController;

.field private videoRecordController:Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "ARDrone3DeviceControllerFlyingStateChangedNotification"

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerFlyingStateChangedNotification:Ljava/lang/String;

    .line 48
    const-string v0, "ARDrone3DeviceControllerFlyingState"

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerFlyingState:Ljava/lang/String;

    .line 49
    const-string v0, "ARDrone3DeviceControllerEmergencyStateChangedNotification"

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerEmergencyStateChangedNotification:Ljava/lang/String;

    .line 50
    const-string v0, "ARDrone3DeviceControllerEmergencyState"

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerEmergencyState:Ljava/lang/String;

    .line 52
    const-class v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->TAG:Ljava/lang/String;

    .line 53
    const-wide v0, 0x3f9999999999999aL    # 0.025

    sput-wide v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->LOOP_INTERVAL:D

    .line 54
    const/16 v0, 0x64

    sput v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDRONE3_DEVICE_CONTROLLER_NB_CAMERA_CMD_TO_SEND:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceControllerAndLibARCommands;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "discoveryDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 68
    new-instance v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-direct {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;-><init>()V

    .line 69
    .local v0, "deviceController":Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notAService:Z

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->mApplicationContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->onCreate()V

    .line 72
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.parrot.freeflight3.DeviceController.extra.deviceservice"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    invoke-virtual {v0, v1, v3, v3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->onStartCommand(Landroid/content/Intent;II)I

    .line 75
    return-object v0
.end method

.method public static createBridged(Landroid/content/Context;Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "bridgeController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "discoveryDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 80
    new-instance v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-direct {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;-><init>()V

    .line 81
    .local v0, "deviceController":Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notAService:Z

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->mApplicationContext:Landroid/content/Context;

    .line 83
    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->onCreate()V

    .line 84
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.parrot.freeflight3.DeviceController.extra.deviceservice"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    const-string v2, "com.parrot.freeflight3.DeviceController.extra.deviceController.bridge"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iput-object p1, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 88
    invoke-virtual {v0, v1, v4, v4}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->onStartCommand(Landroid/content/Intent;II)I

    .line 89
    return-object v0
.end method

.method public static hasProFeature(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;J)Z
    .locals 7
    .param p0, "feature"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;
    .param p1, "featuresSet"    # J

    .prologue
    const/4 v0, 0x0

    .line 1134
    if-nez p0, :cond_1

    .line 1136
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;->getMask()J

    move-result-wide v2

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initARDrone3DeviceControllerIntents()V
    .locals 4

    .prologue
    .line 170
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->intentCache:Ljava/util/HashMap;

    .line 171
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->intentCache:Ljava/util/HashMap;

    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerFlyingStateChangedNotification:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerFlyingStateChangedNotification:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->intentCache:Ljava/util/HashMap;

    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerEmergencyStateChangedNotification:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerEmergencyStateChangedNotification:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-void
.end method

.method private postEmergencyStateNotification()V
    .locals 3

    .prologue
    .line 866
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 868
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerEmergencyStateChangedNotification:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getARDrone3DeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 869
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 871
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerEmergencyState:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 872
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 879
    :goto_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 880
    return-void

    .line 876
    :cond_0
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->TAG:Ljava/lang/String;

    const-string v2, "failed during getIntent"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private postFlyingStateNotification()V
    .locals 3

    .prologue
    .line 884
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 886
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerFlyingStateChangedNotification:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getARDrone3DeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 887
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 889
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerFlyingState:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 890
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 897
    :goto_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 898
    return-void

    .line 894
    :cond_0
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->TAG:Ljava/lang/String;

    const-string v2, "failed during getIntent"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public batteryLevel()I
    .locals 2

    .prologue
    .line 358
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 359
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1100(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)I

    move-result v0

    .line 360
    .local v0, "retval":I
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 361
    return v0
.end method

.method public changeElectricFrequency(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_ELECTRICFREQUENCY_FREQUENCY_ENUM;)V
    .locals 3
    .param p1, "electricFrequency"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_ELECTRICFREQUENCY_FREQUENCY_ENUM;

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendAntiflickeringElectricFrequency(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_ELECTRICFREQUENCY_FREQUENCY_ENUM;)Z

    .line 643
    return-void
.end method

.method public cleanNetworkStateWifiAuthChannelListChangedNotificationDictionary()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v1, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->remove(Ljava/lang/String;)V

    .line 783
    :cond_0
    return-void
.end method

.method public cleanNetworkStateWifiScanListChangedNotificationDictionary()V
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v1, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->remove(Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method public controllerLoop()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x0

    const/high16 v8, 0x42c80000    # 100.0f

    .line 188
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 189
    iget-object v10, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    .line 190
    .local v10, "currentState":Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 192
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$1;->$SwitchMap$com$parrot$controller$devicecontrollers$DEVICE_CONTROLER_STATE_ENUM:[I

    invoke-virtual {v10}, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 197
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 198
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    .line 199
    .local v12, "localState":Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;
    iget v11, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->cameraCommandCounter:I

    .line 200
    .local v11, "localCameraCommandCounter":I
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->cameraCommandCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->cameraCommandCounter:I

    .line 201
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 203
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dNackId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    invoke-static {v12}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$100(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    int-to-byte v4, v0

    invoke-static {v12}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$200(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;)F

    move-result v0

    mul-float/2addr v0, v8

    float-to-int v0, v0

    int-to-byte v5, v0

    invoke-static {v12}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$300(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;)F

    move-result v0

    mul-float/2addr v0, v8

    float-to-int v0, v0

    int-to-byte v6, v0

    invoke-static {v12}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$400(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;)F

    move-result v0

    mul-float/2addr v0, v8

    float-to-int v0, v0

    int-to-byte v7, v0

    invoke-static {v12}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$500(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;)F

    move-result v0

    mul-float/2addr v0, v8

    float-to-int v0, v0

    int-to-byte v8, v0

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getTimestampAndSeqNum()I

    move-result v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingPCMD(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BBBBBI)Z

    .line 205
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandCounter:I

    .line 206
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandCounter:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 208
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->TAG:Ljava/lang/String;

    const-string v1, "Did send 100 pcmd commands"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iput v13, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandCounter:I

    .line 211
    :cond_1
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandSeqNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandSeqNum:I

    .line 212
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandSeqNum:I

    const/16 v1, 0x100

    if-lt v0, v1, :cond_2

    .line 214
    iput v13, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandSeqNum:I

    .line 217
    :cond_2
    if-lez v11, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dNackId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    invoke-static {v12}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$600(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;->access$700(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;)F

    move-result v0

    float-to-int v0, v0

    int-to-byte v4, v0

    invoke-static {v12}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$600(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;->access$800(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;)F

    move-result v0

    float-to-int v0, v0

    int-to-byte v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendCameraOrientation(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BB)Z

    goto/16 :goto_0

    :cond_3
    move v0, v13

    .line 203
    goto :goto_1

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected doStart()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    .locals 3

    .prologue
    .line 293
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceControllerAndLibARCommands;->doStart()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    move-result-object v0

    .line 295
    .local v0, "error":Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v0, v1, :cond_0

    .line 297
    new-instance v1, Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController;

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->videoRecordController:Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController;

    .line 298
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->videoRecordController:Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController;

    invoke-virtual {v1, p0}, Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController;->setDeviceController(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V

    .line 299
    new-instance v1, Lcom/parrot/controller/recordcontrollers/ARDrone3PhotoRecordController;

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/parrot/controller/recordcontrollers/ARDrone3PhotoRecordController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/ARDrone3PhotoRecordController;

    .line 300
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/ARDrone3PhotoRecordController;

    invoke-virtual {v1, p0}, Lcom/parrot/controller/recordcontrollers/ARDrone3PhotoRecordController;->setDeviceController(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V

    .line 303
    :cond_0
    return-object v0
.end method

.method protected doStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->videoRecordController:Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->videoRecordController:Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController;

    invoke-virtual {v0}, Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController;->clearDelegates()V

    .line 312
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->videoRecordController:Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController;->setDeviceController(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V

    .line 313
    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->videoRecordController:Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/ARDrone3PhotoRecordController;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/ARDrone3PhotoRecordController;

    invoke-virtual {v0}, Lcom/parrot/controller/recordcontrollers/ARDrone3PhotoRecordController;->clearDelegates()V

    .line 318
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/ARDrone3PhotoRecordController;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/recordcontrollers/ARDrone3PhotoRecordController;->setDeviceController(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V

    .line 319
    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/ARDrone3PhotoRecordController;

    .line 321
    :cond_1
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceControllerAndLibARCommands;->doStop()V

    .line 322
    return-void
.end method

.method public emergencyState()Z
    .locals 2

    .prologue
    .line 349
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 350
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Z

    move-result v0

    .line 351
    .local v0, "retval":Z
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 352
    return v0
.end method

.method public enableVideoStreaming(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1060
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARDrone3DeviceController.enableVideoStreaming "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendMediaStreamingVideoEnable(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 1062
    return-void

    .line 1061
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flyingState()Z
    .locals 2

    .prologue
    .line 340
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 341
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Z

    move-result v0

    .line 342
    .local v0, "retval":Z
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 343
    return v0
.end method

.method protected getARDrone3DeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->intentCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getPhotoRecordController()Lcom/parrot/controller/recordcontrollers/ARDrone3PhotoRecordController;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/ARDrone3PhotoRecordController;

    return-object v0
.end method

.method public getProFeaturesSet()J
    .locals 6

    .prologue
    .line 1114
    const-wide/16 v2, 0x0

    .line 1115
    .local v2, "features":J
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v4, "ARDrone3DeviceControllerPROStateFeaturesNotification"

    invoke-virtual {v1, v4}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1117
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v4, "ARDrone3DeviceControllerPROStateFeaturesNotification"

    invoke-virtual {v1, v4}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1118
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "ARDrone3DeviceControllerPROStateFeaturesNotificationFeaturesKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1120
    const-string v1, "ARDrone3DeviceControllerPROStateFeaturesNotificationFeaturesKey"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1123
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    return-wide v2
.end method

.method getTimestampAndSeqNum()I
    .locals 8

    .prologue
    .line 907
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 908
    .local v0, "current":J
    const-wide/32 v6, 0x1000000

    rem-long v2, v0, v6

    .line 909
    .local v2, "iCurrent":J
    iget v5, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandSeqNum:I

    shl-int/lit8 v5, v5, 0x18

    long-to-int v6, v2

    add-int v4, v5, v6

    .line 910
    .local v4, "timestampAndSeqNum":I
    return v4
.end method

.method public getVideoRecordController()Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->videoRecordController:Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController;

    return-object v0
.end method

.method public gpsSettingsSendControllerGPS(DDDDD)V
    .locals 15
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D
    .param p7, "horizontalAccuracy"    # D
    .param p9, "verticalAccuracy"    # D

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-virtual/range {v0 .. v13}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendGPSSettingsSendControllerGPS(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;DDDDD)Z

    .line 1072
    return-void
.end method

.method public gpsSettingsSendHomeType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;)V
    .locals 3
    .param p1, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;

    .prologue
    .line 1076
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendGPSSettingsHomeType(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;)Z

    .line 1077
    return-void
.end method

.method public gpsSettingsSendReturnHomeDelay(S)V
    .locals 3
    .param p1, "delay"    # S

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendGPSSettingsReturnHomeDelay(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;S)Z

    .line 1082
    return-void
.end method

.method public gpsSettingsSetHome(DDD)V
    .locals 11
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D

    .prologue
    .line 1066
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v0 .. v9}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendGPSSettingsSetHome(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;DDD)Z

    .line 1067
    return-void
.end method

.method public hasProFeature(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;)Z
    .locals 3
    .param p1, "feature"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;

    .prologue
    .line 1104
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 1108
    :goto_0
    return v2

    .line 1106
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getProFeaturesSet()J

    move-result-wide v0

    .line 1108
    .local v0, "features":J
    invoke-static {p1, v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->hasProFeature(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;J)Z

    move-result v2

    goto :goto_0
.end method

.method initDeviceState()V
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 916
    new-instance v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;-><init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    .line 917
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 918
    return-void
.end method

.method public initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->cameraCommandCounter:I

    .line 153
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandCounter:I

    .line 154
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandSeqNum:I

    .line 155
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->initARDrone3DeviceControllerIntents()V

    .line 156
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceControllerAndLibARCommands;->initialize()V

    .line 158
    :cond_0
    return-void
.end method

.method public isVideoStreamingEnabled()Z
    .locals 3

    .prologue
    .line 1047
    const/4 v1, 0x1

    .line 1048
    .local v1, "retval":Z
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v0

    .line 1049
    .local v0, "dict":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v2, "ARDrone3DeviceControllerMediaStreamingStateVideoEnableChangedNotificationEnabledKey"

    invoke-virtual {v0, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1051
    const-string v2, "ARDrone3DeviceControllerMediaStreamingStateVideoEnableChangedNotificationEnabledKey"

    invoke-virtual {v0, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1054
    :cond_0
    return v1
.end method

.method public networkDidCancelFrame(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 283
    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p1}, Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;->notificationRun()V

    .line 288
    :cond_0
    return-void
.end method

.method public networkDidReceiveAck(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p1}, Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;->notificationRun()V

    .line 272
    :cond_0
    return-void
.end method

.method public networkDidSendFrame(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 263
    return-void
.end method

.method public networkTimeoutOccurred(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 278
    return-void
.end method

.method public declared-synchronized onARDrone3MediaStreamingStateVideoEnableChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;)V
    .locals 3
    .param p1, "enabled"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;

    .prologue
    .line 848
    monitor-enter p0

    :try_start_0
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARDrone3DeviceController.onARDrone3MediaStreamingStateVideoEnableChangedUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceControllerAndLibARCommands;->onARDrone3MediaStreamingStateVideoEnableChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;)V

    .line 850
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;->ARCOMMANDS_ARDRONE3_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENABLED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;

    if-ne p1, v0, :cond_0

    .line 852
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->startVideoStreaming()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    :goto_0
    monitor-exit p0

    return-void

    .line 856
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->stopVideoStreaming()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 848
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onARDrone3NetworkStateWifiAuthChannelListChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;BB)V
    .locals 9
    .param p1, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    .param p2, "channel"    # B
    .param p3, "in_or_out"    # B

    .prologue
    .line 742
    monitor-enter p0

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 743
    .local v4, "updateDictionary":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 744
    .local v3, "notificationBundle":Landroid/os/Bundle;
    const-string v6, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotificationBandKey"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->getValue()I

    move-result v5

    :goto_0
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 745
    if-nez p1, :cond_0

    .line 747
    sget-object v5, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->TAG:Ljava/lang/String;

    const-string v6, "Bad value for argument `band` in WifiAuthChannelListChanged command from the device."

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_0
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotificationChannelKey"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 750
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotificationInOrOutKey"

    invoke-virtual {v3, v5, p3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 752
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 753
    .local v2, "listDictionary":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 755
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 757
    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_1
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 758
    move-object v3, v2

    .line 760
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 763
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v5, v6, v3}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 766
    new-instance v1, Landroid/content/Intent;

    const-string v5, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 767
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 768
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 772
    new-instance v0, Landroid/content/Intent;

    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 773
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 774
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    monitor-exit p0

    return-void

    .line 744
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_2
    :try_start_1
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    goto :goto_0

    .line 742
    .end local v3    # "notificationBundle":Landroid/os/Bundle;
    .end local v4    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized onARDrone3NetworkStateWifiScanListChangedUpdate(Ljava/lang/String;SLcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;B)V
    .locals 9
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "rssi"    # S
    .param p3, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;
    .param p4, "channel"    # B

    .prologue
    .line 796
    monitor-enter p0

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 797
    .local v4, "updateDictionary":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 798
    .local v3, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationSsidKey"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationRssiKey"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 800
    const-string v6, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationBandKey"

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;->getValue()I

    move-result v5

    :goto_0
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 801
    if-nez p3, :cond_0

    .line 803
    sget-object v5, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->TAG:Ljava/lang/String;

    const-string v6, "Bad value for argument `band` in WifiScanListChanged command from the device."

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_0
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationChannelKey"

    invoke-virtual {v3, v5, p4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 807
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 808
    .local v2, "listDictionary":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 810
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 812
    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_1
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 814
    :try_start_1
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 815
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 816
    move-object v3, v2

    .line 818
    :try_start_2
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 821
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v5, v6, v3}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 824
    new-instance v1, Landroid/content/Intent;

    const-string v5, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 825
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 826
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 830
    new-instance v0, Landroid/content/Intent;

    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 831
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 832
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 833
    monitor-exit p0

    return-void

    .line 800
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_2
    :try_start_3
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;

    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;->getValue()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    goto :goto_0

    .line 815
    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 796
    .end local v2    # "listDictionary":Landroid/os/Bundle;
    .end local v3    # "notificationBundle":Landroid/os/Bundle;
    .end local v4    # "updateDictionary":Landroid/os/Bundle;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 97
    sget-object v5, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->TAG:Ljava/lang/String;

    const-string v6, "recreated by the system, don\'t need! stop it"

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->stopSelf()V

    .line 145
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceControllerAndLibARCommands;->onStartCommand(Landroid/content/Intent;II)I

    move-result v5

    return v5

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->initialize()V

    .line 107
    :cond_1
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 109
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    sget-object v6, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    if-ne v5, v6, :cond_3

    .line 112
    const-string v5, "com.parrot.freeflight3.DeviceController.extra.deviceservice"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 113
    .local v3, "extraService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    const-string v5, "com.parrot.freeflight3.DeviceController.extra.fastreconnection"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 114
    .local v4, "fastReconnection":Z
    const-string v5, "com.parrot.freeflight3.DeviceController.extra.deviceController.bridge"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "deviceControllerBridgeClassName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 116
    .local v1, "deviceControllerBridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parrot/controller/devicecontrollers/DeviceController;>;"
    if-eqz v2, :cond_2

    .line 120
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 122
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    move-object v1, v0

    .line 133
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    invoke-virtual {p0, v3, v4, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->setConfigurations(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;ZLjava/lang/Class;)V

    .line 135
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->start()V

    .line 141
    .end local v1    # "deviceControllerBridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parrot/controller/devicecontrollers/DeviceController;>;"
    .end local v2    # "deviceControllerBridgeClassName":Ljava/lang/String;
    .end local v3    # "extraService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .end local v4    # "fastReconnection":Z
    :goto_2
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 139
    :cond_3
    sget-object v5, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->TAG:Ljava/lang/String;

    const-string v6, "onStartCommand not effective because device controller is not stopped"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 127
    .restart local v1    # "deviceControllerBridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parrot/controller/devicecontrollers/DeviceController;>;"
    .restart local v2    # "deviceControllerBridgeClassName":Ljava/lang/String;
    .restart local v3    # "extraService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .restart local v4    # "fastReconnection":Z
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public pause(Z)V
    .locals 0
    .param p1, "pause"    # Z

    .prologue
    .line 257
    return-void
.end method

.method public sendBarometer(F)V
    .locals 8
    .param p1, "pressure"    # F

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v2

    sget-object v3, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v4, 0x0

    .line 725
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-double v6, v0

    move-object v1, p0

    move v5, p1

    .line 724
    invoke-virtual/range {v1 .. v7}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ControllerInfoDeviceController_SendBarometer(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;FD)Z

    .line 726
    return-void
.end method

.method public sendGps(DDFFFFFF)V
    .locals 17
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # F
    .param p6, "horizontalAccuracy"    # F
    .param p7, "verticalAccuracy"    # F
    .param p8, "northSpeed"    # F
    .param p9, "eastSpeed"    # F
    .param p10, "downSpeed"    # F

    .prologue
    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    .line 719
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    long-to-double v14, v4

    move-object/from16 v0, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    .line 718
    invoke-virtual/range {v0 .. v15}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ControllerInfoDeviceController_SendGps(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;DDFFFFFFD)Z

    .line 720
    return-void
.end method

.method public setConfigurations(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;ZLjava/lang/Class;)V
    .locals 7
    .param p1, "service"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .param p2, "fastReconnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            "Z",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parrot/controller/devicecontrollers/DeviceController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p3, "dcBridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parrot/controller/devicecontrollers/DeviceController;>;"
    new-instance v2, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;

    invoke-direct {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;-><init>()V

    .line 164
    .local v2, "netConfig":Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;
    iput-boolean p2, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->fastReconnection:Z

    .line 165
    sget-wide v4, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->LOOP_INTERVAL:D

    move-object v1, p0

    move-object v3, p1

    move-object v6, p3

    invoke-super/range {v1 .. v6}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceControllerAndLibARCommands;->setConfigurations(Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;DLjava/lang/Class;)V

    .line 166
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->startThread()V

    .line 240
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->stopThread()V

    .line 249
    return-void
.end method

.method public supportsVideoStreamingControl()Z
    .locals 3

    .prologue
    .line 1034
    const/4 v1, 0x0

    .line 1035
    .local v1, "retval":Z
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v0

    .line 1036
    .local v0, "dict":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v2, "ARDrone3DeviceControllerMediaStreamingStateVideoEnableChangedNotificationEnabledKey"

    invoke-virtual {v0, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1038
    const/4 v1, 0x1

    .line 1041
    :cond_0
    return v1
.end method

.method public userChangedCameraPan(F)V
    .locals 1
    .param p1, "pan"    # F

    .prologue
    .line 409
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 410
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$600(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;->access$802(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;F)F

    .line 411
    sget v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDRONE3_DEVICE_CONTROLLER_NB_CAMERA_CMD_TO_SEND:I

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->cameraCommandCounter:I

    .line 412
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 413
    return-void
.end method

.method public userChangedCameraTilt(F)V
    .locals 1
    .param p1, "tilt"    # F

    .prologue
    .line 401
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 402
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$600(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;->access$702(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;F)F

    .line 403
    sget v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDRONE3_DEVICE_CONTROLLER_NB_CAMERA_CMD_TO_SEND:I

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->cameraCommandCounter:I

    .line 404
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 405
    return-void
.end method

.method public userCommandsActivationChanged(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 366
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 367
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$102(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;Z)Z

    .line 368
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 369
    return-void
.end method

.method public userEnteredPilotingHud(Z)V
    .locals 4
    .param p1, "inHud"    # Z

    .prologue
    .line 616
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v0, v1

    .line 617
    .local v0, "inHudByte":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->DeviceController_SendControllerIsPiloting(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 618
    return-void

    .line 616
    .end local v0    # "inHudByte":B
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userGazChanged(F)V
    .locals 1
    .param p1, "gaz"    # F

    .prologue
    .line 373
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 374
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$502(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;F)F

    .line 375
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 376
    return-void
.end method

.method public userPitchChanged(F)V
    .locals 1
    .param p1, "pitch"    # F

    .prologue
    .line 380
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 381
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$302(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;F)F

    .line 382
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 383
    return-void
.end method

.method public userRequestFlip(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;)V
    .locals 3
    .param p1, "flipDirection"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendAnimationsFlip(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;)Z

    .line 501
    return-void
.end method

.method public userRequestRecordPicture(B)V
    .locals 3
    .param p1, "massStorageId"    # B

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendMediaRecordPicture(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 506
    return-void
.end method

.method public userRequestRecordPictureV2()V
    .locals 3

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendMediaRecordPictureV2(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 521
    return-void
.end method

.method public userRequestRecordVideoStart(B)V
    .locals 6
    .param p1, "massStorageId"    # B

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_START:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_ENUM;

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendMediaRecordVideo(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_ENUM;B)Z

    .line 511
    return-void
.end method

.method public userRequestRecordVideoStop(B)V
    .locals 6
    .param p1, "massStorageId"    # B

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_STOP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_ENUM;

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendMediaRecordVideo(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_ENUM;B)Z

    .line 516
    return-void
.end method

.method public userRequestRecordVideoV2Start()V
    .locals 4

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_START:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_ENUM;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendMediaRecordVideoV2(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_ENUM;)Z

    .line 526
    return-void
.end method

.method public userRequestRecordVideoV2Stop()V
    .locals 4

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_STOP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_ENUM;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendMediaRecordVideoV2(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_ENUM;)Z

    .line 531
    return-void
.end method

.method public userRequestedAntiflickeringMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;)V
    .locals 3
    .param p1, "antiflickeringMode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendAntiflickeringSetMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;)Z

    .line 638
    return-void
.end method

.method public userRequestedEmergency()V
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 448
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1002(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;Z)Z

    .line 449
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$902(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;Z)Z

    .line 452
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dEmergencyId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingEmergency(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 455
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->postEmergencyStateNotification()V

    .line 456
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->postFlyingStateNotification()V

    .line 458
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 459
    return-void
.end method

.method public userRequestedFlatTrim()V
    .locals 3

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingFlatTrim(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 496
    return-void
.end method

.method public userRequestedLanding()V
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 480
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$902(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;Z)Z

    .line 485
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingLanding(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 488
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->postFlyingStateNotification()V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 491
    return-void
.end method

.method public userRequestedPictureSettingsExposition(F)V
    .locals 3
    .param p1, "expositionValue"    # F

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsExpositionSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 561
    return-void
.end method

.method public userRequestedPictureSettingsPictureFormat(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;)V
    .locals 3
    .param p1, "format"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsPictureFormatSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;)Z

    .line 571
    return-void
.end method

.method public userRequestedPictureSettingsSaturation(F)V
    .locals 3
    .param p1, "saturationValue"    # F

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsSaturationSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 556
    return-void
.end method

.method public userRequestedPictureSettingsTimelapsePictureFormat(ZF)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "interval"    # F

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v4, v0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsTimelapseSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BF)Z

    .line 581
    return-void

    .line 580
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedPictureSettingsVideoAutorecordSelection(ZB)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "massStorageId"    # B

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v4, v0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsVideoAutorecordSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BB)Z

    .line 576
    return-void

    .line 575
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedPictureSettingsVideoFramerate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;)V
    .locals 3
    .param p1, "framerate"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsVideoFramerate(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;)Z

    .line 658
    return-void
.end method

.method public userRequestedPictureSettingsVideoRecordingMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;)V
    .locals 3
    .param p1, "recordingMode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsVideoRecordingMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;)Z

    .line 653
    return-void
.end method

.method public userRequestedPictureSettingsVideoResolutions(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;)V
    .locals 3
    .param p1, "videoResolutions"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;

    .prologue
    .line 667
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userRequestedPictureSettingsVideoResolutions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsVideoResolutions(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;)Z

    .line 669
    return-void
.end method

.method public userRequestedPictureSettingsVideoStabilizationMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;)V
    .locals 3
    .param p1, "mode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsVideoStabilizationMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;)Z

    .line 648
    return-void
.end method

.method public userRequestedPictureSettingsWhiteBalance(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;)V
    .locals 3
    .param p1, "wb"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsAutoWhiteBalanceSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;)Z

    .line 566
    return-void
.end method

.method public userRequestedPilotingSettingsAbsoluteControl(Z)V
    .locals 4
    .param p1, "absoluteControl"    # Z

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingSettingsAbsolutControl(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 443
    return-void

    .line 442
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedPilotingSettingsBankedTurn(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingSettingsBankedTurn(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 663
    return-void

    .line 662
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedPilotingSettingsMaxAltitude(F)V
    .locals 3
    .param p1, "maxAltitude"    # F

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingSettingsMaxAltitude(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 418
    return-void
.end method

.method public userRequestedPilotingSettingsMaxDistance(F)V
    .locals 3
    .param p1, "maxDistance"    # F

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingSettingsMaxDistance(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 423
    return-void
.end method

.method public userRequestedPilotingSettingsMaxTilt(F)V
    .locals 3
    .param p1, "maxTilt"    # F

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingSettingsMaxTilt(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 433
    return-void
.end method

.method public userRequestedPilotingSettingsNoFlyOverMaxDistance(Z)V
    .locals 4
    .param p1, "noFlyOverMaxDistance"    # Z

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingSettingsNoFlyOverMaxDistance(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 428
    return-void

    .line 427
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedPilotingSettingsPitchSpeed(F)V
    .locals 3
    .param p1, "pitchSpeed"    # F

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendSpeedSettingsMaxPitchRollRotationSpeed(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 438
    return-void
.end method

.method public userRequestedReturnHome(Z)V
    .locals 4
    .param p1, "start"    # Z

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingNavigateHome(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 586
    return-void

    .line 585
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedSettingsNetworkWifiScan(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORK_WIFISCAN_BAND_ENUM;)V
    .locals 3
    .param p1, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORK_WIFISCAN_BAND_ENUM;

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendNetworkWifiScan(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORK_WIFISCAN_BAND_ENUM;)Z

    .line 633
    return-void
.end method

.method public userRequestedSettingsNetworkWifiType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)V
    .locals 7
    .param p1, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;
    .param p2, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;
    .param p3, "channel"    # B

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendNetworkSettingsWifiSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)Z

    .line 623
    return-void
.end method

.method public userRequestedSettingsWifiAuthChannel()V
    .locals 3

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendNetworkWifiAuthChannel(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 628
    return-void
.end method

.method public userRequestedSettingsWifiAutoCountry(Z)V
    .locals 4
    .param p1, "isAutomatic"    # Z

    .prologue
    .line 590
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v0, v1

    .line 591
    .local v0, "automatic":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->DeviceController_SendSettingsAutoCountry(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 592
    return-void

    .line 590
    .end local v0    # "automatic":B
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userRequestedSettingsWifiCountry(Ljava/lang/String;)V
    .locals 3
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 596
    invoke-static {}, Lcom/parrot/controller/utils/Device;->isSkycontroller()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->DELAYED:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    invoke-static {p1, v0}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setWifiCountry(Ljava/lang/String;Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;)Z

    .line 600
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->DeviceController_SendSettingsCountry(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z

    .line 601
    return-void
.end method

.method public userRequestedSettingsWifiOutdoor(Z)V
    .locals 4
    .param p1, "isOutdoor"    # Z

    .prologue
    .line 605
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v0, v1

    .line 606
    .local v0, "outdoor":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->DeviceController_SendWifiSettingsOutdoorSetting(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 607
    return-void

    .line 605
    .end local v0    # "outdoor":B
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userRequestedSettingsWifiSecurity(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_KEYTYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_KEYTYPE_PLAIN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_KEYTYPE_ENUM;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendNetworkSettingsWifiSecurity(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;Ljava/lang/String;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_KEYTYPE_ENUM;)Z

    .line 612
    return-void
.end method

.method public userRequestedSpeedSettingsHullProtection(Z)V
    .locals 4
    .param p1, "hullProtection"    # Z

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendSpeedSettingsHullProtection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 546
    return-void

    .line 545
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedSpeedSettingsMaxRotationSpeed(F)V
    .locals 3
    .param p1, "maxSpeed"    # F

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendSpeedSettingsMaxRotationSpeed(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 541
    return-void
.end method

.method public userRequestedSpeedSettingsMaxVerticalSpeed(F)V
    .locals 3
    .param p1, "maxSpeed"    # F

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendSpeedSettingsMaxVerticalSpeed(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 536
    return-void
.end method

.method public userRequestedSpeedSettingsOutdoor(Z)V
    .locals 4
    .param p1, "outdoor"    # Z

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendSpeedSettingsOutdoor(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 551
    return-void

    .line 550
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedStartBoomerangAnimation()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 702
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FollowMeDeviceController_SendStartBoomerangAnim(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BFF)Z

    .line 703
    return-void
.end method

.method public userRequestedStartCandleAnimation()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 707
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FollowMeDeviceController_SendStartCandleAnim(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BFF)Z

    .line 708
    return-void
.end method

.method public userRequestedStartDollyAnimation()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 712
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FollowMeDeviceController_SendStartHelicoidAnim(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BFFF)Z

    .line 713
    return-void
.end method

.method public userRequestedStartFollowMeMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;)V
    .locals 3
    .param p1, "mode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FollowMeDeviceController_SendStart(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;)Z

    .line 678
    return-void
.end method

.method public userRequestedStartHelicoidAnimation()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 692
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FollowMeDeviceController_SendStartHelicoidAnim(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BFFF)Z

    .line 693
    return-void
.end method

.method public userRequestedStartSwingAnimation()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 697
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FollowMeDeviceController_SendStartSwingAnim(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BFF)Z

    .line 698
    return-void
.end method

.method public userRequestedStopAnimation()V
    .locals 3

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FollowMeDeviceController_SendStopAnimation(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 688
    return-void
.end method

.method public userRequestedStopFollowMe()V
    .locals 3

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FollowMeDeviceController_SendStop(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 683
    return-void
.end method

.method public userRequestedTakeOff()V
    .locals 3

    .prologue
    .line 463
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 464
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1002(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;Z)Z

    .line 465
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$902(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;Z)Z

    .line 468
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingTakeOff(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 471
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->postEmergencyStateNotification()V

    .line 472
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->postFlyingStateNotification()V

    .line 474
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 475
    return-void
.end method

.method public userRollChanged(F)V
    .locals 1
    .param p1, "roll"    # F

    .prologue
    .line 387
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 388
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$202(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;F)F

    .line 389
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 390
    return-void
.end method

.method public userYawChanged(F)V
    .locals 1
    .param p1, "yaw"    # F

    .prologue
    .line 394
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 395
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$402(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;F)F

    .line 396
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 397
    return-void
.end method
