.class public Lcom/parrot/arsdk/arrouter/ARRouter;
.super Landroid/app/Service;
.source "ARRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;,
        Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;,
        Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;,
        Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;,
        Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;,
        Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;,
        Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;,
        Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkHandler;,
        Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterRunnableFilterHandler;,
        Lcom/parrot/arsdk/arrouter/ARRouter$ARBinder;,
        Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;,
        Lcom/parrot/arsdk/arrouter/ARRouter$VideoResenderListener;,
        Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingChangedListener;,
        Lcom/parrot/arsdk/arrouter/ARRouter$CoPilotingListener;,
        Lcom/parrot/arsdk/arrouter/ARRouter$GPSListener;,
        Lcom/parrot/arsdk/arrouter/ARRouter$CameraResetListener;
    }
.end annotation


# static fields
.field private static final ROUTER_TO_TABLET_BUFFER_ID:I

.field private static final TAG:Ljava/lang/String;

.field private static final controllerToRouterPort:I = 0x86d9

.field private static final deviceToRouterPort:I = 0x86d0

.field private static final discoveryPort:I = 0xa8ca

.field private static final fromDrone720pSize:I = 0x80000

.field private static final localIp:Ljava/lang/String; = "127.0.0.1"

.field private static final socketBufferDefaultSize:I = 0x20000


# instance fields
.field private arStreamAckBufferId:I

.field private arStreamDataBufferId:I

.field private arstream2TabletControlPort:I

.field private arstream2TabletStreamPort:I

.field private final binder:Landroid/os/IBinder;

.field private calibrationController:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

.field private cameraResetListener:Lcom/parrot/arsdk/arrouter/ARRouter$CameraResetListener;

.field private coPilotingListener:Lcom/parrot/arsdk/arrouter/ARRouter$CoPilotingListener;

.field private commandsFromTablet:Z

.field private connectedToDevice:Z

.field private connectedToTablet:Z

.field private controllerFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

.field private controllerToRouterNonVideoBuffersId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private controllerToRouterParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;"
        }
    .end annotation
.end field

.field private controllerToRouterVideoBuffersId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private deviceConnectionState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

.field private deviceFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

.field private deviceIp:Ljava/lang/String;

.field private deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation
.end field

.field private deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

.field private deviceToRouterNonVideoBuffersId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private deviceToRouterParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;"
        }
    .end annotation
.end field

.field private deviceToRouterVideoBuffersId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private discoveryServer:Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;

.field private fromDroneSocketBufferSize:I

.field private gpsAlt:D

.field private gpsLat:D

.field private gpsListener:Lcom/parrot/arsdk/arrouter/ARRouter$GPSListener;

.field private gpsLong:D

.field private heading:F

.field private imcl:Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingChangedListener;

.field private inputMappingListener:Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

.field private linkVideoFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

.field private looperThread:Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;

.field private magnetoCalibrationListener:Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationListener;

.field private magnetoCalibrationQualityX:I

.field private magnetoCalibrationQualityY:I

.field private magnetoCalibrationQualityZ:I

.field private magnetoCalibrationStatus:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

.field private routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

.field private routerToControllerParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;"
        }
    .end annotation
.end field

.field private routerToControllerPort:I

.field private routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

.field private routerToDeviceParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;"
        }
    .end annotation
.end field

.field private routerToDevicePort:I

.field private routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

.field private sendAllMagnetoCalibrationUpdates:Z

.field private skyControllerBattery:I

.field private skyControllerGPSFixed:Z

.field private skyControllerWifiSignalLevel:I

.field private tabletARNetworkConfig:Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;

.field private tabletAndDeviceLinked:Z

.field private tabletAndDeviceVideoLinked:Z

.field private tabletDispatchFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

.field private tabletIp:Ljava/lang/String;

.field private tabletProcessFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

.field private toDroneSocketBufferSize:I

.field private videoResenderListener:Lcom/parrot/arsdk/arrouter/ARRouter$VideoResenderListener;

.field private waitingForTabletVideo:Z

.field private wifiHelper:Lcom/parrot/arsdk/arrouter/ARWifiHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arrouter/ARRouter;->TAG:Ljava/lang/String;

    .line 35
    sget v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->ARNETWORKAL_MANAGER_WIFI_ID_MAX:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x2

    sput v0, Lcom/parrot/arsdk/arrouter/ARRouter;->ROUTER_TO_TABLET_BUFFER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x20000

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    iput v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevicePort:I

    .line 39
    iput v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToControllerPort:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceIp:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceToRouterParams:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToControllerParams:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerToRouterParams:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerToRouterNonVideoBuffersId:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerToRouterVideoBuffersId:Ljava/util/List;

    .line 52
    new-instance v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;

    invoke-direct {v0}, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletARNetworkConfig:Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDeviceParams:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceToRouterNonVideoBuffersId:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceToRouterVideoBuffersId:Ljava/util/List;

    .line 57
    iput v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->arStreamDataBufferId:I

    .line 58
    iput v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->arStreamAckBufferId:I

    .line 63
    iput v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->fromDroneSocketBufferSize:I

    .line 64
    iput v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->toDroneSocketBufferSize:I

    .line 91
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_NOTCONNECTED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceConnectionState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

    .line 93
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARBinder;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARBinder;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->binder:Landroid/os/IBinder;

    .line 114
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ASSESSING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->magnetoCalibrationStatus:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    .line 116
    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->sendAllMagnetoCalibrationUpdates:Z

    .line 152
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARRouter$1;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/arrouter/ARRouter$1;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->imcl:Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->inputMappingListener:Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/arsdk/arrouter/ARRouter;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->linkTabletAndDeviceVideo()V

    return-void
.end method

