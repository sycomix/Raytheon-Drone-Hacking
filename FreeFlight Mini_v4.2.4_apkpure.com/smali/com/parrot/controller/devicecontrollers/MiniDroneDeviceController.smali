.class public Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
.super Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;
.source "MiniDroneDeviceController.java"

# interfaces
.implements Lcom/parrot/controller/devicecontrollers/DeviceControllerLightControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;,
        Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;,
        Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneControllerLooperThread;
    }
.end annotation


# static fields
.field private static LOOP_INTERVAL:D = 0.0

.field private static MINI_DRONE_DEVICE_CONTROLLER_FLOOD_CONTROL_STEP:D = 0.0

.field private static final NB_PCMD_TO_SKIP:I = 0x6

.field private static final TAG:Ljava/lang/String; = "MiniDroneDeviceController"


# instance fields
.field private creationTimeStamp:J

.field private droneState:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;

.field private final droneStateLock:Ljava/util/concurrent/locks/Lock;

.field private isInPause:Z

.field private mCurrentLoopInterval:J

.field private mLastPCMDWasDefault:Z

.field private mNbSkippedPCMD:I

.field private photoRecordController:Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-wide v0, 0x3fb999999999999aL    # 0.1

    sput-wide v0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MINI_DRONE_DEVICE_CONTROLLER_FLOOD_CONTROL_STEP:D

    .line 36
    const-wide v0, 0x3fa999999999999aL    # 0.05

    sput-wide v0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->LOOP_INTERVAL:D

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->isInPause:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->mCurrentLoopInterval:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
    .param p1, "x1"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->mCurrentLoopInterval:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->mLastPCMDWasDefault:Z

    return p1
.end method

