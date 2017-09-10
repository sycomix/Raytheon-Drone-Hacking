.class public abstract Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;
.super Lcom/parrot/controller/devicecontrollers/DeviceController;
.source "JumpingSumoDeviceControllerAndLibARCommands.java"

# interfaces
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoPilotingStatePostureChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoPilotingStateAlertStateChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoPilotingStateSpeedChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoAnimationsStateJumpLoadChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoAnimationsStateJumpTypeChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoAnimationsStateJumpMotorProblemChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoSettingsStateProductGPSVersionChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaRecordStatePictureStateChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaRecordStateVideoStateChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaRecordStatePictureStateChangedV2Listener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaRecordStateVideoStateChangedV2Listener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaRecordEventPictureEventChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaRecordEventVideoEventChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoNetworkSettingsStateWifiSelectionChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoNetworkStateWifiScanListChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoNetworkStateAllWifiScanChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoNetworkStateWifiAuthChannelListChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoNetworkStateAllWifiAuthChannelChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoNetworkStateLinkQualityChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoAudioSettingsStateMasterVolumeChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoAudioSettingsStateThemeChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoRoadPlanStateScriptMetadataListChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoRoadPlanStateAllScriptsMetadataChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoRoadPlanStateScriptUploadChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoRoadPlanStateScriptDeleteChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoRoadPlanStatePlayScriptChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoSpeedSettingsStateOutdoorChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaStreamingStateVideoEnableChangedListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoVideoSettingsStateAutorecordChangedListener;


# static fields
.field private static final JUMPINGSUMODEVICECONTROLLERANDLIBARCOMMANDS_TAG:Ljava/lang/String; = "JumpingSumoDeviceControllerAndLibARCommands"

.field public static final JumpingSumoDeviceControllerAnimationsStateJumpLoadChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerAnimationsStateJumpLoadChangedNotification"

.field public static final JumpingSumoDeviceControllerAnimationsStateJumpLoadChangedNotificationStateKey:Ljava/lang/String; = "JumpingSumoDeviceControllerAnimationsStateJumpLoadChangedNotificationStateKey"

.field public static final JumpingSumoDeviceControllerAnimationsStateJumpMotorProblemChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerAnimationsStateJumpMotorProblemChangedNotification"

.field public static final JumpingSumoDeviceControllerAnimationsStateJumpMotorProblemChangedNotificationErrorKey:Ljava/lang/String; = "JumpingSumoDeviceControllerAnimationsStateJumpMotorProblemChangedNotificationErrorKey"

.field public static final JumpingSumoDeviceControllerAnimationsStateJumpTypeChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerAnimationsStateJumpTypeChangedNotification"

.field public static final JumpingSumoDeviceControllerAnimationsStateJumpTypeChangedNotificationStateKey:Ljava/lang/String; = "JumpingSumoDeviceControllerAnimationsStateJumpTypeChangedNotificationStateKey"

.field public static final JumpingSumoDeviceControllerAudioSettingsStateMasterVolumeChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerAudioSettingsStateMasterVolumeChangedNotification"

.field public static final JumpingSumoDeviceControllerAudioSettingsStateMasterVolumeChangedNotificationVolumeKey:Ljava/lang/String; = "JumpingSumoDeviceControllerAudioSettingsStateMasterVolumeChangedNotificationVolumeKey"

.field public static final JumpingSumoDeviceControllerAudioSettingsStateThemeChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerAudioSettingsStateThemeChangedNotification"

.field public static final JumpingSumoDeviceControllerAudioSettingsStateThemeChangedNotificationThemeKey:Ljava/lang/String; = "JumpingSumoDeviceControllerAudioSettingsStateThemeChangedNotificationThemeKey"

.field public static final JumpingSumoDeviceControllerMediaRecordEventPictureEventChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaRecordEventPictureEventChangedNotification"

.field public static final JumpingSumoDeviceControllerMediaRecordEventPictureEventChangedNotificationErrorKey:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaRecordEventPictureEventChangedNotificationErrorKey"

.field public static final JumpingSumoDeviceControllerMediaRecordEventPictureEventChangedNotificationEventKey:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaRecordEventPictureEventChangedNotificationEventKey"

.field public static final JumpingSumoDeviceControllerMediaRecordEventVideoEventChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaRecordEventVideoEventChangedNotification"

.field public static final JumpingSumoDeviceControllerMediaRecordEventVideoEventChangedNotificationErrorKey:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaRecordEventVideoEventChangedNotificationErrorKey"

.field public static final JumpingSumoDeviceControllerMediaRecordEventVideoEventChangedNotificationEventKey:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaRecordEventVideoEventChangedNotificationEventKey"

.field public static final JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedNotification"

.field public static final JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedNotificationMassStorageIdKey:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedNotificationMassStorageIdKey"

.field public static final JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedNotificationStateKey:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedNotificationStateKey"

.field public static final JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedV2Notification:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedV2Notification"

.field public static final JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedV2NotificationErrorKey:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedV2NotificationErrorKey"

.field public static final JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedV2NotificationStateKey:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedV2NotificationStateKey"

.field public static final JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedNotification"

.field public static final JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedNotificationMassStorageIdKey:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedNotificationMassStorageIdKey"

.field public static final JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedNotificationStateKey:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedNotificationStateKey"

.field public static final JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedV2Notification:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedV2Notification"

.field public static final JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedV2NotificationErrorKey:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedV2NotificationErrorKey"

.field public static final JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedV2NotificationStateKey:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedV2NotificationStateKey"

.field public static final JumpingSumoDeviceControllerMediaStreamingStateVideoEnableChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaStreamingStateVideoEnableChangedNotification"

.field public static final JumpingSumoDeviceControllerMediaStreamingStateVideoEnableChangedNotificationEnabledKey:Ljava/lang/String; = "JumpingSumoDeviceControllerMediaStreamingStateVideoEnableChangedNotificationEnabledKey"

.field public static final JumpingSumoDeviceControllerNetworkSettingsStateWifiSelectionChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerNetworkSettingsStateWifiSelectionChangedNotification"

.field public static final JumpingSumoDeviceControllerNetworkSettingsStateWifiSelectionChangedNotificationBandKey:Ljava/lang/String; = "JumpingSumoDeviceControllerNetworkSettingsStateWifiSelectionChangedNotificationBandKey"

.field public static final JumpingSumoDeviceControllerNetworkSettingsStateWifiSelectionChangedNotificationChannelKey:Ljava/lang/String; = "JumpingSumoDeviceControllerNetworkSettingsStateWifiSelectionChangedNotificationChannelKey"

.field public static final JumpingSumoDeviceControllerNetworkSettingsStateWifiSelectionChangedNotificationTypeKey:Ljava/lang/String; = "JumpingSumoDeviceControllerNetworkSettingsStateWifiSelectionChangedNotificationTypeKey"

.field public static final JumpingSumoDeviceControllerNetworkStateAllWifiAuthChannelChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerNetworkStateAllWifiAuthChannelChangedNotification"

.field public static final JumpingSumoDeviceControllerNetworkStateAllWifiScanChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerNetworkStateAllWifiScanChangedNotification"