.method static synthetic access$1100(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARWifiHelper;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->wifiHelper:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parrot/arsdk/arrouter/ARRouter;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTabletDidDisconnect()V

    return-void
.end method

.method static synthetic access$1300(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$CameraResetListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->cameraResetListener:Lcom/parrot/arsdk/arrouter/ARRouter$CameraResetListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->looperThread:Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/parrot/arsdk/arrouter/ARRouter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parrot/arsdk/arrouter/ARRouter;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    iget v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->skyControllerBattery:I

    return v0
.end method

.method static synthetic access$1700(Lcom/parrot/arsdk/arrouter/ARRouter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->skyControllerGPSFixed:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/parrot/arsdk/arrouter/ARRouter;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    iget v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->skyControllerWifiSignalLevel:I

    return v0
.end method

.method static synthetic access$1900(Lcom/parrot/arsdk/arrouter/ARRouter;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendCopilotingSource()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/arsdk/arrouter/ARRouter;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;IIIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;
    .param p1, "x1"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .prologue
    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendMagnetoCalibrationIfNeeded(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;IIIZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->magnetoCalibrationStatus:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/parrot/arsdk/arrouter/ARRouter;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    iget v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->magnetoCalibrationQualityX:I

    return v0
.end method

.method static synthetic access$2200(Lcom/parrot/arsdk/arrouter/ARRouter;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    iget v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->magnetoCalibrationQualityY:I

    return v0
.end method

.method static synthetic access$2300(Lcom/parrot/arsdk/arrouter/ARRouter;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    iget v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->magnetoCalibrationQualityZ:I

    return v0
.end method

.method static synthetic access$2500(Lcom/parrot/arsdk/arrouter/ARRouter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arrouter/ARRouter;->useCommandsFromTablet(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/parrot/arsdk/arrouter/ARRouter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->sendAllMagnetoCalibrationUpdates:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/parrot/arsdk/arrouter/ARRouter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->sendAllMagnetoCalibrationUpdates:Z

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARRouter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/arsdk/arrouter/ARRouter;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    iget v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->fromDroneSocketBufferSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/parrot/arsdk/arrouter/ARRouter;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    iget v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->toDroneSocketBufferSize:I

    return v0
.end method

.method static synthetic access$600(Lcom/parrot/arsdk/arrouter/ARRouter;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToControllerDidDisconnect()V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arcommands/ARCommandsFilter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->linkVideoFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/arsdk/arrouter/ARRouter;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDeviceDidDisconnect()V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/arsdk/arrouter/ARRouter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->waitingForTabletVideo:Z

    return v0
.end method

.method static synthetic access$902(Lcom/parrot/arsdk/arrouter/ARRouter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->waitingForTabletVideo:Z

    return p1
.end method

.method private dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 981
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->dispose()Z

    .line 984
    iput-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->dispose()Z

    .line 989
    iput-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    .line 991
    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v0, :cond_2

    .line 993
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->dispose()Z

    .line 994
    iput-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    .line 997
    :cond_2
    return-void
.end method

.method public static get720pRecvBufferSize()I
    .locals 1

    .prologue
    .line 366
    const/high16 v0, 0x80000

    return v0
.end method

.method public static getDefaultSocketBufferSize()I
    .locals 1

    .prologue
    .line 361
    const/high16 v0, 0x20000

    return v0
.end method

.method public static getDiscoveryPort()I
    .locals 1

    .prologue
    .line 347
    const v0, 0xa8ca

    return v0
.end method

.method public static getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    const-string v0, "127.0.0.1"

    return-object v0
.end method

.method private getRouterToController()Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;
    .locals 1

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    return-object v0
.end method

.method private getRouterToDevice()Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;
    .locals 1

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    return-object v0
.end method

.method private getRouterToTablet()Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;
    .locals 1

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    return-object v0
.end method

.method public static getcontrollerToRouterPort()I
    .locals 1

    .prologue
    .line 329
    const v0, 0x86d9

    return v0
.end method

.method public static getdeviceToRouterPort()I
    .locals 1

    .prologue
    .line 338
    const v0, 0x86d0

    return v0
.end method

.method private linkTabletAndDevice()Z
    .locals 3

    .prologue
    .line 744
    const/4 v0, 0x0

    .line 746
    .local v0, "succeed":Z
    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletAndDeviceLinked:Z

    if-eqz v1, :cond_1

    .line 748
    const/4 v0, 0x1

    .line 761
    :cond_0
    :goto_0
    return v0

    .line 750
    :cond_1
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    if-eqz v1, :cond_0

    .line 752
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->addCommandSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)V

    .line 753
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->addCommandSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)Z

    .line 755
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletAndDeviceLinked:Z

    .line 756
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->waitingForTabletVideo:Z

    .line 758
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private linkTabletAndDeviceVideo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 723
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletAndDeviceVideoLinked:Z

    if-nez v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->videoResenderListener:Lcom/parrot/arsdk/arrouter/ARRouter$VideoResenderListener;

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->videoResenderListener:Lcom/parrot/arsdk/arrouter/ARRouter$VideoResenderListener;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletIp:Ljava/lang/String;

    iget v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->arstream2TabletStreamPort:I

    iget v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->arstream2TabletControlPort:I

    invoke-interface {v0, v1, v2, v3}, Lcom/parrot/arsdk/arrouter/ARRouter$VideoResenderListener;->setup(Ljava/lang/String;II)V

    .line 729
    iput-boolean v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletAndDeviceVideoLinked:Z

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->addVideoSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)V

    .line 736
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->addVideoSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)Z

    .line 737
    iput-boolean v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletAndDeviceVideoLinked:Z

    goto :goto_0
.end method

.method private routerToControllerDidDisconnect()V
    .locals 0

    .prologue
    .line 2526
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->disconnect()V

    .line 2527
    return-void
.end method

.method private routerToDeviceDidDisconnect()V
    .locals 0

    .prologue
    .line 2531
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->disconnect()V

    .line 2532
    return-void
.end method

.method private routerToTabletDidDisconnect()V
    .locals 0

    .prologue
    .line 2536
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->disconnectFromTablet()V

    .line 2537
    return-void
.end method

.method private sendCopilotingSource()V
    .locals 3

    .prologue
    .line 2805
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2806
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    iget-boolean v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->commandsFromTablet:Z

    if-eqz v2, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTINGSTATE_PILOTINGSOURCE_SOURCE_ENUM;->ARCOMMANDS_SKYCONTROLLER_COPILOTINGSTATE_PILOTINGSOURCE_SOURCE_CONTROLLER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTINGSTATE_PILOTINGSOURCE_SOURCE_ENUM;

    .line 2810
    .local v1, "source":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTINGSTATE_PILOTINGSOURCE_SOURCE_ENUM;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerCoPilotingStatePilotingSource(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTINGSTATE_PILOTINGSOURCE_SOURCE_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2811
    invoke-virtual {p0, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    .line 2812
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2813
    return-void

    .line 2806
    .end local v1    # "source":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTINGSTATE_PILOTINGSOURCE_SOURCE_ENUM;
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTINGSTATE_PILOTINGSOURCE_SOURCE_ENUM;->ARCOMMANDS_SKYCONTROLLER_COPILOTINGSTATE_PILOTINGSOURCE_SOURCE_SKYCONTROLLER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTINGSTATE_PILOTINGSOURCE_SOURCE_ENUM;

    goto :goto_0
.end method

.method private sendMagnetoCalibrationIfNeeded(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;IIIZ)V
    .locals 6
    .param p1, "status"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;
    .param p2, "xQuality"    # I
    .param p3, "yQuality"    # I
    .param p4, "zQuality"    # I
    .param p5, "force"    # Z

    .prologue
    .line 2817
    iget-boolean v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->sendAllMagnetoCalibrationUpdates:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->magnetoCalibrationStatus:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    if-ne p1, v2, :cond_0

    if-eqz p5, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 2821
    .local v1, "needToSend":Z
    :goto_0
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->magnetoCalibrationStatus:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    .line 2822
    iput p2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->magnetoCalibrationQualityX:I

    .line 2823
    iput p3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->magnetoCalibrationQualityY:I

    .line 2824
    iput p4, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->magnetoCalibrationQualityZ:I

    .line 2826
    if-eqz v1, :cond_1

    .line 2828
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2829
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->magnetoCalibrationStatus:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    iget v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->magnetoCalibrationQualityX:I

    int-to-byte v3, v3

    iget v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->magnetoCalibrationQualityY:I

    int-to-byte v4, v4

    iget v5, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->magnetoCalibrationQualityZ:I

    int-to-byte v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerCalibrationStateMagnetoCalibrationState(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;BBB)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2834
    invoke-virtual {p0, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    .line 2835
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2837
    .end local v0    # "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    :cond_1
    return-void

    .line 2817
    .end local v1    # "needToSend":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unlinkTabletAndDevice()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, "succeed":Z
    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletAndDeviceLinked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    if-eqz v1, :cond_0

    .line 769
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->removeCommandSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)V

    .line 770
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->removeCommandSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)Z

    .line 772
    iput-boolean v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletAndDeviceLinked:Z

    .line 773
    iput-boolean v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->waitingForTabletVideo:Z

    .line 775
    const/4 v0, 0x1

    .line 778
    :cond_0
    return v0
.end method

.method private unlinkTabletAndDeviceVideo()V
    .locals 2

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletAndDeviceVideoLinked:Z

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->videoResenderListener:Lcom/parrot/arsdk/arrouter/ARRouter$VideoResenderListener;

    if-eqz v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->videoResenderListener:Lcom/parrot/arsdk/arrouter/ARRouter$VideoResenderListener;

    invoke-interface {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$VideoResenderListener;->close()V

    .line 798
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletAndDeviceVideoLinked:Z

    .line 800
    :cond_1
    return-void

    .line 791
    :cond_2
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->removeVideoSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)V

    .line 795
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->removeVideoSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)Z

    goto :goto_0
.end method

.method private useCommandsFromTablet(Z)V
    .locals 3
    .param p1, "use"    # Z

    .prologue
    .line 2778
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->commandsFromTablet:Z

    .line 2779
    .local v0, "prevCommandsFromTablet":Z
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->connectedToTablet:Z

    if-eqz v1, :cond_1

    .line 2781
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_BLOCKED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->setARDrone3PilotingPCMDBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2782
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletDispatchFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_ALLOWED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->setARDrone3PilotingPCMDBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2783
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->commandsFromTablet:Z

    .line 2793
    :goto_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->commandsFromTablet:Z

    if-eq v0, v1, :cond_0

    .line 2795
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendCopilotingSource()V

    .line 2796
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->coPilotingListener:Lcom/parrot/arsdk/arrouter/ARRouter$CoPilotingListener;

    if-eqz v1, :cond_0

    .line 2798
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->coPilotingListener:Lcom/parrot/arsdk/arrouter/ARRouter$CoPilotingListener;

    iget-boolean v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->commandsFromTablet:Z

    invoke-interface {v1, v2}, Lcom/parrot/arsdk/arrouter/ARRouter$CoPilotingListener;->onCopilotingChanged(Z)V

    .line 2801
    :cond_0
    return-void

    .line 2787
    :cond_1
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_ALLOWED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->setARDrone3PilotingPCMDBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2788
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletDispatchFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_BLOCKED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->setARDrone3PilotingPCMDBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2789
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->commandsFromTablet:Z

    goto :goto_0
.end method

.method private validateParameters()Z
    .locals 2

    .prologue
    .line 964
    const/4 v0, 0x1

    .line 965
    .local v0, "valid":Z
    iget v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevicePort:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 966
    :cond_0
    iget v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToControllerPort:I

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 967
    :cond_1
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceIp:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 970
    :cond_2
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceToRouterParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 971
    :cond_3
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToControllerParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .line 972
    :cond_4
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerToRouterParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    .line 973
    :cond_5
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDeviceParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    .line 976
    :cond_6
    return v0
.end method


# virtual methods
.method public declared-synchronized connect(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z
    .locals 10
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 637
    monitor-enter p0

    const/4 v7, 0x0

    .line 639
    .local v7, "failed":Z
    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->connectedToDevice:Z

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->disconnect()V

    .line 644
    :cond_0
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->validateParameters()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 647
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 648
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_CONNECTING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceConnectionState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

    .line 650
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v0, :cond_1

    .line 652
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendConnectionState()Z

    .line 656
    :cond_1
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    const-string v2, "127.0.0.1"

    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToControllerParams:Ljava/util/List;

    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerToRouterParams:Ljava/util/List;

    iget v5, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToControllerPort:I

    const v6, 0x86d9

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter;Ljava/lang/String;Ljava/util/List;Ljava/util/List;II)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    .line 658
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceIp:Ljava/lang/String;

    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDeviceParams:Ljava/util/List;

    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceToRouterParams:Ljava/util/List;

    iget v5, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevicePort:I

    const v6, 0x86d0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter;Ljava/lang/String;Ljava/util/List;Ljava/util/List;II)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    .line 660
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerToRouterNonVideoBuffersId:Ljava/util/List;

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->startThreads(Ljava/util/List;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;)Z

    move-result v0

    if-nez v0, :cond_7

    move v7, v8

    .line 662
    :goto_0
    if-nez v7, :cond_2

    .line 664
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerToRouterVideoBuffersId:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->startVideoThreads(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_8

    move v7, v8

    .line 667
    :cond_2
    :goto_1
    if-nez v7, :cond_3

    .line 669
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceToRouterNonVideoBuffersId:Ljava/util/List;

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->startThreads(Ljava/util/List;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;)Z

    move-result v0

    if-nez v0, :cond_9

    move v7, v8

    .line 672
    :cond_3
    :goto_2
    if-nez v7, :cond_4

    .line 674
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceToRouterVideoBuffersId:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->startVideoThreads(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_a

    move v7, v8

    .line 677
    :cond_4
    :goto_3
    if-nez v7, :cond_5

    .line 679
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->addCommandSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)Z

    .line 680
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->addCommandSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)V

    .line 681
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->addVideoSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)Z

    .line 682
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->addVideoSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)V

    .line 685
    :cond_5
    if-nez v7, :cond_b

    .line 687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->connectedToDevice:Z

    .line 689
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v0, :cond_6

    .line 691
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->addCommandSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)V

    .line 692
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->addCommandSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)V

    .line 702
    :cond_6
    :goto_4
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->connectedToDevice:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_7
    move v7, v9

    .line 660
    goto :goto_0

    :cond_8
    move v7, v9

    .line 664
    goto :goto_1

    :cond_9
    move v7, v9

    .line 669
    goto :goto_2

    :cond_a
    move v7, v9

    .line 674
    goto :goto_3

    .line 697
    :cond_b
    :try_start_1
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARRouter;->TAG:Ljava/lang/String;

    const-string v1, "Error while connecting to Device"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectToTablet(Ljava/lang/String;IIII)Z
    .locals 7
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "routerToTabletPort"    # I
    .param p3, "tabletToRouterPort"    # I
    .param p4, "tabletStreamPort"    # I
    .param p5, "tabletControlPort"    # I

    .prologue
    .line 881
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletARNetworkConfig:Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;

    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->getDiscoveryConfig()Lcom/parrot/arsdk/arrouter/DiscoveryConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->getARStreamFragmentSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->getDiscoveryConfig()Lcom/parrot/arsdk/arrouter/DiscoveryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->getARStreamMaxFragmentNb()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->addStreamReaderIOBuffer(II)V

    .line 882
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletARNetworkConfig:Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->getR2TParamsList()Ljava/util/List;

    move-result-object v3

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletARNetworkConfig:Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->getT2RParamsList()Ljava/util/List;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter;Ljava/lang/String;Ljava/util/List;Ljava/util/List;II)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    .line 884
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletARNetworkConfig:Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->getCommandsIOBuffers()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletDispatchFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletProcessFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->startThreads(Ljava/util/List;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->startVideoThreads(Ljava/util/List;)Z

    .line 887
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->connectedToTablet:Z

    .line 888
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletIp:Ljava/lang/String;

    .line 889
    iput p4, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->arstream2TabletStreamPort:I

    .line 890
    iput p5, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->arstream2TabletControlPort:I

    .line 891
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->addCommandSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)V

    .line 894
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->addCommandSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)V

    .line 897
    :cond_0
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->linkTabletAndDevice()Z

    .line 904
    :goto_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->connectedToTablet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 901
    :cond_1
    :try_start_1
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARRouter;->TAG:Ljava/lang/String;

    const-string v1, "Error while connecting to tablet"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 881
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()V
    .locals 2

    .prologue
    .line 808
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->connectedToDevice:Z

    if-eqz v0, :cond_4

    .line 811
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_DISCONNECTING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceConnectionState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

    .line 813
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v0, :cond_0

    .line 815
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendConnectionState()Z

    .line 818
    :cond_0
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->unlinkTabletAndDevice()Z

    .line 819
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->unlinkTabletAndDeviceVideo()V

    .line 821
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->removeCommandSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)V

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    if-eqz v0, :cond_2

    .line 827
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->stopThreads()V

    .line 828
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->dispose()Z

    .line 829
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    .line 831
    :cond_2
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    if-eqz v0, :cond_3

    .line 833
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->stopThreads()V

    .line 834
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->dispose()Z

    .line 835
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    .line 837
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->connectedToDevice:Z

    .line 840
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 841
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_NOTCONNECTED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceConnectionState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

    .line 843
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v0, :cond_4

    .line 845
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendConnectionState()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    :cond_4
    monitor-exit p0

    return-void

    .line 808
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectFromTablet()V
    .locals 2

    .prologue
    .line 912
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->connectedToTablet:Z

    if-eqz v0, :cond_1

    .line 914
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->unlinkTabletAndDevice()Z

    .line 915
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->unlinkTabletAndDeviceVideo()V

    .line 917
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->removeCommandSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)V

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyControllerCalibrationEnableMagnetoCalibrationQualityUpdatesUpdate(B)V

    .line 922
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->stopThreads()V

    .line 923
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->dispose()Z

    .line 924
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    .line 925
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->connectedToTablet:Z

    .line 926
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletIp:Ljava/lang/String;

    .line 927
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->arstream2TabletStreamPort:I

    .line 928
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->arstream2TabletControlPort:I

    .line 930
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->useCommandsFromTablet(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    :cond_1
    monitor-exit p0

    return-void

    .line 912
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCalibrationController()Lcom/parrot/arsdk/arrouter/ARCalibrationController;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->calibrationController:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    return-object v0
.end method

.method public getDiscoveryConfig()Lcom/parrot/arsdk/arrouter/DiscoveryConfig;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->discoveryServer:Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->getDiscoveryConfig()Lcom/parrot/arsdk/arrouter/DiscoveryConfig;

    move-result-object v0

    return-object v0
.end method

.method public isTabletConnected()Z
    .locals 1

    .prologue
    .line 2541
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->connectedToTablet:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConnectionToDeviceCompleted()V
    .locals 1

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->linkTabletAndDevice()Z

    .line 712
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_CONNECTED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceConnectionState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

    .line 715
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendConnectionState()Z

    .line 719
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 243
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_ALLOWED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;-><init>(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    .line 244
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_ALLOWED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;-><init>(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    .line 246
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_ALLOWED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;-><init>(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletDispatchFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    .line 247
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletDispatchFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_BLOCKED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->setCommonNetworkDisconnectBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 248
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletDispatchFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_BLOCKED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->setARDrone3PilotingPCMDBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 249
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletDispatchFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_BLOCKED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->setJumpingSumoPilotingPCMDBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 250
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletDispatchFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_BLOCKED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->setSkyControllerBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 253
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_BLOCKED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;-><init>(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletProcessFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    .line 254
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletProcessFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_ALLOWED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->setSkyControllerBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 255
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletProcessFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_ALLOWED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->setCommonSettingsCountryBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 257
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_BLOCKED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;-><init>(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->linkVideoFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    .line 258
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->linkVideoFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_ALLOWED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->setCommonCommonStateAllStatesChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 260
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->discoveryServer:Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;

    .line 261
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->discoveryServer:Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;

    const v1, 0xa8ca

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->start(I)V

    .line 263
    invoke-static {p0}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->wifiHelper:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceList:Ljava/util/List;

    .line 267
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter;Lcom/parrot/arsdk/arrouter/ARRouter$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->looperThread:Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;

    .line 268
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->looperThread:Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;->start()V

    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->useCommandsFromTablet(Z)V

    .line 272
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->calibrationController:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    .line 274
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARRouter$2;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/arrouter/ARRouter$2;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->magnetoCalibrationListener:Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationListener;

    .line 282
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->calibrationController:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->magnetoCalibrationListener:Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->addMagnetoListener(Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationListener;)V

    .line 283
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->calibrationController:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->start()Z

    .line 285
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->gpsAlt:D

    iput-wide v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->gpsLong:D

    iput-wide v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->gpsLat:D

    .line 286
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->heading:F

    .line 288
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->reset()V

    .line 289
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->calibrationController:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->magnetoCalibrationListener:Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->removeMagnetoListener(Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationListener;)V

    .line 295
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->calibrationController:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->stop()V

    .line 296
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->discoveryServer:Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->stop()V

    .line 297
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->wifiHelper:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->stop()V

    .line 298
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->looperThread:Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;->stop()V

    .line 299
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 856
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->disconnect()V

    .line 857
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevicePort:I

    .line 858
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToControllerPort:I

    .line 859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceIp:Ljava/lang/String;

    .line 861
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceToRouterParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 862
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToControllerParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 863
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerToRouterParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 864
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDeviceParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 865
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerToRouterNonVideoBuffersId:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 866
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceToRouterNonVideoBuffersId:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 867
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerToRouterVideoBuffersId:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 868
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceToRouterVideoBuffersId:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 869
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    monitor-exit p0

    return-void

    .line 856
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sendAPBandAndChannelSettings()Z
    .locals 9

    .prologue
    .line 2747
    sget-object v6, Lcom/parrot/arsdk/arrouter/ARRouter;->TAG:Ljava/lang/String;

    const-string v7, "sendAPBandAndChannelSettings"

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    new-instance v1, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v1}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2749
    .local v1, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;

    move-result-object v4

    .line 2750
    .local v4, "rtype":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getWifiAPBand()I

    move-result v0

    .line 2751
    .local v0, "bandValue":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGSSTATE_WIFISELECTIONCHANGED_BAND_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGSSTATE_WIFISELECTIONCHANGED_BAND_ENUM;

    move-result-object v2

    .line 2752
    .local v2, "rband":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGSSTATE_WIFISELECTIONCHANGED_BAND_ENUM;
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getWifiAPChannel()I

    move-result v6

    int-to-byte v3, v6

    .line 2753
    .local v3, "rchannel":B
    invoke-virtual {v1, v4, v2, v3}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAccessPointSettingsStateWifiSelectionChanged(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGSSTATE_WIFISELECTIONCHANGED_BAND_ENUM;B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2754
    invoke-virtual {p0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    move-result v5

    .line 2755
    .local v5, "sentStatus":Z
    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2756
    sget-object v6, Lcom/parrot/arsdk/arrouter/ARRouter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendAPBandAndChannelSettings:sentStatus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
    return v5
.end method

.method protected sendAPChannelSetting()Z
    .locals 5

    .prologue
    .line 2728
    sget-object v2, Lcom/parrot/arsdk/arrouter/ARRouter;->TAG:Ljava/lang/String;

    const-string v3, "sendAPChannelSetting"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    const/4 v1, 0x0

    .line 2732
    .local v1, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2733
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getWifiAPChannel()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAccessPointSettingsStateAccessPointChannelChanged(B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2735
    invoke-virtual {p0, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    move-result v1

    .line 2736
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2738
    sget-object v2, Lcom/parrot/arsdk/arrouter/ARRouter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAPChannelSetting:sentStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    return v1
.end method

.method protected sendAPSSIDSetting()Z
    .locals 5

    .prologue
    .line 2709
    sget-object v2, Lcom/parrot/arsdk/arrouter/ARRouter;->TAG:Ljava/lang/String;

    const-string v3, "sendAPSSIDSetting"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2710
    const/4 v1, 0x0

    .line 2713
    .local v1, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2714
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getAPSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAccessPointSettingsStateAccessPointSSIDChanged(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2716
    invoke-virtual {p0, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    move-result v1

    .line 2717
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2719
    sget-object v2, Lcom/parrot/arsdk/arrouter/ARRouter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAPSSIDSetting:sentStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    return v1
.end method

.method protected sendAllSettingsChanged()Z
    .locals 5

    .prologue
    .line 2593
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2594
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 2595
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2597
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerSettingsStateAllSettingsChanged()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 2598
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 2601
    invoke-virtual {p0, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    move-result v2

    .line 2603
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2605
    if-nez v2, :cond_1

    .line 2607
    sget-object v3, Lcom/parrot/arsdk/arrouter/ARRouter;->TAG:Ljava/lang/String;

    const-string v4, "Failed to send ConnectionState command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    :cond_1
    return v2
.end method

.method protected sendAllStatesChanged()Z
    .locals 5

    .prologue
    .line 2618
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2619
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 2620
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2622
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerCommonStateAllStatesChanged()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 2623
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 2626
    invoke-virtual {p0, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    move-result v2

    .line 2628
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2631
    if-nez v2, :cond_1

    .line 2633
    sget-object v3, Lcom/parrot/arsdk/arrouter/ARRouter;->TAG:Ljava/lang/String;

    const-string v4, "Failed to send ConnectionState command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    :cond_1
    return v2
.end method

.method protected sendConnectionState()Z
    .locals 7

    .prologue
    .line 2553
    const-string v2, ""

    .line 2554
    .local v2, "deviceNameToSend":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2556
    .local v3, "deviceProductIDToSend":S
    iget-object v5, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v5, :cond_0

    .line 2558
    iget-object v5, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2559
    iget-object v5, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v5

    int-to-short v3, v5

    .line 2562
    :cond_0
    iget-object v5, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceConnectionState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_CONNECTED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

    if-ne v5, v6, :cond_1

    .line 2564
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->waitingForTabletVideo:Z

    .line 2567
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2568
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v4, 0x0

    .line 2569
    .local v4, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2571
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    iget-object v5, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceConnectionState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

    invoke-virtual {v0, v5, v2, v3}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerDeviceStateConnexionChanged(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;Ljava/lang/String;S)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 2572
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v5, :cond_2

    .line 2575
    invoke-virtual {p0, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    move-result v4

    .line 2577
    :cond_2
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2580
    if-nez v4, :cond_3

    .line 2582
    sget-object v5, Lcom/parrot/arsdk/arrouter/ARRouter;->TAG:Ljava/lang/String;

    const-string v6, "Failed to send ConnectionState command."

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    :cond_3
    return v4
.end method

.method public sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z
    .locals 5
    .param p1, "data"    # Lcom/parrot/arsdk/arsal/ARNativeData;

    .prologue
    .line 1001
    const/4 v1, 0x0

    .line 1003
    .local v1, "sent":Z
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v2, :cond_0

    .line 1005
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletARNetworkConfig:Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;

    invoke-virtual {v3}, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->getR2TEventsId()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->sendNativeDataToBuffer(Lcom/parrot/arsdk/arsal/ARNativeData;I)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    move-result-object v0

    .line 1006
    .local v0, "err":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    .line 1008
    :goto_0
    if-nez v1, :cond_0

    .line 1010
    sget-object v2, Lcom/parrot/arsdk/arrouter/ARRouter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send cmd :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bufferid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletARNetworkConfig:Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->getR2TEventsId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    .end local v0    # "err":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    :cond_0
    return v1

    .line 1006
    .restart local v0    # "err":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendDataNonAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z
    .locals 5
    .param p1, "data"    # Lcom/parrot/arsdk/arsal/ARNativeData;

    .prologue
    .line 1019
    const/4 v1, 0x0

    .line 1021
    .local v1, "sent":Z
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v2, :cond_0

    .line 1023
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletARNetworkConfig:Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;

    invoke-virtual {v3}, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->getR2TNavdataId()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->sendNativeDataToBuffer(Lcom/parrot/arsdk/arsal/ARNativeData;I)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    move-result-object v0

    .line 1024
    .local v0, "err":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    .line 1026
    :goto_0
    if-nez v1, :cond_0

    .line 1028
    sget-object v2, Lcom/parrot/arsdk/arrouter/ARRouter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send cmd :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bufferid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->tabletARNetworkConfig:Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->getR2TNavdataId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    .end local v0    # "err":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    :cond_0
    return v1

    .line 1024
    .restart local v0    # "err":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected sendProductSerialChanged()Z
    .locals 6

    .prologue
    .line 2682
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getProductID()Ljava/lang/String;

    move-result-object v2

    .line 2684
    .local v2, "productID":Ljava/lang/String;
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2685
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v3, 0x0

    .line 2686
    .local v3, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2688
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, v2}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerSettingsStateProductSerialChanged(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 2689
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v4, :cond_0

    .line 2692
    invoke-virtual {p0, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    move-result v3

    .line 2694
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2696
    if-nez v3, :cond_1

    .line 2698
    sget-object v4, Lcom/parrot/arsdk/arrouter/ARRouter;->TAG:Ljava/lang/String;

    const-string v5, "Failed to send ProductSerial command."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2701
    :cond_1
    return v3
.end method

.method protected sendProductVariant()Z
    .locals 8

    .prologue
    .line 2641
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getType()I

    move-result v3

    .line 2642
    .local v3, "type":I
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2644
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 2645
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2646
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    packed-switch v3, :pswitch_data_0

    .line 2655
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;->ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;

    .line 2659
    .local v4, "variant":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;
    :goto_0
    invoke-virtual {v0, v4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerSettingsStateProductVariantChanged(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 2660
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v5, :cond_0

    .line 2662
    invoke-virtual {p0, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    move-result v2

    .line 2664
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2666
    if-nez v2, :cond_1

    .line 2668
    sget-object v5, Lcom/parrot/arsdk/arrouter/ARRouter;->TAG:Ljava/lang/String;

    const-string v6, "Failed to send ProductVariant command"

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2674
    :goto_1
    const/4 v5, 0x0

    return v5

    .line 2649
    .end local v4    # "variant":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;
    :pswitch_0
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;->ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_BEBOP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;

    .line 2650
    .restart local v4    # "variant":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;
    goto :goto_0

    .line 2652
    .end local v4    # "variant":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;
    :pswitch_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;->ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_BEBOP2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;

    .line 2653
    .restart local v4    # "variant":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;
    goto :goto_0

    .line 2672
    :cond_1
    sget-object v5, Lcom/parrot/arsdk/arrouter/ARRouter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sent ProductVariant : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2646
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendSettingsButtonEvent()Z
    .locals 2

    .prologue
    .line 2858
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2859
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerButtonEventsSettings()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2860
    invoke-virtual {p0, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    move-result v1

    .line 2861
    .local v1, "ret":Z
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2862
    return v1
.end method

.method public declared-synchronized sendSkyControllerDeviceControllerState(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;Ljava/lang/String;S)V
    .locals 1
    .param p1, "status"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "productID"    # S

    .prologue
    .line 464
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->sendSkyControllerDeviceControllerState(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;Ljava/lang/String;S)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :cond_0
    monitor-exit p0

    return-void

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set720pStreaming(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 371
    monitor-enter p0

    if-eqz p1, :cond_3

    const/high16 v0, 0x80000

    :goto_0
    :try_start_0
    iput v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->fromDroneSocketBufferSize:I

    .line 374
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->updateBufferSizes()V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevice:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->updateBufferSizes()V

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToController:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->updateBufferSizes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :cond_2
    monitor-exit p0

    return-void

    .line 371
    :cond_3
    const/high16 v0, 0x20000

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setARNetworkControllerToRouterParams(Ljava/util/List;I)V
    .locals 5
    .param p2, "arStreamAckBufferId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "c2dParams":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerToRouterParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 593
    .local v1, "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 591
    .end local v1    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 595
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerToRouterParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 597
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDeviceParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 599
    .restart local v1    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dispose()V

    goto :goto_1

    .line 601
    .end local v1    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :cond_1
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDeviceParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 603
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerToRouterNonVideoBuffersId:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 604
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerToRouterVideoBuffersId:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 605
    iput p2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->arStreamAckBufferId:I

    .line 606
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 609
    .restart local v1    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerToRouterParams:Ljava/util/List;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->clone()Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->getId()I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 614
    invoke-static {p2}, Lcom/parrot/arsdk/arstream/ARStreamReader;->newAckARNetworkIOBufferParam(I)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v0

    .line 615
    .local v0, "newParam":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDeviceParams:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerToRouterVideoBuffersId:Ljava/util/List;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 620
    .end local v0    # "newParam":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :cond_2
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDeviceParams:Ljava/util/List;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->clone()Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->controllerToRouterNonVideoBuffersId:Ljava/util/List;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 625
    .end local v1    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setARNetworkRouterToControllerParams(Ljava/util/List;I)V
    .locals 5
    .param p2, "arStreamDataBufferId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, "d2cParams":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToControllerParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 547
    .local v1, "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 545
    .end local v1    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 549
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToControllerParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 551
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceToRouterParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 553
    .restart local v1    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dispose()V

    goto :goto_1

    .line 555
    .end local v1    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :cond_1
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceToRouterParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 557
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceToRouterNonVideoBuffersId:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 558
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceToRouterVideoBuffersId:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 559
    iput p2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->arStreamDataBufferId:I

    .line 560
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 563
    .restart local v1    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToControllerParams:Ljava/util/List;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->clone()Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->getId()I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 569
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->getDiscoveryConfig()Lcom/parrot/arsdk/arrouter/DiscoveryConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->getARStreamFragmentSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->getDiscoveryConfig()Lcom/parrot/arsdk/arrouter/DiscoveryConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->getARStreamMaxFragmentNb()I

    move-result v4

    .line 568
    invoke-static {p2, v3, v4}, Lcom/parrot/arsdk/arstream/ARStreamSender;->newDataARNetworkIOBufferParam(III)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v0

    .line 570
    .local v0, "newParam":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceToRouterParams:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceToRouterVideoBuffersId:Ljava/util/List;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 575
    .end local v0    # "newParam":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :cond_2
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceToRouterParams:Ljava/util/List;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->clone()Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceToRouterNonVideoBuffersId:Ljava/util/List;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 580
    .end local v1    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setCameraResetListener(Lcom/parrot/arsdk/arrouter/ARRouter$CameraResetListener;)V
    .locals 1
    .param p1, "cameraResetListener"    # Lcom/parrot/arsdk/arrouter/ARRouter$CameraResetListener;

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->cameraResetListener:Lcom/parrot/arsdk/arrouter/ARRouter$CameraResetListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCoPilotingListener(Lcom/parrot/arsdk/arrouter/ARRouter$CoPilotingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/arsdk/arrouter/ARRouter$CoPilotingListener;

    .prologue
    .line 482
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->coPilotingListener:Lcom/parrot/arsdk/arrouter/ARRouter$CoPilotingListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    monitor-exit p0

    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceIp(Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceIp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    monitor-exit p0

    return-void

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceList(Ljava/util/List;)V
    .locals 1
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
    .line 398
    .local p1, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->deviceList:Ljava/util/List;

    .line 400
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyControllerDeviceRequestDeviceListUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :cond_0
    monitor-exit p0

    return-void

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGPSListener(Lcom/parrot/arsdk/arrouter/ARRouter$GPSListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/arsdk/arrouter/ARRouter$GPSListener;

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->gpsListener:Lcom/parrot/arsdk/arrouter/ARRouter$GPSListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    monitor-exit p0

    return-void

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInputMappingListener(Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;)V
    .locals 2
    .param p1, "inputMappingListener"    # Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->inputMappingListener:Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->inputMappingListener:Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->imcl:Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingChangedListener;

    invoke-interface {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->removeChangedListener(Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingChangedListener;)V

    .line 490
    :cond_0
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->inputMappingListener:Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    .line 491
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->inputMappingListener:Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->inputMappingListener:Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->imcl:Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingChangedListener;

    invoke-interface {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->addChangedListener(Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :cond_1
    monitor-exit p0

    return-void

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSkyControllerBattery(I)Z
    .locals 2
    .param p1, "battery"    # I

    .prologue
    .line 408
    monitor-enter p0

    const/4 v0, 0x0

    .line 409
    .local v0, "retval":Z
    :try_start_0
    iput p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->skyControllerBattery:I

    .line 411
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v1, p1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyContollerBatteryChanged(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 416
    :cond_0
    monitor-exit p0

    return v0

    .line 408
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setSkyControllerGpsFixed(Z)Z
    .locals 2
    .param p1, "fixed"    # Z

    .prologue
    .line 421
    monitor-enter p0

    const/4 v0, 0x0

    .line 422
    .local v0, "retval":Z
    :try_start_0
    iput-boolean p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->skyControllerGPSFixed:Z

    .line 424
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v1, p1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyContollerGpsFixChanged(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 428
    :cond_0
    monitor-exit p0

    return v0

    .line 421
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setSkyControllerGpsPosition(DDD)Z
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    iput-wide p3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->gpsLong:D

    .line 434
    iput-wide p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->gpsLat:D

    .line 435
    iput-wide p5, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->gpsAlt:D

    .line 436
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->updateGpsPosition()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSkyControllerHeading(F)Z
    .locals 1
    .param p1, "heading"    # F

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->heading:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 443
    iput p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->heading:F

    .line 444
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter;->updateGpsPosition()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 446
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSkyControllerWifiSignalLevel(I)Z
    .locals 2
    .param p1, "wifiSignalLevel"    # I

    .prologue
    .line 451
    monitor-enter p0

    const/4 v0, 0x0

    .line 452
    .local v0, "retval":Z
    :try_start_0
    iput p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->skyControllerWifiSignalLevel:I

    .line 454
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToTablet:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v1, p1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyContollerWifiSignalLevelChanged(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 459
    :cond_0
    monitor-exit p0

    return v0

    .line 451
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setVideoResenderListener(Lcom/parrot/arsdk/arrouter/ARRouter$VideoResenderListener;)V
    .locals 1
    .param p1, "videoResenderListener"    # Lcom/parrot/arsdk/arrouter/ARRouter$VideoResenderListener;

    .prologue
    .line 503
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->videoResenderListener:Lcom/parrot/arsdk/arrouter/ARRouter$VideoResenderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    monitor-exit p0

    return-void

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setrouterToControllerPort(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToControllerPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    monitor-exit p0

    return-void

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setrouterToDevicePort(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 521
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->routerToDevicePort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    monitor-exit p0

    return-void

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldAcceptTabletConnection(Ljava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 3
    .param p1, "tabletConnectionID"    # Ljava/lang/String;

    .prologue
    .line 941
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 943
    .local v0, "error":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getProductID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 945
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR_CONNECTION_BAD_ID:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 948
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->connectedToTablet:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 950
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR_CONNECTION_BUSY:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    :cond_1
    monitor-exit p0

    return-object v0

    .line 941
    .end local v0    # "error":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateGpsPosition()Z
    .locals 11

    .prologue
    .line 2842
    new-instance v1, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v1}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2843
    .local v1, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    iget-wide v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->gpsLat:D

    iget-wide v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->gpsLong:D

    iget-wide v6, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->gpsAlt:D

    iget v8, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->heading:F

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerSkyControllerStateGpsPositionChanged(DDDF)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2844
    invoke-virtual {p0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataNonAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    move-result v0

    .line 2845
    .local v0, "ret":Z
    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2847
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->gpsListener:Lcom/parrot/arsdk/arrouter/ARRouter$GPSListener;

    if-eqz v2, :cond_0

    .line 2849
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->gpsListener:Lcom/parrot/arsdk/arrouter/ARRouter$GPSListener;

    iget-wide v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->gpsLat:D

    iget-wide v6, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->gpsLong:D

    iget-wide v8, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->gpsAlt:D

    iget v10, p0, Lcom/parrot/arsdk/arrouter/ARRouter;->heading:F

    invoke-interface/range {v3 .. v10}, Lcom/parrot/arsdk/arrouter/ARRouter$GPSListener;->onSkyControllerGPSUpdated(DDDF)V

    .line 2852
    :cond_0
    return v0
.end method
