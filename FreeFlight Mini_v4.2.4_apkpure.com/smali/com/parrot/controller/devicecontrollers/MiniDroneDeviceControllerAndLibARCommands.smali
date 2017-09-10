.class public abstract Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;
.super Lcom/parrot/controller/devicecontrollers/DeviceController;
.source "MiniDroneDeviceControllerAndLibARCommands.java"

# interfaces
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingStateFlatTrimChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingStateFlyingStateChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingStateAlertStateChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingStateAutoTakeOffModeChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingStateFlyingModeChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingStatePlaneGearBoxChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneMediaRecordStatePictureStateChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneMediaRecordStatePictureStateChangedV2Listener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneMediaRecordEventPictureEventChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingSettingsStateMaxAltitudeChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingSettingsStateMaxTiltChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingSettingsStateBankedTurnChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSpeedSettingsStateMaxVerticalSpeedChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSpeedSettingsStateMaxRotationSpeedChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSpeedSettingsStateWheelsChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSpeedSettingsStateMaxHorizontalSpeedChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSpeedSettingsStateMaxPlaneModeRotationSpeedChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSettingsStateProductMotorsVersionChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSettingsStateProductInertialVersionChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSettingsStateCutOutModeChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneFloodControlStateFloodControlChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneUsbAccessoryStateLightStateListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneUsbAccessoryStateClawStateListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneUsbAccessoryStateGunStateListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneNavigationDataStateDronePositionListener;


# static fields
.field private static final MINIDRONEDEVICECONTROLLERANDLIBARCOMMANDS_TAG:Ljava/lang/String; = "MiniDroneDeviceControllerAndLibARCommands"

.field public static final MiniDroneDeviceControllerFloodControlStateFloodControlChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerFloodControlStateFloodControlChangedNotification"

.field public static final MiniDroneDeviceControllerFloodControlStateFloodControlChangedNotificationDelayKey:Ljava/lang/String; = "MiniDroneDeviceControllerFloodControlStateFloodControlChangedNotificationDelayKey"

.field public static final MiniDroneDeviceControllerMediaRecordEventPictureEventChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerMediaRecordEventPictureEventChangedNotification"

.field public static final MiniDroneDeviceControllerMediaRecordEventPictureEventChangedNotificationErrorKey:Ljava/lang/String; = "MiniDroneDeviceControllerMediaRecordEventPictureEventChangedNotificationErrorKey"

.field public static final MiniDroneDeviceControllerMediaRecordEventPictureEventChangedNotificationEventKey:Ljava/lang/String; = "MiniDroneDeviceControllerMediaRecordEventPictureEventChangedNotificationEventKey"

.field public static final MiniDroneDeviceControllerMediaRecordStatePictureStateChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedNotification"

.field public static final MiniDroneDeviceControllerMediaRecordStatePictureStateChangedNotificationMassStorageIdKey:Ljava/lang/String; = "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedNotificationMassStorageIdKey"

.field public static final MiniDroneDeviceControllerMediaRecordStatePictureStateChangedNotificationStateKey:Ljava/lang/String; = "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedNotificationStateKey"

.field public static final MiniDroneDeviceControllerMediaRecordStatePictureStateChangedV2Notification:Ljava/lang/String; = "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedV2Notification"

.field public static final MiniDroneDeviceControllerMediaRecordStatePictureStateChangedV2NotificationErrorKey:Ljava/lang/String; = "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedV2NotificationErrorKey"

.field public static final MiniDroneDeviceControllerMediaRecordStatePictureStateChangedV2NotificationStateKey:Ljava/lang/String; = "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedV2NotificationStateKey"

.field public static final MiniDroneDeviceControllerNavigationDataStateDronePositionNotification:Ljava/lang/String; = "MiniDroneDeviceControllerNavigationDataStateDronePositionNotification"

.field public static final MiniDroneDeviceControllerNavigationDataStateDronePositionNotificationPosxKey:Ljava/lang/String; = "MiniDroneDeviceControllerNavigationDataStateDronePositionNotificationPosxKey"

.field public static final MiniDroneDeviceControllerNavigationDataStateDronePositionNotificationPosyKey:Ljava/lang/String; = "MiniDroneDeviceControllerNavigationDataStateDronePositionNotificationPosyKey"

.field public static final MiniDroneDeviceControllerNavigationDataStateDronePositionNotificationPoszKey:Ljava/lang/String; = "MiniDroneDeviceControllerNavigationDataStateDronePositionNotificationPoszKey"

.field public static final MiniDroneDeviceControllerNavigationDataStateDronePositionNotificationPsiKey:Ljava/lang/String; = "MiniDroneDeviceControllerNavigationDataStateDronePositionNotificationPsiKey"

.field public static final MiniDroneDeviceControllerNavigationDataStateDronePositionNotificationTsKey:Ljava/lang/String; = "MiniDroneDeviceControllerNavigationDataStateDronePositionNotificationTsKey"

.field public static final MiniDroneDeviceControllerPilotingSettingsStateBankedTurnChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingSettingsStateBankedTurnChangedNotification"

.field public static final MiniDroneDeviceControllerPilotingSettingsStateBankedTurnChangedNotificationStateKey:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingSettingsStateBankedTurnChangedNotificationStateKey"

.field public static final MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotification"

.field public static final MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotificationCurrentKey:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotificationCurrentKey"

.field public static final MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotificationMaxKey:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotificationMaxKey"

.field public static final MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotificationMinKey:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotificationMinKey"

.field public static final MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotification"

.field public static final MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotificationCurrentKey:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotificationCurrentKey"

.field public static final MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotificationMaxKey:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotificationMaxKey"

.field public static final MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotificationMinKey:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotificationMinKey"

.field public static final MiniDroneDeviceControllerPilotingStateAlertStateChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingStateAlertStateChangedNotification"

.field public static final MiniDroneDeviceControllerPilotingStateAlertStateChangedNotificationStateKey:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingStateAlertStateChangedNotificationStateKey"

.field public static final MiniDroneDeviceControllerPilotingStateAutoTakeOffModeChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingStateAutoTakeOffModeChangedNotification"

.field public static final MiniDroneDeviceControllerPilotingStateAutoTakeOffModeChangedNotificationStateKey:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingStateAutoTakeOffModeChangedNotificationStateKey"

.field public static final MiniDroneDeviceControllerPilotingStateFlatTrimChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingStateFlatTrimChangedNotification"

.field public static final MiniDroneDeviceControllerPilotingStateFlyingModeChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingStateFlyingModeChangedNotification"

.field public static final MiniDroneDeviceControllerPilotingStateFlyingModeChangedNotificationModeKey:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingStateFlyingModeChangedNotificationModeKey"

.field public static final MiniDroneDeviceControllerPilotingStateFlyingStateChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingStateFlyingStateChangedNotification"

.field public static final MiniDroneDeviceControllerPilotingStateFlyingStateChangedNotificationStateKey:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingStateFlyingStateChangedNotificationStateKey"

.field public static final MiniDroneDeviceControllerPilotingStatePlaneGearBoxChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingStatePlaneGearBoxChangedNotification"

.field public static final MiniDroneDeviceControllerPilotingStatePlaneGearBoxChangedNotificationStateKey:Ljava/lang/String; = "MiniDroneDeviceControllerPilotingStatePlaneGearBoxChangedNotificationStateKey"