.method static synthetic access$802(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->mNbSkippedPCMD:I

    return p1
.end method

.method static synthetic access$900()D
    .locals 2

    .prologue
    .line 31
    sget-wide v0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MINI_DRONE_DEVICE_CONTROLLER_FLOOD_CONTROL_STEP:D

    return-wide v0
.end method

.method public static create(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
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

    .line 54
    new-instance v1, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-direct {v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;-><init>()V

    .line 55
    .local v1, "miniDroneDeviceController":Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->mApplicationContext:Landroid/content/Context;

    .line 56
    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->onCreate()V

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.parrot.freeflight3.DeviceController.extra.deviceservice"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 59
    invoke-virtual {v1, v0, v3, v3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->onStartCommand(Landroid/content/Intent;II)I

    .line 60
    return-object v1
.end method

.method private sendControllerName()V
    .locals 6

    .prologue
    .line 682
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 686
    .local v2, "name":Ljava/lang/String;
    sget v3, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_MEDIA_MTU:I

    add-int/lit8 v3, v3, -0x4

    sget v4, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_HEADER_SIZE:I

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 688
    .local v1, "maxLen":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 690
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "controllerName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v3

    sget-object v4, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendConfigurationControllerName(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z

    .line 697
    return-void

    .line 694
    .end local v0    # "controllerName":Ljava/lang/String;
    :cond_0
    move-object v0, v2

    .restart local v0    # "controllerName":Ljava/lang/String;
    goto :goto_0
.end method

.method private sendControllerType()V
    .locals 6

    .prologue
    .line 701
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 705
    .local v2, "type":Ljava/lang/String;
    sget v3, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_MEDIA_MTU:I

    add-int/lit8 v3, v3, -0x4

    sget v4, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_HEADER_SIZE:I

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 707
    .local v1, "maxLen":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 709
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "controllerType":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v3

    sget-object v4, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendConfigurationControllerType(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z

    .line 716
    return-void

    .line 713
    .end local v0    # "controllerType":Ljava/lang/String;
    :cond_0
    move-object v0, v2

    .restart local v0    # "controllerType":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public controllerLoop()V
    .locals 14

    .prologue
    .line 124
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 125
    iget-object v11, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    .line 126
    .local v11, "currentState":Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->isInPause:Z

    if-nez v0, :cond_1

    const/4 v12, 0x1

    .line 127
    .local v12, "isRunning":Z
    :goto_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 129
    if-eqz v12, :cond_0

    .line 131
    sget-object v0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$1;->$SwitchMap$com$parrot$controller$devicecontrollers$DEVICE_CONTROLER_STATE_ENUM:[I

    invoke-virtual {v11}, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 173
    :cond_0
    :goto_1
    return-void

    .line 126
    .end local v12    # "isRunning":Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 135
    .restart local v12    # "isRunning":Z
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 136
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;

    .line 137
    .local v13, "localState":Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 139
    const/4 v10, 0x0

    .line 140
    .local v10, "currentPCMDIsDefault":Z
    invoke-static {v13}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->access$000(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->access$100(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    invoke-static {v13}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->access$000(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->access$200(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;)F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 142
    invoke-static {v13}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->access$000(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->access$300(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;)F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 143
    invoke-static {v13}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->access$000(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->access$400(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;)F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 144
    invoke-static {v13}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->access$000(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->access$500(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;)F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 146
    const/4 v10, 0x1

    .line 149
    :cond_2
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->mLastPCMDWasDefault:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->mNbSkippedPCMD:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dNackId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-static {v13}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->access$000(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->access$100(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    int-to-byte v4, v0

    invoke-static {v13}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->access$000(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->access$200(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;)F

    move-result v0

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    int-to-byte v5, v0

    invoke-static {v13}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->access$000(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->access$300(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;)F

    move-result v0

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v0, v6

    float-to-int v0, v0

    int-to-byte v6, v0

    invoke-static {v13}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->access$000(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->access$400(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;)F

    move-result v0

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v0, v7

    float-to-int v0, v0

    int-to-byte v7, v0

    invoke-static {v13}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->access$000(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->access$500(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;)F

    move-result v0

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v0, v8

    float-to-int v0, v0

    int-to-byte v8, v0

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->timeFromStart()I

    move-result v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendPilotingPCMD(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BBBBBI)Z

    .line 152
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->mNbSkippedPCMD:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->mNbSkippedPCMD:I

    .line 161
    :cond_4
    :goto_3
    iput-boolean v10, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->mLastPCMDWasDefault:Z

    goto/16 :goto_1

    .line 151
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 159
    :cond_6
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->mNbSkippedPCMD:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->mNbSkippedPCMD:I

    goto :goto_3

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected createNewControllerLooperThread()Lcom/parrot/controller/devicecontrollers/DeviceController$ControllerLooperThread;
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneControllerLooperThread;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneControllerLooperThread;-><init>(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V

    return-object v0
.end method

.method protected doStart()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    .locals 3

    .prologue
    .line 253
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->doStart()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    move-result-object v0

    .line 255
    .local v0, "error":Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v0, v1, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->sendControllerName()V

    .line 258
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->sendControllerType()V

    .line 259
    new-instance v1, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    .line 260
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    invoke-virtual {v1, p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->setDeviceController(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V

    .line 262
    :cond_0
    return-object v0
.end method

.method protected doStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    invoke-virtual {v0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->clearDelegates()V

    .line 271
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->setDeviceController(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V

    .line 272
    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    .line 274
    :cond_0
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->doStop()V

    .line 275
    return-void
.end method

.method public getPhotoRecordController()Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    return-object v0
.end method

.method public getState()Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    return-object v0
.end method

.method initDeviceState()V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 726
    new-instance v0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;-><init>(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;

    .line 727
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 728
    return-void
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->initialize()V

    .line 105
    :cond_0
    return-void
.end method

.method public networkDidCancelFrame(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 237
    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p1}, Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;->notificationRun()V

    .line 242
    :cond_0
    return-void
.end method

.method public networkDidReceiveAck(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 222
    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p1}, Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;->notificationRun()V

    .line 226
    :cond_0
    return-void
.end method

.method public networkDidSendFrame(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 217
    return-void
.end method

.method public networkTimeoutOccurred(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 232
    return-void
.end method

.method public declared-synchronized onMiniDroneUsbAccessoryStateClawStateUpdate(BLcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;B)V
    .locals 10
    .param p1, "id"    # B
    .param p2, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;
    .param p3, "list_flags"    # B

    .prologue
    .line 561
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 562
    .local v0, "accessoryBundle":Landroid/os/Bundle;
    const-string v6, "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotificationIdKey"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 563
    const-string v7, "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotificationStateKey"

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->getValue()I

    move-result v6

    :goto_0
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 564
    if-nez p2, :cond_0

    .line 566
    const-string v6, "MiniDroneDeviceController"

    const-string v7, "Bad value for argument `state` in ClawState command from the device."

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_0
    and-int/lit8 v6, p3, 0x1

    int-to-byte v6, v6

    if-gtz v6, :cond_1

    and-int/lit8 v6, p3, 0x4

    int-to-byte v6, v6

    if-lez v6, :cond_7

    .line 574
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 581
    .local v1, "accessoryListDictionary":Landroid/os/Bundle;
    :goto_1
    and-int/lit8 v6, p3, 0x4

    int-to-byte v6, v6

    if-nez v6, :cond_2

    .line 584
    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 586
    :cond_2
    and-int/lit8 v6, p3, 0x8

    int-to-byte v6, v6

    if-lez v6, :cond_3

    .line 589
    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 593
    :cond_3
    iget-object v6, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v7, "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotification"

    invoke-virtual {v6, v7, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 595
    and-int/lit8 v6, p3, 0x2

    int-to-byte v6, v6

    if-gtz v6, :cond_4

    and-int/lit8 v6, p3, 0x8

    int-to-byte v6, v6

    if-lez v6, :cond_5

    .line 599
    :cond_4
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 600
    .local v5, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 601
    .local v2, "accessoryListDictionaryCopy":Landroid/os/Bundle;
    const-string v6, "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotification"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 604
    new-instance v4, Landroid/content/Intent;

    const-string v6, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v4, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 606
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 609
    const-string v6, "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotification"

    invoke-virtual {p0, v6}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getMiniDroneDeviceControllerAndLibARCommandsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 610
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 611
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    .end local v2    # "accessoryListDictionaryCopy":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "intentDicChanged":Landroid/content/Intent;
    .end local v5    # "updateDictionary":Landroid/os/Bundle;
    :cond_5
    monitor-exit p0

    return-void

    .line 563
    .end local v1    # "accessoryListDictionary":Landroid/os/Bundle;
    :cond_6
    :try_start_1
    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->eARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;

    invoke-virtual {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->getValue()I

    move-result v6

    goto/16 :goto_0

    .line 579
    :cond_7
    iget-object v6, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v7, "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotification"

    invoke-virtual {v6, v7}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .restart local v1    # "accessoryListDictionary":Landroid/os/Bundle;
    goto/16 :goto_1

    .line 561
    .end local v0    # "accessoryBundle":Landroid/os/Bundle;
    .end local v1    # "accessoryListDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized onMiniDroneUsbAccessoryStateGunStateUpdate(BLcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;B)V
    .locals 10
    .param p1, "id"    # B
    .param p2, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;
    .param p3, "list_flags"    # B

    .prologue
    .line 625
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 626
    .local v0, "accessoryBundle":Landroid/os/Bundle;
    const-string v6, "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotificationIdKey"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 627
    const-string v7, "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotificationStateKey"

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;->getValue()I

    move-result v6

    :goto_0
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 628
    if-nez p2, :cond_0

    .line 630
    const-string v6, "MiniDroneDeviceController"

    const-string v7, "Bad value for argument `state` in GunState command from the device."

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_0
    and-int/lit8 v6, p3, 0x1

    int-to-byte v6, v6

    if-gtz v6, :cond_1

    and-int/lit8 v6, p3, 0x4

    int-to-byte v6, v6

    if-lez v6, :cond_7

    .line 638
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 645
    .local v1, "accessoryListDictionary":Landroid/os/Bundle;
    :goto_1
    and-int/lit8 v6, p3, 0x4

    int-to-byte v6, v6

    if-nez v6, :cond_2

    .line 648
    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 650
    :cond_2
    and-int/lit8 v6, p3, 0x8

    int-to-byte v6, v6

    if-lez v6, :cond_3

    .line 653
    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 657
    :cond_3
    iget-object v6, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v7, "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotification"

    invoke-virtual {v6, v7, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 659
    and-int/lit8 v6, p3, 0x2

    int-to-byte v6, v6

    if-gtz v6, :cond_4

    and-int/lit8 v6, p3, 0x8

    int-to-byte v6, v6

    if-lez v6, :cond_5

    .line 663
    :cond_4
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 664
    .local v5, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 665
    .local v2, "accessoryListDictionaryCopy":Landroid/os/Bundle;
    const-string v6, "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotification"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 668
    new-instance v4, Landroid/content/Intent;

    const-string v6, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 669
    .local v4, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 670
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 673
    const-string v6, "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotification"

    invoke-virtual {p0, v6}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getMiniDroneDeviceControllerAndLibARCommandsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 674
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 675
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    .end local v2    # "accessoryListDictionaryCopy":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "intentDicChanged":Landroid/content/Intent;
    .end local v5    # "updateDictionary":Landroid/os/Bundle;
    :cond_5
    monitor-exit p0

    return-void

    .line 627
    .end local v1    # "accessoryListDictionary":Landroid/os/Bundle;
    :cond_6
    :try_start_1
    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;->eARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;

    invoke-virtual {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;->getValue()I

    move-result v6

    goto/16 :goto_0

    .line 643
    :cond_7
    iget-object v6, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v7, "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotification"

    invoke-virtual {v6, v7}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .restart local v1    # "accessoryListDictionary":Landroid/os/Bundle;
    goto/16 :goto_1

    .line 625
    .end local v0    # "accessoryBundle":Landroid/os/Bundle;
    .end local v1    # "accessoryListDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized onMiniDroneUsbAccessoryStateLightStateUpdate(BLcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;BB)V
    .locals 10
    .param p1, "id"    # B
    .param p2, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;
    .param p3, "intensity"    # B
    .param p4, "list_flags"    # B

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 498
    .local v0, "accessoryBundle":Landroid/os/Bundle;
    const-string v6, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotificationIdKey"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 499
    const-string v7, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotificationStateKey"

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;->getValue()I

    move-result v6

    :goto_0
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 500
    if-nez p2, :cond_0

    .line 502
    const-string v6, "MiniDroneDeviceController"

    const-string v7, "Bad value for argument `state` in LightState command from the device."

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_0
    const-string v6, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotificationIntensityKey"

    invoke-virtual {v0, v6, p3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 507
    and-int/lit8 v6, p4, 0x1

    int-to-byte v6, v6

    if-gtz v6, :cond_1

    and-int/lit8 v6, p4, 0x4

    int-to-byte v6, v6

    if-lez v6, :cond_7

    .line 510
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 517
    .local v1, "accessoryListDictionary":Landroid/os/Bundle;
    :goto_1
    and-int/lit8 v6, p4, 0x4

    int-to-byte v6, v6

    if-nez v6, :cond_2

    .line 520
    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 522
    :cond_2
    and-int/lit8 v6, p4, 0x8

    int-to-byte v6, v6

    if-lez v6, :cond_3

    .line 525
    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 529
    :cond_3
    iget-object v6, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v7, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotification"

    invoke-virtual {v6, v7, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 531
    and-int/lit8 v6, p4, 0x2

    int-to-byte v6, v6

    if-gtz v6, :cond_4

    and-int/lit8 v6, p4, 0x8

    int-to-byte v6, v6

    if-lez v6, :cond_5

    .line 535
    :cond_4
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 536
    .local v5, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 537
    .local v2, "accessoryListDictionaryCopy":Landroid/os/Bundle;
    const-string v6, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotification"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 540
    new-instance v4, Landroid/content/Intent;

    const-string v6, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .local v4, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 542
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 545
    const-string v6, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotification"

    invoke-virtual {p0, v6}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getMiniDroneDeviceControllerAndLibARCommandsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 546
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 547
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    .end local v2    # "accessoryListDictionaryCopy":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "intentDicChanged":Landroid/content/Intent;
    .end local v5    # "updateDictionary":Landroid/os/Bundle;
    :cond_5
    monitor-exit p0

    return-void

    .line 499
    .end local v1    # "accessoryListDictionary":Landroid/os/Bundle;
    :cond_6
    :try_start_1
    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;->eARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;

    invoke-virtual {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;->getValue()I

    move-result v6

    goto/16 :goto_0

    .line 515
    :cond_7
    iget-object v6, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v7, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotification"

    invoke-virtual {v6, v7}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .restart local v1    # "accessoryListDictionary":Landroid/os/Bundle;
    goto/16 :goto_1

    .line 497
    .end local v0    # "accessoryBundle":Landroid/os/Bundle;
    .end local v1    # "accessoryListDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->stopSelf()V

    .line 96
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    return v2

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->initialize()V

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 78
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    sget-object v3, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    if-ne v2, v3, :cond_2

    .line 82
    const-string v2, "com.parrot.freeflight3.DeviceController.extra.deviceservice"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 83
    .local v0, "extraService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    const-string v2, "com.parrot.freeflight3.DeviceController.extra.fastreconnection"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 85
    .local v1, "fastReconnection":Z
    invoke-virtual {p0, v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->setConfigurations(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Z)V

    .line 87
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->start()V

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->creationTimeStamp:J

    .line 91
    .end local v0    # "extraService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .end local v1    # "fastReconnection":Z
    :cond_2
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public pause(Z)V
    .locals 1
    .param p1, "pause"    # Z

    .prologue
    .line 199
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 200
    iput-boolean p1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->isInPause:Z

    .line 201
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 202
    return-void
.end method

.method public setConfigurations(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Z)V
    .locals 7
    .param p1, "service"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .param p2, "fastReconnection"    # Z

    .prologue
    .line 109
    new-instance v2, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;

    invoke-direct {v2}, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;-><init>()V

    .line 111
    .local v2, "netConfig":Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;
    iput-boolean p2, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->fastReconnection:Z

    .line 112
    sget-wide v4, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->LOOP_INTERVAL:D

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-super/range {v1 .. v6}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->setConfigurations(Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;DLjava/lang/Class;)V

    .line 113
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->startThread()V

    .line 182
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->stopThread()V

    .line 191
    return-void
.end method

.method timeFromStart()I
    .locals 8

    .prologue
    .line 732
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 733
    .local v0, "current":J
    iget-wide v6, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->creationTimeStamp:J

    sub-long v2, v0, v6

    .line 734
    .local v2, "delta":J
    const-wide/32 v6, 0x7fffffff

    rem-long v4, v2, v6

    .line 735
    .local v4, "iDelta":J
    long-to-int v6, v4

    return v6
.end method

.method public userCommandsActivationChanged(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 284
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 285
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->access$000(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->access$102(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;Z)Z

    .line 286
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 287
    return-void
.end method

.method public userEnteredPilotingHud(Z)V
    .locals 4
    .param p1, "inHud"    # Z

    .prologue
    .line 461
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v0, v1

    .line 463
    .local v0, "inHudByte":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    .line 462
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->DeviceController_SendControllerIsPiloting(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 467
    return-void

    .line 461
    .end local v0    # "inHudByte":B
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userGazChanged(F)V
    .locals 1
    .param p1, "gaz"    # F

    .prologue
    .line 291
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 292
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->access$000(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->access$502(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;F)F

    .line 293
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 294
    return-void
.end method

.method public userPitchChanged(F)V
    .locals 1
    .param p1, "pitch"    # F

    .prologue
    .line 298
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 299
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->access$000(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->access$302(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;F)F

    .line 300
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 301
    return-void
.end method

.method public userRequestCap(S)V
    .locals 3
    .param p1, "offset"    # S

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendAnimationsCap(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;S)Z

    .line 357
    return-void
.end method

.method public userRequestClawAction(ILcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "action"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    int-to-byte v4, p1

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendUsbAccessoryClawControl(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BLcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;)Z

    .line 444
    return-void
.end method

.method public userRequestFlip(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_ENUM;)V
    .locals 3
    .param p1, "flipDirection"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_ENUM;

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendAnimationsFlip(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_ENUM;)Z

    .line 352
    return-void
.end method

.method public userRequestFlyingMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_FLYINGMODE_MODE_ENUM;)V
    .locals 3
    .param p1, "mode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_FLYINGMODE_MODE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendPilotingFlyingMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_FLYINGMODE_MODE_ENUM;)Z

    .line 473
    return-void
.end method

.method public userRequestGunFire(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    int-to-byte v4, p1

    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_GUNCONTROL_ACTION_ENUM;->ARCOMMANDS_MINIDRONE_USBACCESSORY_GUNCONTROL_ACTION_FIRE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_GUNCONTROL_ACTION_ENUM;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendUsbAccessoryGunControl(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BLcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_GUNCONTROL_ACTION_ENUM;)Z

    .line 451
    return-void
.end method

.method public userRequestMaxPlaneModeRotationSpeed(F)V
    .locals 3
    .param p1, "maxRotationSpeed"    # F

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendSpeedSettingsMaxPlaneModeRotationSpeed(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 484
    return-void
.end method

.method public userRequestPlaneGearBox(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_PLANEGEARBOX_STATE_ENUM;)V
    .locals 3
    .param p1, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_PLANEGEARBOX_STATE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendPilotingPlaneGearBox(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_PLANEGEARBOX_STATE_ENUM;)Z

    .line 478
    return-void
.end method

.method public userRequestRecordPicture(B)V
    .locals 3
    .param p1, "massStorageId"    # B

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendMediaRecordPicture(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 392
    return-void
.end method

.method public userRequestRecordPictureV2()V
    .locals 3

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendMediaRecordPictureV2(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 397
    return-void
.end method

.method public userRequestSetAutoTakeOffMode(B)V
    .locals 3
    .param p1, "state"    # B

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendPilotingAutoTakeOffMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 333
    return-void
.end method

.method public userRequestSetGpsPosition(DD)V
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    const/4 v3, 0x0

    .line 406
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    move-object v0, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendGPSControllerLatitudeForRun(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;D)Z

    .line 407
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    move-object v0, p0

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendGPSControllerLongitudeForRun(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;D)Z

    .line 408
    return-void
.end method

.method public userRequestSetHeadlightsIntensity(I)V
    .locals 6
    .param p1, "intensity"    # I

    .prologue
    .line 413
    int-to-byte v4, p1

    .line 414
    .local v4, "intensityByte":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->DeviceController_SendHeadlightsIntensity(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BB)Z

    .line 417
    return-void
.end method

.method public userRequestSetPairedRemote(SSS)V
    .locals 7
    .param p1, "msbMac"    # S
    .param p2, "midMac"    # S
    .param p3, "lsbMac"    # S

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendRemoteControllerSetPairedRemote(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;SSS)Z

    .line 457
    return-void
.end method

.method public userRequestSetUsbLightsIntensity(ILcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_ENUM;I)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "mode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_ENUM;
    .param p3, "intensity"    # I

    .prologue
    .line 435
    int-to-byte v6, p3

    .line 436
    .local v6, "intensityByte":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    int-to-byte v4, p1

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendUsbAccessoryLightControl(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BLcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_ENUM;B)Z

    .line 438
    return-void
.end method

.method public userRequestStartAnimation(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;)V
    .locals 3
    .param p1, "anim"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->DeviceController_SendAnimationsStartAnimation(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;)Z

    .line 424
    return-void
.end method

.method public userRequestStopAnimation(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;)V
    .locals 3
    .param p1, "anim"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->DeviceController_SendAnimationsStopAnimation(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;)Z

    .line 431
    return-void
.end method

.method public userRequestedEmergency()V
    .locals 3

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dEmergencyId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendPilotingEmergency(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 321
    return-void
.end method

.method public userRequestedFlatTrim()V
    .locals 3

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendPilotingFlatTrim(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 347
    return-void
.end method

.method public userRequestedLanding()V
    .locals 3

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendPilotingLanding(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 339
    return-void
.end method

.method public userRequestedPilotingSettingsBankedTurn(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendPilotingSettingsBankedTurn(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 343
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedPilotingSettingsMaxAltitude(F)V
    .locals 3
    .param p1, "maxAltitude"    # F

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendPilotingSettingsMaxAltitude(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 362
    return-void
.end method

.method public userRequestedPilotingSettingsMaxTilt(F)V
    .locals 3
    .param p1, "maxTilt"    # F

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendPilotingSettingsMaxTilt(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 367
    return-void
.end method

.method public userRequestedSettingsCutOut(Z)V
    .locals 4
    .param p1, "cutOut"    # Z

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendSettingsCutOutMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 402
    return-void

    .line 401
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedSpeedSettingsMaxHorizontalSpeed(F)V
    .locals 3
    .param p1, "maxSpeed"    # F

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendSpeedSettingsMaxHorizontalSpeed(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 377
    return-void
.end method

.method public userRequestedSpeedSettingsMaxRotationSpeed(F)V
    .locals 3
    .param p1, "maxSpeed"    # F

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendSpeedSettingsMaxRotationSpeed(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 382
    return-void
.end method

.method public userRequestedSpeedSettingsMaxVerticalSpeed(F)V
    .locals 3
    .param p1, "maxSpeed"    # F

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendSpeedSettingsMaxVerticalSpeed(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 372
    return-void
.end method

.method public userRequestedSpeedSettingsWheels(Z)V
    .locals 4
    .param p1, "wheels"    # Z

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendSpeedSettingsWheels(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 387
    return-void

    .line 386
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedTakeOff()V
    .locals 3

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->MiniDroneDeviceController_SendPilotingTakeOff(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 327
    return-void
.end method

.method public userRollChanged(F)V
    .locals 1
    .param p1, "roll"    # F

    .prologue
    .line 305
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 306
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->access$000(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->access$202(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;F)F

    .line 307
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 308
    return-void
.end method

.method public userYawChanged(F)V
    .locals 1
    .param p1, "yaw"    # F

    .prologue
    .line 312
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 313
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->access$000(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->access$402(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;F)F

    .line 314
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 315
    return-void
.end method
