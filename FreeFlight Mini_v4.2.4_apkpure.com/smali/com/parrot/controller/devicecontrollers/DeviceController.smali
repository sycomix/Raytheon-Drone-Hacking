.class public abstract Lcom/parrot/controller/devicecontrollers/DeviceController;
.super Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;
.source "DeviceController.java"

# interfaces
.implements Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;,
        Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;,
        Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;,
        Lcom/parrot/controller/devicecontrollers/DeviceController$ControllerLooperThread;,
        Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;,
        Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;,
        Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;,
        Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkManagerExtend;,
        Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;,
        Lcom/parrot/controller/devicecontrollers/DeviceController$LocalBinder;
    }
.end annotation


# static fields
.field public static final ARSTREAM2_CLIENT_CONTROL_PORT:I = 0xd6dd

.field public static final ARSTREAM2_CLIENT_STREAM_PORT:I = 0xd6dc

.field public static final DEVICECONTROLLER_EXTRA_DEVICECONTROLER_BRIDGE:Ljava/lang/String; = "com.parrot.freeflight3.DeviceController.extra.deviceController.bridge"

.field public static final DEVICECONTROLLER_EXTRA_DEVICESERVICE:Ljava/lang/String; = "com.parrot.freeflight3.DeviceController.extra.deviceservice"

.field public static final DEVICECONTROLLER_EXTRA_FASTRECONNECTION:Ljava/lang/String; = "com.parrot.freeflight3.DeviceController.extra.fastreconnection"

.field public static final DEVICECONTROLLER_SHARED_PREFERENCES_KEY:Ljava/lang/String; = "DEVICECONTROLLER_SHARED_PREFERENCES_KEY"

.field public static final DeviceControllerAllSettingsDidStartNotification:Ljava/lang/String; = "DeviceControllerAllSettingsDidStartNotification"

.field public static final DeviceControllerAllStatesDidStartNotification:Ljava/lang/String; = "DeviceControllerAllStatesDidStartNotification"

.field public static final DeviceControllerDidFailNotification:Ljava/lang/String; = "DeviceControllerDidFailNotification"

.field public static final DeviceControllerDidStartNotification:Ljava/lang/String; = "DeviceControllerDidStartNotification"

.field public static final DeviceControllerDidStopNotification:Ljava/lang/String; = "DeviceControllerDidStopNotification"

.field public static final DeviceControllerWillStartNotification:Ljava/lang/String; = "DeviceControllerWillStartNotification"

.field public static final DeviceControllerWillStopNotification:Ljava/lang/String; = "DeviceControllerWillStopNotification"

.field private static final ENABLE_ARNETWORK_BANWIDTH_MEASURE:Z = false

.field private static INITIAL_TIMEOUT_RETRIEVAL_MS:J = 0x0L

.field public static final INTENT_EXTRA_ERROR:Ljava/lang/String; = "INTENT_EXTRA_ERROR"

.field public static final INTENT_EXTRA_IS_SUBDEVICE:Ljava/lang/String; = "INTENT_EXTRA_IS_SUBDEVICE"

.field public static final INTENT_SOURCE_UUID:Ljava/lang/String; = "INTENT_SOURCE_UUID"

.field private static final NETWORKAL_DATA_DUMP_FILENAME:Ljava/lang/String; = "freeflight"

.field private static final NETWORKAL_DATA_DUMP_FOLDER:Ljava/lang/String; = "/sdcard/ar_data_dump"

.field private static final NETWORKAL_DATA_DUMP_TAG:B = 0x30t

.field private static final NUMBER_OF_RSSI_TO_SAVE:I = 0xa

.field public static final PRODUCT_STYLE_SHARED_PREFERENCES_KEY:Ljava/lang/String; = "PRODUCT_STYLE_SHARED_PREFERENCES_KEY"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_STREAM:Ljava/lang/String; = "debug_stream"

.field private static final VIDEO_RECEIVE_TIMEOUT:I = 0x1f4


# instance fields
.field private alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

.field private allowCommands:Z

.field protected arCommandsVersionController:Ljava/lang/String;

.field protected arCommandsVersionDevice:Ljava/lang/String;

.field protected arCommandsVersionOlder:Ljava/lang/String;

.field protected arCommandsVersionSkyController:Ljava/lang/String;

.field private arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

.field private arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

.field private arstream2Resender:Lcom/parrot/arsdk/arstream2/ARStream2Resender;

.field private arstream2StartRequested:Z

.field private arstream2Started:Z

.field protected baseControllerCancelled:Z

.field private baseControllerStarted:Z

.field private beaverResendeDestControlPort:I

.field private beaverResenderDestAddress:Ljava/lang/String;

.field private beaverResenderDestStreamPort:I

.field private final binder:Landroid/os/IBinder;

.field private bridgeBound:Z

.field protected bridgeConnection:Landroid/content/ServiceConnection;

.field private bridgeConnectionSem:Ljava/util/concurrent/Semaphore;

.field private bridgeDeviceControllerDidStop:Landroid/content/BroadcastReceiver;

.field private bwThread:Ljava/lang/Thread;

.field private cmdGetAllSettingsSent:Ljava/util/concurrent/Semaphore;

.field private cmdGetAllStatesSent:Ljava/util/concurrent/Semaphore;

.field private decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

.field protected deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

.field protected deviceControllerBridgeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/parrot/controller/devicecontrollers/DeviceController;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

.field private deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

.field private disconnectSent:Ljava/util/concurrent/Semaphore;

.field private discoverSemaphore:Ljava/util/concurrent/Semaphore;

.field private discoveryConnection:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;

.field private discoveryPort:I

.field fastReconnection:Z

.field private indexOfRssiArray:I

.field private initialized:Z

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

.field private isDumping:Z

.field private isWaitingAllSettings:Z

.field private isWaitingAllStates:Z

.field protected loopInterval:J

.field private looperThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

.field protected mApplicationContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRouterVideoResenderListener:Lcom/parrot/arsdk/arrouter/ARRouter$VideoResenderListener;

.field private mediaOpened:Z

.field private netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

.field private netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

.field protected notAService:Z