.field public static final MiniDroneDeviceControllerSettingsStateCutOutModeChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerSettingsStateCutOutModeChangedNotification"

.field public static final MiniDroneDeviceControllerSettingsStateCutOutModeChangedNotificationEnableKey:Ljava/lang/String; = "MiniDroneDeviceControllerSettingsStateCutOutModeChangedNotificationEnableKey"

.field public static final MiniDroneDeviceControllerSettingsStateProductInertialVersionChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerSettingsStateProductInertialVersionChangedNotification"

.field public static final MiniDroneDeviceControllerSettingsStateProductInertialVersionChangedNotificationHardwareKey:Ljava/lang/String; = "MiniDroneDeviceControllerSettingsStateProductInertialVersionChangedNotificationHardwareKey"

.field public static final MiniDroneDeviceControllerSettingsStateProductInertialVersionChangedNotificationSoftwareKey:Ljava/lang/String; = "MiniDroneDeviceControllerSettingsStateProductInertialVersionChangedNotificationSoftwareKey"

.field public static final MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotification"

.field public static final MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotificationHardwareKey:Ljava/lang/String; = "MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotificationHardwareKey"

.field public static final MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotificationMotorKey:Ljava/lang/String; = "MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotificationMotorKey"

.field public static final MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotificationSoftwareKey:Ljava/lang/String; = "MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotificationSoftwareKey"

.field public static final MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotificationTypeKey:Ljava/lang/String; = "MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotificationTypeKey"

.field public static final MiniDroneDeviceControllerSpeedSettingsStateMaxHorizontalSpeedChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerSpeedSettingsStateMaxHorizontalSpeedChangedNotification"

.field public static final MiniDroneDeviceControllerSpeedSettingsStateMaxHorizontalSpeedChangedNotificationCurrentKey:Ljava/lang/String; = "MiniDroneDeviceControllerSpeedSettingsStateMaxHorizontalSpeedChangedNotificationCurrentKey"

.field public static final MiniDroneDeviceControllerSpeedSettingsStateMaxHorizontalSpeedChangedNotificationMaxKey:Ljava/lang/String; = "MiniDroneDeviceControllerSpeedSettingsStateMaxHorizontalSpeedChangedNotificationMaxKey"

.field public static final MiniDroneDeviceControllerSpeedSettingsStateMaxHorizontalSpeedChangedNotificationMinKey:Ljava/lang/String; = "MiniDroneDeviceControllerSpeedSettingsStateMaxHorizontalSpeedChangedNotificationMinKey"

.field public static final MiniDroneDeviceControllerSpeedSettingsStateMaxPlaneModeRotationSpeedChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerSpeedSettingsStateMaxPlaneModeRotationSpeedChangedNotification"

.field public static final MiniDroneDeviceControllerSpeedSettingsStateMaxPlaneModeRotationSpeedChangedNotificationCurrentKey:Ljava/lang/String; = "MiniDroneDeviceControllerSpeedSettingsStateMaxPlaneModeRotationSpeedChangedNotificationCurrentKey"

.field public static final MiniDroneDeviceControllerSpeedSettingsStateMaxPlaneModeRotationSpeedChangedNotificationMaxKey:Ljava/lang/String; = "MiniDroneDeviceControllerSpeedSettingsStateMaxPlaneModeRotationSpeedChangedNotificationMaxKey"

.field public static final MiniDroneDeviceControllerSpeedSettingsStateMaxPlaneModeRotationSpeedChangedNotificationMinKey:Ljava/lang/String; = "MiniDroneDeviceControllerSpeedSettingsStateMaxPlaneModeRotationSpeedChangedNotificationMinKey"

.field public static final MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotification"

.field public static final MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotificationCurrentKey:Ljava/lang/String; = "MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotificationCurrentKey"

.field public static final MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotificationMaxKey:Ljava/lang/String; = "MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotificationMaxKey"

.field public static final MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotificationMinKey:Ljava/lang/String; = "MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotificationMinKey"

.field public static final MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotification"

.field public static final MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotificationCurrentKey:Ljava/lang/String; = "MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotificationCurrentKey"

.field public static final MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotificationMaxKey:Ljava/lang/String; = "MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotificationMaxKey"

.field public static final MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotificationMinKey:Ljava/lang/String; = "MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotificationMinKey"

.field public static final MiniDroneDeviceControllerSpeedSettingsStateWheelsChangedNotification:Ljava/lang/String; = "MiniDroneDeviceControllerSpeedSettingsStateWheelsChangedNotification"

.field public static final MiniDroneDeviceControllerSpeedSettingsStateWheelsChangedNotificationPresentKey:Ljava/lang/String; = "MiniDroneDeviceControllerSpeedSettingsStateWheelsChangedNotificationPresentKey"

.field public static final MiniDroneDeviceControllerUsbAccessoryStateClawStateNotification:Ljava/lang/String; = "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotification"

.field public static final MiniDroneDeviceControllerUsbAccessoryStateClawStateNotificationIdKey:Ljava/lang/String; = "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotificationIdKey"

.field public static final MiniDroneDeviceControllerUsbAccessoryStateClawStateNotificationStateKey:Ljava/lang/String; = "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotificationStateKey"

.field public static final MiniDroneDeviceControllerUsbAccessoryStateGunStateNotification:Ljava/lang/String; = "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotification"

.field public static final MiniDroneDeviceControllerUsbAccessoryStateGunStateNotificationIdKey:Ljava/lang/String; = "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotificationIdKey"

.field public static final MiniDroneDeviceControllerUsbAccessoryStateGunStateNotificationStateKey:Ljava/lang/String; = "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotificationStateKey"

.field public static final MiniDroneDeviceControllerUsbAccessoryStateLightStateNotification:Ljava/lang/String; = "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotification"

.field public static final MiniDroneDeviceControllerUsbAccessoryStateLightStateNotificationIdKey:Ljava/lang/String; = "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotificationIdKey"

.field public static final MiniDroneDeviceControllerUsbAccessoryStateLightStateNotificationIntensityKey:Ljava/lang/String; = "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotificationIntensityKey"

.field public static final MiniDroneDeviceControllerUsbAccessoryStateLightStateNotificationStateKey:Ljava/lang/String; = "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotificationStateKey"


# instance fields
.field private miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;-><init>()V

    return-void
.end method

.method private initMiniDroneDeviceControllerAndLibARCommandsIntents()V
    .locals 4

    .prologue
    .line 229
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    .line 230
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerPilotingStateFlatTrimChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerPilotingStateFlatTrimChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerPilotingStateFlyingStateChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerPilotingStateFlyingStateChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerPilotingStateAlertStateChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerPilotingStateAutoTakeOffModeChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerPilotingStateAutoTakeOffModeChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerPilotingStateFlyingModeChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerPilotingStateFlyingModeChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerPilotingStatePlaneGearBoxChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerPilotingStatePlaneGearBoxChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedV2Notification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedV2Notification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerMediaRecordEventPictureEventChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerMediaRecordEventPictureEventChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerPilotingSettingsStateBankedTurnChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerPilotingSettingsStateBankedTurnChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerSpeedSettingsStateWheelsChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerSpeedSettingsStateWheelsChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerSpeedSettingsStateMaxHorizontalSpeedChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerSpeedSettingsStateMaxHorizontalSpeedChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerSpeedSettingsStateMaxPlaneModeRotationSpeedChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerSpeedSettingsStateMaxPlaneModeRotationSpeedChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerSettingsStateProductInertialVersionChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerSettingsStateProductInertialVersionChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerSettingsStateCutOutModeChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerSettingsStateCutOutModeChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerFloodControlStateFloodControlChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerFloodControlStateFloodControlChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "MiniDroneDeviceControllerNavigationDataStateDronePositionNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MiniDroneDeviceControllerNavigationDataStateDronePositionNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method