.field public static final JumpingSumoDeviceControllerNetworkStateLinkQualityChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerNetworkStateLinkQualityChangedNotification"

.field public static final JumpingSumoDeviceControllerNetworkStateLinkQualityChangedNotificationQualityKey:Ljava/lang/String; = "JumpingSumoDeviceControllerNetworkStateLinkQualityChangedNotificationQualityKey"

.field public static final JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

.field public static final JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotificationBandKey:Ljava/lang/String; = "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotificationBandKey"

.field public static final JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotificationChannelKey:Ljava/lang/String; = "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotificationChannelKey"

.field public static final JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotificationInOrOutKey:Ljava/lang/String; = "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotificationInOrOutKey"

.field public static final JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotification"

.field public static final JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotificationBandKey:Ljava/lang/String; = "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotificationBandKey"

.field public static final JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotificationChannelKey:Ljava/lang/String; = "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotificationChannelKey"

.field public static final JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotificationRssiKey:Ljava/lang/String; = "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotificationRssiKey"

.field public static final JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotificationSsidKey:Ljava/lang/String; = "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotificationSsidKey"

.field public static final JumpingSumoDeviceControllerPilotingStateAlertStateChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerPilotingStateAlertStateChangedNotification"

.field public static final JumpingSumoDeviceControllerPilotingStateAlertStateChangedNotificationStateKey:Ljava/lang/String; = "JumpingSumoDeviceControllerPilotingStateAlertStateChangedNotificationStateKey"

.field public static final JumpingSumoDeviceControllerPilotingStatePostureChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerPilotingStatePostureChangedNotification"

.field public static final JumpingSumoDeviceControllerPilotingStatePostureChangedNotificationStateKey:Ljava/lang/String; = "JumpingSumoDeviceControllerPilotingStatePostureChangedNotificationStateKey"

.field public static final JumpingSumoDeviceControllerPilotingStateSpeedChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerPilotingStateSpeedChangedNotification"

.field public static final JumpingSumoDeviceControllerPilotingStateSpeedChangedNotificationRealSpeedKey:Ljava/lang/String; = "JumpingSumoDeviceControllerPilotingStateSpeedChangedNotificationRealSpeedKey"

.field public static final JumpingSumoDeviceControllerPilotingStateSpeedChangedNotificationSpeedKey:Ljava/lang/String; = "JumpingSumoDeviceControllerPilotingStateSpeedChangedNotificationSpeedKey"

.field public static final JumpingSumoDeviceControllerRoadPlanStateAllScriptsMetadataChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerRoadPlanStateAllScriptsMetadataChangedNotification"

.field public static final JumpingSumoDeviceControllerRoadPlanStatePlayScriptChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerRoadPlanStatePlayScriptChangedNotification"

.field public static final JumpingSumoDeviceControllerRoadPlanStatePlayScriptChangedNotificationResultCodeKey:Ljava/lang/String; = "JumpingSumoDeviceControllerRoadPlanStatePlayScriptChangedNotificationResultCodeKey"

.field public static final JumpingSumoDeviceControllerRoadPlanStateScriptDeleteChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerRoadPlanStateScriptDeleteChangedNotification"

.field public static final JumpingSumoDeviceControllerRoadPlanStateScriptDeleteChangedNotificationResultCodeKey:Ljava/lang/String; = "JumpingSumoDeviceControllerRoadPlanStateScriptDeleteChangedNotificationResultCodeKey"

.field public static final JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotification"

.field public static final JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotificationLastModifiedKey:Ljava/lang/String; = "JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotificationLastModifiedKey"

.field public static final JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotificationNameKey:Ljava/lang/String; = "JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotificationNameKey"

.field public static final JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotificationProductKey:Ljava/lang/String; = "JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotificationProductKey"

.field public static final JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotificationUuidKey:Ljava/lang/String; = "JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotificationUuidKey"

.field public static final JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotificationVersionKey:Ljava/lang/String; = "JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotificationVersionKey"

.field public static final JumpingSumoDeviceControllerRoadPlanStateScriptUploadChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerRoadPlanStateScriptUploadChangedNotification"

.field public static final JumpingSumoDeviceControllerRoadPlanStateScriptUploadChangedNotificationResultCodeKey:Ljava/lang/String; = "JumpingSumoDeviceControllerRoadPlanStateScriptUploadChangedNotificationResultCodeKey"

.field public static final JumpingSumoDeviceControllerSettingsStateProductGPSVersionChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerSettingsStateProductGPSVersionChangedNotification"

.field public static final JumpingSumoDeviceControllerSettingsStateProductGPSVersionChangedNotificationHardwareKey:Ljava/lang/String; = "JumpingSumoDeviceControllerSettingsStateProductGPSVersionChangedNotificationHardwareKey"

.field public static final JumpingSumoDeviceControllerSettingsStateProductGPSVersionChangedNotificationSoftwareKey:Ljava/lang/String; = "JumpingSumoDeviceControllerSettingsStateProductGPSVersionChangedNotificationSoftwareKey"

.field public static final JumpingSumoDeviceControllerSpeedSettingsStateOutdoorChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerSpeedSettingsStateOutdoorChangedNotification"

.field public static final JumpingSumoDeviceControllerSpeedSettingsStateOutdoorChangedNotificationOutdoorKey:Ljava/lang/String; = "JumpingSumoDeviceControllerSpeedSettingsStateOutdoorChangedNotificationOutdoorKey"

.field public static final JumpingSumoDeviceControllerVideoSettingsStateAutorecordChangedNotification:Ljava/lang/String; = "JumpingSumoDeviceControllerVideoSettingsStateAutorecordChangedNotification"

.field public static final JumpingSumoDeviceControllerVideoSettingsStateAutorecordChangedNotificationEnabledKey:Ljava/lang/String; = "JumpingSumoDeviceControllerVideoSettingsStateAutorecordChangedNotificationEnabledKey"


# instance fields
.field private jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;
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
    .line 85
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;-><init>()V

    return-void
.end method

.method private initJumpingSumoDeviceControllerAndLibARCommandsIntents()V
    .locals 4

    .prologue
    .line 254
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    .line 255
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerPilotingStatePostureChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerPilotingStatePostureChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerPilotingStateAlertStateChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerPilotingStateSpeedChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerPilotingStateSpeedChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerAnimationsStateJumpLoadChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerAnimationsStateJumpLoadChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerAnimationsStateJumpTypeChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerAnimationsStateJumpTypeChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerAnimationsStateJumpMotorProblemChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerAnimationsStateJumpMotorProblemChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerSettingsStateProductGPSVersionChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerSettingsStateProductGPSVersionChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedV2Notification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedV2Notification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedV2Notification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedV2Notification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerMediaRecordEventPictureEventChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerMediaRecordEventPictureEventChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerMediaRecordEventVideoEventChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerMediaRecordEventVideoEventChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerNetworkSettingsStateWifiSelectionChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerNetworkSettingsStateWifiSelectionChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerNetworkStateAllWifiScanChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerNetworkStateAllWifiScanChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerNetworkStateAllWifiAuthChannelChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerNetworkStateAllWifiAuthChannelChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerNetworkStateLinkQualityChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerNetworkStateLinkQualityChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerAudioSettingsStateMasterVolumeChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerAudioSettingsStateMasterVolumeChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerAudioSettingsStateThemeChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerAudioSettingsStateThemeChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerRoadPlanStateAllScriptsMetadataChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerRoadPlanStateAllScriptsMetadataChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerRoadPlanStateScriptUploadChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerRoadPlanStateScriptUploadChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerRoadPlanStateScriptDeleteChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerRoadPlanStateScriptDeleteChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerRoadPlanStatePlayScriptChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerRoadPlanStatePlayScriptChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerSpeedSettingsStateOutdoorChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerSpeedSettingsStateOutdoorChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerMediaStreamingStateVideoEnableChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerMediaStreamingStateVideoEnableChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v1, "JumpingSumoDeviceControllerVideoSettingsStateAutorecordChangedNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "JumpingSumoDeviceControllerVideoSettingsStateAutorecordChangedNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-void
.end method