.field private readerThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteRssis:[I

.field private router:Lcom/parrot/arsdk/arrouter/ARRouter;

.field protected routerConnection:Landroid/content/ServiceConnection;

.field private routerInitSem:Ljava/util/concurrent/Semaphore;

.field private routerMustBeInitialized:Z

.field private final rssis:[I

.field private rxThread:Ljava/lang/Thread;

.field startCancelled:Z

.field state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

.field final stateLock:Ljava/util/concurrent/locks/Lock;

.field private txThread:Ljava/lang/Thread;

.field private final uuid:Ljava/util/UUID;

.field protected videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

.field private videoStreamListener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;

.field protected videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

.field private wifiUtils:Lcom/parrot/controller/utils/WifiUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    const-class v0, Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    .line 177
    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->INITIAL_TIMEOUT_RETRIEVAL_MS:J

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 248
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;-><init>()V

    .line 115
    iput-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isDumping:Z

    .line 117
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceController$LocalBinder;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$LocalBinder;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->binder:Landroid/os/IBinder;

    .line 160
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->uuid:Ljava/util/UUID;

    .line 162
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionOlder:Ljava/lang/String;

    .line 163
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionDevice:Ljava/lang/String;

    .line 164
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionSkyController:Ljava/lang/String;

    .line 165
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionController:Ljava/lang/String;

    .line 179
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rssis:[I

    .line 180
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->indexOfRssiArray:I

    .line 181
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->remoteRssis:[I

    .line 191
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$1;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->routerConnection:Landroid/content/ServiceConnection;

    .line 218
    iput-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeBound:Z

    .line 222
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceController$2;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$2;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeConnection:Landroid/content/ServiceConnection;

    .line 2415
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    .line 2416
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    .line 2890
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceController$11;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$11;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mRouterVideoResenderListener:Lcom/parrot/arsdk/arrouter/ARRouter$VideoResenderListener;

    .line 249
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-direct {v0}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/arrouter/ARRouter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
    .param p1, "x1"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/controller/devicecontrollers/DeviceController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->routerMustBeInitialized:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/parrot/controller/devicecontrollers/DeviceController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 83
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryPort:I

    return v0
.end method

.method static synthetic access$1100(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryConnection:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parrot/controller/devicecontrollers/DeviceController;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoverSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/arnetwork/ARNetworkManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStreamListener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parrot/controller/devicecontrollers/DeviceController;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->initiliazeRouter()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
    .param p1, "x1"    # Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parrot/controller/devicecontrollers/DeviceController;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeConnectionSem:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    return-object v0
.end method

.method private ardiscoveryNetConnect()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1126
    sget-object v4, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 1127
    .local v4, "error":Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 1128
    .local v2, "discoveryConnectionError":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    new-instance v5, Ljava/util/concurrent/Semaphore;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoverSemaphore:Ljava/util/concurrent/Semaphore;

    .line 1130
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v5}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getInboundPort()I

    move-result v1

    .line 1131
    .local v1, "d2cPort":I
    invoke-static {}, Lcom/parrot/controller/utils/Device;->isSkycontroller()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1133
    new-instance v5, Lcom/parrot/controller/devicecontrollers/DeviceController$4;

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6, v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$4;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryConnection:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;

    .line 1281
    :goto_0
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;

    invoke-direct {v0, p0, v7}, Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/controller/devicecontrollers/DeviceController$1;)V

    .line 1282
    .local v0, "connectionThread":Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;
    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;->start()V

    .line 1286
    :try_start_0
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoverSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1287
    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;->getError()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1295
    :goto_1
    sget-object v5, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v4, v5, :cond_0

    .line 1298
    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR_CONNECTION_BAD_ID:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    if-ne v2, v5, :cond_2

    .line 1300
    sget-object v4, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR_BAD_DEVICE:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 1309
    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryConnection:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;

    invoke-virtual {v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->dispose()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 1310
    iput-object v7, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryConnection:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;

    .line 1312
    return-object v4

    .line 1201
    .end local v0    # "connectionThread":Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;
    :cond_1
    new-instance v5, Lcom/parrot/controller/devicecontrollers/DeviceController$5;

    invoke-direct {v5, p0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$5;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;I)V

    iput-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryConnection:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;

    goto :goto_0

    .line 1289
    .restart local v0    # "connectionThread":Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;
    :catch_0
    move-exception v3

    .line 1291
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1292
    sget-object v4, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    goto :goto_1

    .line 1302
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_2
    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    if-eq v2, v5, :cond_0

    .line 1304
    sget-object v4, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    goto :goto_2
.end method

.method private ardiscoveryUsbConnect()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    .locals 6

    .prologue
    .line 1316
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 1317
    .local v3, "error":Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 1318
    .local v1, "discoveryConnectionError":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    new-instance v4, Ljava/util/concurrent/Semaphore;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoverSemaphore:Ljava/util/concurrent/Semaphore;

    .line 1321
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 1322
    .local v0, "connectionThread":Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;
    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->start()V

    .line 1326
    :try_start_0
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoverSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1327
    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->getError()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1334
    :goto_0
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    if-eq v1, v4, :cond_0

    .line 1336
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 1338
    :cond_0
    return-object v3

    .line 1329
    :catch_0
    move-exception v2

    .line 1331
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1332
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    goto :goto_0
.end method

.method private initBroadcastReceivers()V
    .locals 1

    .prologue
    .line 2650
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceController$10;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$10;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeDeviceControllerDidStop:Landroid/content/BroadcastReceiver;

    .line 2663
    return-void
.end method

.method private initDeviceControllerIntents()V
    .locals 4

    .prologue
    .line 377
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->intentCache:Ljava/util/HashMap;

    .line 378
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->intentCache:Ljava/util/HashMap;

    const-string v1, "DeviceControllerWillStartNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "DeviceControllerWillStartNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->intentCache:Ljava/util/HashMap;

    const-string v1, "DeviceControllerDidStartNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "DeviceControllerDidStartNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->intentCache:Ljava/util/HashMap;

    const-string v1, "DeviceControllerWillStopNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "DeviceControllerWillStopNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->intentCache:Ljava/util/HashMap;

    const-string v1, "DeviceControllerDidStopNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "DeviceControllerDidStopNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->intentCache:Ljava/util/HashMap;

    const-string v1, "DeviceControllerDidFailNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "DeviceControllerDidFailNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->intentCache:Ljava/util/HashMap;

    const-string v1, "DeviceControllerAllSettingsDidStartNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "DeviceControllerAllSettingsDidStartNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->intentCache:Ljava/util/HashMap;

    const-string v1, "DeviceControllerAllStatesDidStartNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "DeviceControllerAllStatesDidStartNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    return-void
.end method

.method private initiliazeRouter()V
    .locals 3

    .prologue
    .line 850
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dParamsList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getVideoAckIOBuffer()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/arsdk/arrouter/ARRouter;->setARNetworkControllerToRouterParams(Ljava/util/List;I)V

    .line 851
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getD2cParamsList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getVideoDataIOBuffer()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/arsdk/arrouter/ARRouter;->setARNetworkRouterToControllerParams(Ljava/util/List;I)V

    .line 852
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceDiscoveryInfo()Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->usesARStream2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mRouterVideoResenderListener:Lcom/parrot/arsdk/arrouter/ARRouter$VideoResenderListener;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->setVideoResenderListener(Lcom/parrot/arsdk/arrouter/ARRouter$VideoResenderListener;)V

    .line 861
    :goto_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->connect(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->routerInitSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 869
    :goto_1
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->setVideoResenderListener(Lcom/parrot/arsdk/arrouter/ARRouter$VideoResenderListener;)V

    goto :goto_0

    .line 867
    :cond_1
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v1, "Failed to start ARRouter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private registerDeviceControllerEvents()V
    .locals 4

    .prologue
    .line 2636
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->unregisterDeviceControllerEvents()V

    .line 2638
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->initBroadcastReceivers()V

    .line 2639
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeDeviceControllerDidStop:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "DeviceControllerDidStopNotification"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2640
    return-void
.end method

.method private sendControllerLibARCommandsVersion(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)V
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "version"    # Ljava/lang/String;

    .prologue
    .line 1654
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1655
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1656
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1658
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setCommonARLibsVersionsStateControllerLibARCommandsVersion(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1660
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1663
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1664
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1667
    :cond_0
    if-nez v2, :cond_1

    .line 1669
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v4, "Failed to send ControllerARLibVersion command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    :cond_1
    return-void
.end method

.method private sendSkyControllerLibARCommandsVersion(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)V
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "version"    # Ljava/lang/String;

    .prologue
    .line 1680
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1681
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1682
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1684
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setCommonARLibsVersionsStateSkyControllerLibARCommandsVersion(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1686
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1689
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1690
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1693
    :cond_0
    if-nez v2, :cond_1

    .line 1695
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v4, "Failed to send SkyControllerARLibVersion command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    :cond_1
    return-void
.end method

.method private startBridge()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 819
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeConnectionSem:Ljava/util/concurrent/Semaphore;

    .line 821
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->initBroadcastReceivers()V

    .line 822
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->registerDeviceControllerEvents()V

    .line 824
    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->notAService:Z

    if-eqz v1, :cond_0

    .line 826
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getARCommandsVersionSkyController()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionSkyController:Ljava/lang/String;

    .line 827
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceDiscoveryInfo()Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->copyFrom(Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;)V

    .line 828
    iput-boolean v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeBound:Z

    .line 829
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDecoder()Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    .line 846
    :goto_0
    return-void

    .line 833
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 837
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeConnectionSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :goto_1
    iput-boolean v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeBound:Z

    goto :goto_0

    .line 839
    :catch_0
    move-exception v0

    .line 842
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private startLooperThread()V
    .locals 1

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->createNewControllerLooperThread()Lcom/parrot/controller/devicecontrollers/DeviceController$ControllerLooperThread;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->looperThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    .line 814
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->looperThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->start()V

    .line 815
    return-void
.end method

.method private startNetwork()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    .locals 18

    .prologue
    .line 462
    sget-object v10, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 463
    .local v10, "error":Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    sget-object v14, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 465
    .local v14, "netALError":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    const/4 v7, 0x0

    .line 468
    .local v7, "pingDelay":I
    new-instance v2, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-direct {v2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    if-eqz v2, :cond_b

    .line 474
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v3, "alManager.ARDiscoveryDeviceNetService "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    .line 476
    .local v15, "netDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v15}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->setIpAddress(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v15}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getPort()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryPort:I

    .line 480
    invoke-virtual {v15}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getTxtRecord()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 484
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual {v15}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getTxtRecord()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 486
    .local v12, "jsonObject":Lorg/json/JSONObject;
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_DEVICE_ID_KEY:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_DEVICE_ID_KEY:Ljava/lang/String;

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->setSerial(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 497
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->ardiscoveryNetConnect()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    move-result-object v10

    .line 499
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v10, v2, :cond_2

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getVideoFragmentSize()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v4}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getVideoFragmentMaximumNumber()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->addStreamReaderIOBuffer(II)V

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getVideoFragmentSize()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v4}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getVideoFragmentMaximumNumber()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->addAudioStreamReaderIOBuffer(II)V

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getVideoFragmentSize()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v4}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getVideoFragmentMaximumNumber()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->addAudioStreamSenderIOBuffer(II)V

    .line 507
    invoke-static {}, Lcom/parrot/controller/utils/Device;->isSkycontroller()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 509
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->getIp()Ljava/lang/String;

    move-result-object v11

    .line 516
    .local v11, "ipAddr":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    const-string v3, "/sdcard/ar_data_dump"

    const-string v4, "freeflight"

    invoke-virtual {v2, v3, v4}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->enableDataDump(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v14

    .line 517
    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-eq v14, v2, :cond_7

    .line 519
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while enabling data dump : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", disabling dump"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isDumping:Z

    .line 527
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getC2dPort()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v4}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getInboundPort()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v11, v3, v4, v5}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->initWifiNetwork(Ljava/lang/String;III)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v14

    .line 529
    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-ne v14, v2, :cond_a

    .line 531
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mediaOpened:Z

    .line 533
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getQosMode()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;->ARSAL_SOCKET_CLASS_SELECTOR_CS6:Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;

    :goto_3
    invoke-virtual {v3, v2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->setSendClassSelector(Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v14

    .line 534
    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-eq v14, v2, :cond_1

    .line 536
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error occurred: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getQosMode()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9

    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;->ARSAL_SOCKET_CLASS_SELECTOR_CS6:Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;

    :goto_4
    invoke-virtual {v3, v2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->setRecvClassSelector(Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v14

    .line 539
    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-eq v14, v2, :cond_2

    .line 541
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error occurred: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    .end local v11    # "ipAddr":Ljava/lang/String;
    .end local v15    # "netDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    :cond_2
    :goto_5
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v10, v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    if-nez v2, :cond_3

    .line 629
    new-instance v2, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkManagerExtend;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dParams()[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getD2cParams()[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v6

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkManagerExtend;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->isCorrectlyInitialized()Z

    move-result v2

    if-nez v2, :cond_3

    .line 633
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v3, "new ARNetworkManager failed"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    sget-object v10, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 638
    :cond_3
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v10, v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    if-nez v2, :cond_4

    .line 641
    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    iget-object v3, v3, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_receivingRunnable:Lcom/parrot/arsdk/arnetwork/ReceivingRunnable;

    const-string v4, "Network rx"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rxThread:Ljava/lang/Thread;

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rxThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 644
    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    iget-object v3, v3, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_sendingRunnable:Lcom/parrot/arsdk/arnetwork/SendingRunnable;

    const-string v4, "Network tx"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->txThread:Ljava/lang/Thread;

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->txThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 647
    new-instance v2, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    invoke-direct {v2}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    .line 651
    :cond_4
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v10, v2, :cond_5

    invoke-static {}, Lcom/parrot/controller/utils/Device;->isSkycontroller()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    if-eqz v2, :cond_11

    .line 655
    invoke-direct/range {p0 .. p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->initiliazeRouter()V

    .line 663
    :goto_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->routerInitSem:Ljava/util/concurrent/Semaphore;

    sget-wide v4, Lcom/parrot/controller/devicecontrollers/DeviceController;->INITIAL_TIMEOUT_RETRIEVAL_MS:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 665
    .local v16, "routerInitialized":Ljava/lang/Boolean;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 667
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v3, "failed to initialize router (timeout)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    sget-object v10, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 678
    .end local v16    # "routerInitialized":Ljava/lang/Boolean;
    :cond_5
    :goto_7
    return-object v10

    .line 513
    .restart local v15    # "netDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "ipAddr":Ljava/lang/String;
    goto/16 :goto_1

    .line 524
    :cond_7
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v3, "Enabling data dump into /sdcard/ar_data_dump"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isDumping:Z

    goto/16 :goto_2

    .line 533
    :cond_8
    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;->ARSAL_SOCKET_CLASS_SELECTOR_UNSPECIFIED:Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;

    goto/16 :goto_3

    .line 538
    :cond_9
    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;->ARSAL_SOCKET_CLASS_SELECTOR_UNSPECIFIED:Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;

    goto/16 :goto_4

    .line 546
    :cond_a
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error occurred: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    sget-object v10, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    goto/16 :goto_5

    .line 553
    .end local v11    # "ipAddr":Ljava/lang/String;
    .end local v15    # "netDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    if-eqz v2, :cond_d

    .line 556
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alManager.initBLENetwork netConfig.getBLENotificationIDs(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v4}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getBLENotificationIDs()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    .line 558
    .local v8, "bleDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v8}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v6}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getBLENotificationIDs()[I

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->initBLENetwork(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;I[I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v14

    .line 560
    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-ne v14, v2, :cond_c

    .line 562
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mediaOpened:Z

    .line 563
    const/4 v7, -0x1

    goto/16 :goto_5

    .line 567
    :cond_c
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    sget-object v10, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    goto/16 :goto_5

    .line 572
    .end local v8    # "bleDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    if-eqz v2, :cond_10

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    .line 576
    .local v17, "usbDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;->getSerial()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->setSerial(Ljava/lang/String;)V

    .line 578
    invoke-direct/range {p0 .. p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->ardiscoveryUsbConnect()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    move-result-object v10

    .line 580
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v10, v2, :cond_2

    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->get(Landroid/content/Context;)Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->getMux()Lcom/parrot/mux/Mux;

    move-result-object v13

    .line 583
    .local v13, "mux":Lcom/parrot/mux/Mux;
    if-eqz v13, :cond_e

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v2, v13}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->initMuxNetwork(Lcom/parrot/mux/Mux;)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 592
    :goto_8
    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-ne v14, v2, :cond_f

    .line 594
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mediaOpened:Z

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getVideoFragmentSize()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v4}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getVideoFragmentMaximumNumber()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->addStreamReaderIOBuffer(II)V

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getVideoFragmentSize()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v4}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getVideoFragmentMaximumNumber()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->addAudioStreamReaderIOBuffer(II)V

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getVideoFragmentSize()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v4}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getVideoFragmentMaximumNumber()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->addAudioStreamSenderIOBuffer(II)V

    goto/16 :goto_5

    .line 589
    :cond_e
    sget-object v14, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    goto :goto_8

    .line 601
    :cond_f
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error occurred: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    sget-object v10, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    goto/16 :goto_5

    .line 608
    .end local v13    # "mux":Lcom/parrot/mux/Mux;
    .end local v17    # "usbDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;
    :cond_10
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v3, "Unknow network media type."

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    sget-object v10, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    goto/16 :goto_5

    .line 658
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->routerMustBeInitialized:Z

    goto/16 :goto_6

    .line 671
    :catch_0
    move-exception v9

    .line 673
    .local v9, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v3, "failed to initialize router"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    sget-object v10, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    goto/16 :goto_7

    .line 491
    .end local v9    # "e":Ljava/lang/InterruptedException;
    .restart local v15    # "netDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method private startReadThreads()V
    .locals 6

    .prologue
    .line 684
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getCommandsIOBuffers()[I

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 686
    .local v0, "bufferId":I
    new-instance v1, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;

    invoke-direct {v1, p0, v0}, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;I)V

    .line 687
    .local v1, "readerThread":Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->readerThreads:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 691
    .end local v0    # "bufferId":I
    .end local v1    # "readerThread":Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;
    :cond_0
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->readerThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;

    .line 693
    .restart local v1    # "readerThread":Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;
    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;->start()V

    goto :goto_1

    .line 695
    .end local v1    # "readerThread":Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;
    :cond_1
    return-void
.end method

.method private startVideoResender()V
    .locals 12

    .prologue
    .line 791
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->beaverResenderDestAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->beaverResenderDestStreamPort:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->beaverResendeDestControlPort:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Resender:Lcom/parrot/arsdk/arstream2/ARStream2Resender;

    if-nez v0, :cond_1

    .line 794
    sget-object v9, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 795
    .local v9, "canonicalName":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 799
    :cond_0
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARStream2Resender;

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->beaverResenderDestAddress:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    const/16 v5, 0x138c

    const/16 v6, 0x138d

    iget v7, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->beaverResenderDestStreamPort:I

    iget v8, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->beaverResendeDestControlPort:I

    iget-object v10, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    .line 802
    invoke-virtual {v10}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getQosMode()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    sget-object v10, Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;->ARSAL_SOCKET_CLASS_SELECTOR_CS4:Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;

    :goto_0
    iget-object v11, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    .line 803
    invoke-virtual {v11}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getArStream2MaxNetworkLatency()I

    move-result v11

    invoke-direct/range {v0 .. v11}, Lcom/parrot/arsdk/arstream2/ARStream2Resender;-><init>(Lcom/parrot/arsdk/arstream2/ARStream2Manager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Resender:Lcom/parrot/arsdk/arstream2/ARStream2Resender;

    .line 805
    .end local v9    # "canonicalName":Ljava/lang/String;
    :cond_1
    return-void

    .line 802
    .restart local v9    # "canonicalName":Ljava/lang/String;
    :cond_2
    sget-object v10, Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;->ARSAL_SOCKET_CLASS_SELECTOR_UNSPECIFIED:Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;

    goto :goto_0
.end method

.method private stopBridge()V
    .locals 2

    .prologue
    .line 1113
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeBound:Z

    if-eqz v0, :cond_1

    .line 1115
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->notAService:Z

    if-nez v0, :cond_0

    .line 1116
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1118
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    .line 1119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeBound:Z

    .line 1120
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->unregisterDeviceControllerEvents()V

    .line 1122
    :cond_1
    return-void
.end method

.method private stopLooperThread()V
    .locals 2

    .prologue
    .line 932
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->looperThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    if-eqz v1, :cond_0

    .line 934
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->looperThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->stopThread()V

    .line 937
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->looperThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 939
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopNetwork()V
    .locals 3

    .prologue
    .line 1050
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    if-eqz v1, :cond_0

    .line 1052
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->disconnect()V

    .line 1055
    :cond_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    if-eqz v1, :cond_4

    .line 1057
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->stop()V

    .line 1061
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->txThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 1062
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->txThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 1064
    :cond_1
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rxThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 1065
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rxThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 1068
    :cond_2
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    if-eqz v1, :cond_3

    .line 1069
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->dispose()V

    .line 1070
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->dispose()V

    .line 1080
    :cond_4
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mediaOpened:Z

    if-eqz v1, :cond_6

    .line 1082
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    if-eqz v1, :cond_7

    .line 1084
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->closeWifiNetwork()Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 1106
    :cond_5
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mediaOpened:Z

    .line 1107
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->dispose()V

    .line 1109
    :cond_6
    return-void

    .line 1073
    :catch_0
    move-exception v0

    .line 1075
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1086
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_7
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    if-eqz v1, :cond_8

    .line 1088
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->closeBLENetwork(Landroid/content/Context;)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    goto :goto_1

    .line 1090
    :cond_8
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    if-eqz v1, :cond_5

    .line 1092
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->closeMuxNetwork()Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    goto :goto_1
.end method

.method private stopReaderThreads()V
    .locals 4

    .prologue
    .line 948
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->readerThreads:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 951
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->readerThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;

    .line 953
    .local v1, "thread":Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;
    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;->stopThread()V

    goto :goto_0

    .line 955
    .end local v1    # "thread":Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;
    :cond_0
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->readerThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;

    .line 959
    .restart local v1    # "thread":Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;
    :try_start_0
    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 961
    :catch_0
    move-exception v0

    .line 963
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 966
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "thread":Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;
    :cond_1
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->readerThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 968
    :cond_2
    return-void
.end method

.method private stopVideoResender()V
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Resender:Lcom/parrot/arsdk/arstream2/ARStream2Resender;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Resender:Lcom/parrot/arsdk/arstream2/ARStream2Resender;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arstream2/ARStream2Resender;->stop()V

    .line 1044
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Resender:Lcom/parrot/arsdk/arstream2/ARStream2Resender;

    .line 1046
    :cond_0
    return-void
.end method

.method private unregisterDeviceControllerEvents()V
    .locals 2

    .prologue
    .line 2644
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeDeviceControllerDidStop:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2646
    return-void
.end method


# virtual methods
.method public bindRouterService()V
    .locals 4

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->routerConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 874
    return-void
.end method

.method protected cancelBaseControllerStart()V
    .locals 2

    .prologue
    .line 1559
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    if-nez v0, :cond_1

    .line 1561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    .line 1562
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    if-eqz v0, :cond_2

    .line 1564
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryConnection:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryConnection:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ControllerConnectionAbort()V

    .line 1580
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->cmdGetAllSettingsSent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1581
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->cmdGetAllStatesSent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1584
    :cond_1
    return-void

    .line 1569
    :cond_2
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    if-eqz v0, :cond_3

    .line 1571
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->cancelBLENetwork()Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    goto :goto_0

    .line 1573
    :cond_3
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    if-eqz v0, :cond_4

    .line 1574
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->get(Landroid/content/Context;)Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->cancelConnect()V

    goto :goto_0

    .line 1578
    :cond_4
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v1, "Unknow network media type."

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected declared-synchronized clearNotifications()V
    .locals 1

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARBundle;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    monitor-exit p0

    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized closeVideoResender()V
    .locals 1

    .prologue
    .line 971
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoResender()V

    .line 972
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->beaverResenderDestAddress:Ljava/lang/String;

    .line 973
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->beaverResenderDestStreamPort:I

    .line 974
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->beaverResendeDestControlPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    monitor-exit p0

    return-void

    .line 971
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract controllerLoop()V
.end method

.method protected createNewControllerLooperThread()Lcom/parrot/controller/devicecontrollers/DeviceController$ControllerLooperThread;
    .locals 1

    .prologue
    .line 1730
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceController$ControllerLooperThread;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$ControllerLooperThread;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    return-object v0
.end method

.method protected doStart()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    .locals 4

    .prologue
    .line 2349
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 2352
    .local v1, "error":Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->initDeviceState()V

    .line 2354
    iget-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    if-nez v2, :cond_0

    .line 2356
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startBaseController()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    move-result-object v1

    .line 2358
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-eq v1, v2, :cond_0

    .line 2360
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start the base controller."

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    :cond_0
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v1, v2, :cond_1

    iget-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    if-nez v2, :cond_1

    .line 2372
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2373
    .local v0, "currentDate":Ljava/util/Date;
    invoke-virtual {p0, v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->sendInitialDate(Ljava/util/Date;)V

    .line 2374
    invoke-virtual {p0, v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->sendInitialTime(Ljava/util/Date;)V

    .line 2377
    .end local v0    # "currentDate":Ljava/util/Date;
    :cond_1
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v1, v2, :cond_2

    iget-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    if-nez v2, :cond_2

    .line 2379
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    const-string v3, "DeviceControllerAllSettingsDidStartNotification"

    invoke-virtual {p0, v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2380
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getInitialSettings()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2382
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get the initial settings."

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 2387
    :cond_2
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v1, v2, :cond_3

    iget-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    if-nez v2, :cond_3

    .line 2389
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    const-string v3, "DeviceControllerAllStatesDidStartNotification"

    invoke-virtual {p0, v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2390
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getInitialStates()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2392
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get the initial states."

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 2397
    :cond_3
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v1, v2, :cond_4

    iget-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    if-nez v2, :cond_4

    .line 2399
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->registerCurrentProduct()V

    .line 2402
    :cond_4
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v1, v2, :cond_5

    iget-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 2404
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR_CANCELED:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 2407
    :cond_5
    return-object v1
.end method

.method protected doStop()V
    .locals 0

    .prologue
    .line 2412
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopBaseController()V

    .line 2413
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    invoke-virtual {v0, p2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->dump(Ljava/io/PrintWriter;)V

    .line 291
    return-void
.end method

.method public getARCommandsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2865
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionOlder:Ljava/lang/String;

    return-object v0
.end method

.method public getARCommandsVersionSkyController()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionSkyController:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mApplicationContext:Landroid/content/Context;

    .line 257
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method protected getBaseControllerCancelled()Z
    .locals 1

    .prologue
    .line 1588
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    return v0
.end method

.method public getDecoder()Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;
    .locals 1

    .prologue
    .line 2860
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    return-object v0
.end method

.method protected getDeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 389
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->intentCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 390
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "INTENT_EXTRA_IS_SUBDEVICE"

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->isSubDeviceController()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 391
    return-object v0
.end method

.method public getDeviceDiscoveryInfo()Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;
    .locals 1

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    return-object v0
.end method

.method public getDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 1

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object v0
.end method

.method protected getInitialSettings()Z
    .locals 5

    .prologue
    .line 1594
    const/4 v1, 0x1

    .line 1596
    .local v1, "successful":Z
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isWaitingAllSettings:Z

    .line 1597
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v2

    sget-object v3, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendSettingsAllSettings(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1602
    :try_start_0
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->cmdGetAllSettingsSent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1615
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isWaitingAllSettings:Z

    .line 1617
    return v1

    .line 1604
    :catch_0
    move-exception v0

    .line 1606
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1607
    const/4 v1, 0x0

    .line 1608
    goto :goto_0

    .line 1612
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getInitialStates()Z
    .locals 5

    .prologue
    .line 1623
    const/4 v1, 0x1

    .line 1625
    .local v1, "successful":Z
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isWaitingAllStates:Z

    .line 1626
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v2

    sget-object v3, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendCommonAllStates(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1631
    :try_start_0
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->cmdGetAllStatesSent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1643
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isWaitingAllStates:Z

    .line 1645
    return v1

    .line 1633
    :catch_0
    move-exception v0

    .line 1635
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1636
    const/4 v1, 0x0

    .line 1637
    goto :goto_0

    .line 1641
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getLoopInterval()D
    .locals 2

    .prologue
    .line 1347
    iget-wide v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->loopInterval:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public getNapSoftVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getNapSoftVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    return-object v0
.end method

.method protected getNetManager()Lcom/parrot/arsdk/arnetwork/ARNetworkManager;
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;
    .locals 2

    .prologue
    .line 1882
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1883
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    .line 1884
    .local v0, "stateCopy":Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1886
    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method abstract initDeviceState()V
.end method

.method protected initialize()V
    .locals 2

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->initialized:Z

    if-nez v0, :cond_1

    .line 321
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->initialize()V

    .line 323
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->initDeviceControllerIntents()V

    .line 325
    invoke-static {}, Lcom/parrot/controller/utils/Device;->isSkycontroller()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->bindRouterService()V

    .line 330
    :cond_0
    new-instance v0, Lcom/parrot/controller/utils/WifiUtils;

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/controller/utils/WifiUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->wifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->initialized:Z

    .line 334
    :cond_1
    return-void
.end method

.method protected isInitialized()Z
    .locals 1

    .prologue
    .line 2599
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->initialized:Z

    return v0
.end method

.method public declared-synchronized isStream2StartRequested()Z
    .locals 1

    .prologue
    .line 1031
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-boolean v0, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2StartRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2StartRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1031
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStream2Started()Z
    .locals 1

    .prologue
    .line 1022
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-boolean v0, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Started:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1022
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSubDeviceController()Z
    .locals 1

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public declared-synchronized onCommonARLibsVersionsStateControllerLibARCommandsVersionUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 2668
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionController:Ljava/lang/String;

    .line 2670
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->updateOlderARCommandsVersion()V

    .line 2672
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onCommonARLibsVersionsStateControllerLibARCommandsVersionUpdate(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2673
    monitor-exit p0

    return-void

    .line 2668
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCommonARLibsVersionsStateDeviceLibARCommandsVersionUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 2688
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionDevice:Ljava/lang/String;

    .line 2690
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->updateOlderARCommandsVersion()V

    .line 2692
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onCommonARLibsVersionsStateDeviceLibARCommandsVersionUpdate(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2693
    monitor-exit p0

    return-void

    .line 2688
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCommonARLibsVersionsStateSkyControllerLibARCommandsVersionUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 2678
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionSkyController:Ljava/lang/String;

    .line 2680
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->updateOlderARCommandsVersion()V

    .line 2682
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onCommonARLibsVersionsStateSkyControllerLibARCommandsVersionUpdate(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2683
    monitor-exit p0

    return-void

    .line 2678
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCommonCommonStateAllStatesChangedUpdate()V
    .locals 1

    .prologue
    .line 1746
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onCommonCommonStateAllStatesChangedUpdate()V

    .line 1747
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isWaitingAllStates:Z

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->cmdGetAllStatesSent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1751
    :cond_0
    return-void
.end method

.method public declared-synchronized onCommonCommonStateWifiSignalChangedUpdate(S)V
    .locals 3
    .param p1, "rssi"    # S

    .prologue
    .line 2820
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rssis:[I

    iget v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->indexOfRssiArray:I

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->wifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    invoke-virtual {v2}, Lcom/parrot/controller/utils/WifiUtils;->getWifiRssi()I

    move-result v2

    aput v2, v0, v1

    .line 2821
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->remoteRssis:[I

    iget v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->indexOfRssiArray:I

    aput p1, v0, v1

    .line 2822
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->indexOfRssiArray:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->indexOfRssiArray:I

    .line 2823
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->indexOfRssiArray:I

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->indexOfRssiArray:I

    .line 2838
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSignalChanged remote rssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " local rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->wifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    invoke-virtual {v2}, Lcom/parrot/controller/utils/WifiUtils;->getWifiRssi()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onCommonCommonStateWifiSignalChangedUpdate(S)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2840
    monitor-exit p0

    return-void

    .line 2820
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCommonSettingsStateAllSettingsChangedUpdate()V
    .locals 1

    .prologue
    .line 1736
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onCommonSettingsStateAllSettingsChangedUpdate()V

    .line 1737
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isWaitingAllSettings:Z

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->cmdGetAllSettingsSent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1741
    :cond_0
    return-void
.end method

.method public declared-synchronized onCommonSettingsStateCountryChangedUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 2615
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/parrot/controller/utils/Device;->isSkycontroller()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2617
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->NOW:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    invoke-static {p1, v0}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setWifiCountry(Ljava/lang/String;Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;)Z

    .line 2619
    :cond_0
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onCommonSettingsStateCountryChangedUpdate(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2620
    monitor-exit p0

    return-void

    .line 2615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDebugSettingsInfoUpdate(BSLjava/lang/String;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_MODE_ENUM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "listFlags"    # B
    .param p2, "id"    # S
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_TYPE_ENUM;
    .param p5, "mode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_MODE_ENUM;
    .param p6, "range_min"    # Ljava/lang/String;
    .param p7, "range_max"    # Ljava/lang/String;
    .param p8, "range_step"    # Ljava/lang/String;
    .param p9, "value"    # Ljava/lang/String;

    .prologue
    .line 2717
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v7, "DebugDeviceControllerSettingsInfoNotification"

    invoke-virtual {v6, v7}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 2718
    .local v4, "listDictionary":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_1

    .line 2720
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2723
    .restart local v4    # "listDictionary":Landroid/os/Bundle;
    :cond_1
    const/4 v1, 0x0

    .line 2724
    .local v1, "entryBundle":Landroid/os/Bundle;
    and-int/lit8 v6, p1, 0x4

    if-nez v6, :cond_4

    .line 2726
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "entryBundle":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2727
    .restart local v1    # "entryBundle":Landroid/os/Bundle;
    const-string v6, "DebugDeviceControllerSettingsInfoNotificationIdKey"

    invoke-virtual {v1, v6, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 2728
    const-string v6, "DebugDeviceControllerSettingsInfoNotificationLabelKey"

    invoke-virtual {v1, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    const-string v7, "DebugDeviceControllerSettingsInfoNotificationTypeKey"

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_TYPE_ENUM;->getValue()I

    move-result v6

    :goto_0
    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2730
    if-nez p4, :cond_2

    .line 2732
    sget-object v6, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v7, "Bad value for argument `type` in Info command from the device."

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2734
    :cond_2
    const-string v7, "DebugDeviceControllerSettingsInfoNotificationModeKey"

    if-eqz p5, :cond_7

    invoke-virtual {p5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_MODE_ENUM;->getValue()I

    move-result v6

    :goto_1
    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2735
    if-nez p5, :cond_3

    .line 2737
    sget-object v6, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v7, "Bad value for argument `mode` in Info command from the device."

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    :cond_3
    const-string v6, "DebugDeviceControllerSettingsInfoNotificationRangeMinKey"

    move-object/from16 v0, p6

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2740
    const-string v6, "DebugDeviceControllerSettingsInfoNotificationRangeMaxKey"

    move-object/from16 v0, p7

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2741
    const-string v6, "DebugDeviceControllerSettingsInfoNotificationRangeStepKey"

    move-object/from16 v0, p8

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    const-string v6, "DebugDeviceControllerSettingsInfoNotificationValueKey"

    move-object/from16 v0, p9

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2746
    :cond_4
    iget-object v6, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v7, "DebugDeviceControllerSettingsInfoNotification"

    invoke-virtual {v6, v7, v4}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2749
    and-int/lit8 v6, p1, 0x6

    if-eqz v6, :cond_5

    .line 2751
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2752
    .local v5, "updateDictionary":Landroid/os/Bundle;
    const-string v6, "DebugDeviceControllerSettingsInfoNotification"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2755
    new-instance v3, Landroid/content/Intent;

    const-string v6, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2756
    .local v3, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2757
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2760
    new-instance v2, Landroid/content/Intent;

    const-string v6, "DebugDeviceControllerSettingsInfoNotification"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2761
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2762
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2764
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "intentDicChanged":Landroid/content/Intent;
    .end local v5    # "updateDictionary":Landroid/os/Bundle;
    :cond_5
    monitor-exit p0

    return-void

    .line 2729
    :cond_6
    :try_start_1
    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_TYPE_ENUM;->UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_TYPE_ENUM;

    invoke-virtual {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_TYPE_ENUM;->getValue()I

    move-result v6

    goto/16 :goto_0

    .line 2734
    :cond_7
    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_MODE_ENUM;->UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_MODE_ENUM;

    invoke-virtual {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_MODE_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    goto/16 :goto_1

    .line 2717
    .end local v1    # "entryBundle":Landroid/os/Bundle;
    .end local v4    # "listDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized onDebugSettingsListUpdate(SLjava/lang/String;)V
    .locals 9
    .param p1, "id"    # S
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2778
    monitor-enter p0

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2779
    .local v4, "updateDictionary":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2780
    .local v3, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "DebugDeviceControllerSettingsListNotificationIdKey"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 2781
    const-string v5, "DebugDeviceControllerSettingsListNotificationValueKey"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "DebugDeviceControllerSettingsListNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 2784
    .local v2, "listDictionary":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 2786
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2788
    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_0
    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2789
    move-object v3, v2

    .line 2791
    const-string v5, "DebugDeviceControllerSettingsListNotification"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2794
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "DebugDeviceControllerSettingsListNotification"

    invoke-virtual {v5, v6, v3}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2797
    const-string v5, "DebugDeviceControllerSettingsListNotificationIdKey"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 2800
    new-instance v1, Landroid/content/Intent;

    const-string v5, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2801
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2802
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2805
    new-instance v0, Landroid/content/Intent;

    const-string v5, "DebugDeviceControllerSettingsListNotification"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2806
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2807
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2808
    monitor-exit p0

    return-void

    .line 2778
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "listDictionary":Landroid/os/Bundle;
    .end local v3    # "notificationBundle":Landroid/os/Bundle;
    .end local v4    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 2885
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stop()V

    .line 2887
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onDestroy()V

    .line 2888
    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 2876
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskRemoved ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "user removed app from recents, stop service"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopSelf()V

    .line 2879
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onTaskRemoved(Landroid/content/Intent;)V

    .line 2880
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public abstract pause(Z)V
.end method

.method public pauseVideoStream2Receiver()V
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 1441
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->stop()V

    .line 1453
    :cond_0
    :goto_0
    return-void

    .line 1448
    :cond_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->pauseVideoStream2Receiver()V

    goto :goto_0
.end method

.method protected registerARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V
    .locals 0
    .param p1, "decoder"    # Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    .prologue
    .line 304
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->registerARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V

    .line 305
    return-void
.end method

.method protected registerCurrentProduct()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 1817
    const-string v10, "DEVICECONTROLLER_SHARED_PREFERENCES_KEY"

    invoke-virtual {p0, v10, v12}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1818
    .local v6, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v0

    .line 1819
    .local v0, "bundle":Lcom/parrot/controller/devicecontrollers/ARBundle;
    if-eqz v0, :cond_0

    .line 1821
    const-string v10, "DeviceControllerSettingsStateProductSerialHighChangedNotification"

    invoke-virtual {v0, v10}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "DeviceControllerSettingsStateProductSerialLowChangedNotification"

    .line 1822
    invoke-virtual {v0, v10}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1824
    const-string v10, "DeviceControllerSettingsStateProductSerialLowChangedNotification"

    invoke-virtual {v0, v10}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 1825
    .local v9, "settingsStateProductSerialLowChangedNotification":Landroid/os/Bundle;
    const-string v10, "DeviceControllerSettingsStateProductSerialHighChangedNotification"

    invoke-virtual {v0, v10}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 1826
    .local v8, "settingsStateProductSerialHighChangedNotification":Landroid/os/Bundle;
    const-string v10, "DeviceControllerSettingsStateProductSerialLowChangedNotificationLowKey"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1827
    .local v3, "lowSerial":Ljava/lang/String;
    const-string v10, "DeviceControllerSettingsStateProductSerialHighChangedNotificationHighKey"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1828
    .local v2, "highSerial":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1830
    .local v7, "serial":Ljava/lang/String;
    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v11, :cond_0

    .line 1832
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1833
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v10, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v10}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v10

    invoke-interface {v1, v7, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1834
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1836
    const-string v10, "DeviceControllerCommonStateProductModelNotification"

    invoke-virtual {v0, v10}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1838
    const-string v10, "DeviceControllerCommonStateProductModelNotification"

    invoke-virtual {v0, v10}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1839
    .local v4, "modelBundle":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 1841
    const-string v10, "DeviceControllerCommonStateProductModelNotificationModelKey"

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1842
    .local v5, "modelVal":I
    if-eq v5, v11, :cond_0

    .line 1844
    const-string v10, "PRODUCT_STYLE_SHARED_PREFERENCES_KEY"

    invoke-virtual {p0, v10, v12}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v7, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1851
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "highSerial":Ljava/lang/String;
    .end local v3    # "lowSerial":Ljava/lang/String;
    .end local v4    # "modelBundle":Landroid/os/Bundle;
    .end local v5    # "modelVal":I
    .end local v7    # "serial":Ljava/lang/String;
    .end local v8    # "settingsStateProductSerialHighChangedNotification":Landroid/os/Bundle;
    .end local v9    # "settingsStateProductSerialLowChangedNotification":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public restartVideoStream2Receiver()V
    .locals 1

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 1458
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->start()V

    .line 1470
    :cond_0
    :goto_0
    return-void

    .line 1465
    :cond_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->restartVideoStream2Receiver()V

    goto :goto_0
.end method

.method protected sendARLibsVersions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1704
    invoke-static {}, Lcom/parrot/controller/utils/Device;->isSkycontroller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1706
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionController:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->sendControllerLibARCommandsVersion(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)V

    .line 1712
    :goto_0
    return-void

    .line 1710
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionSkyController:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->sendSkyControllerLibARCommandsVersion(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z
    .locals 8
    .param p1, "data"    # Lcom/parrot/arsdk/arsal/ARNativeData;
    .param p2, "bufferId"    # I
    .param p3, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p4, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 1498
    const/4 v7, 0x1

    .line 1500
    .local v7, "retVal":Z
    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->allowCommands:Z

    if-eqz v1, :cond_5

    .line 1502
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 1504
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v1, :cond_1

    .line 1506
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v7

    .line 1544
    :cond_0
    :goto_0
    return v7

    .line 1510
    :cond_1
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v2, "deviceControllerBridge == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const/4 v7, 0x0

    goto :goto_0

    .line 1517
    :cond_2
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p0

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 1519
    .local v0, "sendInfo":Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;
    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isDumping:Z

    if-eqz v1, :cond_3

    .line 1521
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    const/16 v2, 0x30

    invoke-virtual {v1, p1, v2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->dumpData(Lcom/parrot/arsdk/arsal/ARNativeData;B)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 1525
    :cond_3
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, p1, v0, v2}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->sendData(ILcom/parrot/arsdk/arsal/ARNativeData;Ljava/lang/Object;Z)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    move-result-object v6

    .line 1527
    .local v6, "netError":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    if-eq v6, v1, :cond_4

    .line 1529
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netManager.sendData() failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    const/4 v7, 0x0

    goto :goto_0

    .line 1532
    :cond_4
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 1534
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will send command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1541
    .end local v0    # "sendInfo":Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;
    .end local v6    # "netError":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected sendInitialDate(Ljava/util/Date;)V
    .locals 5
    .param p1, "currentDate"    # Ljava/util/Date;

    .prologue
    .line 1717
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1718
    .local v0, "formattedDate":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendCommonCurrentDate(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z

    .line 1719
    return-void
.end method

.method protected sendInitialTime(Ljava/util/Date;)V
    .locals 5
    .param p1, "currentDate"    # Ljava/util/Date;

    .prologue
    .line 1724
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'T\'HHmmssZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1725
    .local v0, "formattedTime":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendCommonCurrentTime(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z

    .line 1726
    return-void
.end method

.method protected setConfigurations(Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;DLjava/lang/Class;)V
    .locals 3
    .param p1, "netConfig"    # Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;
    .param p2, "service"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .param p3, "interval"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            "D",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parrot/controller/devicecontrollers/DeviceController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "dcBridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parrot/controller/devicecontrollers/DeviceController;>;"
    const/4 v2, 0x0

    .line 339
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    .line 341
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->disconnectSent:Ljava/util/concurrent/Semaphore;

    .line 342
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->cmdGetAllSettingsSent:Ljava/util/concurrent/Semaphore;

    .line 343
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->cmdGetAllStatesSent:Ljava/util/concurrent/Semaphore;

    .line 344
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isWaitingAllSettings:Z

    .line 345
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isWaitingAllStates:Z

    .line 347
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    .line 348
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerStarted:Z

    .line 349
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    .line 350
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->allowCommands:Z

    .line 352
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->routerInitSem:Ljava/util/concurrent/Semaphore;

    .line 354
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    .line 355
    iput-object p2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 356
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p3

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->loopInterval:J

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->readerThreads:Ljava/util/List;

    .line 358
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mediaOpened:Z

    .line 361
    iput v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryPort:I

    .line 362
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->reset(Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;)V

    .line 363
    iput-object p5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    .line 365
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionOlder:Ljava/lang/String;

    .line 366
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionDevice:Ljava/lang/String;

    .line 367
    invoke-static {}, Lcom/parrot/controller/utils/Device;->isSkycontroller()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCommandsVersion;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionSkyController:Ljava/lang/String;

    .line 368
    invoke-static {}, Lcom/parrot/controller/utils/Device;->isSkycontroller()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCommandsVersion;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionController:Ljava/lang/String;

    .line 372
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->clearNotifications()V

    .line 373
    return-void

    .line 367
    :cond_0
    const-string v0, "0.0.0.0"

    goto :goto_0

    .line 368
    :cond_1
    const-string v0, "0.0.0.0"

    goto :goto_1
.end method

.method public declared-synchronized setVideoStream2Listener(Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    .prologue
    .line 1375
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 1377
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1386
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1381
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->setVideoStream2Listener(Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1375
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVideoStreamListener(Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 1359
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStreamListener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;

    .line 1368
    :cond_0
    :goto_0
    return-void

    .line 1363
    :cond_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->setVideoStreamListener(Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;)V

    goto :goto_0
.end method

.method protected declared-synchronized setupVideoResender(Ljava/lang/String;II)V
    .locals 1
    .param p1, "destAddress"    # Ljava/lang/String;
    .param p2, "destStreamPort"    # I
    .param p3, "destControlPort"    # I

    .prologue
    .line 699
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->beaverResenderDestAddress:Ljava/lang/String;

    .line 700
    iput p2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->beaverResenderDestStreamPort:I

    .line 701
    iput p3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->beaverResendeDestControlPort:I

    .line 702
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startVideoResender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    monitor-exit p0

    return-void

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract start()V
.end method

.method protected startBaseController()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 407
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 409
    .local v0, "error":Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerStarted:Z

    if-nez v1, :cond_2

    .line 411
    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    if-nez v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-nez v1, :cond_4

    .line 416
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startNetwork()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    move-result-object v0

    .line 425
    :cond_0
    :goto_0
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 428
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startReadThreads()V

    .line 431
    :cond_1
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    if-nez v1, :cond_2

    .line 434
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startLooperThread()V

    .line 436
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->registerARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V

    .line 440
    :cond_2
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v0, v1, :cond_5

    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    if-nez v1, :cond_5

    .line 443
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerStarted:Z

    .line 444
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->allowCommands:Z

    .line 452
    :goto_1
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v0, v1, :cond_3

    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    if-eqz v1, :cond_3

    .line 454
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR_CANCELED:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 457
    :cond_3
    return-object v0

    .line 421
    :cond_4
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startBridge()V

    goto :goto_0

    .line 448
    :cond_5
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopBaseController()V

    goto :goto_1
.end method

.method public final startThread()V
    .locals 3

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2425
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    sget-object v1, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    if-ne v0, v1, :cond_0

    .line 2427
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STARTING:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    .line 2429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    .line 2431
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    const-string v1, "DeviceControllerWillStartNotification"

    invoke-virtual {p0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2434
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/parrot/controller/devicecontrollers/DeviceController$7;

    invoke-direct {v1, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$7;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    const-string v2, "deviceControllerConnection"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2508
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2511
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2512
    return-void
.end method

.method public declared-synchronized startVideoStream2Receiver()V
    .locals 3

    .prologue
    .line 1391
    monitor-enter p0

    :try_start_0
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startVideoStream2Receiver with manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arstream2Receiver is currently: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-nez v0, :cond_3

    .line 1395
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    if-nez v0, :cond_1

    .line 1397
    const-string v0, "debug_stream"

    const-string v1, "startVideoStream2Receiver, arstream2Manager is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1436
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1400
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    if-nez v0, :cond_2

    .line 1402
    const-string v0, "debug_stream"

    const-string v1, "startVideoStream2Receiver, video stream listener is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1405
    :cond_2
    :try_start_2
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    new-instance v2, Lcom/parrot/controller/devicecontrollers/DeviceController$6;

    invoke-direct {v2, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$6;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    invoke-direct {v0, v1, v2}, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;-><init>(Lcom/parrot/arsdk/arstream2/ARStream2Manager;Lcom/parrot/arsdk/arstream2/ARStream2ReceiverListener;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    .line 1426
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arstream2Receiver is now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->start()V

    goto :goto_0

    .line 1431
    :cond_3
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startVideoStream2Receiver()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized startVideoStreaming()V
    .locals 2

    .prologue
    .line 707
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Started:Z

    if-nez v0, :cond_2

    .line 708
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startVideoStreaming()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    :goto_0
    monitor-exit p0

    return-void

    .line 711
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    if-eqz v0, :cond_1

    .line 712
    const-string v0, "debug_stream"

    const-string v1, "startVideoStreaming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2StartRequested:Z

    .line 714
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startVideoThread()V

    .line 715
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startVideoStream2Receiver()V

    .line 716
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    invoke-interface {v0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;->onVideoAvailable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 718
    :cond_1
    :try_start_2
    const-string v0, "debug_stream"

    const-string v1, "arstream2StartRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2StartRequested:Z

    goto :goto_0

    .line 723
    :cond_2
    const-string v0, "debug_stream"

    const-string/jumbo v1, "video stream already started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized startVideoThread()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 729
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startVideoThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 737
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->usesARStream2()Z

    move-result v0

    if-nez v0, :cond_2

    .line 741
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    if-nez v0, :cond_0

    .line 744
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    .line 745
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 751
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    if-nez v0, :cond_0

    .line 753
    sget-object v6, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 754
    .local v6, "canonicalName":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 756
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 758
    :cond_3
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    if-eqz v0, :cond_4

    .line 760
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    .line 761
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->get(Landroid/content/Context;)Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->getMux()Lcom/parrot/mux/Mux;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    .line 763
    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getArStream2MaxPacketSize()I

    move-result v2

    invoke-direct {v0, v1, v6, v2}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;-><init>(Lcom/parrot/mux/Mux;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    .line 778
    :goto_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->start()V

    .line 779
    const-string v0, "debug_stream"

    const-string v1, "stream 2 started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Started:Z

    .line 782
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startVideoResender()V

    goto :goto_0

    .line 767
    :cond_4
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    .line 768
    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    .line 769
    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getArStream2ServerStreamPort()I

    move-result v2

    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    .line 770
    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getArStream2ServerControlPort()I

    move-result v3

    const v4, 0xd6dc

    const v5, 0xd6dd

    iget-object v7, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    .line 774
    invoke-virtual {v7}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getArStream2MaxPacketSize()I

    move-result v7

    iget-object v8, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    .line 775
    invoke-virtual {v8}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getQosMode()I

    move-result v8

    if-ne v8, v9, :cond_5

    sget-object v8, Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;->ARSAL_SOCKET_CLASS_SELECTOR_CS4:Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;

    :goto_2
    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;-><init>(Ljava/lang/String;IIIILjava/lang/String;ILcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    goto :goto_1

    :cond_5
    sget-object v8, Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;->ARSAL_SOCKET_CLASS_SELECTOR_UNSPECIFIED:Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public abstract stop()V
.end method

.method protected stopBaseController()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 883
    iput-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerStarted:Z

    .line 885
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    invoke-virtual {p0, v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->unregisterARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V

    .line 892
    :cond_0
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopLooperThread()V

    .line 894
    iput-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->allowCommands:Z

    .line 897
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopReaderThreads()V

    .line 900
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoThread()V

    .line 903
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoStream2Receiver()V

    .line 906
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopNetwork()V

    .line 908
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopBridge()V

    .line 909
    return-void
.end method

.method public stopInstance()V
    .locals 0

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->onDestroy()V

    .line 273
    return-void
.end method

.method public final stopThread()V
    .locals 5

    .prologue
    .line 2519
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2520
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    sget-object v4, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STARTED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    if-ne v3, v4, :cond_5

    .line 2523
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPING:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    iput-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    .line 2526
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/parrot/controller/devicecontrollers/DeviceController$8;

    invoke-direct {v4, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$8;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2547
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2549
    sget-boolean v3, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v3, :cond_4

    .line 2551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2552
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->indexOfRssiArray:I

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    .line 2554
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rssis:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 2556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local rssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rssis:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - remote rssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->remoteRssis:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2552
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2559
    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->indexOfRssiArray:I

    if-ge v1, v3, :cond_3

    .line 2561
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rssis:[I

    aget v3, v3, v1

    if-eqz v3, :cond_2

    .line 2563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local rssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rssis:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - remote rssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->remoteRssis:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2559
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2566
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2567
    .local v2, "rssiToLog":Ljava/lang/String;
    invoke-static {v2}, Lcom/parrot/controller/utils/DisconnectionsLogger;->addLogInfo(Ljava/lang/String;)V

    .line 2589
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "rssiToLog":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2590
    return-void

    .line 2570
    :cond_5
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    sget-object v4, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STARTING:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    if-nez v3, :cond_4

    .line 2573
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPING:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    iput-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    .line 2575
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    .line 2578
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/parrot/controller/devicecontrollers/DeviceController$9;

    invoke-direct {v4, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$9;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2586
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method public declared-synchronized stopVideoStream2Receiver()V
    .locals 1

    .prologue
    .line 1474
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 1476
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->dispose()V

    .line 1479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1489
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1484
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoStream2Receiver()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized stopVideoStreaming()V
    .locals 2

    .prologue
    .line 913
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoStreaming()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 919
    :cond_1
    :try_start_1
    const-string v0, "debug_stream"

    const-string v1, "stopVideoStreaming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoThread()V

    .line 921
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoStream2Receiver()V

    .line 922
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    invoke-interface {v0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;->onVideoStopped()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 913
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized stopVideoThread()V
    .locals 4

    .prologue
    .line 979
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 982
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1018
    :goto_0
    monitor-exit p0

    return-void

    .line 987
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    if-eqz v1, :cond_1

    .line 989
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->stopThread()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 992
    :try_start_2
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 998
    :goto_1
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    .line 1002
    :cond_1
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1004
    :try_start_4
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    if-eqz v1, :cond_2

    .line 1006
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceController "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stop arStream2Manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoResender()V

    .line 1010
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->stop()V

    .line 1011
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->dispose()V

    .line 1012
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    .line 1013
    const-string v1, "debug_video"

    const-string v2, "stream 2 stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Started:Z

    .line 1016
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 979
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 994
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " class:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2626
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method protected unregisterARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V
    .locals 0
    .param p1, "decoder"    # Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    .prologue
    .line 310
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->unregisterARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V

    .line 311
    return-void
.end method

.method protected updateOlderARCommandsVersion()V
    .locals 1

    .prologue
    .line 2844
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionDevice:Ljava/lang/String;

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionOlder:Ljava/lang/String;

    .line 2856
    return-void
.end method

.method public userRequesstSetDebugSettings(SLjava/lang/String;)V
    .locals 6
    .param p1, "id"    # S
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1811
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DebugDeviceController_SendSetSetting(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;SLjava/lang/String;)Z

    .line 1812
    return-void
.end method

.method public userRequestCalibration(B)V
    .locals 3
    .param p1, "calibrate"    # B

    .prologue
    .line 1780
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendCalibrationMagnetoCalibration(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 1781
    return-void
.end method

.method public userRequestDebugSettingsInfo()V
    .locals 3

    .prologue
    .line 1806
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DebugDeviceController_SendGetAllSettings(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 1807
    return-void
.end method

.method public userRequestMavlinkPause()V
    .locals 3

    .prologue
    .line 1796
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendMavlinkPause(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 1797
    return-void
.end method

.method public userRequestMavlinkPlay(Ljava/lang/String;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINK_START_TYPE_ENUM;)V
    .locals 6
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINK_START_TYPE_ENUM;

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendMavlinkStart(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINK_START_TYPE_ENUM;)Z

    .line 1792
    return-void
.end method

.method public userRequestMavlinkStop()V
    .locals 3

    .prologue
    .line 1801
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendMavlinkStop(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 1802
    return-void
.end method

.method public userRequestPitotCalibration(B)V
    .locals 3
    .param p1, "calibrate"    # B

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendCalibrationPitotCalibration(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 1786
    return-void
.end method

.method public userRequestReboot()V
    .locals 3

    .prologue
    .line 1765
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendCommonReboot(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 1766
    return-void
.end method

.method public userRequestSendAccessoryConfig(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;)Z
    .locals 3
    .param p1, "accessory"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendAccessoryConfig(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;)Z

    move-result v0

    return v0
.end method

.method public userRequestSendChargerSetMaxChargeRate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGER_SETMAXCHARGERATE_RATE_ENUM;)Z
    .locals 3
    .param p1, "rate"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGER_SETMAXCHARGERATE_RATE_ENUM;

    .prologue
    .line 1775
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendChargerSetMaxChargeRate(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGER_SETMAXCHARGERATE_RATE_ENUM;)Z

    move-result v0

    return v0
.end method

.method public userRequestedSettingsProductName(Ljava/lang/String;)V
    .locals 3
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 1760
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendSettingsProductName(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z

    .line 1761
    return-void
.end method

.method public userRequestedSettingsReset()V
    .locals 3

    .prologue
    .line 1755
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendSettingsReset(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 1756
    return-void
.end method