# virtual methods
.method protected MiniDroneDeviceController_SendAnimationsCap(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;S)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "offset"    # S

    .prologue
    .line 1453
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1454
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1455
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1457
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDroneAnimationsCap(S)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1458
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1461
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1462
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1465
    :cond_0
    if-nez v2, :cond_1

    .line 1467
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send Cap command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendAnimationsFlip(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_ENUM;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "direction"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_ENUM;

    .prologue
    .line 1425
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1426
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1427
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1429
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDroneAnimationsFlip(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1430
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1433
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1434
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1437
    :cond_0
    if-nez v2, :cond_1

    .line 1439
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send Flip command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendConfigurationControllerName(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 1872
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1873
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1874
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1876
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDroneConfigurationControllerName(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1877
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1880
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1881
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1884
    :cond_0
    if-nez v2, :cond_1

    .line 1886
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send ControllerName command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendConfigurationControllerType(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 1844
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1845
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1846
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1848
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDroneConfigurationControllerType(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1849
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1852
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1853
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1856
    :cond_0
    if-nez v2, :cond_1

    .line 1858
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send ControllerType command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendGPSControllerLatitudeForRun(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;D)Z
    .locals 6
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "latitude"    # D

    .prologue
    .line 1788
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1789
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1790
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1792
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4, p5}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDroneGPSControllerLatitudeForRun(D)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1793
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1796
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1797
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1800
    :cond_0
    if-nez v2, :cond_1

    .line 1802
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send ControllerLatitudeForRun command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendGPSControllerLongitudeForRun(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;D)Z
    .locals 6
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "longitude"    # D

    .prologue
    .line 1816
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1817
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1818
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1820
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4, p5}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDroneGPSControllerLongitudeForRun(D)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1821
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1824
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1825
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1828
    :cond_0
    if-nez v2, :cond_1

    .line 1830
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send ControllerLongitudeForRun command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendMediaRecordPicture(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "mass_storage_id"    # B

    .prologue
    .line 1481
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1482
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1483
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1485
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDroneMediaRecordPicture(B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1486
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1489
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1490
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1493
    :cond_0
    if-nez v2, :cond_1

    .line 1495
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send Picture command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendMediaRecordPictureV2(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 1508
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1509
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1510
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1512
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDroneMediaRecordPictureV2()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1513
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1516
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1517
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1520
    :cond_0
    if-nez v2, :cond_1

    .line 1522
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send PictureV2 command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendPilotingAutoTakeOffMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "state"    # B

    .prologue
    .line 1341
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1342
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1343
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1345
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDronePilotingAutoTakeOffMode(B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1346
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1349
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1350
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1353
    :cond_0
    if-nez v2, :cond_1

    .line 1355
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send AutoTakeOffMode command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendPilotingEmergency(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 1313
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1314
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1315
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1317
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDronePilotingEmergency()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1318
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1321
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1322
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1325
    :cond_0
    if-nez v2, :cond_1

    .line 1327
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send Emergency command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendPilotingFlatTrim(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 1199
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1200
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1201
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1203
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDronePilotingFlatTrim()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1204
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1207
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1208
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1211
    :cond_0
    if-nez v2, :cond_1

    .line 1213
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send FlatTrim command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendPilotingFlyingMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_FLYINGMODE_MODE_ENUM;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "mode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_FLYINGMODE_MODE_ENUM;

    .prologue
    .line 1369
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1370
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1371
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1373
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDronePilotingFlyingMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_FLYINGMODE_MODE_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1374
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1377
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1378
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1381
    :cond_0
    if-nez v2, :cond_1

    .line 1383
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send FlyingMode command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendPilotingLanding(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 1286
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1287
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1288
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1290
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDronePilotingLanding()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1291
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1294
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1295
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1298
    :cond_0
    if-nez v2, :cond_1

    .line 1300
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send Landing command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendPilotingPCMD(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BBBBBI)Z
    .locals 9
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "flag"    # B
    .param p5, "roll"    # B
    .param p6, "pitch"    # B
    .param p7, "yaw"    # B
    .param p8, "gaz"    # B
    .param p9, "timestamp"    # I

    .prologue
    .line 1259
    sget-object v7, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1260
    .local v7, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v8, 0x0

    .line 1261
    .local v8, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    move v1, p4

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    .line 1263
    invoke-virtual/range {v0 .. v6}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDronePilotingPCMD(BBBBBI)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v7

    .line 1264
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v7, v1, :cond_0

    .line 1267
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v8

    .line 1268
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1271
    :cond_0
    if-nez v8, :cond_1

    .line 1273
    const-string v1, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v2, "Failed to send PCMD command."

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    :cond_1
    return v8
.end method

.method protected MiniDroneDeviceController_SendPilotingPlaneGearBox(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_PLANEGEARBOX_STATE_ENUM;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_PLANEGEARBOX_STATE_ENUM;

    .prologue
    .line 1397
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1398
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1399
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1401
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDronePilotingPlaneGearBox(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_PLANEGEARBOX_STATE_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1402
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1405
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1406
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1409
    :cond_0
    if-nez v2, :cond_1

    .line 1411
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send PlaneGearBox command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendPilotingSettingsBankedTurn(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "value"    # B

    .prologue
    .line 1592
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1593
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1594
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1596
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDronePilotingSettingsBankedTurn(B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1597
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1600
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1601
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1604
    :cond_0
    if-nez v2, :cond_1

    .line 1606
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send BankedTurn command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendPilotingSettingsMaxAltitude(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "current"    # F

    .prologue
    .line 1536
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1537
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1538
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1540
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDronePilotingSettingsMaxAltitude(F)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1541
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1544
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1545
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1548
    :cond_0
    if-nez v2, :cond_1

    .line 1550
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send MaxAltitude command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendPilotingSettingsMaxTilt(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "current"    # F

    .prologue
    .line 1564
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1565
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1566
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1568
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDronePilotingSettingsMaxTilt(F)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1569
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1572
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1573
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1576
    :cond_0
    if-nez v2, :cond_1

    .line 1578
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send MaxTilt command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendPilotingTakeOff(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 1226
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1227
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1228
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1230
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDronePilotingTakeOff()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1231
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1234
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1235
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1238
    :cond_0
    if-nez v2, :cond_1

    .line 1240
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send TakeOff command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendRemoteControllerSetPairedRemote(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;SSS)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "msb_mac"    # S
    .param p5, "mid_mac"    # S
    .param p6, "lsb_mac"    # S

    .prologue
    .line 1990
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1991
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1992
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1994
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4, p5, p6}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDroneRemoteControllerSetPairedRemote(SSS)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1995
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1998
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1999
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2002
    :cond_0
    if-nez v2, :cond_1

    .line 2004
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send SetPairedRemote command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendSettingsCutOutMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "enable"    # B

    .prologue
    .line 1760
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1761
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1762
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1764
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDroneSettingsCutOutMode(B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1765
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1768
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1769
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1772
    :cond_0
    if-nez v2, :cond_1

    .line 1774
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send CutOutMode command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendSpeedSettingsMaxHorizontalSpeed(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "current"    # F

    .prologue
    .line 1704
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1705
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1706
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1708
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDroneSpeedSettingsMaxHorizontalSpeed(F)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1709
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1712
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1713
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1716
    :cond_0
    if-nez v2, :cond_1

    .line 1718
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send MaxHorizontalSpeed command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendSpeedSettingsMaxPlaneModeRotationSpeed(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "current"    # F

    .prologue
    .line 1732
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1733
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1734
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1736
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDroneSpeedSettingsMaxPlaneModeRotationSpeed(F)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1737
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1740
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1741
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1744
    :cond_0
    if-nez v2, :cond_1

    .line 1746
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send MaxPlaneModeRotationSpeed command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendSpeedSettingsMaxRotationSpeed(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "current"    # F

    .prologue
    .line 1648
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1649
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1650
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1652
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDroneSpeedSettingsMaxRotationSpeed(F)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1653
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1656
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1657
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1660
    :cond_0
    if-nez v2, :cond_1

    .line 1662
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send MaxRotationSpeed command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendSpeedSettingsMaxVerticalSpeed(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "current"    # F

    .prologue
    .line 1620
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1621
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1622
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1624
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDroneSpeedSettingsMaxVerticalSpeed(F)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1625
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1628
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1629
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1632
    :cond_0
    if-nez v2, :cond_1

    .line 1634
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send MaxVerticalSpeed command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendSpeedSettingsWheels(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "present"    # B

    .prologue
    .line 1676
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1677
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1678
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1680
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDroneSpeedSettingsWheels(B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1681
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1684
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1685
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1688
    :cond_0
    if-nez v2, :cond_1

    .line 1690
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send Wheels command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendUsbAccessoryClawControl(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BLcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "id"    # B
    .param p5, "action"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;

    .prologue
    .line 1931
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1932
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1933
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1935
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4, p5}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDroneUsbAccessoryClawControl(BLcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1936
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1939
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1940
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1943
    :cond_0
    if-nez v2, :cond_1

    .line 1945
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send ClawControl command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendUsbAccessoryGunControl(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BLcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_GUNCONTROL_ACTION_ENUM;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "id"    # B
    .param p5, "action"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_GUNCONTROL_ACTION_ENUM;

    .prologue
    .line 1960
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1961
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1962
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1964
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4, p5}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDroneUsbAccessoryGunControl(BLcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_GUNCONTROL_ACTION_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1965
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1968
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1969
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1972
    :cond_0
    if-nez v2, :cond_1

    .line 1974
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send GunControl command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    :cond_1
    return v2
.end method

.method protected MiniDroneDeviceController_SendUsbAccessoryLightControl(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BLcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_ENUM;B)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "id"    # B
    .param p5, "mode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_ENUM;
    .param p6, "intensity"    # B

    .prologue
    .line 1902
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1903
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1904
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1906
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4, p5, p6}, Lcom/parrot/arsdk/arcommands/ARCommand;->setMiniDroneUsbAccessoryLightControl(BLcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_ENUM;B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1907
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1910
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1911
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1914
    :cond_0
    if-nez v2, :cond_1

    .line 1916
    const-string v3, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send LightControl command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    :cond_1
    return v2
.end method

.method public abstract controllerLoop()V
.end method

.method protected getMiniDroneDeviceControllerAndLibARCommandsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method protected initialize()V
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->initMiniDroneDeviceControllerAndLibARCommandsIntents()V

    .line 153
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->initialize()V

    .line 155
    :cond_0
    return-void
.end method

.method public declared-synchronized onMiniDroneFloodControlStateFloodControlChangedUpdate(S)V
    .locals 6
    .param p1, "delay"    # S

    .prologue
    .line 922
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 923
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 924
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "MiniDroneDeviceControllerFloodControlStateFloodControlChangedNotificationDelayKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 927
    const-string v4, "MiniDroneDeviceControllerFloodControlStateFloodControlChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 930
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerFloodControlStateFloodControlChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 933
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 934
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 935
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 938
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerFloodControlStateFloodControlChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 939
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 940
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    monitor-exit p0

    return-void

    .line 922
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDroneMediaRecordEventPictureEventChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;)V
    .locals 4
    .param p1, "event"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;
    .param p2, "error"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;

    .prologue
    .line 545
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 546
    .local v1, "notificationBundle":Landroid/os/Bundle;
    const-string v3, "MiniDroneDeviceControllerMediaRecordEventPictureEventChangedNotificationEventKey"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->getValue()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 547
    if-nez p1, :cond_0

    .line 549
    const-string v2, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v3, "Bad value for argument `event` in PictureEventChanged command from the device."

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_0
    const-string v3, "MiniDroneDeviceControllerMediaRecordEventPictureEventChangedNotificationErrorKey"

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->getValue()I

    move-result v2

    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 552
    if-nez p2, :cond_1

    .line 554
    const-string v2, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v3, "Bad value for argument `error` in PictureEventChanged command from the device."

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_1
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v3, "MiniDroneDeviceControllerMediaRecordEventPictureEventChangedNotification"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 559
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 560
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    monitor-exit p0

    return-void

    .line 546
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->eARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->getValue()I

    move-result v2

    goto :goto_0

    .line 551
    :cond_3
    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->eARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_1

    .line 545
    .end local v1    # "notificationBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onMiniDroneMediaRecordStatePictureStateChangedUpdate(BB)V
    .locals 6
    .param p1, "state"    # B
    .param p2, "mass_storage_id"    # B

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 476
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 477
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedNotificationStateKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 478
    const-string v4, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedNotificationMassStorageIdKey"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 481
    const-string v4, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 484
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 487
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 489
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 492
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 493
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 494
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    monitor-exit p0

    return-void

    .line 475
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDroneMediaRecordStatePictureStateChangedV2Update(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;)V
    .locals 6
    .param p1, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;
    .param p2, "error"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;

    .prologue
    .line 506
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 507
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 508
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedV2NotificationStateKey"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    if-nez p1, :cond_0

    .line 511
    const-string v4, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `state` in PictureStateChangedV2 command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_0
    const-string v5, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedV2NotificationErrorKey"

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;->getValue()I

    move-result v4

    :goto_1
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 514
    if-nez p2, :cond_1

    .line 516
    const-string v4, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `error` in PictureStateChangedV2 command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_1
    const-string v4, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedV2Notification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 523
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedV2Notification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 526
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 528
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 531
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedV2Notification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 532
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 533
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    monitor-exit p0

    return-void

    .line 508
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_2
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->eARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->getValue()I

    move-result v4

    goto :goto_0

    .line 513
    :cond_3
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;->eARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_1

    .line 506
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDroneNavigationDataStateDronePositionUpdate(FFSSS)V
    .locals 6
    .param p1, "posx"    # F
    .param p2, "posy"    # F
    .param p3, "posz"    # S
    .param p4, "psi"    # S
    .param p5, "ts"    # S

    .prologue
    .line 1167
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1168
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1169
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "MiniDroneDeviceControllerNavigationDataStateDronePositionNotificationPosxKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1170
    const-string v4, "MiniDroneDeviceControllerNavigationDataStateDronePositionNotificationPosyKey"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1171
    const-string v4, "MiniDroneDeviceControllerNavigationDataStateDronePositionNotificationPoszKey"

    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 1172
    const-string v4, "MiniDroneDeviceControllerNavigationDataStateDronePositionNotificationPsiKey"

    invoke-virtual {v2, v4, p4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 1173
    const-string v4, "MiniDroneDeviceControllerNavigationDataStateDronePositionNotificationTsKey"

    invoke-virtual {v2, v4, p5}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 1176
    const-string v4, "MiniDroneDeviceControllerNavigationDataStateDronePositionNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1179
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerNavigationDataStateDronePositionNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1182
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1183
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1184
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1187
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerNavigationDataStateDronePositionNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1188
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1189
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1190
    monitor-exit p0

    return-void

    .line 1167
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDronePilotingSettingsStateBankedTurnChangedUpdate(B)V
    .locals 6
    .param p1, "state"    # B

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 638
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 639
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "MiniDroneDeviceControllerPilotingSettingsStateBankedTurnChangedNotificationStateKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 642
    const-string v4, "MiniDroneDeviceControllerPilotingSettingsStateBankedTurnChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 645
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerPilotingSettingsStateBankedTurnChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 648
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 650
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 653
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerPilotingSettingsStateBankedTurnChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 654
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 655
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    monitor-exit p0

    return-void

    .line 637
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDronePilotingSettingsStateMaxAltitudeChangedUpdate(FFF)V
    .locals 6
    .param p1, "current"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 573
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 574
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 575
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotificationCurrentKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 576
    const-string v4, "MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotificationMinKey"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 577
    const-string v4, "MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotificationMaxKey"

    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 580
    const-string v4, "MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 583
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 586
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 588
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 591
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 592
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 593
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    monitor-exit p0

    return-void

    .line 573
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDronePilotingSettingsStateMaxTiltChangedUpdate(FFF)V
    .locals 6
    .param p1, "current"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 606
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 607
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 608
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotificationCurrentKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 609
    const-string v4, "MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotificationMinKey"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 610
    const-string v4, "MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotificationMaxKey"

    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 613
    const-string v4, "MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 616
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 619
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 621
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 624
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 625
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 626
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    monitor-exit p0

    return-void

    .line 606
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDronePilotingStateAlertStateChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;)V
    .locals 6
    .param p1, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 347
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 348
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "MiniDroneDeviceControllerPilotingStateAlertStateChangedNotificationStateKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    if-nez p1, :cond_0

    .line 351
    const-string v4, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `state` in AlertStateChanged command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_0
    const-string v4, "MiniDroneDeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 358
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 361
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 363
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 366
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 367
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    monitor-exit p0

    return-void

    .line 348
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->eARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 346
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDronePilotingStateAutoTakeOffModeChangedUpdate(B)V
    .locals 6
    .param p1, "state"    # B

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 380
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 381
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "MiniDroneDeviceControllerPilotingStateAutoTakeOffModeChangedNotificationStateKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 384
    const-string v4, "MiniDroneDeviceControllerPilotingStateAutoTakeOffModeChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 387
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerPilotingStateAutoTakeOffModeChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 390
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 395
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerPilotingStateAutoTakeOffModeChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 396
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    monitor-exit p0

    return-void

    .line 379
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDronePilotingStateFlatTrimChangedUpdate()V
    .locals 6

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "MiniDroneDeviceControllerPilotingStateFlatTrimChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 293
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerPilotingStateFlatTrimChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 296
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 301
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerPilotingStateFlatTrimChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 302
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 286
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDronePilotingStateFlyingModeChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;)V
    .locals 6
    .param p1, "mode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 409
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 410
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "MiniDroneDeviceControllerPilotingStateFlyingModeChangedNotificationModeKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 411
    if-nez p1, :cond_0

    .line 413
    const-string v4, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `mode` in FlyingModeChanged command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_0
    const-string v4, "MiniDroneDeviceControllerPilotingStateFlyingModeChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 420
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerPilotingStateFlyingModeChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 423
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 428
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerPilotingStateFlyingModeChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 429
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit p0

    return-void

    .line 410
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;->eARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 408
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDronePilotingStateFlyingStateChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;)V
    .locals 6
    .param p1, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 314
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 315
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "MiniDroneDeviceControllerPilotingStateFlyingStateChangedNotificationStateKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    if-nez p1, :cond_0

    .line 318
    const-string v4, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `state` in FlyingStateChanged command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_0
    const-string v4, "MiniDroneDeviceControllerPilotingStateFlyingStateChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 325
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerPilotingStateFlyingStateChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 328
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 330
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 333
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerPilotingStateFlyingStateChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 334
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 335
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit p0

    return-void

    .line 315
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->eARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 313
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDronePilotingStatePlaneGearBoxChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;)V
    .locals 6
    .param p1, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 442
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 443
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "MiniDroneDeviceControllerPilotingStatePlaneGearBoxChangedNotificationStateKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    if-nez p1, :cond_0

    .line 446
    const-string v4, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `state` in PlaneGearBoxChanged command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_0
    const-string v4, "MiniDroneDeviceControllerPilotingStatePlaneGearBoxChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 453
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerPilotingStatePlaneGearBoxChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 456
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 458
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 461
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerPilotingStatePlaneGearBoxChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 462
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 463
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    .line 443
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;->eARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 441
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDroneSettingsStateCutOutModeChangedUpdate(B)V
    .locals 6
    .param p1, "enable"    # B

    .prologue
    .line 893
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 894
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 895
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "MiniDroneDeviceControllerSettingsStateCutOutModeChangedNotificationEnableKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 898
    const-string v4, "MiniDroneDeviceControllerSettingsStateCutOutModeChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 901
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerSettingsStateCutOutModeChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 904
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 905
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 906
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 909
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerSettingsStateCutOutModeChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 910
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 911
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    monitor-exit p0

    return-void

    .line 893
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDroneSettingsStateProductInertialVersionChangedUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "software"    # Ljava/lang/String;
    .param p2, "hardware"    # Ljava/lang/String;

    .prologue
    .line 863
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 864
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 865
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "MiniDroneDeviceControllerSettingsStateProductInertialVersionChangedNotificationSoftwareKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string v4, "MiniDroneDeviceControllerSettingsStateProductInertialVersionChangedNotificationHardwareKey"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const-string v4, "MiniDroneDeviceControllerSettingsStateProductInertialVersionChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 872
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerSettingsStateProductInertialVersionChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 875
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 876
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 877
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 880
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerSettingsStateProductInertialVersionChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 881
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 882
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    monitor-exit p0

    return-void

    .line 863
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDroneSettingsStateProductMotorsVersionChangedUpdate(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "motor"    # B
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "software"    # Ljava/lang/String;
    .param p4, "hardware"    # Ljava/lang/String;

    .prologue
    .line 830
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 831
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 832
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotificationMotorKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 833
    const-string v4, "MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotificationTypeKey"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v4, "MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotificationSoftwareKey"

    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v4, "MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotificationHardwareKey"

    invoke-virtual {v2, v4, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v4, "MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 841
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 844
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 845
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 846
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 849
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerSettingsStateProductMotorsVersionChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 850
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 851
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    monitor-exit p0

    return-void

    .line 830
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDroneSpeedSettingsStateMaxHorizontalSpeedChangedUpdate(FFF)V
    .locals 6
    .param p1, "current"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 763
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 764
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 765
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateMaxHorizontalSpeedChangedNotificationCurrentKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 766
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateMaxHorizontalSpeedChangedNotificationMinKey"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 767
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateMaxHorizontalSpeedChangedNotificationMaxKey"

    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 770
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateMaxHorizontalSpeedChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 773
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerSpeedSettingsStateMaxHorizontalSpeedChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 776
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 778
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 781
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerSpeedSettingsStateMaxHorizontalSpeedChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 782
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 783
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    monitor-exit p0

    return-void

    .line 763
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDroneSpeedSettingsStateMaxPlaneModeRotationSpeedChangedUpdate(FFF)V
    .locals 6
    .param p1, "current"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 796
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 797
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 798
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateMaxPlaneModeRotationSpeedChangedNotificationCurrentKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 799
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateMaxPlaneModeRotationSpeedChangedNotificationMinKey"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 800
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateMaxPlaneModeRotationSpeedChangedNotificationMaxKey"

    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 803
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateMaxPlaneModeRotationSpeedChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 806
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerSpeedSettingsStateMaxPlaneModeRotationSpeedChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 809
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 810
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 811
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 814
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerSpeedSettingsStateMaxPlaneModeRotationSpeedChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 815
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 816
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    monitor-exit p0

    return-void

    .line 796
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDroneSpeedSettingsStateMaxRotationSpeedChangedUpdate(FFF)V
    .locals 6
    .param p1, "current"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 701
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 702
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 703
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotificationCurrentKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 704
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotificationMinKey"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 705
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotificationMaxKey"

    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 708
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 711
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 714
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 715
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 716
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 719
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 720
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 721
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    monitor-exit p0

    return-void

    .line 701
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDroneSpeedSettingsStateMaxVerticalSpeedChangedUpdate(FFF)V
    .locals 6
    .param p1, "current"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 668
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 669
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 670
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotificationCurrentKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 671
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotificationMinKey"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 672
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotificationMaxKey"

    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 675
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 678
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 681
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 683
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 686
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 687
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 688
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    monitor-exit p0

    return-void

    .line 668
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDroneSpeedSettingsStateWheelsChangedUpdate(B)V
    .locals 6
    .param p1, "present"    # B

    .prologue
    .line 732
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 733
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 734
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateWheelsChangedNotificationPresentKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 737
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateWheelsChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 740
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "MiniDroneDeviceControllerSpeedSettingsStateWheelsChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 743
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 745
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 748
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "MiniDroneDeviceControllerSpeedSettingsStateWheelsChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 749
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 750
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    monitor-exit p0

    return-void

    .line 732
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onMiniDroneUsbAccessoryStateClawStateUpdate(BLcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;B)V
    .locals 13
    .param p1, "id"    # B
    .param p2, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;
    .param p3, "list_flags"    # B

    .prologue
    .line 1025
    monitor-enter p0

    :try_start_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1026
    .local v8, "updateDictionary":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1027
    .local v5, "notificationBundle":Landroid/os/Bundle;
    const-string v9, "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotificationIdKey"

    invoke-virtual {v5, v9, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 1028
    const-string v10, "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotificationStateKey"

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->getValue()I

    move-result v9

    :goto_0
    invoke-virtual {v5, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1029
    if-nez p2, :cond_0

    .line 1031
    const-string v9, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v10, "Bad value for argument `state` in ClawState command from the device."

    invoke-static {v9, v10}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :cond_0
    sget v9, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_REMOVE:I

    and-int v9, v9, p3

    if-eqz v9, :cond_7

    const/4 v7, 0x1

    .line 1035
    .local v7, "remove":Z
    :goto_1
    sget v9, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_FIRST:I

    sget v10, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_EMPTY:I

    or-int/2addr v9, v10

    and-int v9, v9, p3

    if-eqz v9, :cond_8

    const/4 v1, 0x1

    .line 1036
    .local v1, "clear":Z
    :goto_2
    sget v9, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_LAST:I

    sget v10, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_EMPTY:I

    or-int/2addr v9, v10

    and-int v9, v9, p3

    if-eqz v9, :cond_9

    const/4 v6, 0x1

    .line 1037
    .local v6, "notify":Z
    :goto_3
    sget v9, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_REMOVE:I

    sget v10, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_EMPTY:I

    or-int/2addr v9, v10

    and-int v9, v9, p3

    if-nez v9, :cond_a

    const/4 v0, 0x1

    .line 1039
    .local v0, "add":Z
    :goto_4
    iget-object v9, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v10, "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotification"

    invoke-virtual {v9, v10}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1041
    .local v4, "listDictionary":Landroid/os/Bundle;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 1044
    iget-object v9, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v10, "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotification"

    invoke-virtual {v9, v10}, Lcom/parrot/controller/devicecontrollers/ARBundle;->remove(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    .line 1048
    :cond_1
    if-eqz v4, :cond_2

    if-eqz v7, :cond_2

    .line 1051
    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1054
    :cond_2
    if-eqz v0, :cond_4

    .line 1056
    if-nez v4, :cond_3

    .line 1058
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1060
    .restart local v4    # "listDictionary":Landroid/os/Bundle;
    :cond_3
    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1061
    move-object v5, v4

    .line 1063
    const-string v9, "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotification"

    invoke-virtual {v8, v9, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1066
    iget-object v9, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v10, "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotification"

    invoke-virtual {v9, v10, v5}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1070
    :cond_4
    if-eqz v6, :cond_5

    .line 1073
    new-instance v3, Landroid/content/Intent;

    const-string v9, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v3, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v3, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1075
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1078
    iget-object v9, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v10, "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotification"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1079
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1080
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "intentDicChanged":Landroid/content/Intent;
    :cond_5
    monitor-exit p0

    return-void

    .line 1028
    .end local v0    # "add":Z
    .end local v1    # "clear":Z
    .end local v4    # "listDictionary":Landroid/os/Bundle;
    .end local v6    # "notify":Z
    .end local v7    # "remove":Z
    :cond_6
    :try_start_1
    sget-object v9, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->eARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;

    invoke-virtual {v9}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    goto/16 :goto_0

    .line 1034
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1035
    .restart local v7    # "remove":Z
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1036
    .restart local v1    # "clear":Z
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 1037
    .restart local v6    # "notify":Z
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 1025
    .end local v1    # "clear":Z
    .end local v5    # "notificationBundle":Landroid/os/Bundle;
    .end local v6    # "notify":Z
    .end local v7    # "remove":Z
    .end local v8    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public declared-synchronized onMiniDroneUsbAccessoryStateGunStateUpdate(BLcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;B)V
    .locals 13
    .param p1, "id"    # B
    .param p2, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;
    .param p3, "list_flags"    # B

    .prologue
    .line 1095
    monitor-enter p0

    :try_start_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1096
    .local v8, "updateDictionary":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1097
    .local v5, "notificationBundle":Landroid/os/Bundle;
    const-string v9, "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotificationIdKey"

    invoke-virtual {v5, v9, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 1098
    const-string v10, "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotificationStateKey"

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;->getValue()I

    move-result v9

    :goto_0
    invoke-virtual {v5, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1099
    if-nez p2, :cond_0

    .line 1101
    const-string v9, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v10, "Bad value for argument `state` in GunState command from the device."

    invoke-static {v9, v10}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    :cond_0
    sget v9, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_REMOVE:I

    and-int v9, v9, p3

    if-eqz v9, :cond_7

    const/4 v7, 0x1

    .line 1105
    .local v7, "remove":Z
    :goto_1
    sget v9, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_FIRST:I

    sget v10, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_EMPTY:I

    or-int/2addr v9, v10

    and-int v9, v9, p3

    if-eqz v9, :cond_8

    const/4 v1, 0x1

    .line 1106
    .local v1, "clear":Z
    :goto_2
    sget v9, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_LAST:I

    sget v10, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_EMPTY:I

    or-int/2addr v9, v10

    and-int v9, v9, p3

    if-eqz v9, :cond_9

    const/4 v6, 0x1

    .line 1107
    .local v6, "notify":Z
    :goto_3
    sget v9, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_REMOVE:I

    sget v10, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_EMPTY:I

    or-int/2addr v9, v10

    and-int v9, v9, p3

    if-nez v9, :cond_a

    const/4 v0, 0x1

    .line 1109
    .local v0, "add":Z
    :goto_4
    iget-object v9, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v10, "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotification"

    invoke-virtual {v9, v10}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1111
    .local v4, "listDictionary":Landroid/os/Bundle;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 1114
    iget-object v9, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v10, "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotification"

    invoke-virtual {v9, v10}, Lcom/parrot/controller/devicecontrollers/ARBundle;->remove(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    .line 1118
    :cond_1
    if-eqz v4, :cond_2

    if-eqz v7, :cond_2

    .line 1121
    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1124
    :cond_2
    if-eqz v0, :cond_4

    .line 1126
    if-nez v4, :cond_3

    .line 1128
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1130
    .restart local v4    # "listDictionary":Landroid/os/Bundle;
    :cond_3
    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1131
    move-object v5, v4

    .line 1133
    const-string v9, "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotification"

    invoke-virtual {v8, v9, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1136
    iget-object v9, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v10, "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotification"

    invoke-virtual {v9, v10, v5}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1140
    :cond_4
    if-eqz v6, :cond_5

    .line 1143
    new-instance v3, Landroid/content/Intent;

    const-string v9, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1144
    .local v3, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v3, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1145
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1148
    iget-object v9, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v10, "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotification"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1149
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1150
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "intentDicChanged":Landroid/content/Intent;
    :cond_5
    monitor-exit p0

    return-void

    .line 1098
    .end local v0    # "add":Z
    .end local v1    # "clear":Z
    .end local v4    # "listDictionary":Landroid/os/Bundle;
    .end local v6    # "notify":Z
    .end local v7    # "remove":Z
    :cond_6
    :try_start_1
    sget-object v9, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;->eARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;

    invoke-virtual {v9}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    goto/16 :goto_0

    .line 1104
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1105
    .restart local v7    # "remove":Z
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1106
    .restart local v1    # "clear":Z
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 1107
    .restart local v6    # "notify":Z
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 1095
    .end local v1    # "clear":Z
    .end local v5    # "notificationBundle":Landroid/os/Bundle;
    .end local v6    # "notify":Z
    .end local v7    # "remove":Z
    .end local v8    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public declared-synchronized onMiniDroneUsbAccessoryStateLightStateUpdate(BLcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;BB)V
    .locals 14
    .param p1, "id"    # B
    .param p2, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;
    .param p3, "intensity"    # B
    .param p4, "list_flags"    # B

    .prologue
    .line 954
    monitor-enter p0

    :try_start_0
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 955
    .local v9, "updateDictionary":Landroid/os/Bundle;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 956
    .local v6, "notificationBundle":Landroid/os/Bundle;
    const-string v10, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotificationIdKey"

    invoke-virtual {v6, v10, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 957
    const-string v11, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotificationStateKey"

    if-eqz p2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;->getValue()I

    move-result v10

    :goto_0
    invoke-virtual {v6, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 958
    if-nez p2, :cond_0

    .line 960
    const-string v10, "MiniDroneDeviceControllerAndLibARCommands"

    const-string v11, "Bad value for argument `state` in LightState command from the device."

    invoke-static {v10, v11}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    :cond_0
    const-string v10, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotificationIntensityKey"

    move/from16 v0, p3

    invoke-virtual {v6, v10, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 964
    sget v10, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_REMOVE:I

    and-int v10, v10, p4

    if-eqz v10, :cond_7

    const/4 v8, 0x1

    .line 965
    .local v8, "remove":Z
    :goto_1
    sget v10, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_FIRST:I

    sget v11, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_EMPTY:I

    or-int/2addr v10, v11

    and-int v10, v10, p4

    if-eqz v10, :cond_8

    const/4 v2, 0x1

    .line 966
    .local v2, "clear":Z
    :goto_2
    sget v10, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_LAST:I

    sget v11, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_EMPTY:I

    or-int/2addr v10, v11

    and-int v10, v10, p4

    if-eqz v10, :cond_9

    const/4 v7, 0x1

    .line 967
    .local v7, "notify":Z
    :goto_3
    sget v10, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_REMOVE:I

    sget v11, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_GENERIC_LIST_FLAGS_EMPTY:I

    or-int/2addr v10, v11

    and-int v10, v10, p4

    if-nez v10, :cond_a

    const/4 v1, 0x1

    .line 969
    .local v1, "add":Z
    :goto_4
    iget-object v10, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v11, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotification"

    invoke-virtual {v10, v11}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 971
    .local v5, "listDictionary":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 974
    iget-object v10, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v11, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotification"

    invoke-virtual {v10, v11}, Lcom/parrot/controller/devicecontrollers/ARBundle;->remove(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v5}, Landroid/os/Bundle;->clear()V

    .line 978
    :cond_1
    if-eqz v5, :cond_2

    if-eqz v8, :cond_2

    .line 981
    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 984
    :cond_2
    if-eqz v1, :cond_4

    .line 986
    if-nez v5, :cond_3

    .line 988
    new-instance v5, Landroid/os/Bundle;

    .end local v5    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 990
    .restart local v5    # "listDictionary":Landroid/os/Bundle;
    :cond_3
    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 991
    move-object v6, v5

    .line 993
    const-string v10, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotification"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 996
    iget-object v10, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v11, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotification"

    invoke-virtual {v10, v11, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1000
    :cond_4
    if-eqz v7, :cond_5

    .line 1003
    new-instance v4, Landroid/content/Intent;

    const-string v10, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1004
    .local v4, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v4, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1005
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1008
    iget-object v10, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->miniDroneDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v11, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotification"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 1009
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1010
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "intentDicChanged":Landroid/content/Intent;
    :cond_5
    monitor-exit p0

    return-void

    .line 957
    .end local v1    # "add":Z
    .end local v2    # "clear":Z
    .end local v5    # "listDictionary":Landroid/os/Bundle;
    .end local v7    # "notify":Z
    .end local v8    # "remove":Z
    :cond_6
    :try_start_1
    sget-object v10, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;->eARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;

    invoke-virtual {v10}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    goto/16 :goto_0

    .line 964
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 965
    .restart local v8    # "remove":Z
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 966
    .restart local v2    # "clear":Z
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 967
    .restart local v7    # "notify":Z
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 954
    .end local v2    # "clear":Z
    .end local v6    # "notificationBundle":Landroid/os/Bundle;
    .end local v7    # "notify":Z
    .end local v8    # "remove":Z
    .end local v9    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method protected registerARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V
    .locals 0
    .param p1, "decoder"    # Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->registerARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V

    .line 168
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDronePilotingStateFlatTrimChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingStateFlatTrimChangedListener;)V

    .line 169
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDronePilotingStateFlyingStateChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingStateFlyingStateChangedListener;)V

    .line 170
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDronePilotingStateAlertStateChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingStateAlertStateChangedListener;)V

    .line 171
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDronePilotingStateAutoTakeOffModeChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingStateAutoTakeOffModeChangedListener;)V

    .line 172
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDronePilotingStateFlyingModeChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingStateFlyingModeChangedListener;)V

    .line 173
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDronePilotingStatePlaneGearBoxChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingStatePlaneGearBoxChangedListener;)V

    .line 174
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneMediaRecordStatePictureStateChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneMediaRecordStatePictureStateChangedListener;)V

    .line 175
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneMediaRecordStatePictureStateChangedV2Listener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneMediaRecordStatePictureStateChangedV2Listener;)V

    .line 176
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneMediaRecordEventPictureEventChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneMediaRecordEventPictureEventChangedListener;)V

    .line 177
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDronePilotingSettingsStateMaxAltitudeChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingSettingsStateMaxAltitudeChangedListener;)V

    .line 178
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDronePilotingSettingsStateMaxTiltChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingSettingsStateMaxTiltChangedListener;)V

    .line 179
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDronePilotingSettingsStateBankedTurnChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingSettingsStateBankedTurnChangedListener;)V

    .line 180
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneSpeedSettingsStateMaxVerticalSpeedChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSpeedSettingsStateMaxVerticalSpeedChangedListener;)V

    .line 181
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneSpeedSettingsStateMaxRotationSpeedChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSpeedSettingsStateMaxRotationSpeedChangedListener;)V

    .line 182
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneSpeedSettingsStateWheelsChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSpeedSettingsStateWheelsChangedListener;)V

    .line 183
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneSpeedSettingsStateMaxHorizontalSpeedChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSpeedSettingsStateMaxHorizontalSpeedChangedListener;)V

    .line 184
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneSpeedSettingsStateMaxPlaneModeRotationSpeedChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSpeedSettingsStateMaxPlaneModeRotationSpeedChangedListener;)V

    .line 185
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneSettingsStateProductMotorsVersionChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSettingsStateProductMotorsVersionChangedListener;)V

    .line 186
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneSettingsStateProductInertialVersionChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSettingsStateProductInertialVersionChangedListener;)V

    .line 187
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneSettingsStateCutOutModeChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSettingsStateCutOutModeChangedListener;)V

    .line 188
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneFloodControlStateFloodControlChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneFloodControlStateFloodControlChangedListener;)V

    .line 189
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneUsbAccessoryStateLightStateListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneUsbAccessoryStateLightStateListener;)V

    .line 190
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneUsbAccessoryStateClawStateListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneUsbAccessoryStateClawStateListener;)V

    .line 191
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneUsbAccessoryStateGunStateListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneUsbAccessoryStateGunStateListener;)V

    .line 192
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneNavigationDataStateDronePositionListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneNavigationDataStateDronePositionListener;)V

    .line 193
    return-void
.end method

.method protected setConfigurations(Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;DLjava/lang/Class;)V
    .locals 1
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
    .line 160
    .local p5, "dcBridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parrot/controller/devicecontrollers/DeviceController;>;"
    invoke-super/range {p0 .. p5}, Lcom/parrot/controller/devicecontrollers/DeviceController;->setConfigurations(Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;DLjava/lang/Class;)V

    .line 161
    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method protected unregisterARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V
    .locals 1
    .param p1, "decoder"    # Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->unregisterARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V

    .line 200
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDronePilotingStateFlatTrimChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingStateFlatTrimChangedListener;)V

    .line 201
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDronePilotingStateFlyingStateChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingStateFlyingStateChangedListener;)V

    .line 202
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDronePilotingStateAlertStateChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingStateAlertStateChangedListener;)V

    .line 203
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDronePilotingStateAutoTakeOffModeChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingStateAutoTakeOffModeChangedListener;)V

    .line 204
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDronePilotingStateFlyingModeChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingStateFlyingModeChangedListener;)V

    .line 205
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDronePilotingStatePlaneGearBoxChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingStatePlaneGearBoxChangedListener;)V

    .line 206
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneMediaRecordStatePictureStateChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneMediaRecordStatePictureStateChangedListener;)V

    .line 207
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneMediaRecordStatePictureStateChangedV2Listener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneMediaRecordStatePictureStateChangedV2Listener;)V

    .line 208
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneMediaRecordEventPictureEventChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneMediaRecordEventPictureEventChangedListener;)V

    .line 209
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDronePilotingSettingsStateMaxAltitudeChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingSettingsStateMaxAltitudeChangedListener;)V

    .line 210
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDronePilotingSettingsStateMaxTiltChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingSettingsStateMaxTiltChangedListener;)V

    .line 211
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDronePilotingSettingsStateBankedTurnChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDronePilotingSettingsStateBankedTurnChangedListener;)V

    .line 212
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneSpeedSettingsStateMaxVerticalSpeedChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSpeedSettingsStateMaxVerticalSpeedChangedListener;)V

    .line 213
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneSpeedSettingsStateMaxRotationSpeedChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSpeedSettingsStateMaxRotationSpeedChangedListener;)V

    .line 214
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneSpeedSettingsStateWheelsChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSpeedSettingsStateWheelsChangedListener;)V

    .line 215
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneSpeedSettingsStateMaxHorizontalSpeedChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSpeedSettingsStateMaxHorizontalSpeedChangedListener;)V

    .line 216
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneSpeedSettingsStateMaxPlaneModeRotationSpeedChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSpeedSettingsStateMaxPlaneModeRotationSpeedChangedListener;)V

    .line 217
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneSettingsStateProductMotorsVersionChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSettingsStateProductMotorsVersionChangedListener;)V

    .line 218
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneSettingsStateProductInertialVersionChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSettingsStateProductInertialVersionChangedListener;)V

    .line 219
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneSettingsStateCutOutModeChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneSettingsStateCutOutModeChangedListener;)V

    .line 220
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneFloodControlStateFloodControlChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneFloodControlStateFloodControlChangedListener;)V

    .line 221
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneUsbAccessoryStateLightStateListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneUsbAccessoryStateLightStateListener;)V

    .line 222
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneUsbAccessoryStateClawStateListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneUsbAccessoryStateClawStateListener;)V

    .line 223
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneUsbAccessoryStateGunStateListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneUsbAccessoryStateGunStateListener;)V

    .line 224
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setMiniDroneNavigationDataStateDronePositionListener(Lcom/parrot/arsdk/arcommands/ARCommandMiniDroneNavigationDataStateDronePositionListener;)V

    .line 225
    return-void
.end method