# virtual methods
.method protected JumpingSumoDeviceController_SendAnimationsJump(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONS_JUMP_TYPE_ENUM;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONS_JUMP_TYPE_ENUM;

    .prologue
    .line 1445
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1446
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1447
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1449
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoAnimationsJump(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONS_JUMP_TYPE_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1450
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1453
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1454
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1457
    :cond_0
    if-nez v2, :cond_1

    .line 1459
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send Jump command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendAnimationsJumpCancel(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 1390
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1391
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1392
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1394
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoAnimationsJumpCancel()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1395
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1398
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1399
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1402
    :cond_0
    if-nez v2, :cond_1

    .line 1404
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send JumpCancel command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendAnimationsJumpLoad(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 1417
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1418
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1419
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1421
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoAnimationsJumpLoad()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1422
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1425
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1426
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1429
    :cond_0
    if-nez v2, :cond_1

    .line 1431
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send JumpLoad command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendAnimationsJumpStop(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 1363
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1364
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1365
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1367
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoAnimationsJumpStop()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1368
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1371
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1372
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1375
    :cond_0
    if-nez v2, :cond_1

    .line 1377
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send JumpStop command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendAnimationsSimpleAnimation(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONS_SIMPLEANIMATION_ID_ENUM;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "id"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONS_SIMPLEANIMATION_ID_ENUM;

    .prologue
    .line 1473
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1474
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1475
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1477
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoAnimationsSimpleAnimation(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONS_SIMPLEANIMATION_ID_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1478
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1481
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1482
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1485
    :cond_0
    if-nez v2, :cond_1

    .line 1487
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send SimpleAnimation command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendAudioSettingsMasterVolume(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "volume"    # B

    .prologue
    .line 1698
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1699
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1700
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1702
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoAudioSettingsMasterVolume(B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1703
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1706
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1707
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1710
    :cond_0
    if-nez v2, :cond_1

    .line 1712
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send MasterVolume command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendAudioSettingsTheme(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_AUDIOSETTINGS_THEME_THEME_ENUM;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "theme"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_AUDIOSETTINGS_THEME_THEME_ENUM;

    .prologue
    .line 1726
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1727
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1728
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1730
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoAudioSettingsTheme(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_AUDIOSETTINGS_THEME_THEME_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1731
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1734
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1735
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1738
    :cond_0
    if-nez v2, :cond_1

    .line 1740
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send Theme command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendMediaRecordPicture(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "mass_storage_id"    # B

    .prologue
    .line 1501
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1502
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1503
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1505
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoMediaRecordPicture(B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1506
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1509
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1510
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1513
    :cond_0
    if-nez v2, :cond_1

    .line 1515
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send Picture command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendMediaRecordPictureV2(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 1557
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1558
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1559
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1561
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoMediaRecordPictureV2()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1562
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1565
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1566
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1569
    :cond_0
    if-nez v2, :cond_1

    .line 1571
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send PictureV2 command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendMediaRecordVideo(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEO_RECORD_ENUM;B)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "record"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEO_RECORD_ENUM;
    .param p5, "mass_storage_id"    # B

    .prologue
    .line 1530
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1531
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1532
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1534
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4, p5}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoMediaRecordVideo(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEO_RECORD_ENUM;B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1535
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1538
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1539
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1542
    :cond_0
    if-nez v2, :cond_1

    .line 1544
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send Video command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendMediaRecordVideoV2(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEOV2_RECORD_ENUM;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "record"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEOV2_RECORD_ENUM;

    .prologue
    .line 1585
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1586
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1587
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1589
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoMediaRecordVideoV2(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORD_VIDEOV2_RECORD_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1590
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1593
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1594
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1597
    :cond_0
    if-nez v2, :cond_1

    .line 1599
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send VideoV2 command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendMediaStreamingVideoEnable(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "enable"    # B

    .prologue
    .line 1894
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1895
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1896
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1898
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoMediaStreamingVideoEnable(B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1899
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1902
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1903
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1906
    :cond_0
    if-nez v2, :cond_1

    .line 1908
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send VideoEnable command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendNetworkSettingsWifiSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;
    .param p5, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;
    .param p6, "channel"    # B

    .prologue
    .line 1615
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1616
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1617
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1619
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4, p5, p6}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoNetworkSettingsWifiSelection(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1620
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1623
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1624
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1627
    :cond_0
    if-nez v2, :cond_1

    .line 1629
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send WifiSelection command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendNetworkWifiAuthChannel(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 1670
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1671
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1672
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1674
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoNetworkWifiAuthChannel()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1675
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1678
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1679
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1682
    :cond_0
    if-nez v2, :cond_1

    .line 1684
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send WifiAuthChannel command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendNetworkWifiScan(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORK_WIFISCAN_BAND_ENUM;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORK_WIFISCAN_BAND_ENUM;

    .prologue
    .line 1643
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1644
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1645
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1647
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoNetworkWifiScan(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORK_WIFISCAN_BAND_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1648
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1651
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1652
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1655
    :cond_0
    if-nez v2, :cond_1

    .line 1657
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send WifiScan command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendPilotingAddCapOffset(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "offset"    # F

    .prologue
    .line 1336
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1337
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1338
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1340
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoPilotingAddCapOffset(F)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1341
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1344
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1345
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1348
    :cond_0
    if-nez v2, :cond_1

    .line 1350
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send AddCapOffset command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendPilotingPCMD(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BBB)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "flag"    # B
    .param p5, "speed"    # B
    .param p6, "turn"    # B

    .prologue
    .line 1280
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1281
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1282
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1284
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4, p5, p6}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoPilotingPCMD(BBB)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1285
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1288
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1289
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1292
    :cond_0
    if-nez v2, :cond_1

    .line 1294
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send PCMD command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendPilotingPosture(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTING_POSTURE_TYPE_ENUM;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTING_POSTURE_TYPE_ENUM;

    .prologue
    .line 1308
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1309
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1310
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1312
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoPilotingPosture(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTING_POSTURE_TYPE_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1313
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1316
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1317
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1320
    :cond_0
    if-nez v2, :cond_1

    .line 1322
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send Posture command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendRoadPlanAllScriptsMetadata(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 1753
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1754
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1755
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1757
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoRoadPlanAllScriptsMetadata()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1758
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1761
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1762
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1765
    :cond_0
    if-nez v2, :cond_1

    .line 1767
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send AllScriptsMetadata command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendRoadPlanPlayScript(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1838
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1839
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1840
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1842
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoRoadPlanPlayScript(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1843
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1846
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1847
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1850
    :cond_0
    if-nez v2, :cond_1

    .line 1852
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send PlayScript command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendRoadPlanScriptDelete(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1810
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1811
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1812
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1814
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoRoadPlanScriptDelete(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1815
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1818
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1819
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1822
    :cond_0
    if-nez v2, :cond_1

    .line 1824
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send ScriptDelete command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendRoadPlanScriptUploaded(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "uuid"    # Ljava/lang/String;
    .param p5, "md5Hash"    # Ljava/lang/String;

    .prologue
    .line 1782
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1783
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1784
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1786
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4, p5}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoRoadPlanScriptUploaded(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1787
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1790
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1791
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1794
    :cond_0
    if-nez v2, :cond_1

    .line 1796
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send ScriptUploaded command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendSpeedSettingsOutdoor(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "outdoor"    # B

    .prologue
    .line 1866
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1867
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1868
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1870
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoSpeedSettingsOutdoor(B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1871
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1874
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1875
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1878
    :cond_0
    if-nez v2, :cond_1

    .line 1880
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send Outdoor command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    :cond_1
    return v2
.end method

.method protected JumpingSumoDeviceController_SendVideoSettingsAutorecord(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "enabled"    # B

    .prologue
    .line 1922
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1923
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1924
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1926
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setJumpingSumoVideoSettingsAutorecord(B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1927
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1930
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1931
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1934
    :cond_0
    if-nez v2, :cond_1

    .line 1936
    const-string v3, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v4, "Failed to send Autorecord command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    :cond_1
    return v2
.end method

.method public abstract controllerLoop()V
.end method

.method protected getJumpingSumoDeviceControllerAndLibARCommandsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method protected initialize()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->initJumpingSumoDeviceControllerAndLibARCommandsIntents()V

    .line 170
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->initialize()V

    .line 172
    :cond_0
    return-void
.end method

.method public declared-synchronized onJumpingSumoAnimationsStateJumpLoadChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPLOADCHANGED_STATE_ENUM;)V
    .locals 6
    .param p1, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPLOADCHANGED_STATE_ENUM;

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 414
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 415
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerAnimationsStateJumpLoadChangedNotificationStateKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPLOADCHANGED_STATE_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    if-nez p1, :cond_0

    .line 418
    const-string v4, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `state` in JumpLoadChanged command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_0
    const-string v4, "JumpingSumoDeviceControllerAnimationsStateJumpLoadChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 425
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerAnimationsStateJumpLoadChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 428
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 433
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerAnimationsStateJumpLoadChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 434
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 435
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    monitor-exit p0

    return-void

    .line 415
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPLOADCHANGED_STATE_ENUM;->eARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPLOADCHANGED_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPLOADCHANGED_STATE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPLOADCHANGED_STATE_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 413
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoAnimationsStateJumpMotorProblemChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPMOTORPROBLEMCHANGED_ERROR_ENUM;)V
    .locals 6
    .param p1, "error"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPMOTORPROBLEMCHANGED_ERROR_ENUM;

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 480
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 481
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerAnimationsStateJumpMotorProblemChangedNotificationErrorKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPMOTORPROBLEMCHANGED_ERROR_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    if-nez p1, :cond_0

    .line 484
    const-string v4, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `error` in JumpMotorProblemChanged command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_0
    const-string v4, "JumpingSumoDeviceControllerAnimationsStateJumpMotorProblemChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 491
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerAnimationsStateJumpMotorProblemChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 494
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 499
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerAnimationsStateJumpMotorProblemChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 500
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 501
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    monitor-exit p0

    return-void

    .line 481
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPMOTORPROBLEMCHANGED_ERROR_ENUM;->eARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPMOTORPROBLEMCHANGED_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPMOTORPROBLEMCHANGED_ERROR_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPMOTORPROBLEMCHANGED_ERROR_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 479
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoAnimationsStateJumpTypeChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;)V
    .locals 6
    .param p1, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 447
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 448
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerAnimationsStateJumpTypeChangedNotificationStateKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 449
    if-nez p1, :cond_0

    .line 451
    const-string v4, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `state` in JumpTypeChanged command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_0
    const-string v4, "JumpingSumoDeviceControllerAnimationsStateJumpTypeChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 458
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerAnimationsStateJumpTypeChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 461
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 463
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 466
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerAnimationsStateJumpTypeChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 467
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 468
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    monitor-exit p0

    return-void

    .line 448
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;->eARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 446
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoAudioSettingsStateMasterVolumeChangedUpdate(B)V
    .locals 6
    .param p1, "volume"    # B

    .prologue
    .line 955
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 956
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 957
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "JumpingSumoDeviceControllerAudioSettingsStateMasterVolumeChangedNotificationVolumeKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 960
    const-string v4, "JumpingSumoDeviceControllerAudioSettingsStateMasterVolumeChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 963
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerAudioSettingsStateMasterVolumeChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 966
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 967
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 968
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 971
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerAudioSettingsStateMasterVolumeChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 972
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 973
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    monitor-exit p0

    return-void

    .line 955
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoAudioSettingsStateThemeChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_AUDIOSETTINGSSTATE_THEMECHANGED_THEME_ENUM;)V
    .locals 6
    .param p1, "theme"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_AUDIOSETTINGSSTATE_THEMECHANGED_THEME_ENUM;

    .prologue
    .line 984
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 985
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 986
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerAudioSettingsStateThemeChangedNotificationThemeKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_AUDIOSETTINGSSTATE_THEMECHANGED_THEME_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 987
    if-nez p1, :cond_0

    .line 989
    const-string v4, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `theme` in ThemeChanged command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    :cond_0
    const-string v4, "JumpingSumoDeviceControllerAudioSettingsStateThemeChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 996
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerAudioSettingsStateThemeChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 999
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1001
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1004
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerAudioSettingsStateThemeChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1005
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1006
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    monitor-exit p0

    return-void

    .line 986
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_AUDIOSETTINGSSTATE_THEMECHANGED_THEME_ENUM;->eARCOMMANDS_JUMPINGSUMO_AUDIOSETTINGSSTATE_THEMECHANGED_THEME_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_AUDIOSETTINGSSTATE_THEMECHANGED_THEME_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_AUDIOSETTINGSSTATE_THEMECHANGED_THEME_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 984
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoMediaRecordEventPictureEventChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;)V
    .locals 4
    .param p1, "event"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;
    .param p2, "error"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;

    .prologue
    .line 688
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 689
    .local v1, "notificationBundle":Landroid/os/Bundle;
    const-string v3, "JumpingSumoDeviceControllerMediaRecordEventPictureEventChangedNotificationEventKey"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->getValue()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 690
    if-nez p1, :cond_0

    .line 692
    const-string v2, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v3, "Bad value for argument `event` in PictureEventChanged command from the device."

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :cond_0
    const-string v3, "JumpingSumoDeviceControllerMediaRecordEventPictureEventChangedNotificationErrorKey"

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->getValue()I

    move-result v2

    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 695
    if-nez p2, :cond_1

    .line 697
    const-string v2, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v3, "Bad value for argument `error` in PictureEventChanged command from the device."

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_1
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v3, "JumpingSumoDeviceControllerMediaRecordEventPictureEventChangedNotification"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 702
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 703
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    monitor-exit p0

    return-void

    .line 689
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->eARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->getValue()I

    move-result v2

    goto :goto_0

    .line 694
    :cond_3
    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->eARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_1

    .line 688
    .end local v1    # "notificationBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onJumpingSumoMediaRecordEventVideoEventChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;)V
    .locals 4
    .param p1, "event"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;
    .param p2, "error"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;

    .prologue
    .line 715
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 716
    .local v1, "notificationBundle":Landroid/os/Bundle;
    const-string v3, "JumpingSumoDeviceControllerMediaRecordEventVideoEventChangedNotificationEventKey"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;->getValue()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 717
    if-nez p1, :cond_0

    .line 719
    const-string v2, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v3, "Bad value for argument `event` in VideoEventChanged command from the device."

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_0
    const-string v3, "JumpingSumoDeviceControllerMediaRecordEventVideoEventChangedNotificationErrorKey"

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;->getValue()I

    move-result v2

    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 722
    if-nez p2, :cond_1

    .line 724
    const-string v2, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v3, "Bad value for argument `error` in VideoEventChanged command from the device."

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :cond_1
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v3, "JumpingSumoDeviceControllerMediaRecordEventVideoEventChangedNotification"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 729
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 730
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    monitor-exit p0

    return-void

    .line 716
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;->eARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;->getValue()I

    move-result v2

    goto :goto_0

    .line 721
    :cond_3
    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;->eARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_1

    .line 715
    .end local v1    # "notificationBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onJumpingSumoMediaRecordStatePictureStateChangedUpdate(BB)V
    .locals 6
    .param p1, "state"    # B
    .param p2, "mass_storage_id"    # B

    .prologue
    .line 544
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 545
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 546
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedNotificationStateKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 547
    const-string v4, "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedNotificationMassStorageIdKey"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 550
    const-string v4, "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 553
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 556
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 558
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 561
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 562
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 563
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    monitor-exit p0

    return-void

    .line 544
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoMediaRecordStatePictureStateChangedV2Update(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;)V
    .locals 6
    .param p1, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;
    .param p2, "error"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;

    .prologue
    .line 610
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 611
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 612
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedV2NotificationStateKey"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 613
    if-nez p1, :cond_0

    .line 615
    const-string v4, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `state` in PictureStateChangedV2 command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_0
    const-string v5, "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedV2NotificationErrorKey"

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;->getValue()I

    move-result v4

    :goto_1
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 618
    if-nez p2, :cond_1

    .line 620
    const-string v4, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `error` in PictureStateChangedV2 command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_1
    const-string v4, "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedV2Notification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 627
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedV2Notification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 630
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 632
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 635
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedV2Notification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 636
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 637
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    monitor-exit p0

    return-void

    .line 612
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_2
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->eARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->getValue()I

    move-result v4

    goto :goto_0

    .line 617
    :cond_3
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;->eARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_1

    .line 610
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoMediaRecordStateVideoStateChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;B)V
    .locals 6
    .param p1, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;
    .param p2, "mass_storage_id"    # B

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 576
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 577
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedNotificationStateKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 578
    if-nez p1, :cond_0

    .line 580
    const-string v4, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `state` in VideoStateChanged command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_0
    const-string v4, "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedNotificationMassStorageIdKey"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 585
    const-string v4, "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 588
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 591
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 592
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 593
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 596
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 597
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 598
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    monitor-exit p0

    return-void

    .line 577
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;->eARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 575
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoMediaRecordStateVideoStateChangedV2Update(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;)V
    .locals 6
    .param p1, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;
    .param p2, "error"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;

    .prologue
    .line 649
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 650
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 651
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedV2NotificationStateKey"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 652
    if-nez p1, :cond_0

    .line 654
    const-string v4, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `state` in VideoStateChangedV2 command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_0
    const-string v5, "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedV2NotificationErrorKey"

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;->getValue()I

    move-result v4

    :goto_1
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 657
    if-nez p2, :cond_1

    .line 659
    const-string v4, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `error` in VideoStateChangedV2 command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    :cond_1
    const-string v4, "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedV2Notification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 666
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedV2Notification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 669
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 671
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 674
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedV2Notification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 675
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 676
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    monitor-exit p0

    return-void

    .line 651
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_2
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;->eARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;->getValue()I

    move-result v4

    goto :goto_0

    .line 656
    :cond_3
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;->eARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_1

    .line 649
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoMediaStreamingStateVideoEnableChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;)V
    .locals 6
    .param p1, "enabled"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;

    .prologue
    .line 1216
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1217
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1218
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerMediaStreamingStateVideoEnableChangedNotificationEnabledKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1219
    if-nez p1, :cond_0

    .line 1221
    const-string v4, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `enabled` in VideoEnableChanged command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    :cond_0
    const-string v4, "JumpingSumoDeviceControllerMediaStreamingStateVideoEnableChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1228
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerMediaStreamingStateVideoEnableChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1231
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1232
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1233
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1236
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerMediaStreamingStateVideoEnableChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1237
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1238
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1239
    monitor-exit p0

    return-void

    .line 1218
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;->eARCOMMANDS_JUMPINGSUMO_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 1216
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoNetworkSettingsStateWifiSelectionChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_BAND_ENUM;B)V
    .locals 6
    .param p1, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;
    .param p2, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_BAND_ENUM;
    .param p3, "channel"    # B

    .prologue
    .line 743
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 744
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 745
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerNetworkSettingsStateWifiSelectionChangedNotificationTypeKey"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 746
    if-nez p1, :cond_0

    .line 748
    const-string v4, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `type` in WifiSelectionChanged command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_0
    const-string v5, "JumpingSumoDeviceControllerNetworkSettingsStateWifiSelectionChangedNotificationBandKey"

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_BAND_ENUM;->getValue()I

    move-result v4

    :goto_1
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 751
    if-nez p2, :cond_1

    .line 753
    const-string v4, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `band` in WifiSelectionChanged command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_1
    const-string v4, "JumpingSumoDeviceControllerNetworkSettingsStateWifiSelectionChangedNotificationChannelKey"

    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 758
    const-string v4, "JumpingSumoDeviceControllerNetworkSettingsStateWifiSelectionChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 761
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerNetworkSettingsStateWifiSelectionChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 764
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 765
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 766
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 769
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerNetworkSettingsStateWifiSelectionChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 770
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 771
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    monitor-exit p0

    return-void

    .line 745
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_2
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;->eARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;->getValue()I

    move-result v4

    goto :goto_0

    .line 750
    :cond_3
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_BAND_ENUM;->eARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_BAND_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_BAND_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_BAND_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_1

    .line 743
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoNetworkStateAllWifiAuthChannelChangedUpdate()V
    .locals 6

    .prologue
    .line 899
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 900
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 903
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "JumpingSumoDeviceControllerNetworkStateAllWifiAuthChannelChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 906
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerNetworkStateAllWifiAuthChannelChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 909
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 910
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 911
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 914
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerNetworkStateAllWifiAuthChannelChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 915
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    monitor-exit p0

    return-void

    .line 899
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoNetworkStateAllWifiScanChangedUpdate()V
    .locals 6

    .prologue
    .line 828
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 829
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 832
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "JumpingSumoDeviceControllerNetworkStateAllWifiScanChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 835
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerNetworkStateAllWifiScanChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 838
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 839
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 840
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 843
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerNetworkStateAllWifiScanChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 844
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    monitor-exit p0

    return-void

    .line 828
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoNetworkStateLinkQualityChangedUpdate(B)V
    .locals 6
    .param p1, "quality"    # B

    .prologue
    .line 926
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 927
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 928
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "JumpingSumoDeviceControllerNetworkStateLinkQualityChangedNotificationQualityKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 931
    const-string v4, "JumpingSumoDeviceControllerNetworkStateLinkQualityChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 934
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerNetworkStateLinkQualityChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 937
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 938
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 939
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 942
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerNetworkStateLinkQualityChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 943
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 944
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    monitor-exit p0

    return-void

    .line 926
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoNetworkStateWifiAuthChannelListChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;BB)V
    .locals 9
    .param p1, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    .param p2, "channel"    # B
    .param p3, "in_or_out"    # B

    .prologue
    .line 857
    monitor-enter p0

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 858
    .local v4, "updateDictionary":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 859
    .local v3, "notificationBundle":Landroid/os/Bundle;
    const-string v6, "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotificationBandKey"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->getValue()I

    move-result v5

    :goto_0
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 860
    if-nez p1, :cond_0

    .line 862
    const-string v5, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v6, "Bad value for argument `band` in WifiAuthChannelListChanged command from the device."

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_0
    const-string v5, "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotificationChannelKey"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 865
    const-string v5, "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotificationInOrOutKey"

    invoke-virtual {v3, v5, p3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 868
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 869
    .local v2, "listDictionary":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 871
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 873
    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_1
    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 874
    move-object v3, v2

    .line 876
    const-string v5, "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 879
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v5, v6, v3}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 882
    new-instance v1, Landroid/content/Intent;

    const-string v5, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 883
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 884
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 887
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v6, "JumpingSumoDeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 888
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 889
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    monitor-exit p0

    return-void

    .line 859
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_2
    :try_start_1
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->eARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    goto/16 :goto_0

    .line 857
    .end local v3    # "notificationBundle":Landroid/os/Bundle;
    .end local v4    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized onJumpingSumoNetworkStateWifiScanListChangedUpdate(Ljava/lang/String;SLcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;B)V
    .locals 8
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "rssi"    # S
    .param p3, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;
    .param p4, "channel"    # B

    .prologue
    .line 785
    monitor-enter p0

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 786
    .local v4, "updateDictionary":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 787
    .local v3, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotificationSsidKey"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v5, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotificationRssiKey"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 789
    const-string v6, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotificationBandKey"

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;->getValue()I

    move-result v5

    :goto_0
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 790
    if-nez p3, :cond_0

    .line 792
    const-string v5, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v6, "Bad value for argument `band` in WifiScanListChanged command from the device."

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :cond_0
    const-string v5, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotificationChannelKey"

    invoke-virtual {v3, v5, p4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 797
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 798
    .local v2, "listDictionary":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 800
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 802
    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_1
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 803
    move-object v3, v2

    .line 805
    const-string v5, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 808
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v5, v6, v3}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 811
    new-instance v1, Landroid/content/Intent;

    const-string v5, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 812
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 813
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 816
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v6, "JumpingSumoDeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 817
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 818
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    monitor-exit p0

    return-void

    .line 789
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_2
    :try_start_1
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;->eARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;

    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    goto :goto_0

    .line 785
    .end local v3    # "notificationBundle":Landroid/os/Bundle;
    .end local v4    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized onJumpingSumoPilotingStateAlertStateChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;)V
    .locals 6
    .param p1, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 351
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerPilotingStateAlertStateChangedNotificationStateKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    if-nez p1, :cond_0

    .line 354
    const-string v4, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `state` in AlertStateChanged command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_0
    const-string v4, "JumpingSumoDeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 361
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 364
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 369
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 370
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 371
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit p0

    return-void

    .line 351
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->eARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 349
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoPilotingStatePostureChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_POSTURECHANGED_STATE_ENUM;)V
    .locals 6
    .param p1, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_POSTURECHANGED_STATE_ENUM;

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 317
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 318
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerPilotingStatePostureChangedNotificationStateKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_POSTURECHANGED_STATE_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    if-nez p1, :cond_0

    .line 321
    const-string v4, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `state` in PostureChanged command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_0
    const-string v4, "JumpingSumoDeviceControllerPilotingStatePostureChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 328
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerPilotingStatePostureChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 331
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 333
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 336
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerPilotingStatePostureChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 337
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    monitor-exit p0

    return-void

    .line 318
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_POSTURECHANGED_STATE_ENUM;->eARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_POSTURECHANGED_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_POSTURECHANGED_STATE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_POSTURECHANGED_STATE_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 316
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoPilotingStateSpeedChangedUpdate(BS)V
    .locals 6
    .param p1, "speed"    # B
    .param p2, "realSpeed"    # S

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 384
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 385
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "JumpingSumoDeviceControllerPilotingStateSpeedChangedNotificationSpeedKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 386
    const-string v4, "JumpingSumoDeviceControllerPilotingStateSpeedChangedNotificationRealSpeedKey"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 389
    const-string v4, "JumpingSumoDeviceControllerPilotingStateSpeedChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 392
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerPilotingStateSpeedChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 395
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 400
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerPilotingStateSpeedChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 401
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 402
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    monitor-exit p0

    return-void

    .line 383
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoRoadPlanStateAllScriptsMetadataChangedUpdate()V
    .locals 6

    .prologue
    .line 1061
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1062
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1065
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "JumpingSumoDeviceControllerRoadPlanStateAllScriptsMetadataChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1068
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerRoadPlanStateAllScriptsMetadataChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1071
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1073
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1076
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerRoadPlanStateAllScriptsMetadataChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1077
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    monitor-exit p0

    return-void

    .line 1061
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoRoadPlanStatePlayScriptChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_PLAYSCRIPTCHANGED_RESULTCODE_ENUM;)V
    .locals 6
    .param p1, "resultCode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_PLAYSCRIPTCHANGED_RESULTCODE_ENUM;

    .prologue
    .line 1154
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1155
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1156
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerRoadPlanStatePlayScriptChangedNotificationResultCodeKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_PLAYSCRIPTCHANGED_RESULTCODE_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1157
    if-nez p1, :cond_0

    .line 1159
    const-string v4, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `resultCode` in PlayScriptChanged command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    :cond_0
    const-string v4, "JumpingSumoDeviceControllerRoadPlanStatePlayScriptChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1166
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerRoadPlanStatePlayScriptChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1169
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1170
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1171
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1174
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerRoadPlanStatePlayScriptChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1175
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1176
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    monitor-exit p0

    return-void

    .line 1156
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_PLAYSCRIPTCHANGED_RESULTCODE_ENUM;->eARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_PLAYSCRIPTCHANGED_RESULTCODE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_PLAYSCRIPTCHANGED_RESULTCODE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_PLAYSCRIPTCHANGED_RESULTCODE_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 1154
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoRoadPlanStateScriptDeleteChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_SCRIPTDELETECHANGED_RESULTCODE_ENUM;)V
    .locals 6
    .param p1, "resultCode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_SCRIPTDELETECHANGED_RESULTCODE_ENUM;

    .prologue
    .line 1121
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1122
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1123
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerRoadPlanStateScriptDeleteChangedNotificationResultCodeKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_SCRIPTDELETECHANGED_RESULTCODE_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1124
    if-nez p1, :cond_0

    .line 1126
    const-string v4, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `resultCode` in ScriptDeleteChanged command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    :cond_0
    const-string v4, "JumpingSumoDeviceControllerRoadPlanStateScriptDeleteChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1133
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerRoadPlanStateScriptDeleteChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1136
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1137
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1138
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1141
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerRoadPlanStateScriptDeleteChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1142
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1143
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    monitor-exit p0

    return-void

    .line 1123
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_SCRIPTDELETECHANGED_RESULTCODE_ENUM;->eARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_SCRIPTDELETECHANGED_RESULTCODE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_SCRIPTDELETECHANGED_RESULTCODE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_SCRIPTDELETECHANGED_RESULTCODE_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 1121
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoRoadPlanStateScriptMetadataListChangedUpdate(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "version"    # B
    .param p3, "product"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "lastModified"    # J

    .prologue
    .line 1021
    monitor-enter p0

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1022
    .local v4, "updateDictionary":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1023
    .local v3, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotificationUuidKey"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const-string v5, "JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotificationVersionKey"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 1025
    const-string v5, "JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotificationProductKey"

    invoke-virtual {v3, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const-string v5, "JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotificationNameKey"

    invoke-virtual {v3, v5, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const-string v5, "JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotificationLastModifiedKey"

    invoke-virtual {v3, v5, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1030
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1031
    .local v2, "listDictionary":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 1033
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1035
    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_0
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1036
    move-object v3, v2

    .line 1038
    const-string v5, "JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotification"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1041
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotification"

    invoke-virtual {v5, v6, v3}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1044
    new-instance v1, Landroid/content/Intent;

    const-string v5, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1045
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1046
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1049
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v6, "JumpingSumoDeviceControllerRoadPlanStateScriptMetadataListChangedNotification"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1050
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1051
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    monitor-exit p0

    return-void

    .line 1021
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

.method public declared-synchronized onJumpingSumoRoadPlanStateScriptUploadChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_SCRIPTUPLOADCHANGED_RESULTCODE_ENUM;)V
    .locals 6
    .param p1, "resultCode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_SCRIPTUPLOADCHANGED_RESULTCODE_ENUM;

    .prologue
    .line 1088
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1089
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1090
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerRoadPlanStateScriptUploadChangedNotificationResultCodeKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_SCRIPTUPLOADCHANGED_RESULTCODE_ENUM;->getValue()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1091
    if-nez p1, :cond_0

    .line 1093
    const-string v4, "JumpingSumoDeviceControllerAndLibARCommands"

    const-string v5, "Bad value for argument `resultCode` in ScriptUploadChanged command from the device."

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :cond_0
    const-string v4, "JumpingSumoDeviceControllerRoadPlanStateScriptUploadChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1100
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerRoadPlanStateScriptUploadChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1103
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1105
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1108
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerRoadPlanStateScriptUploadChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1109
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1110
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    monitor-exit p0

    return-void

    .line 1090
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_SCRIPTUPLOADCHANGED_RESULTCODE_ENUM;->eARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_SCRIPTUPLOADCHANGED_RESULTCODE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_SCRIPTUPLOADCHANGED_RESULTCODE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ROADPLANSTATE_SCRIPTUPLOADCHANGED_RESULTCODE_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 1088
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoSettingsStateProductGPSVersionChangedUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "software"    # Ljava/lang/String;
    .param p2, "hardware"    # Ljava/lang/String;

    .prologue
    .line 513
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 514
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 515
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "JumpingSumoDeviceControllerSettingsStateProductGPSVersionChangedNotificationSoftwareKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v4, "JumpingSumoDeviceControllerSettingsStateProductGPSVersionChangedNotificationHardwareKey"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v4, "JumpingSumoDeviceControllerSettingsStateProductGPSVersionChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 522
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerSettingsStateProductGPSVersionChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 525
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 527
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 530
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerSettingsStateProductGPSVersionChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 531
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 532
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    monitor-exit p0

    return-void

    .line 513
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoSpeedSettingsStateOutdoorChangedUpdate(B)V
    .locals 6
    .param p1, "outdoor"    # B

    .prologue
    .line 1187
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1188
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1189
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "JumpingSumoDeviceControllerSpeedSettingsStateOutdoorChangedNotificationOutdoorKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 1192
    const-string v4, "JumpingSumoDeviceControllerSpeedSettingsStateOutdoorChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1195
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerSpeedSettingsStateOutdoorChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1198
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1199
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1200
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1203
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerSpeedSettingsStateOutdoorChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1204
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1205
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1206
    monitor-exit p0

    return-void

    .line 1187
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onJumpingSumoVideoSettingsStateAutorecordChangedUpdate(B)V
    .locals 6
    .param p1, "enabled"    # B

    .prologue
    .line 1249
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1250
    .local v3, "updateDictionary":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1251
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "JumpingSumoDeviceControllerVideoSettingsStateAutorecordChangedNotificationEnabledKey"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 1254
    const-string v4, "JumpingSumoDeviceControllerVideoSettingsStateAutorecordChangedNotification"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1257
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v5, "JumpingSumoDeviceControllerVideoSettingsStateAutorecordChangedNotification"

    invoke-virtual {v4, v5, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1260
    new-instance v1, Landroid/content/Intent;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1261
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1262
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1265
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->jumpingSumoDeviceControllerAndLibARCommandsIntentCache:Ljava/util/HashMap;

    const-string v5, "JumpingSumoDeviceControllerVideoSettingsStateAutorecordChangedNotification"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1266
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1267
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    monitor-exit p0

    return-void

    .line 1249
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    .end local v3    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected registerARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V
    .locals 0
    .param p1, "decoder"    # Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->registerARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V

    .line 185
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoPilotingStatePostureChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoPilotingStatePostureChangedListener;)V

    .line 186
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoPilotingStateAlertStateChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoPilotingStateAlertStateChangedListener;)V

    .line 187
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoPilotingStateSpeedChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoPilotingStateSpeedChangedListener;)V

    .line 188
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoAnimationsStateJumpLoadChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoAnimationsStateJumpLoadChangedListener;)V

    .line 189
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoAnimationsStateJumpTypeChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoAnimationsStateJumpTypeChangedListener;)V

    .line 190
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoAnimationsStateJumpMotorProblemChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoAnimationsStateJumpMotorProblemChangedListener;)V

    .line 191
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoSettingsStateProductGPSVersionChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoSettingsStateProductGPSVersionChangedListener;)V

    .line 192
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoMediaRecordStatePictureStateChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaRecordStatePictureStateChangedListener;)V

    .line 193
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoMediaRecordStateVideoStateChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaRecordStateVideoStateChangedListener;)V

    .line 194
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoMediaRecordStatePictureStateChangedV2Listener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaRecordStatePictureStateChangedV2Listener;)V

    .line 195
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoMediaRecordStateVideoStateChangedV2Listener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaRecordStateVideoStateChangedV2Listener;)V

    .line 196
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoMediaRecordEventPictureEventChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaRecordEventPictureEventChangedListener;)V

    .line 197
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoMediaRecordEventVideoEventChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaRecordEventVideoEventChangedListener;)V

    .line 198
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoNetworkSettingsStateWifiSelectionChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoNetworkSettingsStateWifiSelectionChangedListener;)V

    .line 199
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoNetworkStateWifiScanListChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoNetworkStateWifiScanListChangedListener;)V

    .line 200
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoNetworkStateAllWifiScanChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoNetworkStateAllWifiScanChangedListener;)V

    .line 201
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoNetworkStateWifiAuthChannelListChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoNetworkStateWifiAuthChannelListChangedListener;)V

    .line 202
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoNetworkStateAllWifiAuthChannelChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoNetworkStateAllWifiAuthChannelChangedListener;)V

    .line 203
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoNetworkStateLinkQualityChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoNetworkStateLinkQualityChangedListener;)V

    .line 204
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoAudioSettingsStateMasterVolumeChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoAudioSettingsStateMasterVolumeChangedListener;)V

    .line 205
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoAudioSettingsStateThemeChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoAudioSettingsStateThemeChangedListener;)V

    .line 206
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoRoadPlanStateScriptMetadataListChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoRoadPlanStateScriptMetadataListChangedListener;)V

    .line 207
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoRoadPlanStateAllScriptsMetadataChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoRoadPlanStateAllScriptsMetadataChangedListener;)V

    .line 208
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoRoadPlanStateScriptUploadChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoRoadPlanStateScriptUploadChangedListener;)V

    .line 209
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoRoadPlanStateScriptDeleteChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoRoadPlanStateScriptDeleteChangedListener;)V

    .line 210
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoRoadPlanStatePlayScriptChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoRoadPlanStatePlayScriptChangedListener;)V

    .line 211
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoSpeedSettingsStateOutdoorChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoSpeedSettingsStateOutdoorChangedListener;)V

    .line 212
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoMediaStreamingStateVideoEnableChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaStreamingStateVideoEnableChangedListener;)V

    .line 213
    invoke-virtual {p1, p0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoVideoSettingsStateAutorecordChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoVideoSettingsStateAutorecordChangedListener;)V

    .line 214
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
    .line 177
    .local p5, "dcBridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parrot/controller/devicecontrollers/DeviceController;>;"
    invoke-super/range {p0 .. p5}, Lcom/parrot/controller/devicecontrollers/DeviceController;->setConfigurations(Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;DLjava/lang/Class;)V

    .line 178
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

    .line 219
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->unregisterARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V

    .line 221
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoPilotingStatePostureChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoPilotingStatePostureChangedListener;)V

    .line 222
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoPilotingStateAlertStateChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoPilotingStateAlertStateChangedListener;)V

    .line 223
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoPilotingStateSpeedChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoPilotingStateSpeedChangedListener;)V

    .line 224
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoAnimationsStateJumpLoadChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoAnimationsStateJumpLoadChangedListener;)V

    .line 225
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoAnimationsStateJumpTypeChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoAnimationsStateJumpTypeChangedListener;)V

    .line 226
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoAnimationsStateJumpMotorProblemChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoAnimationsStateJumpMotorProblemChangedListener;)V

    .line 227
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoSettingsStateProductGPSVersionChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoSettingsStateProductGPSVersionChangedListener;)V

    .line 228
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoMediaRecordStatePictureStateChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaRecordStatePictureStateChangedListener;)V

    .line 229
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoMediaRecordStateVideoStateChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaRecordStateVideoStateChangedListener;)V

    .line 230
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoMediaRecordStatePictureStateChangedV2Listener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaRecordStatePictureStateChangedV2Listener;)V

    .line 231
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoMediaRecordStateVideoStateChangedV2Listener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaRecordStateVideoStateChangedV2Listener;)V

    .line 232
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoMediaRecordEventPictureEventChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaRecordEventPictureEventChangedListener;)V

    .line 233
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoMediaRecordEventVideoEventChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaRecordEventVideoEventChangedListener;)V

    .line 234
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoNetworkSettingsStateWifiSelectionChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoNetworkSettingsStateWifiSelectionChangedListener;)V

    .line 235
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoNetworkStateWifiScanListChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoNetworkStateWifiScanListChangedListener;)V

    .line 236
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoNetworkStateAllWifiScanChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoNetworkStateAllWifiScanChangedListener;)V

    .line 237
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoNetworkStateWifiAuthChannelListChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoNetworkStateWifiAuthChannelListChangedListener;)V

    .line 238
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoNetworkStateAllWifiAuthChannelChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoNetworkStateAllWifiAuthChannelChangedListener;)V

    .line 239
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoNetworkStateLinkQualityChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoNetworkStateLinkQualityChangedListener;)V

    .line 240
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoAudioSettingsStateMasterVolumeChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoAudioSettingsStateMasterVolumeChangedListener;)V

    .line 241
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoAudioSettingsStateThemeChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoAudioSettingsStateThemeChangedListener;)V

    .line 242
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoRoadPlanStateScriptMetadataListChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoRoadPlanStateScriptMetadataListChangedListener;)V

    .line 243
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoRoadPlanStateAllScriptsMetadataChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoRoadPlanStateAllScriptsMetadataChangedListener;)V

    .line 244
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoRoadPlanStateScriptUploadChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoRoadPlanStateScriptUploadChangedListener;)V

    .line 245
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoRoadPlanStateScriptDeleteChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoRoadPlanStateScriptDeleteChangedListener;)V

    .line 246
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoRoadPlanStatePlayScriptChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoRoadPlanStatePlayScriptChangedListener;)V

    .line 247
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoSpeedSettingsStateOutdoorChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoSpeedSettingsStateOutdoorChangedListener;)V

    .line 248
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoMediaStreamingStateVideoEnableChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoMediaStreamingStateVideoEnableChangedListener;)V

    .line 249
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->setJumpingSumoVideoSettingsStateAutorecordChangedListener(Lcom/parrot/arsdk/arcommands/ARCommandJumpingSumoVideoSettingsStateAutorecordChangedListener;)V

    .line 250
    return-void
.end method
