.class public Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;
.super Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;
.source "JumpingSumoDeviceController.java"

# interfaces
.implements Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamControl;
.implements Lcom/parrot/controller/devicecontrollers/DeviceControllerLightControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;
    }
.end annotation


# static fields
.field private static DEFAULT_SOUND:Ljava/lang/String;

.field private static LOOP_INTERVAL:D

.field private static PI_2:D

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private audioStreamReceiver:Lcom/parrot/controller/audio/AudioStreamReceiver;

.field private audioStreamSender:Lcom/parrot/controller/audio/AudioStreamSender;

.field private jsState:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;

.field private final jsStateLock:Ljava/util/concurrent/locks/Lock;

.field private photoRecordController:Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;

.field private videoRecordController:Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-class v0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->TAG:Ljava/lang/String;

    .line 42
    const-wide v0, 0x3fa999999999999aL    # 0.05

    sput-wide v0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->LOOP_INTERVAL:D

    .line 43
    const-string v0, "default_sound.wav"

    sput-object v0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->DEFAULT_SOUND:Ljava/lang/String;

    .line 44
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    sput-wide v0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->PI_2:D

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsStateLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method


# virtual methods
.method public cleanNetworkStateWifiAuthChannelListChangedNotificationDictionary()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v1, "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->remove(Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method public cleanNetworkStateWifiScanListChangedNotificationDictionary()V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v1, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->remove(Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public controllerLoop()V
    .locals 9

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    .line 114
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 115
    iget-object v7, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    .line 116
    .local v7, "currentState":Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 118
    sget-object v0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$1;->$SwitchMap$com$parrot$controller$devicecontrollers$DEVICE_CONTROLER_STATE_ENUM:[I

    invoke-virtual {v7}, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 123
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsState:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;

    .line 124
    .local v8, "localState":Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 126
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dNackId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-static {v8}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->access$000(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    int-to-byte v4, v0

    invoke-static {v8}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->access$100(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;)F

    move-result v0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    int-to-byte v5, v0

    invoke-static {v8}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->access$200(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;)F

    move-result v0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    int-to-byte v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendPilotingPCMD(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BBB)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected doStart()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    .locals 7

    .prologue
    const v4, 0xffdc

    .line 208
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->doStart()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    move-result-object v6

    .line 210
    .local v6, "error":Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v6, v0, :cond_0

    .line 212
    new-instance v0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->videoRecordController:Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;

    .line 213
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->videoRecordController:Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;

    invoke-virtual {v0, p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setDeviceController(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;)V

    .line 214
    new-instance v0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;

    .line 215
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;

    invoke-virtual {v0, p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->setDeviceController(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;)V

    .line 217
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/utils/Device;->isJSEvo(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lcom/parrot/controller/audio/AudioStreamSender;

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetManager()Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAudioDataId()I

    move-result v2

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getD2cAudioAckId()I

    move-result v3

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/controller/audio/AudioStreamSender;-><init>(Lcom/parrot/arsdk/arnetwork/ARNetworkManager;IIII)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->audioStreamSender:Lcom/parrot/controller/audio/AudioStreamSender;

    .line 220
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->audioStreamSender:Lcom/parrot/controller/audio/AudioStreamSender;

    invoke-virtual {v0}, Lcom/parrot/controller/audio/AudioStreamSender;->startStream()Z

    .line 222
    new-instance v0, Lcom/parrot/controller/audio/AudioStreamReceiver;

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetManager()Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getD2cAudioDataId()I

    move-result v2

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAudioAckId()I

    move-result v3

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/controller/audio/AudioStreamReceiver;-><init>(Lcom/parrot/arsdk/arnetwork/ARNetworkManager;IIII)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->audioStreamReceiver:Lcom/parrot/controller/audio/AudioStreamReceiver;

    .line 223
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->audioStreamReceiver:Lcom/parrot/controller/audio/AudioStreamReceiver;

    invoke-virtual {v0}, Lcom/parrot/controller/audio/AudioStreamReceiver;->startStream()V

    .line 226
    :cond_0
    return-object v6
.end method

.method protected doStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->videoRecordController:Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->videoRecordController:Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;

    invoke-virtual {v0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->clearDelegates()V

    .line 235
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->videoRecordController:Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setDeviceController(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;)V

    .line 236
    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->videoRecordController:Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;

    invoke-virtual {v0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->clearDelegates()V

    .line 241
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->setDeviceController(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;)V

    .line 242
    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->audioStreamSender:Lcom/parrot/controller/audio/AudioStreamSender;

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->audioStreamSender:Lcom/parrot/controller/audio/AudioStreamSender;

    invoke-virtual {v0}, Lcom/parrot/controller/audio/AudioStreamSender;->stopStream()V

    .line 248
    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->audioStreamSender:Lcom/parrot/controller/audio/AudioStreamSender;

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->audioStreamReceiver:Lcom/parrot/controller/audio/AudioStreamReceiver;

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->audioStreamReceiver:Lcom/parrot/controller/audio/AudioStreamReceiver;

    invoke-virtual {v0}, Lcom/parrot/controller/audio/AudioStreamReceiver;->stopStream()V

    .line 254
    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->audioStreamReceiver:Lcom/parrot/controller/audio/AudioStreamReceiver;

    .line 256
    :cond_3
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->doStop()V

    .line 257
    return-void
.end method

.method public enableVideoStreaming(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendMediaStreamingVideoEnable(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 786
    return-void

    .line 784
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioStreamReceiver()Lcom/parrot/controller/audio/AudioStreamReceiver;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->audioStreamReceiver:Lcom/parrot/controller/audio/AudioStreamReceiver;

    return-object v0
.end method

.method public getAudioStreamSender()Lcom/parrot/controller/audio/AudioStreamSender;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->audioStreamSender:Lcom/parrot/controller/audio/AudioStreamSender;

    return-object v0
.end method

.method public getPhotoRecordController()Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->photoRecordController:Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;

    return-object v0
.end method

.method public getState()Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    return-object v0
.end method

.method public getVideoRecordController()Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->videoRecordController:Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;

    return-object v0
.end method

.method initDeviceState()V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 705
    new-instance v0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;-><init>(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsState:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;

    .line 706
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 707
    return-void
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->initialize()V

    .line 96
    :cond_0
    return-void
.end method

.method public isVideoStreamingEnabled()Z
    .locals 3

    .prologue
    .line 771
    const/4 v1, 0x1

    .line 772
    .local v1, "retval":Z
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v0

    .line 773
    .local v0, "dict":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v2, "JumpingSumoDeviceControllerMediaStreamingStateVideoEnableChangedNotificationEnabledKey"

    invoke-virtual {v0, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 775
    const-string v2, "JumpingSumoDeviceControllerMediaStreamingStateVideoEnableChangedNotificationEnabledKey"

    invoke-virtual {v0, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 778
    :cond_0
    return v1
.end method

.method public networkDidCancelFrame(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 198
    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p1}, Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;->notificationRun()V

    .line 203
    :cond_0
    return-void
.end method

.method public networkDidReceiveAck(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p1}, Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;->notificationRun()V

    .line 187
    :cond_0
    return-void
.end method

.method public networkDidSendFrame(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 178
    return-void
.end method

.method public networkTimeoutOccurred(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 193
    return-void
.end method

.method public declared-synchronized onJumpingSumoMediaStreamingStateVideoEnableChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;)V
    .locals 2
    .param p1, "enabled"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;

    .prologue
    .line 681
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->onJumpingSumoMediaStreamingStateVideoEnableChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;)V

    .line 682
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;->ARCOMMANDS_JUMPINGSUMO_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENABLED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;

    if-ne p1, v0, :cond_0

    .line 684
    sget-object v0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->TAG:Ljava/lang/String;

    const-string v1, "Streaming enabled notification, starting video thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->startVideoThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    :goto_0
    monitor-exit p0

    return-void

    .line 689
    :cond_0
    :try_start_1
    sget-object v0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->TAG:Ljava/lang/String;

    const-string v1, "Streaming disabled notification, stopping video thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->stopVideoThread()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onJumpingSumoNetworkStateWifiAuthChannelListChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;BB)V
    .locals 9
    .param p1, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    .param p2, "channel"    # B
    .param p3, "in_or_out"    # B

    .prologue
    .line 586
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 587
    .local v4, "updateDictionary":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 588
    .local v3, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotificationBandKey"

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->getValue()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 589
    const-string v5, "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotificationChannelKey"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 590
    const-string v5, "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotificationInOrOutKey"

    invoke-virtual {v3, v5, p3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 592
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 593
    .local v2, "listDictionary":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 595
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 597
    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_0
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

    .line 598
    move-object v3, v2

    .line 600
    const-string v5, "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 603
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v5, v6, v3}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 606
    new-instance v1, Landroid/content/Intent;

    const-string v5, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 607
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 608
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 612
    new-instance v0, Landroid/content/Intent;

    const-string v5, "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 613
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 614
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 615
    return-void
.end method

.method public onJumpingSumoNetworkStateWifiScanListChangedUpdate(Ljava/lang/String;SLcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;B)V
    .locals 9
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "rssi"    # S
    .param p3, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;
    .param p4, "channel"    # B

    .prologue
    .line 635
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 636
    .local v4, "updateDictionary":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 637
    .local v3, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotificationSsidKey"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v5, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotificationRssiKey"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 639
    const-string v5, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotificationBandKey"

    invoke-virtual {p3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;->getValue()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 640
    const-string v5, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotificationChannelKey"

    invoke-virtual {v3, v5, p4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 642
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 643
    .local v2, "listDictionary":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 645
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 647
    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_0
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

    .line 648
    move-object v3, v2

    .line 650
    const-string v5, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 653
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v5, v6, v3}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 656
    new-instance v1, Landroid/content/Intent;

    const-string v5, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 657
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 658
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 662
    new-instance v0, Landroid/content/Intent;

    const-string v5, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 663
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 664
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 665
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 60
    sget-object v2, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->TAG:Ljava/lang/String;

    const-string v3, "recreated by the system, don\'t need! stop it"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->stopSelf()V

    .line 87
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    return v2

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->initialize()V

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 70
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    sget-object v3, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    if-ne v2, v3, :cond_2

    .line 73
    const-string v2, "com.parrot.freeflight3.DeviceController.extra.deviceservice"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 74
    .local v0, "extraService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    const-string v2, "com.parrot.freeflight3.DeviceController.extra.fastreconnection"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 76
    .local v1, "fastReconnection":Z
    invoke-virtual {p0, v0, v1}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->setConfigurations(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Z)V

    .line 78
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->start()V

    .line 84
    .end local v0    # "extraService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .end local v1    # "fastReconnection":Z
    :goto_1
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 82
    :cond_2
    sget-object v2, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->TAG:Ljava/lang/String;

    const-string v3, "onStartCommand not effective because device controller is not stopped"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public pause(Z)V
    .locals 0
    .param p1, "pause"    # Z

    .prologue
    .line 163
    return-void
.end method

.method public setConfigurations(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Z)V
    .locals 7
    .param p1, "service"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .param p2, "fastReconnection"    # Z

    .prologue
    .line 100
    new-instance v2, Lcom/parrot/controller/devicecontrollers/JumpingSumoARNetworkConfig;

    invoke-direct {v2}, Lcom/parrot/controller/devicecontrollers/JumpingSumoARNetworkConfig;-><init>()V

    .line 102
    .local v2, "netConfig":Lcom/parrot/controller/devicecontrollers/JumpingSumoARNetworkConfig;
    iput-boolean p2, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->fastReconnection:Z

    .line 103
    sget-wide v4, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->LOOP_INTERVAL:D

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-super/range {v1 .. v6}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->setConfigurations(Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;DLjava/lang/Class;)V

    .line 104
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->startThread()V

    .line 146
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->stopThread()V

    .line 155
    return-void
.end method

.method public supportsVideoStreamingControl()Z
    .locals 3

    .prologue
    .line 758
    const/4 v1, 0x0

    .line 759
    .local v1, "retval":Z
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v0

    .line 760
    .local v0, "dict":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v2, "JumpingSumoDeviceControllerMediaStreamingStateVideoEnableChangedNotificationEnabledKey"

    invoke-virtual {v0, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 762
    const/4 v1, 0x1

    .line 765
    :cond_0
    return v1
.end method

.method public userChangedJumpMotorSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 312
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 313
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsState:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->access$302(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;F)F

    .line 314
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 315
    return-void
.end method

.method public userChangedPosture(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTING_POSTURE_TYPE_ENUM;)V
    .locals 3
    .param p1, "posture"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTING_POSTURE_TYPE_ENUM;

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendPilotingPosture(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTING_POSTURE_TYPE_ENUM;)Z

    .line 308
    return-void
.end method

.method public userChangedScreenFlag(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 299
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 300
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsState:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->access$002(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;Z)Z

    .line 301
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 302
    return-void
.end method

.method public userChangedSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 285
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 286
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsState:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->access$102(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;F)F

    .line 287
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 288
    return-void
.end method

.method public userChangedTurnRatio(F)V
    .locals 1
    .param p1, "turnRatio"    # F

    .prologue
    .line 292
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 293
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsState:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->access$202(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;F)F

    .line 294
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->jsStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 295
    return-void
.end method

.method public userEnteredPilotingHud(Z)V
    .locals 4
    .param p1, "inHud"    # Z

    .prologue
    .line 419
    invoke-static {p0}, Lcom/parrot/controller/video/framesaving/FrameSaver;->isLogActivated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    if-eqz p1, :cond_1

    .line 424
    invoke-static {p0}, Lcom/parrot/controller/video/framesaving/FrameSaver;->createFiles(Landroid/content/Context;)V

    .line 425
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    check-cast v1, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;->getStreamManager()Lcom/parrot/controller/video/ARStreamManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    check-cast v1, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;->getStreamManager()Lcom/parrot/controller/video/ARStreamManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/video/ARStreamManager;->enableFrameSaving()V

    .line 440
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    int-to-byte v0, v1

    .line 442
    .local v0, "inHudByte":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    .line 441
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->DeviceController_SendControllerIsPiloting(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 446
    return-void

    .line 433
    .end local v0    # "inHudByte":B
    :cond_1
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    check-cast v1, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;->getStreamManager()Lcom/parrot/controller/video/ARStreamManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    check-cast v1, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;->getStreamManager()Lcom/parrot/controller/video/ARStreamManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/video/ARStreamManager;->disableFrameSaving()V

    goto :goto_0

    .line 440
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public userIsReadyForAudioStreaming(ZZ)V
    .locals 4
    .param p1, "wantReceive"    # Z
    .param p2, "wantSend"    # Z

    .prologue
    const/4 v1, 0x0

    .line 518
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    :cond_0
    or-int/2addr v1, v2

    int-to-byte v0, v1

    .line 519
    .local v0, "value":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->DeviceController_SendAudioControllerReadyForStreaming(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 522
    return-void

    .end local v0    # "value":B
    :cond_1
    move v2, v1

    .line 518
    goto :goto_0
.end method

.method public userRequestAnimation(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONS_SIMPLEANIMATION_ID_ENUM;)V
    .locals 3
    .param p1, "animation"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONS_SIMPLEANIMATION_ID_ENUM;

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendAnimationsSimpleAnimation(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONS_SIMPLEANIMATION_ID_ENUM;)Z

    .line 365
    return-void
.end method

.method public userRequestAskAllScriptsMetadata()V
    .locals 3

    .prologue
    .line 492
    sget-object v0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "userRequestAskAllScriptsMetada"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendRoadPlanAllScriptsMetadata(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 494
    return-void
.end method

.method public userRequestLeft90()V
    .locals 6

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    sget-wide v4, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->PI_2:D

    neg-double v4, v4

    double-to-float v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendPilotingAddCapOffset(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 370
    return-void
.end method

.method public userRequestPlayScript(Ljava/lang/String;)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendRoadPlanPlayScript(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z

    .line 499
    return-void
.end method

.method public userRequestRecordPicture(B)V
    .locals 3
    .param p1, "massStorageId"    # B

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendMediaRecordPicture(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 390
    return-void
.end method

.method public userRequestRecordPictureV2()V
    .locals 3

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendMediaRecordPictureV2(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 404
    return-void
.end method

.method public userRequestRecordVideoStart(B)V
    .locals 6
    .param p1, "massStorageId"    # B

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEO_RECORD_ENUM;->ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEO_RECORD_START:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEO_RECORD_ENUM;

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendMediaRecordVideo(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEO_RECORD_ENUM;B)Z

    return-void
.end method

.method public userRequestRecordVideoStop(B)V
    .locals 6
    .param p1, "massStorageId"    # B

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEO_RECORD_ENUM;->ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEO_RECORD_STOP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEO_RECORD_ENUM;

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendMediaRecordVideo(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEO_RECORD_ENUM;B)Z

    .line 399
    return-void
.end method

.method public userRequestRecordVideoV2Start()V
    .locals 4

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEOV2_RECORD_ENUM;->ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEOV2_RECORD_START:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEOV2_RECORD_ENUM;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendMediaRecordVideoV2(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEOV2_RECORD_ENUM;)Z

    .line 409
    return-void
.end method

.method public userRequestRecordVideoV2Stop()V
    .locals 4

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEOV2_RECORD_ENUM;->ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEOV2_RECORD_STOP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEOV2_RECORD_ENUM;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendMediaRecordVideoV2(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEOV2_RECORD_ENUM;)Z

    .line 414
    return-void
.end method

.method public userRequestRight90()V
    .locals 6

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    sget-wide v4, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->PI_2:D

    double-to-float v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendPilotingAddCapOffset(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 375
    return-void
.end method

.method public userRequestSetGpsPosition(DD)V
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->DeviceController_SendGPSControllerPositionForRun(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;DD)Z

    .line 514
    return-void
.end method

.method public userRequestSetHeadlightsIntensity(I)V
    .locals 6
    .param p1, "intensity"    # I

    .prologue
    .line 527
    int-to-byte v4, p1

    .line 528
    .local v4, "intensityByte":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->DeviceController_SendHeadlightsIntensity(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BB)Z

    .line 531
    return-void
.end method

.method public userRequestStartAnimation(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;)V
    .locals 2
    .param p1, "animName"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;

    .prologue
    .line 543
    .line 544
    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->getValue()I

    move-result v1

    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;

    move-result-object v0

    .line 546
    .local v0, "anim":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;
    invoke-virtual {p0, v0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->userRequestStartAnimation(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;)V

    .line 547
    return-void
.end method

.method public userRequestStartAnimation(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;)V
    .locals 3
    .param p1, "anim"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;

    .prologue
    .line 536
    sget-object v0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userRequestStartAnimation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->DeviceController_SendAnimationsStartAnimation(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;)Z

    .line 539
    return-void
.end method

.method public userRequestStopAllAnimations()V
    .locals 3

    .prologue
    .line 567
    sget-object v0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "userRequestStopAllAnimations"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->DeviceController_SendAnimationsStopAllAnimations(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 570
    return-void
.end method

.method public userRequestStopAnimation(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;)V
    .locals 2
    .param p1, "animName"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;

    .prologue
    .line 559
    .line 560
    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->getValue()I

    move-result v1

    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;

    move-result-object v0

    .line 562
    .local v0, "anim":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;
    invoke-virtual {p0, v0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->userRequestStopAnimation(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;)V

    .line 563
    return-void
.end method

.method public userRequestStopAnimation(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;)V
    .locals 3
    .param p1, "anim"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;

    .prologue
    .line 552
    sget-object v0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userRequestStopAnimation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->DeviceController_SendAnimationsStopAnimation(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;)Z

    .line 555
    return-void
.end method

.method public userRequestTurnBackLeft()V
    .locals 4

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    const v3, 0x40490fdb    # (float)Math.PI

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendPilotingAddCapOffset(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 380
    return-void
.end method

.method public userRequestTurnBackRight()V
    .locals 4

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    const v3, -0x3fb6f025

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendPilotingAddCapOffset(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 385
    return-void
.end method

.method public userRequestedDeleteScript(Ljava/lang/String;)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendRoadPlanScriptDelete(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z

    .line 509
    return-void
.end method

.method public userRequestedHighJump()V
    .locals 4

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONS_JUMP_TYPE_ENUM;->ARCOMMANDS_JUMPINGSUMO_ANIMATIONS_JUMP_TYPE_HIGH:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONS_JUMP_TYPE_ENUM;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendAnimationsJump(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONS_JUMP_TYPE_ENUM;)Z

    .line 320
    return-void
.end method

.method public userRequestedJumpCancel()V
    .locals 3

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendAnimationsJumpCancel(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 330
    return-void
.end method

.method public userRequestedJumpLoad()V
    .locals 3

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendAnimationsJumpLoad(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 340
    return-void
.end method

.method public userRequestedJumpStop()V
    .locals 3

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendAnimationsJumpStop(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 335
    return-void
.end method

.method public userRequestedLongJump()V
    .locals 4

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONS_JUMP_TYPE_ENUM;->ARCOMMANDS_JUMPINGSUMO_ANIMATIONS_JUMP_TYPE_LONG:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONS_JUMP_TYPE_ENUM;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendAnimationsJump(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONS_JUMP_TYPE_ENUM;)Z

    .line 325
    return-void
.end method

.method public userRequestedSettingsAudioMasterVolume(B)V
    .locals 3
    .param p1, "volume"    # B

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendAudioSettingsMasterVolume(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 345
    return-void
.end method

.method public userRequestedSettingsAudioTheme(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_AUDIOSETTINGS_THEME_THEME_ENUM;)V
    .locals 3
    .param p1, "theme"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_AUDIOSETTINGS_THEME_THEME_ENUM;

    .prologue
    .line 349
    const-string v0, "DEVICE CONTROLLER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SENDING THEME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_AUDIOSETTINGS_THEME_THEME_ENUM;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendAudioSettingsTheme(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_AUDIOSETTINGS_THEME_THEME_ENUM;)Z

    .line 351
    return-void
.end method

.method public userRequestedSettingsNetworkWifiScan(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORK_WIFISCAN_BAND_ENUM;)V
    .locals 3
    .param p1, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORK_WIFISCAN_BAND_ENUM;

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendNetworkWifiScan(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORK_WIFISCAN_BAND_ENUM;)Z

    .line 456
    return-void
.end method

.method public userRequestedSettingsNetworkWifiType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)V
    .locals 7
    .param p1, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;
    .param p2, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;
    .param p3, "channel"    # B

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendNetworkSettingsWifiSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)Z

    .line 451
    return-void
.end method

.method public userRequestedSettingsSpeedOutdoor(Z)V
    .locals 4
    .param p1, "isOutdoor"    # Z

    .prologue
    .line 486
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v0, v1

    .line 487
    .local v0, "outdoor":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendSpeedSettingsOutdoor(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 488
    return-void

    .line 486
    .end local v0    # "outdoor":B
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userRequestedSettingsVideoAutorecord(Z)V
    .locals 4
    .param p1, "isEnable"    # Z

    .prologue
    .line 355
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v0, v1

    .line 357
    .local v0, "enable":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendVideoSettingsAutorecord(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 359
    return-void

    .line 355
    .end local v0    # "enable":B
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userRequestedSettingsWifiAuthChannel()V
    .locals 3

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendNetworkWifiAuthChannel(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 467
    return-void
.end method

.method public userRequestedSettingsWifiAutoCountry(Z)V
    .locals 4
    .param p1, "isAutomatic"    # Z

    .prologue
    .line 460
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v0, v1

    .line 461
    .local v0, "automatic":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->DeviceController_SendSettingsAutoCountry(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 462
    return-void

    .line 460
    .end local v0    # "automatic":B
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userRequestedSettingsWifiCountry(Ljava/lang/String;)V
    .locals 3
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 471
    invoke-static {}, Lcom/parrot/controller/utils/Device;->isSkycontroller()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->DELAYED:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    invoke-static {p1, v0}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setWifiCountry(Ljava/lang/String;Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;)Z

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->DeviceController_SendSettingsCountry(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z

    .line 476
    return-void
.end method

.method public userRequestedSettingsWifiOutdoor(Z)V
    .locals 4
    .param p1, "isOutdoor"    # Z

    .prologue
    .line 480
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v0, v1

    .line 481
    .local v0, "outdoor":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->DeviceController_SendWifiSettingsOutdoorSetting(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 482
    return-void

    .line 480
    .end local v0    # "outdoor":B
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userUploadedScript(Ljava/lang/String;)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    const-string v5, "0000"

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->JumpingSumoDeviceController_SendRoadPlanScriptUploaded(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;Ljava/lang/String;)Z

    .line 504
    return-void
.end method
