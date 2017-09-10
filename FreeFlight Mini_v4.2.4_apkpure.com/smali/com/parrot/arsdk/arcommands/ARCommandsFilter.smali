.class public Lcom/parrot/arsdk/arcommands/ARCommandsFilter;
.super Ljava/lang/Object;
.source "ARCommandsFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cFilter:J

.field private valid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_ALLOWED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;-><init>(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)V
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeNewFilter(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    .line 59
    iget-wide v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    .line 60
    iget-boolean v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->dispose()V

    .line 63
    :cond_0
    return-void

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeDeleteFilter(J)V
.end method

.method private native nativeFilterCommand(JJI)I
.end method

.method private native nativeNewFilter(I)J
.end method

.method private native nativeSetARDrone3AnimationsBehavior(JI)I
.end method

.method private native nativeSetARDrone3AnimationsFlipBehavior(JI)I
.end method

.method private native nativeSetARDrone3AntiflickeringBehavior(JI)I
.end method

.method private native nativeSetARDrone3AntiflickeringElectricFrequencyBehavior(JI)I
.end method

.method private native nativeSetARDrone3AntiflickeringSetModeBehavior(JI)I
.end method

.method private native nativeSetARDrone3AntiflickeringStateBehavior(JI)I
.end method

.method private native nativeSetARDrone3AntiflickeringStateElectricFrequencyChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3AntiflickeringStateModeChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3Behavior(JI)I
.end method

.method private native nativeSetARDrone3CameraBehavior(JI)I
.end method

.method private native nativeSetARDrone3CameraOrientationBehavior(JI)I
.end method

.method private native nativeSetARDrone3CameraOrientationV2Behavior(JI)I
.end method

.method private native nativeSetARDrone3CameraStateBehavior(JI)I
.end method

.method private native nativeSetARDrone3CameraStateDefaultCameraOrientationBehavior(JI)I
.end method

.method private native nativeSetARDrone3CameraStateDefaultCameraOrientationV2Behavior(JI)I
.end method

.method private native nativeSetARDrone3CameraStateOrientationBehavior(JI)I
.end method

.method private native nativeSetARDrone3CameraStateOrientationV2Behavior(JI)I
.end method

.method private native nativeSetARDrone3CameraStateVelocityRangeBehavior(JI)I
.end method

.method private native nativeSetARDrone3CameraVelocityBehavior(JI)I
.end method

.method private native nativeSetARDrone3GPSSettingsBehavior(JI)I
.end method

.method private native nativeSetARDrone3GPSSettingsHomeTypeBehavior(JI)I
.end method

.method private native nativeSetARDrone3GPSSettingsResetHomeBehavior(JI)I
.end method

.method private native nativeSetARDrone3GPSSettingsReturnHomeDelayBehavior(JI)I
.end method

.method private native nativeSetARDrone3GPSSettingsSendControllerGPSBehavior(JI)I
.end method

.method private native nativeSetARDrone3GPSSettingsSetHomeBehavior(JI)I
.end method

.method private native nativeSetARDrone3GPSSettingsStateBehavior(JI)I
.end method

.method private native nativeSetARDrone3GPSSettingsStateGPSFixStateChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3GPSSettingsStateGPSUpdateStateChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3GPSSettingsStateHomeChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3GPSSettingsStateHomeTypeChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3GPSSettingsStateResetHomeChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3GPSSettingsStateReturnHomeDelayChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3GPSStateBehavior(JI)I
.end method

.method private native nativeSetARDrone3GPSStateHomeTypeAvailabilityChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3GPSStateHomeTypeChosenChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3GPSStateNumberOfSatelliteChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3MediaRecordBehavior(JI)I
.end method

.method private native nativeSetARDrone3MediaRecordEventBehavior(JI)I
.end method

.method private native nativeSetARDrone3MediaRecordEventPictureEventChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3MediaRecordEventVideoEventChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3MediaRecordPictureBehavior(JI)I
.end method

.method private native nativeSetARDrone3MediaRecordPictureV2Behavior(JI)I
.end method

.method private native nativeSetARDrone3MediaRecordStateBehavior(JI)I
.end method

.method private native nativeSetARDrone3MediaRecordStatePictureStateChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3MediaRecordStatePictureStateChangedV2Behavior(JI)I
.end method

.method private native nativeSetARDrone3MediaRecordStateVideoResolutionStateBehavior(JI)I
.end method

.method private native nativeSetARDrone3MediaRecordStateVideoStateChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3MediaRecordStateVideoStateChangedV2Behavior(JI)I
.end method

.method private native nativeSetARDrone3MediaRecordVideoBehavior(JI)I
.end method

.method private native nativeSetARDrone3MediaRecordVideoV2Behavior(JI)I
.end method

.method private native nativeSetARDrone3MediaStreamingBehavior(JI)I
.end method

.method private native nativeSetARDrone3MediaStreamingStateBehavior(JI)I
.end method

.method private native nativeSetARDrone3MediaStreamingStateVideoEnableChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3MediaStreamingStateVideoStreamModeChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3MediaStreamingVideoEnableBehavior(JI)I
.end method

.method private native nativeSetARDrone3MediaStreamingVideoStreamModeBehavior(JI)I
.end method

.method private native nativeSetARDrone3NetworkBehavior(JI)I
.end method

.method private native nativeSetARDrone3NetworkSettingsBehavior(JI)I
.end method

.method private native nativeSetARDrone3NetworkSettingsStateBehavior(JI)I
.end method

.method private native nativeSetARDrone3NetworkSettingsStateWifiSecurityBehavior(JI)I
.end method

.method private native nativeSetARDrone3NetworkSettingsStateWifiSecurityChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3NetworkSettingsStateWifiSelectionChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3NetworkSettingsWifiSecurityBehavior(JI)I
.end method

.method private native nativeSetARDrone3NetworkSettingsWifiSelectionBehavior(JI)I
.end method

.method private native nativeSetARDrone3NetworkStateAllWifiAuthChannelChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3NetworkStateAllWifiScanChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3NetworkStateBehavior(JI)I
.end method

.method private native nativeSetARDrone3NetworkStateWifiAuthChannelListChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3NetworkStateWifiScanListChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3NetworkWifiAuthChannelBehavior(JI)I
.end method

.method private native nativeSetARDrone3NetworkWifiScanBehavior(JI)I
.end method

.method private native nativeSetARDrone3PROStateBehavior(JI)I
.end method

.method private native nativeSetARDrone3PROStateFeaturesBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsAutoWhiteBalanceSelectionBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsExpositionSelectionBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsPictureFormatSelectionBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsSaturationSelectionBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsStateAutoWhiteBalanceChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsStateBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsStateExpositionChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsStatePictureFormatChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsStateSaturationChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsStateTimelapseChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsStateVideoAutorecordChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsStateVideoFramerateChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsStateVideoRecordingModeChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsStateVideoResolutionsChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsStateVideoStabilizationModeChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsTimelapseSelectionBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsVideoAutorecordSelectionBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsVideoFramerateBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsVideoRecordingModeBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsVideoResolutionsBehavior(JI)I
.end method

.method private native nativeSetARDrone3PictureSettingsVideoStabilizationModeBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingAutoTakeOffModeBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingCircleBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingEmergencyBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingEventBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingEventMoveByEndBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingFlatTrimBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingLandingBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingMoveByBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingNavigateHomeBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingPCMDBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsAbsolutControlBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsBankedTurnBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsCirclingAltitudeBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsCirclingDirectionBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsCirclingRadiusBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsMaxAltitudeBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsMaxDistanceBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsMaxTiltBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsMinAltitudeBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsNoFlyOverMaxDistanceBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsPitchModeBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsSetAutonomousFlightMaxHorizontalAccelerationBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsSetAutonomousFlightMaxHorizontalSpeedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsSetAutonomousFlightMaxRotationSpeedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsSetAutonomousFlightMaxVerticalAccelerationBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsSetAutonomousFlightMaxVerticalSpeedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsStateAbsolutControlChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsStateAutonomousFlightMaxHorizontalAccelerationBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsStateAutonomousFlightMaxHorizontalSpeedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsStateAutonomousFlightMaxRotationSpeedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsStateAutonomousFlightMaxVerticalAccelerationBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsStateAutonomousFlightMaxVerticalSpeedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsStateBankedTurnChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsStateBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsStateCirclingAltitudeChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsStateCirclingDirectionChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsStateCirclingRadiusChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsStateMaxAltitudeChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsStateMaxDistanceChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsStateMaxTiltChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsStateMinAltitudeChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsStateNoFlyOverMaxDistanceChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingSettingsStatePitchModeChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingStateAirSpeedChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingStateAlertStateChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingStateAltitudeChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingStateAttitudeChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingStateAutoTakeOffModeChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingStateBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingStateFlatTrimChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingStateFlyingStateChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingStateGpsLocationChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingStateLandingStateChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingStateNavigateHomeStateChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingStatePositionChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingStateSpeedChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingTakeOffBehavior(JI)I
.end method

.method private native nativeSetARDrone3PilotingUserTakeOffBehavior(JI)I
.end method

.method private native nativeSetARDrone3SettingsStateBehavior(JI)I
.end method

.method private native nativeSetARDrone3SettingsStateCPUIDBehavior(JI)I
.end method

.method private native nativeSetARDrone3SettingsStateMotorErrorLastErrorChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3SettingsStateMotorErrorStateChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3SettingsStateMotorFlightsStatusChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3SettingsStateMotorSoftwareVersionChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3SettingsStateP7IDBehavior(JI)I
.end method

.method private native nativeSetARDrone3SettingsStateProductGPSVersionChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3SettingsStateProductMotorVersionListChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3SpeedSettingsBehavior(JI)I
.end method

.method private native nativeSetARDrone3SpeedSettingsHullProtectionBehavior(JI)I
.end method

.method private native nativeSetARDrone3SpeedSettingsMaxPitchRollRotationSpeedBehavior(JI)I
.end method

.method private native nativeSetARDrone3SpeedSettingsMaxRotationSpeedBehavior(JI)I
.end method

.method private native nativeSetARDrone3SpeedSettingsMaxVerticalSpeedBehavior(JI)I
.end method

.method private native nativeSetARDrone3SpeedSettingsOutdoorBehavior(JI)I
.end method

.method private native nativeSetARDrone3SpeedSettingsStateBehavior(JI)I
.end method

.method private native nativeSetARDrone3SpeedSettingsStateHullProtectionChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3SpeedSettingsStateMaxPitchRollRotationSpeedChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3SpeedSettingsStateMaxRotationSpeedChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3SpeedSettingsStateMaxVerticalSpeedChangedBehavior(JI)I
.end method

.method private native nativeSetARDrone3SpeedSettingsStateOutdoorChangedBehavior(JI)I
.end method

.method private native nativeSetCommonARLibsVersionsStateBehavior(JI)I
.end method

.method private native nativeSetCommonARLibsVersionsStateControllerLibARCommandsVersionBehavior(JI)I
.end method

.method private native nativeSetCommonARLibsVersionsStateDeviceLibARCommandsVersionBehavior(JI)I
.end method

.method private native nativeSetCommonARLibsVersionsStateSkyControllerLibARCommandsVersionBehavior(JI)I
.end method

.method private native nativeSetCommonAccessoryBehavior(JI)I
.end method

.method private native nativeSetCommonAccessoryConfigBehavior(JI)I
.end method

.method private native nativeSetCommonAccessoryStateAccessoryConfigChangedBehavior(JI)I
.end method

.method private native nativeSetCommonAccessoryStateAccessoryConfigModificationEnabledBehavior(JI)I
.end method

.method private native nativeSetCommonAccessoryStateBehavior(JI)I
.end method

.method private native nativeSetCommonAccessoryStateSupportedAccessoriesListChangedBehavior(JI)I
.end method

.method private native nativeSetCommonAnimationsBehavior(JI)I
.end method

.method private native nativeSetCommonAnimationsStartAnimationBehavior(JI)I
.end method

.method private native nativeSetCommonAnimationsStateBehavior(JI)I
.end method

.method private native nativeSetCommonAnimationsStateListBehavior(JI)I
.end method

.method private native nativeSetCommonAnimationsStopAllAnimationsBehavior(JI)I
.end method

.method private native nativeSetCommonAnimationsStopAnimationBehavior(JI)I
.end method

.method private native nativeSetCommonAudioBehavior(JI)I
.end method

.method private native nativeSetCommonAudioControllerReadyForStreamingBehavior(JI)I
.end method

.method private native nativeSetCommonAudioStateAudioStreamingRunningBehavior(JI)I
.end method

.method private native nativeSetCommonAudioStateBehavior(JI)I
.end method

.method private native nativeSetCommonBehavior(JI)I
.end method

.method private native nativeSetCommonCalibrationBehavior(JI)I
.end method

.method private native nativeSetCommonCalibrationMagnetoCalibrationBehavior(JI)I
.end method

.method private native nativeSetCommonCalibrationPitotCalibrationBehavior(JI)I
.end method

.method private native nativeSetCommonCalibrationStateBehavior(JI)I
.end method

.method private native nativeSetCommonCalibrationStateMagnetoCalibrationAxisToCalibrateChangedBehavior(JI)I
.end method

.method private native nativeSetCommonCalibrationStateMagnetoCalibrationRequiredStateBehavior(JI)I
.end method

.method private native nativeSetCommonCalibrationStateMagnetoCalibrationStartedChangedBehavior(JI)I
.end method

.method private native nativeSetCommonCalibrationStateMagnetoCalibrationStateChangedBehavior(JI)I
.end method

.method private native nativeSetCommonCalibrationStatePitotCalibrationStateChangedBehavior(JI)I
.end method

.method private native nativeSetCommonCameraSettingsStateBehavior(JI)I
.end method

.method private native nativeSetCommonCameraSettingsStateCameraSettingsChangedBehavior(JI)I
.end method

.method private native nativeSetCommonChargerBehavior(JI)I
.end method

.method private native nativeSetCommonChargerSetMaxChargeRateBehavior(JI)I
.end method

.method private native nativeSetCommonChargerStateBehavior(JI)I
.end method

.method private native nativeSetCommonChargerStateChargingInfoBehavior(JI)I
.end method

.method private native nativeSetCommonChargerStateCurrentChargeStateChangedBehavior(JI)I
.end method

.method private native nativeSetCommonChargerStateLastChargeRateChangedBehavior(JI)I
.end method

.method private native nativeSetCommonChargerStateMaxChargeRateChangedBehavior(JI)I
.end method

.method private native nativeSetCommonCommonAllStatesBehavior(JI)I
.end method

.method private native nativeSetCommonCommonBehavior(JI)I
.end method

.method private native nativeSetCommonCommonCurrentDateBehavior(JI)I
.end method

.method private native nativeSetCommonCommonCurrentTimeBehavior(JI)I
.end method

.method private native nativeSetCommonCommonRebootBehavior(JI)I
.end method

.method private native nativeSetCommonCommonStateAllStatesChangedBehavior(JI)I
.end method

.method private native nativeSetCommonCommonStateBatteryStateChangedBehavior(JI)I
.end method

.method private native nativeSetCommonCommonStateBehavior(JI)I
.end method

.method private native nativeSetCommonCommonStateCountryListKnownBehavior(JI)I
.end method

.method private native nativeSetCommonCommonStateCurrentDateChangedBehavior(JI)I
.end method

.method private native nativeSetCommonCommonStateCurrentTimeChangedBehavior(JI)I
.end method

.method private native nativeSetCommonCommonStateDeprecatedMassStorageContentChangedBehavior(JI)I
.end method

.method private native nativeSetCommonCommonStateMassStorageContentBehavior(JI)I
.end method

.method private native nativeSetCommonCommonStateMassStorageContentForCurrentRunBehavior(JI)I
.end method

.method private native nativeSetCommonCommonStateMassStorageInfoRemainingListChangedBehavior(JI)I
.end method

.method private native nativeSetCommonCommonStateMassStorageInfoStateListChangedBehavior(JI)I
.end method

.method private native nativeSetCommonCommonStateMassStorageStateListChangedBehavior(JI)I
.end method

.method private native nativeSetCommonCommonStateProductModelBehavior(JI)I
.end method

.method private native nativeSetCommonCommonStateSensorsStatesListChangedBehavior(JI)I
.end method

.method private native nativeSetCommonCommonStateVideoRecordingTimestampBehavior(JI)I
.end method

.method private native nativeSetCommonCommonStateWifiSignalChangedBehavior(JI)I
.end method

.method private native nativeSetCommonControllerBehavior(JI)I
.end method

.method private native nativeSetCommonControllerIsPilotingBehavior(JI)I
.end method

.method private native nativeSetCommonFlightPlanEventBehavior(JI)I
.end method

.method private native nativeSetCommonFlightPlanEventSpeedBridleEventBehavior(JI)I
.end method

.method private native nativeSetCommonFlightPlanEventStartingErrorEventBehavior(JI)I
.end method

.method private native nativeSetCommonFlightPlanStateAvailabilityStateChangedBehavior(JI)I
.end method

.method private native nativeSetCommonFlightPlanStateBehavior(JI)I
.end method

.method private native nativeSetCommonFlightPlanStateComponentStateListChangedBehavior(JI)I
.end method

.method private native nativeSetCommonFlightPlanStateLockStateChangedBehavior(JI)I
.end method

.method private native nativeSetCommonGPSBehavior(JI)I
.end method

.method private native nativeSetCommonGPSControllerPositionForRunBehavior(JI)I
.end method

.method private native nativeSetCommonHeadlightsBehavior(JI)I
.end method

.method private native nativeSetCommonHeadlightsIntensityBehavior(JI)I
.end method

.method private native nativeSetCommonHeadlightsStateBehavior(JI)I
.end method

.method private native nativeSetCommonHeadlightsStateIntensityChangedBehavior(JI)I
.end method

.method private native nativeSetCommonMavlinkBehavior(JI)I
.end method

.method private native nativeSetCommonMavlinkPauseBehavior(JI)I
.end method

.method private native nativeSetCommonMavlinkStartBehavior(JI)I
.end method

.method private native nativeSetCommonMavlinkStateBehavior(JI)I
.end method

.method private native nativeSetCommonMavlinkStateMavlinkFilePlayingStateChangedBehavior(JI)I
.end method

.method private native nativeSetCommonMavlinkStateMavlinkPlayErrorStateChangedBehavior(JI)I
.end method

.method private native nativeSetCommonMavlinkStateMissonItemExecutedBehavior(JI)I
.end method

.method private native nativeSetCommonMavlinkStopBehavior(JI)I
.end method

.method private native nativeSetCommonNetworkBehavior(JI)I
.end method

.method private native nativeSetCommonNetworkDisconnectBehavior(JI)I
.end method

.method private native nativeSetCommonNetworkEventBehavior(JI)I
.end method

.method private native nativeSetCommonNetworkEventDisconnectionBehavior(JI)I
.end method

.method private native nativeSetCommonOverHeatBehavior(JI)I
.end method

.method private native nativeSetCommonOverHeatStateBehavior(JI)I
.end method

.method private native nativeSetCommonOverHeatStateOverHeatChangedBehavior(JI)I
.end method

.method private native nativeSetCommonOverHeatStateOverHeatRegulationChangedBehavior(JI)I
.end method

.method private native nativeSetCommonOverHeatSwitchOffBehavior(JI)I
.end method

.method private native nativeSetCommonOverHeatVentilateBehavior(JI)I
.end method

.method private native nativeSetCommonRunStateBehavior(JI)I
.end method

.method private native nativeSetCommonRunStateRunIdChangedBehavior(JI)I
.end method

.method private native nativeSetCommonSettingsAllSettingsBehavior(JI)I
.end method

.method private native nativeSetCommonSettingsAutoCountryBehavior(JI)I
.end method

.method private native nativeSetCommonSettingsBehavior(JI)I
.end method

.method private native nativeSetCommonSettingsCountryBehavior(JI)I
.end method

.method private native nativeSetCommonSettingsProductNameBehavior(JI)I
.end method

.method private native nativeSetCommonSettingsResetBehavior(JI)I
.end method

.method private native nativeSetCommonSettingsStateAllSettingsChangedBehavior(JI)I
.end method

.method private native nativeSetCommonSettingsStateAutoCountryChangedBehavior(JI)I
.end method

.method private native nativeSetCommonSettingsStateBehavior(JI)I
.end method

.method private native nativeSetCommonSettingsStateCountryChangedBehavior(JI)I
.end method

.method private native nativeSetCommonSettingsStateProductNameChangedBehavior(JI)I
.end method

.method private native nativeSetCommonSettingsStateProductSerialHighChangedBehavior(JI)I
.end method

.method private native nativeSetCommonSettingsStateProductSerialLowChangedBehavior(JI)I
.end method

.method private native nativeSetCommonSettingsStateProductVersionChangedBehavior(JI)I
.end method

.method private native nativeSetCommonSettingsStateResetChangedBehavior(JI)I
.end method

.method private native nativeSetCommonWifiSettingsBehavior(JI)I
.end method

.method private native nativeSetCommonWifiSettingsOutdoorSettingBehavior(JI)I
.end method

.method private native nativeSetCommonWifiSettingsStateBehavior(JI)I
.end method

.method private native nativeSetCommonWifiSettingsStateOutdoorSettingsChangedBehavior(JI)I
.end method

.method private native nativeSetControllerInfoBarometerBehavior(JI)I
.end method

.method private native nativeSetControllerInfoBehavior(JI)I
.end method

.method private native nativeSetControllerInfoGpsBehavior(JI)I
.end method

.method private native nativeSetDebugBehavior(JI)I
.end method

.method private native nativeSetDebugGetAllSettingsBehavior(JI)I
.end method

.method private native nativeSetDebugSetSettingBehavior(JI)I
.end method

.method private native nativeSetDebugSettingsInfoBehavior(JI)I
.end method

.method private native nativeSetDebugSettingsListBehavior(JI)I
.end method

.method private native nativeSetDroneManagerAuthenticationFailedBehavior(JI)I
.end method

.method private native nativeSetDroneManagerBehavior(JI)I
.end method

.method private native nativeSetDroneManagerConnectBehavior(JI)I
.end method

.method private native nativeSetDroneManagerConnectionRefusedBehavior(JI)I
.end method

.method private native nativeSetDroneManagerConnectionStateBehavior(JI)I
.end method

.method private native nativeSetDroneManagerDiscoverDronesBehavior(JI)I
.end method

.method private native nativeSetDroneManagerDroneListItemBehavior(JI)I
.end method

.method private native nativeSetDroneManagerForgetBehavior(JI)I
.end method

.method private native nativeSetDroneManagerKnownDroneItemBehavior(JI)I
.end method

.method private native nativeSetFollowMeBehavior(JI)I
.end method

.method private native nativeSetFollowMeBoomerangAnimConfigBehavior(JI)I
.end method

.method private native nativeSetFollowMeCandleAnimConfigBehavior(JI)I
.end method

.method private native nativeSetFollowMeConfigureGeographicBehavior(JI)I
.end method

.method private native nativeSetFollowMeConfigureRelativeBehavior(JI)I
.end method

.method private native nativeSetFollowMeDollySlideAnimConfigBehavior(JI)I
.end method

.method private native nativeSetFollowMeGeographicConfigBehavior(JI)I
.end method

.method private native nativeSetFollowMeHelicoidAnimConfigBehavior(JI)I
.end method

.method private native nativeSetFollowMeModeInfoBehavior(JI)I
.end method

.method private native nativeSetFollowMeRelativeConfigBehavior(JI)I
.end method

.method private native nativeSetFollowMeStartBehavior(JI)I
.end method

.method private native nativeSetFollowMeStartBoomerangAnimBehavior(JI)I
.end method

.method private native nativeSetFollowMeStartCandleAnimBehavior(JI)I
.end method

.method private native nativeSetFollowMeStartDollySlideAnimBehavior(JI)I
.end method

.method private native nativeSetFollowMeStartHelicoidAnimBehavior(JI)I
.end method

.method private native nativeSetFollowMeStartSwingAnimBehavior(JI)I
.end method

.method private native nativeSetFollowMeStateBehavior(JI)I
.end method

.method private native nativeSetFollowMeStopAnimationBehavior(JI)I
.end method

.method private native nativeSetFollowMeStopBehavior(JI)I
.end method

.method private native nativeSetFollowMeSwingAnimConfigBehavior(JI)I
.end method

.method private native nativeSetFollowMeTargetFramingPositionBehavior(JI)I
.end method

.method private native nativeSetFollowMeTargetFramingPositionChangedBehavior(JI)I
.end method

.method private native nativeSetFollowMeTargetImageDetectionBehavior(JI)I
.end method

.method private native nativeSetFollowMeTargetImageDetectionStateBehavior(JI)I
.end method

.method private native nativeSetFollowMeTargetTrajectoryBehavior(JI)I
.end method

.method private native nativeSetGenericBehavior(JI)I
.end method

.method private native nativeSetGenericDefaultBehavior(JI)I
.end method

.method private native nativeSetGenericDroneSettingsChangedBehavior(JI)I
.end method

.method private native nativeSetGenericSetDroneSettingsBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoAnimationsBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoAnimationsJumpBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoAnimationsJumpCancelBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoAnimationsJumpLoadBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoAnimationsJumpStopBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoAnimationsSimpleAnimationBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoAnimationsStateBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoAnimationsStateJumpLoadChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoAnimationsStateJumpMotorProblemChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoAnimationsStateJumpTypeChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoAudioSettingsBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoAudioSettingsMasterVolumeBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoAudioSettingsStateBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoAudioSettingsStateMasterVolumeChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoAudioSettingsStateThemeChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoAudioSettingsThemeBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoMediaRecordBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoMediaRecordEventBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoMediaRecordEventPictureEventChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoMediaRecordEventVideoEventChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoMediaRecordPictureBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoMediaRecordPictureV2Behavior(JI)I
.end method

.method private native nativeSetJumpingSumoMediaRecordStateBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoMediaRecordStatePictureStateChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoMediaRecordStatePictureStateChangedV2Behavior(JI)I
.end method

.method private native nativeSetJumpingSumoMediaRecordStateVideoStateChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoMediaRecordStateVideoStateChangedV2Behavior(JI)I
.end method

.method private native nativeSetJumpingSumoMediaRecordVideoBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoMediaRecordVideoV2Behavior(JI)I
.end method

.method private native nativeSetJumpingSumoMediaStreamingBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoMediaStreamingStateBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoMediaStreamingStateVideoEnableChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoMediaStreamingVideoEnableBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoNetworkBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoNetworkSettingsBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoNetworkSettingsStateBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoNetworkSettingsStateWifiSelectionChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoNetworkSettingsWifiSelectionBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoNetworkStateAllWifiAuthChannelChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoNetworkStateAllWifiScanChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoNetworkStateBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoNetworkStateLinkQualityChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoNetworkStateWifiAuthChannelListChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoNetworkStateWifiScanListChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoNetworkWifiAuthChannelBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoNetworkWifiScanBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoPilotingAddCapOffsetBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoPilotingBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoPilotingPCMDBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoPilotingPostureBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoPilotingStateAlertStateChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoPilotingStateBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoPilotingStatePostureChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoPilotingStateSpeedChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoRoadPlanAllScriptsMetadataBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoRoadPlanBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoRoadPlanPlayScriptBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoRoadPlanScriptDeleteBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoRoadPlanScriptUploadedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoRoadPlanStateAllScriptsMetadataChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoRoadPlanStateBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoRoadPlanStatePlayScriptChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoRoadPlanStateScriptDeleteChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoRoadPlanStateScriptMetadataListChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoRoadPlanStateScriptUploadChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoSettingsStateBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoSettingsStateProductGPSVersionChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoSpeedSettingsBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoSpeedSettingsOutdoorBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoSpeedSettingsStateBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoSpeedSettingsStateOutdoorChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoVideoSettingsAutorecordBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoVideoSettingsBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoVideoSettingsStateAutorecordChangedBehavior(JI)I
.end method

.method private native nativeSetJumpingSumoVideoSettingsStateBehavior(JI)I
.end method

.method private native nativeSetMapperActiveProductBehavior(JI)I
.end method

.method private native nativeSetMapperApplicationAxisEventBehavior(JI)I
.end method

.method private native nativeSetMapperApplicationButtonEventBehavior(JI)I
.end method

.method private native nativeSetMapperAxisMappingItemBehavior(JI)I
.end method

.method private native nativeSetMapperBehavior(JI)I
.end method

.method private native nativeSetMapperButtonMappingItemBehavior(JI)I
.end method

.method private native nativeSetMapperExpoMapItemBehavior(JI)I
.end method

.method private native nativeSetMapperGrabAxisEventBehavior(JI)I
.end method

.method private native nativeSetMapperGrabBehavior(JI)I
.end method

.method private native nativeSetMapperGrabButtonEventBehavior(JI)I
.end method

.method private native nativeSetMapperGrabStateBehavior(JI)I
.end method

.method private native nativeSetMapperInvertedMapItemBehavior(JI)I
.end method

.method private native nativeSetMapperMapAxisActionBehavior(JI)I
.end method

.method private native nativeSetMapperMapButtonActionBehavior(JI)I
.end method

.method private native nativeSetMapperMiniAxisMappingItemBehavior(JI)I
.end method

.method private native nativeSetMapperMiniBehavior(JI)I
.end method

.method private native nativeSetMapperMiniButtonMappingItemBehavior(JI)I
.end method

.method private native nativeSetMapperMiniMapAxisActionBehavior(JI)I
.end method

.method private native nativeSetMapperMiniMapButtonActionBehavior(JI)I
.end method

.method private native nativeSetMapperMiniResetMappingBehavior(JI)I
.end method

.method private native nativeSetMapperResetMappingBehavior(JI)I
.end method

.method private native nativeSetMapperSetExpoBehavior(JI)I
.end method

.method private native nativeSetMapperSetInvertedBehavior(JI)I
.end method

.method private native nativeSetMiniDroneAnimationsBehavior(JI)I
.end method

.method private native nativeSetMiniDroneAnimationsCapBehavior(JI)I
.end method

.method private native nativeSetMiniDroneAnimationsFlipBehavior(JI)I
.end method

.method private native nativeSetMiniDroneBehavior(JI)I
.end method

.method private native nativeSetMiniDroneConfigurationBehavior(JI)I
.end method

.method private native nativeSetMiniDroneConfigurationControllerNameBehavior(JI)I
.end method

.method private native nativeSetMiniDroneConfigurationControllerTypeBehavior(JI)I
.end method

.method private native nativeSetMiniDroneFloodControlStateBehavior(JI)I
.end method

.method private native nativeSetMiniDroneFloodControlStateFloodControlChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDroneGPSBehavior(JI)I
.end method

.method private native nativeSetMiniDroneGPSControllerLatitudeForRunBehavior(JI)I
.end method

.method private native nativeSetMiniDroneGPSControllerLongitudeForRunBehavior(JI)I
.end method

.method private native nativeSetMiniDroneMediaRecordBehavior(JI)I
.end method

.method private native nativeSetMiniDroneMediaRecordEventBehavior(JI)I
.end method

.method private native nativeSetMiniDroneMediaRecordEventPictureEventChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDroneMediaRecordPictureBehavior(JI)I
.end method

.method private native nativeSetMiniDroneMediaRecordPictureV2Behavior(JI)I
.end method

.method private native nativeSetMiniDroneMediaRecordStateBehavior(JI)I
.end method

.method private native nativeSetMiniDroneMediaRecordStatePictureStateChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDroneMediaRecordStatePictureStateChangedV2Behavior(JI)I
.end method

.method private native nativeSetMiniDroneNavigationDataStateBehavior(JI)I
.end method

.method private native nativeSetMiniDroneNavigationDataStateDronePositionBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingAutoTakeOffModeBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingEmergencyBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingFlatTrimBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingFlyingModeBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingLandingBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingPCMDBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingPlaneGearBoxBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingSettingsBankedTurnBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingSettingsBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingSettingsMaxAltitudeBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingSettingsMaxTiltBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingSettingsStateBankedTurnChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingSettingsStateBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingSettingsStateMaxAltitudeChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingSettingsStateMaxTiltChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingStateAlertStateChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingStateAutoTakeOffModeChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingStateBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingStateFlatTrimChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingStateFlyingModeChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingStateFlyingStateChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingStatePlaneGearBoxChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDronePilotingTakeOffBehavior(JI)I
.end method

.method private native nativeSetMiniDroneRemoteControllerBehavior(JI)I
.end method

.method private native nativeSetMiniDroneRemoteControllerSetPairedRemoteBehavior(JI)I
.end method

.method private native nativeSetMiniDroneSettingsBehavior(JI)I
.end method

.method private native nativeSetMiniDroneSettingsCutOutModeBehavior(JI)I
.end method

.method private native nativeSetMiniDroneSettingsStateBehavior(JI)I
.end method

.method private native nativeSetMiniDroneSettingsStateCutOutModeChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDroneSettingsStateProductInertialVersionChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDroneSettingsStateProductMotorsVersionChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDroneSpeedSettingsBehavior(JI)I
.end method

.method private native nativeSetMiniDroneSpeedSettingsMaxHorizontalSpeedBehavior(JI)I
.end method

.method private native nativeSetMiniDroneSpeedSettingsMaxPlaneModeRotationSpeedBehavior(JI)I
.end method

.method private native nativeSetMiniDroneSpeedSettingsMaxRotationSpeedBehavior(JI)I
.end method

.method private native nativeSetMiniDroneSpeedSettingsMaxVerticalSpeedBehavior(JI)I
.end method

.method private native nativeSetMiniDroneSpeedSettingsStateBehavior(JI)I
.end method

.method private native nativeSetMiniDroneSpeedSettingsStateMaxHorizontalSpeedChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDroneSpeedSettingsStateMaxPlaneModeRotationSpeedChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDroneSpeedSettingsStateMaxRotationSpeedChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDroneSpeedSettingsStateMaxVerticalSpeedChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDroneSpeedSettingsStateWheelsChangedBehavior(JI)I
.end method

.method private native nativeSetMiniDroneSpeedSettingsWheelsBehavior(JI)I
.end method

.method private native nativeSetMiniDroneUsbAccessoryBehavior(JI)I
.end method

.method private native nativeSetMiniDroneUsbAccessoryClawControlBehavior(JI)I
.end method

.method private native nativeSetMiniDroneUsbAccessoryGunControlBehavior(JI)I
.end method

.method private native nativeSetMiniDroneUsbAccessoryLightControlBehavior(JI)I
.end method

.method private native nativeSetMiniDroneUsbAccessoryStateBehavior(JI)I
.end method

.method private native nativeSetMiniDroneUsbAccessoryStateClawStateBehavior(JI)I
.end method

.method private native nativeSetMiniDroneUsbAccessoryStateGunStateBehavior(JI)I
.end method

.method private native nativeSetMiniDroneUsbAccessoryStateLightStateBehavior(JI)I
.end method

.method private native nativeSetPowerupBehavior(JI)I
.end method

.method private native nativeSetPowerupMediaRecordBehavior(JI)I
.end method

.method private native nativeSetPowerupMediaRecordEventBehavior(JI)I
.end method

.method private native nativeSetPowerupMediaRecordEventPictureEventChangedBehavior(JI)I
.end method

.method private native nativeSetPowerupMediaRecordEventVideoEventChangedBehavior(JI)I
.end method

.method private native nativeSetPowerupMediaRecordPictureV2Behavior(JI)I
.end method

.method private native nativeSetPowerupMediaRecordStateBehavior(JI)I
.end method

.method private native nativeSetPowerupMediaRecordStatePictureStateChangedV2Behavior(JI)I
.end method

.method private native nativeSetPowerupMediaRecordStateVideoStateChangedV2Behavior(JI)I
.end method

.method private native nativeSetPowerupMediaRecordVideoV2Behavior(JI)I
.end method

.method private native nativeSetPowerupMediaStreamingBehavior(JI)I
.end method

.method private native nativeSetPowerupMediaStreamingStateBehavior(JI)I
.end method

.method private native nativeSetPowerupMediaStreamingStateVideoEnableChangedBehavior(JI)I
.end method

.method private native nativeSetPowerupMediaStreamingVideoEnableBehavior(JI)I
.end method

.method private native nativeSetPowerupNetworkBehavior(JI)I
.end method

.method private native nativeSetPowerupNetworkSettingsBehavior(JI)I
.end method

.method private native nativeSetPowerupNetworkSettingsStateBehavior(JI)I
.end method

.method private native nativeSetPowerupNetworkSettingsStateWifiSelectionChangedBehavior(JI)I
.end method

.method private native nativeSetPowerupNetworkSettingsWifiSelectionBehavior(JI)I
.end method

.method private native nativeSetPowerupNetworkStateAllWifiAuthChannelChangedBehavior(JI)I
.end method

.method private native nativeSetPowerupNetworkStateAllWifiScanChangedBehavior(JI)I
.end method

.method private native nativeSetPowerupNetworkStateBehavior(JI)I
.end method

.method private native nativeSetPowerupNetworkStateLinkQualityChangedBehavior(JI)I
.end method

.method private native nativeSetPowerupNetworkStateWifiAuthChannelListChangedBehavior(JI)I
.end method

.method private native nativeSetPowerupNetworkStateWifiScanListChangedBehavior(JI)I
.end method

.method private native nativeSetPowerupNetworkWifiAuthChannelBehavior(JI)I
.end method

.method private native nativeSetPowerupNetworkWifiScanBehavior(JI)I
.end method

.method private native nativeSetPowerupPilotingBehavior(JI)I
.end method

.method private native nativeSetPowerupPilotingMotorModeBehavior(JI)I
.end method

.method private native nativeSetPowerupPilotingPCMDBehavior(JI)I
.end method

.method private native nativeSetPowerupPilotingSettingsBehavior(JI)I
.end method

.method private native nativeSetPowerupPilotingSettingsSetBehavior(JI)I
.end method

.method private native nativeSetPowerupPilotingSettingsStateBehavior(JI)I
.end method

.method private native nativeSetPowerupPilotingSettingsStateSettingChangedBehavior(JI)I
.end method

.method private native nativeSetPowerupPilotingStateAlertStateChangedBehavior(JI)I
.end method

.method private native nativeSetPowerupPilotingStateAltitudeChangedBehavior(JI)I
.end method

.method private native nativeSetPowerupPilotingStateAttitudeChangedBehavior(JI)I
.end method

.method private native nativeSetPowerupPilotingStateBehavior(JI)I
.end method

.method private native nativeSetPowerupPilotingStateFlyingStateChangedBehavior(JI)I
.end method

.method private native nativeSetPowerupPilotingStateMotorModeChangedBehavior(JI)I
.end method

.method private native nativeSetPowerupPilotingUserTakeOffBehavior(JI)I
.end method

.method private native nativeSetPowerupSoundsBehavior(JI)I
.end method

.method private native nativeSetPowerupSoundsBuzzBehavior(JI)I
.end method

.method private native nativeSetPowerupSoundsStateBehavior(JI)I
.end method

.method private native nativeSetPowerupSoundsStateBuzzChangedBehavior(JI)I
.end method

.method private native nativeSetPowerupVideoSettingsAutorecordBehavior(JI)I
.end method

.method private native nativeSetPowerupVideoSettingsBehavior(JI)I
.end method

.method private native nativeSetPowerupVideoSettingsStateAutorecordChangedBehavior(JI)I
.end method

.method private native nativeSetPowerupVideoSettingsStateBehavior(JI)I
.end method

.method private native nativeSetPowerupVideoSettingsStateVideoModeChangedBehavior(JI)I
.end method

.method private native nativeSetPowerupVideoSettingsVideoModeBehavior(JI)I
.end method

.method private native nativeSetRcAbortCalibrationBehavior(JI)I
.end method

.method private native nativeSetRcBehavior(JI)I
.end method

.method private native nativeSetRcCalibrationStateBehavior(JI)I
.end method

.method private native nativeSetRcChannelActionItemBehavior(JI)I
.end method

.method private native nativeSetRcChannelValueBehavior(JI)I
.end method

.method private native nativeSetRcChannelsMonitorStateBehavior(JI)I
.end method

.method private native nativeSetRcEnableReceiverBehavior(JI)I
.end method

.method private native nativeSetRcInvertChannelBehavior(JI)I
.end method

.method private native nativeSetRcMonitorChannelsBehavior(JI)I
.end method

.method private native nativeSetRcReceiverQualityBehavior(JI)I
.end method

.method private native nativeSetRcReceiverStateBehavior(JI)I
.end method

.method private native nativeSetRcResetCalibrationBehavior(JI)I
.end method

.method private native nativeSetRcStartCalibrationBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAccessPointSettingsAccessPointChannelBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAccessPointSettingsAccessPointSSIDBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAccessPointSettingsBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAccessPointSettingsStateAccessPointChannelChangedBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAccessPointSettingsStateAccessPointSSIDChangedBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAccessPointSettingsStateBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAccessPointSettingsStateWifiSelectionChangedBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAccessPointSettingsWifiSelectionBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisFiltersBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisFiltersDefaultAxisFiltersBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisFiltersGetCurrentAxisFiltersBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisFiltersGetPresetAxisFiltersBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisFiltersSetAxisFilterBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisFiltersStateAllCurrentFiltersSentBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisFiltersStateAllPresetFiltersSentBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisFiltersStateBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisFiltersStateCurrentAxisFiltersBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisFiltersStatePresetAxisFiltersBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisMappingsBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisMappingsDefaultAxisMappingBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisMappingsGetAvailableAxisMappingsBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisMappingsGetCurrentAxisMappingsBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisMappingsSetAxisMappingBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisMappingsStateAllAvailableAxisMappingsSentBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisMappingsStateAllCurrentAxisMappingsSentBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisMappingsStateAvailableAxisMappingsBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisMappingsStateBehavior(JI)I
.end method

.method private native nativeSetSkyControllerAxisMappingsStateCurrentAxisMappingsBehavior(JI)I
.end method

.method private native nativeSetSkyControllerBehavior(JI)I
.end method

.method private native nativeSetSkyControllerButtonEventsBehavior(JI)I
.end method

.method private native nativeSetSkyControllerButtonEventsSettingsBehavior(JI)I
.end method

.method private native nativeSetSkyControllerButtonMappingsBehavior(JI)I
.end method

.method private native nativeSetSkyControllerButtonMappingsDefaultButtonMappingBehavior(JI)I
.end method

.method private native nativeSetSkyControllerButtonMappingsGetAvailableButtonMappingsBehavior(JI)I
.end method

.method private native nativeSetSkyControllerButtonMappingsGetCurrentButtonMappingsBehavior(JI)I
.end method

.method private native nativeSetSkyControllerButtonMappingsSetButtonMappingBehavior(JI)I
.end method

.method private native nativeSetSkyControllerButtonMappingsStateAllAvailableButtonsMappingsSentBehavior(JI)I
.end method

.method private native nativeSetSkyControllerButtonMappingsStateAllCurrentButtonMappingsSentBehavior(JI)I
.end method

.method private native nativeSetSkyControllerButtonMappingsStateAvailableButtonMappingsBehavior(JI)I
.end method

.method private native nativeSetSkyControllerButtonMappingsStateBehavior(JI)I
.end method

.method private native nativeSetSkyControllerButtonMappingsStateCurrentButtonMappingsBehavior(JI)I
.end method

.method private native nativeSetSkyControllerCalibrationBehavior(JI)I
.end method

.method private native nativeSetSkyControllerCalibrationEnableMagnetoCalibrationQualityUpdatesBehavior(JI)I
.end method

.method private native nativeSetSkyControllerCalibrationStateBehavior(JI)I
.end method

.method private native nativeSetSkyControllerCalibrationStateMagnetoCalibrationQualityUpdatesStateBehavior(JI)I
.end method

.method private native nativeSetSkyControllerCalibrationStateMagnetoCalibrationStateBehavior(JI)I
.end method

.method private native nativeSetSkyControllerCameraBehavior(JI)I
.end method

.method private native nativeSetSkyControllerCameraResetOrientationBehavior(JI)I
.end method

.method private native nativeSetSkyControllerCoPilotingBehavior(JI)I
.end method

.method private native nativeSetSkyControllerCoPilotingSetPilotingSourceBehavior(JI)I
.end method

.method private native nativeSetSkyControllerCoPilotingStateBehavior(JI)I
.end method

.method private native nativeSetSkyControllerCoPilotingStatePilotingSourceBehavior(JI)I
.end method

.method private native nativeSetSkyControllerCommonAllStatesBehavior(JI)I
.end method

.method private native nativeSetSkyControllerCommonBehavior(JI)I
.end method

.method private native nativeSetSkyControllerCommonStateAllStatesChangedBehavior(JI)I
.end method

.method private native nativeSetSkyControllerCommonStateBehavior(JI)I
.end method

.method private native nativeSetSkyControllerDeviceBehavior(JI)I
.end method

.method private native nativeSetSkyControllerDeviceConnectToDeviceBehavior(JI)I
.end method

.method private native nativeSetSkyControllerDeviceRequestCurrentDeviceBehavior(JI)I
.end method

.method private native nativeSetSkyControllerDeviceRequestDeviceListBehavior(JI)I
.end method

.method private native nativeSetSkyControllerDeviceStateBehavior(JI)I
.end method

.method private native nativeSetSkyControllerDeviceStateConnexionChangedBehavior(JI)I
.end method

.method private native nativeSetSkyControllerDeviceStateDeviceListBehavior(JI)I
.end method

.method private native nativeSetSkyControllerFactoryBehavior(JI)I
.end method

.method private native nativeSetSkyControllerFactoryResetBehavior(JI)I
.end method

.method private native nativeSetSkyControllerGamepadInfosBehavior(JI)I
.end method

.method private native nativeSetSkyControllerGamepadInfosGetGamepadControlsBehavior(JI)I
.end method

.method private native nativeSetSkyControllerGamepadInfosStateAllGamepadControlsSentBehavior(JI)I
.end method

.method private native nativeSetSkyControllerGamepadInfosStateBehavior(JI)I
.end method

.method private native nativeSetSkyControllerGamepadInfosStateGamepadControlBehavior(JI)I
.end method

.method private native nativeSetSkyControllerSettingsAllSettingsBehavior(JI)I
.end method

.method private native nativeSetSkyControllerSettingsBehavior(JI)I
.end method

.method private native nativeSetSkyControllerSettingsResetBehavior(JI)I
.end method

.method private native nativeSetSkyControllerSettingsStateAllSettingsChangedBehavior(JI)I
.end method

.method private native nativeSetSkyControllerSettingsStateBehavior(JI)I
.end method

.method private native nativeSetSkyControllerSettingsStateProductSerialChangedBehavior(JI)I
.end method

.method private native nativeSetSkyControllerSettingsStateProductVariantChangedBehavior(JI)I
.end method

.method private native nativeSetSkyControllerSettingsStateProductVersionChangedBehavior(JI)I
.end method

.method private native nativeSetSkyControllerSettingsStateResetChangedBehavior(JI)I
.end method

.method private native nativeSetSkyControllerSkyControllerStateAttitudeChangedBehavior(JI)I
.end method

.method private native nativeSetSkyControllerSkyControllerStateBatteryChangedBehavior(JI)I
.end method

.method private native nativeSetSkyControllerSkyControllerStateBatteryStateBehavior(JI)I
.end method

.method private native nativeSetSkyControllerSkyControllerStateBehavior(JI)I
.end method

.method private native nativeSetSkyControllerSkyControllerStateGpsFixChangedBehavior(JI)I
.end method

.method private native nativeSetSkyControllerSkyControllerStateGpsPositionChangedBehavior(JI)I
.end method

.method private native nativeSetSkyControllerWifiBehavior(JI)I
.end method

.method private native nativeSetSkyControllerWifiConnectToWifiBehavior(JI)I
.end method

.method private native nativeSetSkyControllerWifiForgetWifiBehavior(JI)I
.end method

.method private native nativeSetSkyControllerWifiRequestCurrentWifiBehavior(JI)I
.end method

.method private native nativeSetSkyControllerWifiRequestWifiListBehavior(JI)I
.end method

.method private native nativeSetSkyControllerWifiStateAllWifiAuthChannelChangedBehavior(JI)I
.end method

.method private native nativeSetSkyControllerWifiStateBehavior(JI)I
.end method

.method private native nativeSetSkyControllerWifiStateConnexionChangedBehavior(JI)I
.end method

.method private native nativeSetSkyControllerWifiStateWifiAuthChannelListChangedBehavior(JI)I
.end method

.method private native nativeSetSkyControllerWifiStateWifiListBehavior(JI)I
.end method

.method private native nativeSetSkyControllerWifiStateWifiSignalChangedBehavior(JI)I
.end method

.method private native nativeSetSkyControllerWifiWifiAuthChannelBehavior(JI)I
.end method

.method private native nativeSetWifiApChannelChangedBehavior(JI)I
.end method

.method private native nativeSetWifiAuthorizedChannelBehavior(JI)I
.end method

.method private native nativeSetWifiBehavior(JI)I
.end method

.method private native nativeSetWifiCountryChangedBehavior(JI)I
.end method

.method private native nativeSetWifiEnvironmentChangedBehavior(JI)I
.end method

.method private native nativeSetWifiRssiChangedBehavior(JI)I
.end method

.method private native nativeSetWifiScanBehavior(JI)I
.end method

.method private native nativeSetWifiScannedItemBehavior(JI)I
.end method

.method private native nativeSetWifiSecurityChangedBehavior(JI)I
.end method

.method private native nativeSetWifiSetApChannelBehavior(JI)I
.end method

.method private native nativeSetWifiSetCountryBehavior(JI)I
.end method

.method private native nativeSetWifiSetEnvironmentBehavior(JI)I
.end method

.method private native nativeSetWifiSetSecurityBehavior(JI)I
.end method

.method private native nativeSetWifiSupportedCountriesBehavior(JI)I
.end method

.method private native nativeSetWifiUpdateAuthorizedChannelsBehavior(JI)I
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-eqz v0, :cond_0

    .line 79
    iget-wide v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeDeleteFilter(J)V

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    .line 82
    return-void
.end method

.method public filterCommand(Lcom/parrot/arsdk/arcommands/ARCommand;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;
    .locals 7
    .param p1, "command"    # Lcom/parrot/arsdk/arcommands/ARCommand;

    .prologue
    .line 111
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_ERROR:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .line 113
    :goto_0
    return-object v1

    .line 112
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCommand;->getData()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCommand;->getDataSize()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeFilterCommand(JJI)I

    move-result v0

    .line 113
    .local v0, "cStatus":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Finalize error -> dispose () was not called !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFilter()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    return v0
.end method

.method public setARDrone3AnimationsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 325
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 327
    :goto_0
    return-object v1

    .line 326
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3AnimationsBehavior(JI)I

    move-result v0

    .line 327
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3AnimationsFlipBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 337
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 339
    :goto_0
    return-object v1

    .line 338
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3AnimationsFlipBehavior(JI)I

    move-result v0

    .line 339
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3AntiflickeringBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2195
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2197
    :goto_0
    return-object v1

    .line 2196
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3AntiflickeringBehavior(JI)I

    move-result v0

    .line 2197
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3AntiflickeringElectricFrequencyBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2207
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2209
    :goto_0
    return-object v1

    .line 2208
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3AntiflickeringElectricFrequencyBehavior(JI)I

    move-result v0

    .line 2209
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3AntiflickeringSetModeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2219
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2221
    :goto_0
    return-object v1

    .line 2220
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3AntiflickeringSetModeBehavior(JI)I

    move-result v0

    .line 2221
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3AntiflickeringStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2233
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2235
    :goto_0
    return-object v1

    .line 2234
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3AntiflickeringStateBehavior(JI)I

    move-result v0

    .line 2235
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3AntiflickeringStateElectricFrequencyChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2245
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2247
    :goto_0
    return-object v1

    .line 2246
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3AntiflickeringStateElectricFrequencyChangedBehavior(JI)I

    move-result v0

    .line 2247
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3AntiflickeringStateModeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2257
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2259
    :goto_0
    return-object v1

    .line 2258
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3AntiflickeringStateModeChangedBehavior(JI)I

    move-result v0

    .line 2259
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3Behavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 178
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 180
    :goto_0
    return-object v1

    .line 179
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3Behavior(JI)I

    move-result v0

    .line 180
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3CameraBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 351
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 353
    :goto_0
    return-object v1

    .line 352
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3CameraBehavior(JI)I

    move-result v0

    .line 353
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3CameraOrientationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 363
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 365
    :goto_0
    return-object v1

    .line 364
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3CameraOrientationBehavior(JI)I

    move-result v0

    .line 365
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3CameraOrientationV2Behavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 375
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 377
    :goto_0
    return-object v1

    .line 376
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3CameraOrientationV2Behavior(JI)I

    move-result v0

    .line 377
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3CameraStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2121
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2123
    :goto_0
    return-object v1

    .line 2122
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3CameraStateBehavior(JI)I

    move-result v0

    .line 2123
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3CameraStateDefaultCameraOrientationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2145
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2147
    :goto_0
    return-object v1

    .line 2146
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3CameraStateDefaultCameraOrientationBehavior(JI)I

    move-result v0

    .line 2147
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3CameraStateDefaultCameraOrientationV2Behavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2169
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2171
    :goto_0
    return-object v1

    .line 2170
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3CameraStateDefaultCameraOrientationV2Behavior(JI)I

    move-result v0

    .line 2171
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3CameraStateOrientationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2133
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2135
    :goto_0
    return-object v1

    .line 2134
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3CameraStateOrientationBehavior(JI)I

    move-result v0

    .line 2135
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3CameraStateOrientationV2Behavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2157
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2159
    :goto_0
    return-object v1

    .line 2158
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3CameraStateOrientationV2Behavior(JI)I

    move-result v0

    .line 2159
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3CameraStateVelocityRangeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2181
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2183
    :goto_0
    return-object v1

    .line 2182
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3CameraStateVelocityRangeBehavior(JI)I

    move-result v0

    .line 2183
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3CameraVelocityBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 387
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 389
    :goto_0
    return-object v1

    .line 388
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3CameraVelocityBehavior(JI)I

    move-result v0

    .line 389
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3GPSSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1961
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1963
    :goto_0
    return-object v1

    .line 1962
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3GPSSettingsBehavior(JI)I

    move-result v0

    .line 1963
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3GPSSettingsHomeTypeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2009
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2011
    :goto_0
    return-object v1

    .line 2010
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3GPSSettingsHomeTypeBehavior(JI)I

    move-result v0

    .line 2011
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3GPSSettingsResetHomeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1985
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1987
    :goto_0
    return-object v1

    .line 1986
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3GPSSettingsResetHomeBehavior(JI)I

    move-result v0

    .line 1987
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3GPSSettingsReturnHomeDelayBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2021
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2023
    :goto_0
    return-object v1

    .line 2022
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3GPSSettingsReturnHomeDelayBehavior(JI)I

    move-result v0

    .line 2023
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3GPSSettingsSendControllerGPSBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1997
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1999
    :goto_0
    return-object v1

    .line 1998
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3GPSSettingsSendControllerGPSBehavior(JI)I

    move-result v0

    .line 1999
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3GPSSettingsSetHomeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1973
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1975
    :goto_0
    return-object v1

    .line 1974
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3GPSSettingsSetHomeBehavior(JI)I

    move-result v0

    .line 1975
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3GPSSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2035
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2037
    :goto_0
    return-object v1

    .line 2036
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3GPSSettingsStateBehavior(JI)I

    move-result v0

    .line 2037
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3GPSSettingsStateGPSFixStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2071
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2073
    :goto_0
    return-object v1

    .line 2072
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3GPSSettingsStateGPSFixStateChangedBehavior(JI)I

    move-result v0

    .line 2073
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3GPSSettingsStateGPSUpdateStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2083
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2085
    :goto_0
    return-object v1

    .line 2084
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3GPSSettingsStateGPSUpdateStateChangedBehavior(JI)I

    move-result v0

    .line 2085
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3GPSSettingsStateHomeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2047
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2049
    :goto_0
    return-object v1

    .line 2048
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3GPSSettingsStateHomeChangedBehavior(JI)I

    move-result v0

    .line 2049
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3GPSSettingsStateHomeTypeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2095
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2097
    :goto_0
    return-object v1

    .line 2096
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3GPSSettingsStateHomeTypeChangedBehavior(JI)I

    move-result v0

    .line 2097
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3GPSSettingsStateResetHomeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2059
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2061
    :goto_0
    return-object v1

    .line 2060
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3GPSSettingsStateResetHomeChangedBehavior(JI)I

    move-result v0

    .line 2061
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3GPSSettingsStateReturnHomeDelayChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2107
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2109
    :goto_0
    return-object v1

    .line 2108
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3GPSSettingsStateReturnHomeDelayChangedBehavior(JI)I

    move-result v0

    .line 2109
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3GPSStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2271
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2273
    :goto_0
    return-object v1

    .line 2272
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3GPSStateBehavior(JI)I

    move-result v0

    .line 2273
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3GPSStateHomeTypeAvailabilityChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2295
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2297
    :goto_0
    return-object v1

    .line 2296
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3GPSStateHomeTypeAvailabilityChangedBehavior(JI)I

    move-result v0

    .line 2297
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3GPSStateHomeTypeChosenChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2307
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2309
    :goto_0
    return-object v1

    .line 2308
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3GPSStateHomeTypeChosenChangedBehavior(JI)I

    move-result v0

    .line 2309
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3GPSStateNumberOfSatelliteChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2283
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2285
    :goto_0
    return-object v1

    .line 2284
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3GPSStateNumberOfSatelliteChangedBehavior(JI)I

    move-result v0

    .line 2285
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaRecordBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 401
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 403
    :goto_0
    return-object v1

    .line 402
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaRecordBehavior(JI)I

    move-result v0

    .line 403
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaRecordEventBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 537
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 539
    :goto_0
    return-object v1

    .line 538
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaRecordEventBehavior(JI)I

    move-result v0

    .line 539
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaRecordEventPictureEventChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 549
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 551
    :goto_0
    return-object v1

    .line 550
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaRecordEventPictureEventChangedBehavior(JI)I

    move-result v0

    .line 551
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaRecordEventVideoEventChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 561
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 563
    :goto_0
    return-object v1

    .line 562
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaRecordEventVideoEventChangedBehavior(JI)I

    move-result v0

    .line 563
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaRecordPictureBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 413
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 415
    :goto_0
    return-object v1

    .line 414
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaRecordPictureBehavior(JI)I

    move-result v0

    .line 415
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaRecordPictureV2Behavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 437
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 439
    :goto_0
    return-object v1

    .line 438
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaRecordPictureV2Behavior(JI)I

    move-result v0

    .line 439
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaRecordStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 463
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 465
    :goto_0
    return-object v1

    .line 464
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaRecordStateBehavior(JI)I

    move-result v0

    .line 465
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaRecordStatePictureStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 475
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 477
    :goto_0
    return-object v1

    .line 476
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaRecordStatePictureStateChangedBehavior(JI)I

    move-result v0

    .line 477
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaRecordStatePictureStateChangedV2Behavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 499
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 501
    :goto_0
    return-object v1

    .line 500
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaRecordStatePictureStateChangedV2Behavior(JI)I

    move-result v0

    .line 501
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaRecordStateVideoResolutionStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 523
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 525
    :goto_0
    return-object v1

    .line 524
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaRecordStateVideoResolutionStateBehavior(JI)I

    move-result v0

    .line 525
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaRecordStateVideoStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 487
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 489
    :goto_0
    return-object v1

    .line 488
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaRecordStateVideoStateChangedBehavior(JI)I

    move-result v0

    .line 489
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaRecordStateVideoStateChangedV2Behavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 511
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 513
    :goto_0
    return-object v1

    .line 512
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaRecordStateVideoStateChangedV2Behavior(JI)I

    move-result v0

    .line 513
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaRecordVideoBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 425
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 427
    :goto_0
    return-object v1

    .line 426
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaRecordVideoBehavior(JI)I

    move-result v0

    .line 427
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaRecordVideoV2Behavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 449
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 451
    :goto_0
    return-object v1

    .line 450
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaRecordVideoV2Behavior(JI)I

    move-result v0

    .line 451
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaStreamingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1885
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1887
    :goto_0
    return-object v1

    .line 1886
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaStreamingBehavior(JI)I

    move-result v0

    .line 1887
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaStreamingStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1923
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1925
    :goto_0
    return-object v1

    .line 1924
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaStreamingStateBehavior(JI)I

    move-result v0

    .line 1925
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaStreamingStateVideoEnableChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1935
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1937
    :goto_0
    return-object v1

    .line 1936
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaStreamingStateVideoEnableChangedBehavior(JI)I

    move-result v0

    .line 1937
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaStreamingStateVideoStreamModeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1947
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1949
    :goto_0
    return-object v1

    .line 1948
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaStreamingStateVideoStreamModeChangedBehavior(JI)I

    move-result v0

    .line 1949
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaStreamingVideoEnableBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1897
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1899
    :goto_0
    return-object v1

    .line 1898
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaStreamingVideoEnableBehavior(JI)I

    move-result v0

    .line 1899
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3MediaStreamingVideoStreamModeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1909
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1911
    :goto_0
    return-object v1

    .line 1910
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3MediaStreamingVideoStreamModeBehavior(JI)I

    move-result v0

    .line 1911
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3NetworkBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 759
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 761
    :goto_0
    return-object v1

    .line 760
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3NetworkBehavior(JI)I

    move-result v0

    .line 761
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3NetworkSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1419
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1421
    :goto_0
    return-object v1

    .line 1420
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3NetworkSettingsBehavior(JI)I

    move-result v0

    .line 1421
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3NetworkSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1457
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1459
    :goto_0
    return-object v1

    .line 1458
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3NetworkSettingsStateBehavior(JI)I

    move-result v0

    .line 1459
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3NetworkSettingsStateWifiSecurityBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1493
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1495
    :goto_0
    return-object v1

    .line 1494
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3NetworkSettingsStateWifiSecurityBehavior(JI)I

    move-result v0

    .line 1495
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3NetworkSettingsStateWifiSecurityChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1481
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1483
    :goto_0
    return-object v1

    .line 1482
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3NetworkSettingsStateWifiSecurityChangedBehavior(JI)I

    move-result v0

    .line 1483
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3NetworkSettingsStateWifiSelectionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1469
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1471
    :goto_0
    return-object v1

    .line 1470
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3NetworkSettingsStateWifiSelectionChangedBehavior(JI)I

    move-result v0

    .line 1471
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3NetworkSettingsWifiSecurityBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1443
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1445
    :goto_0
    return-object v1

    .line 1444
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3NetworkSettingsWifiSecurityBehavior(JI)I

    move-result v0

    .line 1445
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3NetworkSettingsWifiSelectionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1431
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1433
    :goto_0
    return-object v1

    .line 1432
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3NetworkSettingsWifiSelectionBehavior(JI)I

    move-result v0

    .line 1433
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3NetworkStateAllWifiAuthChannelChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 845
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 847
    :goto_0
    return-object v1

    .line 846
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3NetworkStateAllWifiAuthChannelChangedBehavior(JI)I

    move-result v0

    .line 847
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3NetworkStateAllWifiScanChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 821
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 823
    :goto_0
    return-object v1

    .line 822
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3NetworkStateAllWifiScanChangedBehavior(JI)I

    move-result v0

    .line 823
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3NetworkStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 797
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 799
    :goto_0
    return-object v1

    .line 798
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3NetworkStateBehavior(JI)I

    move-result v0

    .line 799
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3NetworkStateWifiAuthChannelListChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 833
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 835
    :goto_0
    return-object v1

    .line 834
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3NetworkStateWifiAuthChannelListChangedBehavior(JI)I

    move-result v0

    .line 835
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3NetworkStateWifiScanListChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 809
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 811
    :goto_0
    return-object v1

    .line 810
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3NetworkStateWifiScanListChangedBehavior(JI)I

    move-result v0

    .line 811
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3NetworkWifiAuthChannelBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 783
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 785
    :goto_0
    return-object v1

    .line 784
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3NetworkWifiAuthChannelBehavior(JI)I

    move-result v0

    .line 785
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3NetworkWifiScanBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 771
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 773
    :goto_0
    return-object v1

    .line 772
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3NetworkWifiScanBehavior(JI)I

    move-result v0

    .line 773
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PROStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2321
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2323
    :goto_0
    return-object v1

    .line 2322
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PROStateBehavior(JI)I

    move-result v0

    .line 2323
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PROStateFeaturesBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2333
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2335
    :goto_0
    return-object v1

    .line 2334
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PROStateFeaturesBehavior(JI)I

    move-result v0

    .line 2335
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsAutoWhiteBalanceSelectionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1641
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1643
    :goto_0
    return-object v1

    .line 1642
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsAutoWhiteBalanceSelectionBehavior(JI)I

    move-result v0

    .line 1643
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1617
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1619
    :goto_0
    return-object v1

    .line 1618
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsBehavior(JI)I

    move-result v0

    .line 1619
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsExpositionSelectionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1653
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1655
    :goto_0
    return-object v1

    .line 1654
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsExpositionSelectionBehavior(JI)I

    move-result v0

    .line 1655
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsPictureFormatSelectionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1629
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1631
    :goto_0
    return-object v1

    .line 1630
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsPictureFormatSelectionBehavior(JI)I

    move-result v0

    .line 1631
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsSaturationSelectionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1665
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1667
    :goto_0
    return-object v1

    .line 1666
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsSaturationSelectionBehavior(JI)I

    move-result v0

    .line 1667
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsStateAutoWhiteBalanceChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1775
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1777
    :goto_0
    return-object v1

    .line 1776
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsStateAutoWhiteBalanceChangedBehavior(JI)I

    move-result v0

    .line 1777
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1751
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1753
    :goto_0
    return-object v1

    .line 1752
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsStateBehavior(JI)I

    move-result v0

    .line 1753
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsStateExpositionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1787
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1789
    :goto_0
    return-object v1

    .line 1788
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsStateExpositionChangedBehavior(JI)I

    move-result v0

    .line 1789
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsStatePictureFormatChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1763
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1765
    :goto_0
    return-object v1

    .line 1764
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsStatePictureFormatChangedBehavior(JI)I

    move-result v0

    .line 1765
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsStateSaturationChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1799
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1801
    :goto_0
    return-object v1

    .line 1800
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsStateSaturationChangedBehavior(JI)I

    move-result v0

    .line 1801
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsStateTimelapseChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1811
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1813
    :goto_0
    return-object v1

    .line 1812
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsStateTimelapseChangedBehavior(JI)I

    move-result v0

    .line 1813
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsStateVideoAutorecordChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1823
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1825
    :goto_0
    return-object v1

    .line 1824
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsStateVideoAutorecordChangedBehavior(JI)I

    move-result v0

    .line 1825
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsStateVideoFramerateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1859
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1861
    :goto_0
    return-object v1

    .line 1860
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsStateVideoFramerateChangedBehavior(JI)I

    move-result v0

    .line 1861
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsStateVideoRecordingModeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1847
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1849
    :goto_0
    return-object v1

    .line 1848
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsStateVideoRecordingModeChangedBehavior(JI)I

    move-result v0

    .line 1849
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsStateVideoResolutionsChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1871
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1873
    :goto_0
    return-object v1

    .line 1872
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsStateVideoResolutionsChangedBehavior(JI)I

    move-result v0

    .line 1873
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsStateVideoStabilizationModeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1835
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1837
    :goto_0
    return-object v1

    .line 1836
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsStateVideoStabilizationModeChangedBehavior(JI)I

    move-result v0

    .line 1837
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsTimelapseSelectionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1677
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1679
    :goto_0
    return-object v1

    .line 1678
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsTimelapseSelectionBehavior(JI)I

    move-result v0

    .line 1679
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsVideoAutorecordSelectionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1689
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1691
    :goto_0
    return-object v1

    .line 1690
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsVideoAutorecordSelectionBehavior(JI)I

    move-result v0

    .line 1691
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsVideoFramerateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1725
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1727
    :goto_0
    return-object v1

    .line 1726
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsVideoFramerateBehavior(JI)I

    move-result v0

    .line 1727
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsVideoRecordingModeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1713
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1715
    :goto_0
    return-object v1

    .line 1714
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsVideoRecordingModeBehavior(JI)I

    move-result v0

    .line 1715
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsVideoResolutionsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1737
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1739
    :goto_0
    return-object v1

    .line 1738
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsVideoResolutionsBehavior(JI)I

    move-result v0

    .line 1739
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PictureSettingsVideoStabilizationModeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1701
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1703
    :goto_0
    return-object v1

    .line 1702
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PictureSettingsVideoStabilizationModeBehavior(JI)I

    move-result v0

    .line 1703
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingAutoTakeOffModeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 275
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 277
    :goto_0
    return-object v1

    .line 276
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingAutoTakeOffModeBehavior(JI)I

    move-result v0

    .line 277
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 191
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 193
    :goto_0
    return-object v1

    .line 192
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingBehavior(JI)I

    move-result v0

    .line 193
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingCircleBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 311
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 313
    :goto_0
    return-object v1

    .line 312
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingCircleBehavior(JI)I

    move-result v0

    .line 313
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingEmergencyBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 251
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 253
    :goto_0
    return-object v1

    .line 252
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingEmergencyBehavior(JI)I

    move-result v0

    .line 253
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingEventBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 733
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 735
    :goto_0
    return-object v1

    .line 734
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingEventBehavior(JI)I

    move-result v0

    .line 735
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingEventMoveByEndBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 745
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 747
    :goto_0
    return-object v1

    .line 746
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingEventMoveByEndBehavior(JI)I

    move-result v0

    .line 747
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingFlatTrimBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 203
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 205
    :goto_0
    return-object v1

    .line 204
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingFlatTrimBehavior(JI)I

    move-result v0

    .line 205
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingLandingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 239
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 241
    :goto_0
    return-object v1

    .line 240
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingLandingBehavior(JI)I

    move-result v0

    .line 241
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingMoveByBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 287
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 289
    :goto_0
    return-object v1

    .line 288
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingMoveByBehavior(JI)I

    move-result v0

    .line 289
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingNavigateHomeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 263
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 265
    :goto_0
    return-object v1

    .line 264
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingNavigateHomeBehavior(JI)I

    move-result v0

    .line 265
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingPCMDBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 227
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 229
    :goto_0
    return-object v1

    .line 228
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingPCMDBehavior(JI)I

    move-result v0

    .line 229
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsAbsolutControlBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 895
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 897
    :goto_0
    return-object v1

    .line 896
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsAbsolutControlBehavior(JI)I

    move-result v0

    .line 897
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsBankedTurnBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 991
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 993
    :goto_0
    return-object v1

    .line 992
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsBankedTurnBehavior(JI)I

    move-result v0

    .line 993
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 859
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 861
    :goto_0
    return-object v1

    .line 860
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsBehavior(JI)I

    move-result v0

    .line 861
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsCirclingAltitudeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1039
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1041
    :goto_0
    return-object v1

    .line 1040
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsCirclingAltitudeBehavior(JI)I

    move-result v0

    .line 1041
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsCirclingDirectionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1015
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1017
    :goto_0
    return-object v1

    .line 1016
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsCirclingDirectionBehavior(JI)I

    move-result v0

    .line 1017
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsCirclingRadiusBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1027
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1029
    :goto_0
    return-object v1

    .line 1028
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsCirclingRadiusBehavior(JI)I

    move-result v0

    .line 1029
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsMaxAltitudeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 871
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 873
    :goto_0
    return-object v1

    .line 872
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsMaxAltitudeBehavior(JI)I

    move-result v0

    .line 873
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsMaxDistanceBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 907
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 909
    :goto_0
    return-object v1

    .line 908
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsMaxDistanceBehavior(JI)I

    move-result v0

    .line 909
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsMaxTiltBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 883
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 885
    :goto_0
    return-object v1

    .line 884
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsMaxTiltBehavior(JI)I

    move-result v0

    .line 885
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsMinAltitudeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1003
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1005
    :goto_0
    return-object v1

    .line 1004
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsMinAltitudeBehavior(JI)I

    move-result v0

    .line 1005
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsNoFlyOverMaxDistanceBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 919
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 921
    :goto_0
    return-object v1

    .line 920
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsNoFlyOverMaxDistanceBehavior(JI)I

    move-result v0

    .line 921
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsPitchModeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1051
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1053
    :goto_0
    return-object v1

    .line 1052
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsPitchModeBehavior(JI)I

    move-result v0

    .line 1053
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsSetAutonomousFlightMaxHorizontalAccelerationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 955
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 957
    :goto_0
    return-object v1

    .line 956
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsSetAutonomousFlightMaxHorizontalAccelerationBehavior(JI)I

    move-result v0

    .line 957
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsSetAutonomousFlightMaxHorizontalSpeedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 931
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 933
    :goto_0
    return-object v1

    .line 932
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsSetAutonomousFlightMaxHorizontalSpeedBehavior(JI)I

    move-result v0

    .line 933
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsSetAutonomousFlightMaxRotationSpeedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 979
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 981
    :goto_0
    return-object v1

    .line 980
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsSetAutonomousFlightMaxRotationSpeedBehavior(JI)I

    move-result v0

    .line 981
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsSetAutonomousFlightMaxVerticalAccelerationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 967
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 969
    :goto_0
    return-object v1

    .line 968
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsSetAutonomousFlightMaxVerticalAccelerationBehavior(JI)I

    move-result v0

    .line 969
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsSetAutonomousFlightMaxVerticalSpeedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 943
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 945
    :goto_0
    return-object v1

    .line 944
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsSetAutonomousFlightMaxVerticalSpeedBehavior(JI)I

    move-result v0

    .line 945
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsStateAbsolutControlChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1101
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1103
    :goto_0
    return-object v1

    .line 1102
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsStateAbsolutControlChangedBehavior(JI)I

    move-result v0

    .line 1103
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsStateAutonomousFlightMaxHorizontalAccelerationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1161
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1163
    :goto_0
    return-object v1

    .line 1162
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsStateAutonomousFlightMaxHorizontalAccelerationBehavior(JI)I

    move-result v0

    .line 1163
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsStateAutonomousFlightMaxHorizontalSpeedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1137
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1139
    :goto_0
    return-object v1

    .line 1138
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsStateAutonomousFlightMaxHorizontalSpeedBehavior(JI)I

    move-result v0

    .line 1139
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsStateAutonomousFlightMaxRotationSpeedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1185
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1187
    :goto_0
    return-object v1

    .line 1186
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsStateAutonomousFlightMaxRotationSpeedBehavior(JI)I

    move-result v0

    .line 1187
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsStateAutonomousFlightMaxVerticalAccelerationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1173
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1175
    :goto_0
    return-object v1

    .line 1174
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsStateAutonomousFlightMaxVerticalAccelerationBehavior(JI)I

    move-result v0

    .line 1175
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsStateAutonomousFlightMaxVerticalSpeedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1149
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1151
    :goto_0
    return-object v1

    .line 1150
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsStateAutonomousFlightMaxVerticalSpeedBehavior(JI)I

    move-result v0

    .line 1151
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsStateBankedTurnChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1197
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1199
    :goto_0
    return-object v1

    .line 1198
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsStateBankedTurnChangedBehavior(JI)I

    move-result v0

    .line 1199
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1065
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1067
    :goto_0
    return-object v1

    .line 1066
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsStateBehavior(JI)I

    move-result v0

    .line 1067
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsStateCirclingAltitudeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1245
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1247
    :goto_0
    return-object v1

    .line 1246
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsStateCirclingAltitudeChangedBehavior(JI)I

    move-result v0

    .line 1247
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsStateCirclingDirectionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1221
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1223
    :goto_0
    return-object v1

    .line 1222
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsStateCirclingDirectionChangedBehavior(JI)I

    move-result v0

    .line 1223
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsStateCirclingRadiusChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1233
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1235
    :goto_0
    return-object v1

    .line 1234
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsStateCirclingRadiusChangedBehavior(JI)I

    move-result v0

    .line 1235
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsStateMaxAltitudeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1077
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1079
    :goto_0
    return-object v1

    .line 1078
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsStateMaxAltitudeChangedBehavior(JI)I

    move-result v0

    .line 1079
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsStateMaxDistanceChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1113
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1115
    :goto_0
    return-object v1

    .line 1114
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsStateMaxDistanceChangedBehavior(JI)I

    move-result v0

    .line 1115
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsStateMaxTiltChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1089
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1091
    :goto_0
    return-object v1

    .line 1090
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsStateMaxTiltChangedBehavior(JI)I

    move-result v0

    .line 1091
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsStateMinAltitudeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1209
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1211
    :goto_0
    return-object v1

    .line 1210
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsStateMinAltitudeChangedBehavior(JI)I

    move-result v0

    .line 1211
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsStateNoFlyOverMaxDistanceChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1125
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1127
    :goto_0
    return-object v1

    .line 1126
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsStateNoFlyOverMaxDistanceChangedBehavior(JI)I

    move-result v0

    .line 1127
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingSettingsStatePitchModeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1257
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1259
    :goto_0
    return-object v1

    .line 1258
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingSettingsStatePitchModeChangedBehavior(JI)I

    move-result v0

    .line 1259
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingStateAirSpeedChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 719
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 721
    :goto_0
    return-object v1

    .line 720
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingStateAirSpeedChangedBehavior(JI)I

    move-result v0

    .line 721
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingStateAlertStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 611
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 613
    :goto_0
    return-object v1

    .line 612
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingStateAlertStateChangedBehavior(JI)I

    move-result v0

    .line 613
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingStateAltitudeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 683
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 685
    :goto_0
    return-object v1

    .line 684
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingStateAltitudeChangedBehavior(JI)I

    move-result v0

    .line 685
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingStateAttitudeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 659
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 661
    :goto_0
    return-object v1

    .line 660
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingStateAttitudeChangedBehavior(JI)I

    move-result v0

    .line 661
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingStateAutoTakeOffModeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 671
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 673
    :goto_0
    return-object v1

    .line 672
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingStateAutoTakeOffModeChangedBehavior(JI)I

    move-result v0

    .line 673
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 575
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 577
    :goto_0
    return-object v1

    .line 576
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingStateBehavior(JI)I

    move-result v0

    .line 577
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingStateFlatTrimChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 587
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 589
    :goto_0
    return-object v1

    .line 588
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingStateFlatTrimChangedBehavior(JI)I

    move-result v0

    .line 589
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingStateFlyingStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 599
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 601
    :goto_0
    return-object v1

    .line 600
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingStateFlyingStateChangedBehavior(JI)I

    move-result v0

    .line 601
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingStateGpsLocationChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 695
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 697
    :goto_0
    return-object v1

    .line 696
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingStateGpsLocationChangedBehavior(JI)I

    move-result v0

    .line 697
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingStateLandingStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 707
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 709
    :goto_0
    return-object v1

    .line 708
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingStateLandingStateChangedBehavior(JI)I

    move-result v0

    .line 709
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingStateNavigateHomeStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 623
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 625
    :goto_0
    return-object v1

    .line 624
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingStateNavigateHomeStateChangedBehavior(JI)I

    move-result v0

    .line 625
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingStatePositionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 635
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 637
    :goto_0
    return-object v1

    .line 636
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingStatePositionChangedBehavior(JI)I

    move-result v0

    .line 637
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingStateSpeedChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 647
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 649
    :goto_0
    return-object v1

    .line 648
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingStateSpeedChangedBehavior(JI)I

    move-result v0

    .line 649
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingTakeOffBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 215
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 217
    :goto_0
    return-object v1

    .line 216
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingTakeOffBehavior(JI)I

    move-result v0

    .line 217
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3PilotingUserTakeOffBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 299
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 301
    :goto_0
    return-object v1

    .line 300
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3PilotingUserTakeOffBehavior(JI)I

    move-result v0

    .line 301
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1507
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1509
    :goto_0
    return-object v1

    .line 1508
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SettingsStateBehavior(JI)I

    move-result v0

    .line 1509
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SettingsStateCPUIDBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1603
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1605
    :goto_0
    return-object v1

    .line 1604
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SettingsStateCPUIDBehavior(JI)I

    move-result v0

    .line 1605
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SettingsStateMotorErrorLastErrorChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1579
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1581
    :goto_0
    return-object v1

    .line 1580
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SettingsStateMotorErrorLastErrorChangedBehavior(JI)I

    move-result v0

    .line 1581
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SettingsStateMotorErrorStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1543
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1545
    :goto_0
    return-object v1

    .line 1544
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SettingsStateMotorErrorStateChangedBehavior(JI)I

    move-result v0

    .line 1545
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SettingsStateMotorFlightsStatusChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1567
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1569
    :goto_0
    return-object v1

    .line 1568
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SettingsStateMotorFlightsStatusChangedBehavior(JI)I

    move-result v0

    .line 1569
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SettingsStateMotorSoftwareVersionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1555
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1557
    :goto_0
    return-object v1

    .line 1556
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SettingsStateMotorSoftwareVersionChangedBehavior(JI)I

    move-result v0

    .line 1557
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SettingsStateP7IDBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1591
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1593
    :goto_0
    return-object v1

    .line 1592
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SettingsStateP7IDBehavior(JI)I

    move-result v0

    .line 1593
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SettingsStateProductGPSVersionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1531
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1533
    :goto_0
    return-object v1

    .line 1532
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SettingsStateProductGPSVersionChangedBehavior(JI)I

    move-result v0

    .line 1533
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SettingsStateProductMotorVersionListChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1519
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1521
    :goto_0
    return-object v1

    .line 1520
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SettingsStateProductMotorVersionListChangedBehavior(JI)I

    move-result v0

    .line 1521
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SpeedSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1271
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1273
    :goto_0
    return-object v1

    .line 1272
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SpeedSettingsBehavior(JI)I

    move-result v0

    .line 1273
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SpeedSettingsHullProtectionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1307
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1309
    :goto_0
    return-object v1

    .line 1308
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SpeedSettingsHullProtectionBehavior(JI)I

    move-result v0

    .line 1309
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SpeedSettingsMaxPitchRollRotationSpeedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1331
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1333
    :goto_0
    return-object v1

    .line 1332
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SpeedSettingsMaxPitchRollRotationSpeedBehavior(JI)I

    move-result v0

    .line 1333
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SpeedSettingsMaxRotationSpeedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1295
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1297
    :goto_0
    return-object v1

    .line 1296
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SpeedSettingsMaxRotationSpeedBehavior(JI)I

    move-result v0

    .line 1297
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SpeedSettingsMaxVerticalSpeedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1283
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1285
    :goto_0
    return-object v1

    .line 1284
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SpeedSettingsMaxVerticalSpeedBehavior(JI)I

    move-result v0

    .line 1285
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SpeedSettingsOutdoorBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1319
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1321
    :goto_0
    return-object v1

    .line 1320
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SpeedSettingsOutdoorBehavior(JI)I

    move-result v0

    .line 1321
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SpeedSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1345
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1347
    :goto_0
    return-object v1

    .line 1346
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SpeedSettingsStateBehavior(JI)I

    move-result v0

    .line 1347
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SpeedSettingsStateHullProtectionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1381
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1383
    :goto_0
    return-object v1

    .line 1382
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SpeedSettingsStateHullProtectionChangedBehavior(JI)I

    move-result v0

    .line 1383
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SpeedSettingsStateMaxPitchRollRotationSpeedChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1405
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1407
    :goto_0
    return-object v1

    .line 1406
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SpeedSettingsStateMaxPitchRollRotationSpeedChangedBehavior(JI)I

    move-result v0

    .line 1407
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SpeedSettingsStateMaxRotationSpeedChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1369
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1371
    :goto_0
    return-object v1

    .line 1370
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SpeedSettingsStateMaxRotationSpeedChangedBehavior(JI)I

    move-result v0

    .line 1371
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SpeedSettingsStateMaxVerticalSpeedChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1357
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1359
    :goto_0
    return-object v1

    .line 1358
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SpeedSettingsStateMaxVerticalSpeedChangedBehavior(JI)I

    move-result v0

    .line 1359
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setARDrone3SpeedSettingsStateOutdoorChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 1393
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 1395
    :goto_0
    return-object v1

    .line 1394
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetARDrone3SpeedSettingsStateOutdoorChangedBehavior(JI)I

    move-result v0

    .line 1395
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonARLibsVersionsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3359
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3361
    :goto_0
    return-object v1

    .line 3360
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonARLibsVersionsStateBehavior(JI)I

    move-result v0

    .line 3361
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonARLibsVersionsStateControllerLibARCommandsVersionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3371
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3373
    :goto_0
    return-object v1

    .line 3372
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonARLibsVersionsStateControllerLibARCommandsVersionBehavior(JI)I

    move-result v0

    .line 3373
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonARLibsVersionsStateDeviceLibARCommandsVersionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3395
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3397
    :goto_0
    return-object v1

    .line 3396
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonARLibsVersionsStateDeviceLibARCommandsVersionBehavior(JI)I

    move-result v0

    .line 3397
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonARLibsVersionsStateSkyControllerLibARCommandsVersionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3383
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3385
    :goto_0
    return-object v1

    .line 3384
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonARLibsVersionsStateSkyControllerLibARCommandsVersionBehavior(JI)I

    move-result v0

    .line 3385
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonAccessoryBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3589
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3591
    :goto_0
    return-object v1

    .line 3590
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonAccessoryBehavior(JI)I

    move-result v0

    .line 3591
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonAccessoryConfigBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3601
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3603
    :goto_0
    return-object v1

    .line 3602
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonAccessoryConfigBehavior(JI)I

    move-result v0

    .line 3603
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonAccessoryStateAccessoryConfigChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3639
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3641
    :goto_0
    return-object v1

    .line 3640
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonAccessoryStateAccessoryConfigChangedBehavior(JI)I

    move-result v0

    .line 3641
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonAccessoryStateAccessoryConfigModificationEnabledBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3651
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3653
    :goto_0
    return-object v1

    .line 3652
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonAccessoryStateAccessoryConfigModificationEnabledBehavior(JI)I

    move-result v0

    .line 3653
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonAccessoryStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3615
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3617
    :goto_0
    return-object v1

    .line 3616
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonAccessoryStateBehavior(JI)I

    move-result v0

    .line 3617
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonAccessoryStateSupportedAccessoriesListChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3627
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3629
    :goto_0
    return-object v1

    .line 3628
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonAccessoryStateSupportedAccessoriesListChangedBehavior(JI)I

    move-result v0

    .line 3629
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonAnimationsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3513
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3515
    :goto_0
    return-object v1

    .line 3514
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonAnimationsBehavior(JI)I

    move-result v0

    .line 3515
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonAnimationsStartAnimationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3525
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3527
    :goto_0
    return-object v1

    .line 3526
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonAnimationsStartAnimationBehavior(JI)I

    move-result v0

    .line 3527
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonAnimationsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3563
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3565
    :goto_0
    return-object v1

    .line 3564
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonAnimationsStateBehavior(JI)I

    move-result v0

    .line 3565
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonAnimationsStateListBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3575
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3577
    :goto_0
    return-object v1

    .line 3576
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonAnimationsStateListBehavior(JI)I

    move-result v0

    .line 3577
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonAnimationsStopAllAnimationsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3549
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3551
    :goto_0
    return-object v1

    .line 3550
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonAnimationsStopAllAnimationsBehavior(JI)I

    move-result v0

    .line 3551
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonAnimationsStopAnimationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3537
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3539
    :goto_0
    return-object v1

    .line 3538
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonAnimationsStopAnimationBehavior(JI)I

    move-result v0

    .line 3539
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonAudioBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3409
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3411
    :goto_0
    return-object v1

    .line 3410
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonAudioBehavior(JI)I

    move-result v0

    .line 3411
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonAudioControllerReadyForStreamingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3421
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3423
    :goto_0
    return-object v1

    .line 3422
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonAudioControllerReadyForStreamingBehavior(JI)I

    move-result v0

    .line 3423
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonAudioStateAudioStreamingRunningBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3447
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3449
    :goto_0
    return-object v1

    .line 3448
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonAudioStateAudioStreamingRunningBehavior(JI)I

    move-result v0

    .line 3449
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonAudioStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3435
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3437
    :goto_0
    return-object v1

    .line 3436
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonAudioStateBehavior(JI)I

    move-result v0

    .line 3437
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2348
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2350
    :goto_0
    return-object v1

    .line 2349
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonBehavior(JI)I

    move-result v0

    .line 2350
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCalibrationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3107
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3109
    :goto_0
    return-object v1

    .line 3108
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCalibrationBehavior(JI)I

    move-result v0

    .line 3109
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCalibrationMagnetoCalibrationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3119
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3121
    :goto_0
    return-object v1

    .line 3120
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCalibrationMagnetoCalibrationBehavior(JI)I

    move-result v0

    .line 3121
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCalibrationPitotCalibrationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3131
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3133
    :goto_0
    return-object v1

    .line 3132
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCalibrationPitotCalibrationBehavior(JI)I

    move-result v0

    .line 3133
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCalibrationStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3145
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3147
    :goto_0
    return-object v1

    .line 3146
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCalibrationStateBehavior(JI)I

    move-result v0

    .line 3147
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCalibrationStateMagnetoCalibrationAxisToCalibrateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3181
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3183
    :goto_0
    return-object v1

    .line 3182
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCalibrationStateMagnetoCalibrationAxisToCalibrateChangedBehavior(JI)I

    move-result v0

    .line 3183
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCalibrationStateMagnetoCalibrationRequiredStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3169
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3171
    :goto_0
    return-object v1

    .line 3170
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCalibrationStateMagnetoCalibrationRequiredStateBehavior(JI)I

    move-result v0

    .line 3171
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCalibrationStateMagnetoCalibrationStartedChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3193
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3195
    :goto_0
    return-object v1

    .line 3194
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCalibrationStateMagnetoCalibrationStartedChangedBehavior(JI)I

    move-result v0

    .line 3195
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCalibrationStateMagnetoCalibrationStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3157
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3159
    :goto_0
    return-object v1

    .line 3158
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCalibrationStateMagnetoCalibrationStateChangedBehavior(JI)I

    move-result v0

    .line 3159
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCalibrationStatePitotCalibrationStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3205
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3207
    :goto_0
    return-object v1

    .line 3206
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCalibrationStatePitotCalibrationStateChangedBehavior(JI)I

    move-result v0

    .line 3207
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCameraSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3219
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3221
    :goto_0
    return-object v1

    .line 3220
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCameraSettingsStateBehavior(JI)I

    move-result v0

    .line 3221
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCameraSettingsStateCameraSettingsChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3231
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3233
    :goto_0
    return-object v1

    .line 3232
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCameraSettingsStateCameraSettingsChangedBehavior(JI)I

    move-result v0

    .line 3233
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonChargerBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3665
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3667
    :goto_0
    return-object v1

    .line 3666
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonChargerBehavior(JI)I

    move-result v0

    .line 3667
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonChargerSetMaxChargeRateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3677
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3679
    :goto_0
    return-object v1

    .line 3678
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonChargerSetMaxChargeRateBehavior(JI)I

    move-result v0

    .line 3679
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonChargerStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3691
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3693
    :goto_0
    return-object v1

    .line 3692
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonChargerStateBehavior(JI)I

    move-result v0

    .line 3693
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonChargerStateChargingInfoBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3739
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3741
    :goto_0
    return-object v1

    .line 3740
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonChargerStateChargingInfoBehavior(JI)I

    move-result v0

    .line 3741
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonChargerStateCurrentChargeStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3715
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3717
    :goto_0
    return-object v1

    .line 3716
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonChargerStateCurrentChargeStateChangedBehavior(JI)I

    move-result v0

    .line 3717
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonChargerStateLastChargeRateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3727
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3729
    :goto_0
    return-object v1

    .line 3728
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonChargerStateLastChargeRateChangedBehavior(JI)I

    move-result v0

    .line 3729
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonChargerStateMaxChargeRateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3703
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3705
    :goto_0
    return-object v1

    .line 3704
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonChargerStateMaxChargeRateChangedBehavior(JI)I

    move-result v0

    .line 3705
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonAllStatesBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2609
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2611
    :goto_0
    return-object v1

    .line 2610
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonAllStatesBehavior(JI)I

    move-result v0

    .line 2611
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2597
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2599
    :goto_0
    return-object v1

    .line 2598
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonBehavior(JI)I

    move-result v0

    .line 2599
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonCurrentDateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2621
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2623
    :goto_0
    return-object v1

    .line 2622
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonCurrentDateBehavior(JI)I

    move-result v0

    .line 2623
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonCurrentTimeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2633
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2635
    :goto_0
    return-object v1

    .line 2634
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonCurrentTimeBehavior(JI)I

    move-result v0

    .line 2635
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonRebootBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2645
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2647
    :goto_0
    return-object v1

    .line 2646
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonRebootBehavior(JI)I

    move-result v0

    .line 2647
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonStateAllStatesChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2671
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2673
    :goto_0
    return-object v1

    .line 2672
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonStateAllStatesChangedBehavior(JI)I

    move-result v0

    .line 2673
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonStateBatteryStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2683
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2685
    :goto_0
    return-object v1

    .line 2684
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonStateBatteryStateChangedBehavior(JI)I

    move-result v0

    .line 2685
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2659
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2661
    :goto_0
    return-object v1

    .line 2660
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonStateBehavior(JI)I

    move-result v0

    .line 2661
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonStateCountryListKnownBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2791
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2793
    :goto_0
    return-object v1

    .line 2792
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonStateCountryListKnownBehavior(JI)I

    move-result v0

    .line 2793
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonStateCurrentDateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2719
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2721
    :goto_0
    return-object v1

    .line 2720
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonStateCurrentDateChangedBehavior(JI)I

    move-result v0

    .line 2721
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonStateCurrentTimeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2731
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2733
    :goto_0
    return-object v1

    .line 2732
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonStateCurrentTimeChangedBehavior(JI)I

    move-result v0

    .line 2733
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonStateDeprecatedMassStorageContentChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2803
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2805
    :goto_0
    return-object v1

    .line 2804
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonStateDeprecatedMassStorageContentChangedBehavior(JI)I

    move-result v0

    .line 2805
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonStateMassStorageContentBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2815
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2817
    :goto_0
    return-object v1

    .line 2816
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonStateMassStorageContentBehavior(JI)I

    move-result v0

    .line 2817
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonStateMassStorageContentForCurrentRunBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2827
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2829
    :goto_0
    return-object v1

    .line 2828
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonStateMassStorageContentForCurrentRunBehavior(JI)I

    move-result v0

    .line 2829
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonStateMassStorageInfoRemainingListChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2743
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2745
    :goto_0
    return-object v1

    .line 2744
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonStateMassStorageInfoRemainingListChangedBehavior(JI)I

    move-result v0

    .line 2745
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonStateMassStorageInfoStateListChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2707
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2709
    :goto_0
    return-object v1

    .line 2708
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonStateMassStorageInfoStateListChangedBehavior(JI)I

    move-result v0

    .line 2709
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonStateMassStorageStateListChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2695
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2697
    :goto_0
    return-object v1

    .line 2696
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonStateMassStorageStateListChangedBehavior(JI)I

    move-result v0

    .line 2697
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonStateProductModelBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2779
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2781
    :goto_0
    return-object v1

    .line 2780
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonStateProductModelBehavior(JI)I

    move-result v0

    .line 2781
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonStateSensorsStatesListChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2767
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2769
    :goto_0
    return-object v1

    .line 2768
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonStateSensorsStatesListChangedBehavior(JI)I

    move-result v0

    .line 2769
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonStateVideoRecordingTimestampBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2839
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2841
    :goto_0
    return-object v1

    .line 2840
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonStateVideoRecordingTimestampBehavior(JI)I

    move-result v0

    .line 2841
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonCommonStateWifiSignalChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2755
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2757
    :goto_0
    return-object v1

    .line 2756
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonCommonStateWifiSignalChangedBehavior(JI)I

    move-result v0

    .line 2757
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonControllerBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2929
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2931
    :goto_0
    return-object v1

    .line 2930
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonControllerBehavior(JI)I

    move-result v0

    .line 2931
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonControllerIsPilotingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2941
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2943
    :goto_0
    return-object v1

    .line 2942
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonControllerIsPilotingBehavior(JI)I

    move-result v0

    .line 2943
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonFlightPlanEventBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3321
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3323
    :goto_0
    return-object v1

    .line 3322
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonFlightPlanEventBehavior(JI)I

    move-result v0

    .line 3323
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonFlightPlanEventSpeedBridleEventBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3345
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3347
    :goto_0
    return-object v1

    .line 3346
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonFlightPlanEventSpeedBridleEventBehavior(JI)I

    move-result v0

    .line 3347
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonFlightPlanEventStartingErrorEventBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3333
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3335
    :goto_0
    return-object v1

    .line 3334
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonFlightPlanEventStartingErrorEventBehavior(JI)I

    move-result v0

    .line 3335
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonFlightPlanStateAvailabilityStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3283
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3285
    :goto_0
    return-object v1

    .line 3284
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonFlightPlanStateAvailabilityStateChangedBehavior(JI)I

    move-result v0

    .line 3285
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonFlightPlanStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3271
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3273
    :goto_0
    return-object v1

    .line 3272
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonFlightPlanStateBehavior(JI)I

    move-result v0

    .line 3273
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonFlightPlanStateComponentStateListChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3295
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3297
    :goto_0
    return-object v1

    .line 3296
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonFlightPlanStateComponentStateListChangedBehavior(JI)I

    move-result v0

    .line 3297
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonFlightPlanStateLockStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3307
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3309
    :goto_0
    return-object v1

    .line 3308
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonFlightPlanStateLockStateChangedBehavior(JI)I

    move-result v0

    .line 3309
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonGPSBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3245
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3247
    :goto_0
    return-object v1

    .line 3246
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonGPSBehavior(JI)I

    move-result v0

    .line 3247
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonGPSControllerPositionForRunBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3257
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3259
    :goto_0
    return-object v1

    .line 3258
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonGPSControllerPositionForRunBehavior(JI)I

    move-result v0

    .line 3259
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonHeadlightsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3461
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3463
    :goto_0
    return-object v1

    .line 3462
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonHeadlightsBehavior(JI)I

    move-result v0

    .line 3463
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonHeadlightsIntensityBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3473
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3475
    :goto_0
    return-object v1

    .line 3474
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonHeadlightsIntensityBehavior(JI)I

    move-result v0

    .line 3475
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonHeadlightsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3487
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3489
    :goto_0
    return-object v1

    .line 3488
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonHeadlightsStateBehavior(JI)I

    move-result v0

    .line 3489
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonHeadlightsStateIntensityChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3499
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3501
    :goto_0
    return-object v1

    .line 3500
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonHeadlightsStateIntensityChangedBehavior(JI)I

    move-result v0

    .line 3501
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonMavlinkBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3007
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3009
    :goto_0
    return-object v1

    .line 3008
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonMavlinkBehavior(JI)I

    move-result v0

    .line 3009
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonMavlinkPauseBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3031
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3033
    :goto_0
    return-object v1

    .line 3032
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonMavlinkPauseBehavior(JI)I

    move-result v0

    .line 3033
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonMavlinkStartBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3019
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3021
    :goto_0
    return-object v1

    .line 3020
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonMavlinkStartBehavior(JI)I

    move-result v0

    .line 3021
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonMavlinkStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3057
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3059
    :goto_0
    return-object v1

    .line 3058
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonMavlinkStateBehavior(JI)I

    move-result v0

    .line 3059
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonMavlinkStateMavlinkFilePlayingStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3069
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3071
    :goto_0
    return-object v1

    .line 3070
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonMavlinkStateMavlinkFilePlayingStateChangedBehavior(JI)I

    move-result v0

    .line 3071
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonMavlinkStateMavlinkPlayErrorStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3081
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3083
    :goto_0
    return-object v1

    .line 3082
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonMavlinkStateMavlinkPlayErrorStateChangedBehavior(JI)I

    move-result v0

    .line 3083
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonMavlinkStateMissonItemExecutedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3093
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3095
    :goto_0
    return-object v1

    .line 3094
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonMavlinkStateMissonItemExecutedBehavior(JI)I

    move-result v0

    .line 3095
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonMavlinkStopBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3043
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3045
    :goto_0
    return-object v1

    .line 3044
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonMavlinkStopBehavior(JI)I

    move-result v0

    .line 3045
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonNetworkBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2361
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2363
    :goto_0
    return-object v1

    .line 2362
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonNetworkBehavior(JI)I

    move-result v0

    .line 2363
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonNetworkDisconnectBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2373
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2375
    :goto_0
    return-object v1

    .line 2374
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonNetworkDisconnectBehavior(JI)I

    move-result v0

    .line 2375
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonNetworkEventBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2387
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2389
    :goto_0
    return-object v1

    .line 2388
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonNetworkEventBehavior(JI)I

    move-result v0

    .line 2389
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonNetworkEventDisconnectionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2399
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2401
    :goto_0
    return-object v1

    .line 2400
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonNetworkEventDisconnectionBehavior(JI)I

    move-result v0

    .line 2401
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonOverHeatBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2853
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2855
    :goto_0
    return-object v1

    .line 2854
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonOverHeatBehavior(JI)I

    move-result v0

    .line 2855
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonOverHeatStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2891
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2893
    :goto_0
    return-object v1

    .line 2892
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonOverHeatStateBehavior(JI)I

    move-result v0

    .line 2893
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonOverHeatStateOverHeatChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2903
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2905
    :goto_0
    return-object v1

    .line 2904
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonOverHeatStateOverHeatChangedBehavior(JI)I

    move-result v0

    .line 2905
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonOverHeatStateOverHeatRegulationChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2915
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2917
    :goto_0
    return-object v1

    .line 2916
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonOverHeatStateOverHeatRegulationChangedBehavior(JI)I

    move-result v0

    .line 2917
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonOverHeatSwitchOffBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2865
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2867
    :goto_0
    return-object v1

    .line 2866
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonOverHeatSwitchOffBehavior(JI)I

    move-result v0

    .line 2867
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonOverHeatVentilateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2877
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2879
    :goto_0
    return-object v1

    .line 2878
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonOverHeatVentilateBehavior(JI)I

    move-result v0

    .line 2879
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonRunStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3753
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3755
    :goto_0
    return-object v1

    .line 3754
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonRunStateBehavior(JI)I

    move-result v0

    .line 3755
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonRunStateRunIdChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3765
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3767
    :goto_0
    return-object v1

    .line 3766
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonRunStateRunIdChangedBehavior(JI)I

    move-result v0

    .line 3767
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonSettingsAllSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2425
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2427
    :goto_0
    return-object v1

    .line 2426
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonSettingsAllSettingsBehavior(JI)I

    move-result v0

    .line 2427
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonSettingsAutoCountryBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2473
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2475
    :goto_0
    return-object v1

    .line 2474
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonSettingsAutoCountryBehavior(JI)I

    move-result v0

    .line 2475
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2413
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2415
    :goto_0
    return-object v1

    .line 2414
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonSettingsBehavior(JI)I

    move-result v0

    .line 2415
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonSettingsCountryBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2461
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2463
    :goto_0
    return-object v1

    .line 2462
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonSettingsCountryBehavior(JI)I

    move-result v0

    .line 2463
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonSettingsProductNameBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2449
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2451
    :goto_0
    return-object v1

    .line 2450
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonSettingsProductNameBehavior(JI)I

    move-result v0

    .line 2451
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonSettingsResetBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2437
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2439
    :goto_0
    return-object v1

    .line 2438
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonSettingsResetBehavior(JI)I

    move-result v0

    .line 2439
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonSettingsStateAllSettingsChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2499
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2501
    :goto_0
    return-object v1

    .line 2500
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonSettingsStateAllSettingsChangedBehavior(JI)I

    move-result v0

    .line 2501
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonSettingsStateAutoCountryChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2583
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2585
    :goto_0
    return-object v1

    .line 2584
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonSettingsStateAutoCountryChangedBehavior(JI)I

    move-result v0

    .line 2585
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2487
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2489
    :goto_0
    return-object v1

    .line 2488
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonSettingsStateBehavior(JI)I

    move-result v0

    .line 2489
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonSettingsStateCountryChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2571
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2573
    :goto_0
    return-object v1

    .line 2572
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonSettingsStateCountryChangedBehavior(JI)I

    move-result v0

    .line 2573
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonSettingsStateProductNameChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2523
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2525
    :goto_0
    return-object v1

    .line 2524
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonSettingsStateProductNameChangedBehavior(JI)I

    move-result v0

    .line 2525
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonSettingsStateProductSerialHighChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2547
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2549
    :goto_0
    return-object v1

    .line 2548
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonSettingsStateProductSerialHighChangedBehavior(JI)I

    move-result v0

    .line 2549
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonSettingsStateProductSerialLowChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2559
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2561
    :goto_0
    return-object v1

    .line 2560
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonSettingsStateProductSerialLowChangedBehavior(JI)I

    move-result v0

    .line 2561
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonSettingsStateProductVersionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2535
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2537
    :goto_0
    return-object v1

    .line 2536
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonSettingsStateProductVersionChangedBehavior(JI)I

    move-result v0

    .line 2537
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonSettingsStateResetChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2511
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2513
    :goto_0
    return-object v1

    .line 2512
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonSettingsStateResetChangedBehavior(JI)I

    move-result v0

    .line 2513
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonWifiSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2955
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2957
    :goto_0
    return-object v1

    .line 2956
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonWifiSettingsBehavior(JI)I

    move-result v0

    .line 2957
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonWifiSettingsOutdoorSettingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2967
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2969
    :goto_0
    return-object v1

    .line 2968
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonWifiSettingsOutdoorSettingBehavior(JI)I

    move-result v0

    .line 2969
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonWifiSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2981
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2983
    :goto_0
    return-object v1

    .line 2982
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonWifiSettingsStateBehavior(JI)I

    move-result v0

    .line 2983
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setCommonWifiSettingsStateOutdoorSettingsChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 2993
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 2995
    :goto_0
    return-object v1

    .line 2994
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetCommonWifiSettingsStateOutdoorSettingsChangedBehavior(JI)I

    move-result v0

    .line 2995
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setControllerInfoBarometerBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3804
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3806
    :goto_0
    return-object v1

    .line 3805
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetControllerInfoBarometerBehavior(JI)I

    move-result v0

    .line 3806
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setControllerInfoBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3780
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3782
    :goto_0
    return-object v1

    .line 3781
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetControllerInfoBehavior(JI)I

    move-result v0

    .line 3782
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setControllerInfoGpsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3792
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3794
    :goto_0
    return-object v1

    .line 3793
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetControllerInfoGpsBehavior(JI)I

    move-result v0

    .line 3794
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setDebugBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3818
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3820
    :goto_0
    return-object v1

    .line 3819
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetDebugBehavior(JI)I

    move-result v0

    .line 3820
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setDebugGetAllSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3830
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3832
    :goto_0
    return-object v1

    .line 3831
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetDebugGetAllSettingsBehavior(JI)I

    move-result v0

    .line 3832
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setDebugSetSettingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3842
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3844
    :goto_0
    return-object v1

    .line 3843
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetDebugSetSettingBehavior(JI)I

    move-result v0

    .line 3844
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setDebugSettingsInfoBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3854
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3856
    :goto_0
    return-object v1

    .line 3855
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetDebugSettingsInfoBehavior(JI)I

    move-result v0

    .line 3856
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setDebugSettingsListBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3866
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3868
    :goto_0
    return-object v1

    .line 3867
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetDebugSettingsListBehavior(JI)I

    move-result v0

    .line 3868
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setDroneManagerAuthenticationFailedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3952
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3954
    :goto_0
    return-object v1

    .line 3953
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetDroneManagerAuthenticationFailedBehavior(JI)I

    move-result v0

    .line 3954
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setDroneManagerBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3880
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3882
    :goto_0
    return-object v1

    .line 3881
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetDroneManagerBehavior(JI)I

    move-result v0

    .line 3882
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setDroneManagerConnectBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3904
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3906
    :goto_0
    return-object v1

    .line 3905
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetDroneManagerConnectBehavior(JI)I

    move-result v0

    .line 3906
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setDroneManagerConnectionRefusedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3964
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3966
    :goto_0
    return-object v1

    .line 3965
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetDroneManagerConnectionRefusedBehavior(JI)I

    move-result v0

    .line 3966
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setDroneManagerConnectionStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3940
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3942
    :goto_0
    return-object v1

    .line 3941
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetDroneManagerConnectionStateBehavior(JI)I

    move-result v0

    .line 3942
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setDroneManagerDiscoverDronesBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3892
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3894
    :goto_0
    return-object v1

    .line 3893
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetDroneManagerDiscoverDronesBehavior(JI)I

    move-result v0

    .line 3894
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setDroneManagerDroneListItemBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3928
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3930
    :goto_0
    return-object v1

    .line 3929
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetDroneManagerDroneListItemBehavior(JI)I

    move-result v0

    .line 3930
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setDroneManagerForgetBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3916
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3918
    :goto_0
    return-object v1

    .line 3917
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetDroneManagerForgetBehavior(JI)I

    move-result v0

    .line 3918
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setDroneManagerKnownDroneItemBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3976
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3978
    :goto_0
    return-object v1

    .line 3977
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetDroneManagerKnownDroneItemBehavior(JI)I

    move-result v0

    .line 3978
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 3990
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 3992
    :goto_0
    return-object v1

    .line 3991
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeBehavior(JI)I

    move-result v0

    .line 3992
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeBoomerangAnimConfigBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4230
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4232
    :goto_0
    return-object v1

    .line 4231
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeBoomerangAnimConfigBehavior(JI)I

    move-result v0

    .line 4232
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeCandleAnimConfigBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4242
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4244
    :goto_0
    return-object v1

    .line 4243
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeCandleAnimConfigBehavior(JI)I

    move-result v0

    .line 4244
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeConfigureGeographicBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4026
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4028
    :goto_0
    return-object v1

    .line 4027
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeConfigureGeographicBehavior(JI)I

    move-result v0

    .line 4028
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeConfigureRelativeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4038
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4040
    :goto_0
    return-object v1

    .line 4039
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeConfigureRelativeBehavior(JI)I

    move-result v0

    .line 4040
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeDollySlideAnimConfigBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4254
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4256
    :goto_0
    return-object v1

    .line 4255
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeDollySlideAnimConfigBehavior(JI)I

    move-result v0

    .line 4256
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeGeographicConfigBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4170
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4172
    :goto_0
    return-object v1

    .line 4171
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeGeographicConfigBehavior(JI)I

    move-result v0

    .line 4172
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeHelicoidAnimConfigBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4206
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4208
    :goto_0
    return-object v1

    .line 4207
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeHelicoidAnimConfigBehavior(JI)I

    move-result v0

    .line 4208
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeModeInfoBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4158
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4160
    :goto_0
    return-object v1

    .line 4159
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeModeInfoBehavior(JI)I

    move-result v0

    .line 4160
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeRelativeConfigBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4182
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4184
    :goto_0
    return-object v1

    .line 4183
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeRelativeConfigBehavior(JI)I

    move-result v0

    .line 4184
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeStartBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4002
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4004
    :goto_0
    return-object v1

    .line 4003
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeStartBehavior(JI)I

    move-result v0

    .line 4004
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeStartBoomerangAnimBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4086
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4088
    :goto_0
    return-object v1

    .line 4087
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeStartBoomerangAnimBehavior(JI)I

    move-result v0

    .line 4088
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeStartCandleAnimBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4098
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4100
    :goto_0
    return-object v1

    .line 4099
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeStartCandleAnimBehavior(JI)I

    move-result v0

    .line 4100
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeStartDollySlideAnimBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4110
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4112
    :goto_0
    return-object v1

    .line 4111
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeStartDollySlideAnimBehavior(JI)I

    move-result v0

    .line 4112
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeStartHelicoidAnimBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4062
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4064
    :goto_0
    return-object v1

    .line 4063
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeStartHelicoidAnimBehavior(JI)I

    move-result v0

    .line 4064
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeStartSwingAnimBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4074
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4076
    :goto_0
    return-object v1

    .line 4075
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeStartSwingAnimBehavior(JI)I

    move-result v0

    .line 4076
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4146
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4148
    :goto_0
    return-object v1

    .line 4147
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeStateBehavior(JI)I

    move-result v0

    .line 4148
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeStopAnimationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4050
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4052
    :goto_0
    return-object v1

    .line 4051
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeStopAnimationBehavior(JI)I

    move-result v0

    .line 4052
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeStopBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4014
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4016
    :goto_0
    return-object v1

    .line 4015
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeStopBehavior(JI)I

    move-result v0

    .line 4016
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeSwingAnimConfigBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4218
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4220
    :goto_0
    return-object v1

    .line 4219
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeSwingAnimConfigBehavior(JI)I

    move-result v0

    .line 4220
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeTargetFramingPositionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4122
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4124
    :goto_0
    return-object v1

    .line 4123
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeTargetFramingPositionBehavior(JI)I

    move-result v0

    .line 4124
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeTargetFramingPositionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4266
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4268
    :goto_0
    return-object v1

    .line 4267
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeTargetFramingPositionChangedBehavior(JI)I

    move-result v0

    .line 4268
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeTargetImageDetectionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4134
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4136
    :goto_0
    return-object v1

    .line 4135
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeTargetImageDetectionBehavior(JI)I

    move-result v0

    .line 4136
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeTargetImageDetectionStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4278
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4280
    :goto_0
    return-object v1

    .line 4279
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeTargetImageDetectionStateBehavior(JI)I

    move-result v0

    .line 4280
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setFollowMeTargetTrajectoryBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4194
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4196
    :goto_0
    return-object v1

    .line 4195
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetFollowMeTargetTrajectoryBehavior(JI)I

    move-result v0

    .line 4196
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setGenericBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 128
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 130
    :goto_0
    return-object v1

    .line 129
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetGenericBehavior(JI)I

    move-result v0

    .line 130
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setGenericDefaultBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 140
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 142
    :goto_0
    return-object v1

    .line 141
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetGenericDefaultBehavior(JI)I

    move-result v0

    .line 142
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setGenericDroneSettingsChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 164
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 166
    :goto_0
    return-object v1

    .line 165
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetGenericDroneSettingsChangedBehavior(JI)I

    move-result v0

    .line 166
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setGenericSetDroneSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 152
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 154
    :goto_0
    return-object v1

    .line 153
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetGenericSetDroneSettingsBehavior(JI)I

    move-result v0

    .line 154
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoAnimationsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4405
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4407
    :goto_0
    return-object v1

    .line 4406
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoAnimationsBehavior(JI)I

    move-result v0

    .line 4407
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoAnimationsJumpBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4453
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4455
    :goto_0
    return-object v1

    .line 4454
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoAnimationsJumpBehavior(JI)I

    move-result v0

    .line 4455
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoAnimationsJumpCancelBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4429
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4431
    :goto_0
    return-object v1

    .line 4430
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoAnimationsJumpCancelBehavior(JI)I

    move-result v0

    .line 4431
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoAnimationsJumpLoadBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4441
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4443
    :goto_0
    return-object v1

    .line 4442
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoAnimationsJumpLoadBehavior(JI)I

    move-result v0

    .line 4443
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoAnimationsJumpStopBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4417
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4419
    :goto_0
    return-object v1

    .line 4418
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoAnimationsJumpStopBehavior(JI)I

    move-result v0

    .line 4419
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoAnimationsSimpleAnimationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4465
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4467
    :goto_0
    return-object v1

    .line 4466
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoAnimationsSimpleAnimationBehavior(JI)I

    move-result v0

    .line 4467
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoAnimationsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4479
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4481
    :goto_0
    return-object v1

    .line 4480
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoAnimationsStateBehavior(JI)I

    move-result v0

    .line 4481
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoAnimationsStateJumpLoadChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4491
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4493
    :goto_0
    return-object v1

    .line 4492
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoAnimationsStateJumpLoadChangedBehavior(JI)I

    move-result v0

    .line 4493
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoAnimationsStateJumpMotorProblemChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4515
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4517
    :goto_0
    return-object v1

    .line 4516
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoAnimationsStateJumpMotorProblemChangedBehavior(JI)I

    move-result v0

    .line 4517
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoAnimationsStateJumpTypeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4503
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4505
    :goto_0
    return-object v1

    .line 4504
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoAnimationsStateJumpTypeChangedBehavior(JI)I

    move-result v0

    .line 4505
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoAudioSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4881
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4883
    :goto_0
    return-object v1

    .line 4882
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoAudioSettingsBehavior(JI)I

    move-result v0

    .line 4883
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoAudioSettingsMasterVolumeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4893
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4895
    :goto_0
    return-object v1

    .line 4894
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoAudioSettingsMasterVolumeBehavior(JI)I

    move-result v0

    .line 4895
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoAudioSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4919
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4921
    :goto_0
    return-object v1

    .line 4920
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoAudioSettingsStateBehavior(JI)I

    move-result v0

    .line 4921
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoAudioSettingsStateMasterVolumeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4931
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4933
    :goto_0
    return-object v1

    .line 4932
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoAudioSettingsStateMasterVolumeChangedBehavior(JI)I

    move-result v0

    .line 4933
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoAudioSettingsStateThemeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4943
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4945
    :goto_0
    return-object v1

    .line 4944
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoAudioSettingsStateThemeChangedBehavior(JI)I

    move-result v0

    .line 4945
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoAudioSettingsThemeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4905
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4907
    :goto_0
    return-object v1

    .line 4906
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoAudioSettingsThemeBehavior(JI)I

    move-result v0

    .line 4907
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4292
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4294
    :goto_0
    return-object v1

    .line 4293
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoBehavior(JI)I

    move-result v0

    .line 4294
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoMediaRecordBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4555
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4557
    :goto_0
    return-object v1

    .line 4556
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoMediaRecordBehavior(JI)I

    move-result v0

    .line 4557
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoMediaRecordEventBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4679
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4681
    :goto_0
    return-object v1

    .line 4680
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoMediaRecordEventBehavior(JI)I

    move-result v0

    .line 4681
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoMediaRecordEventPictureEventChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4691
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4693
    :goto_0
    return-object v1

    .line 4692
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoMediaRecordEventPictureEventChangedBehavior(JI)I

    move-result v0

    .line 4693
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoMediaRecordEventVideoEventChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4703
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4705
    :goto_0
    return-object v1

    .line 4704
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoMediaRecordEventVideoEventChangedBehavior(JI)I

    move-result v0

    .line 4705
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoMediaRecordPictureBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4567
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4569
    :goto_0
    return-object v1

    .line 4568
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoMediaRecordPictureBehavior(JI)I

    move-result v0

    .line 4569
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoMediaRecordPictureV2Behavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4591
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4593
    :goto_0
    return-object v1

    .line 4592
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoMediaRecordPictureV2Behavior(JI)I

    move-result v0

    .line 4593
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoMediaRecordStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4617
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4619
    :goto_0
    return-object v1

    .line 4618
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoMediaRecordStateBehavior(JI)I

    move-result v0

    .line 4619
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoMediaRecordStatePictureStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4629
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4631
    :goto_0
    return-object v1

    .line 4630
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoMediaRecordStatePictureStateChangedBehavior(JI)I

    move-result v0

    .line 4631
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoMediaRecordStatePictureStateChangedV2Behavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4653
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4655
    :goto_0
    return-object v1

    .line 4654
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoMediaRecordStatePictureStateChangedV2Behavior(JI)I

    move-result v0

    .line 4655
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoMediaRecordStateVideoStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4641
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4643
    :goto_0
    return-object v1

    .line 4642
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoMediaRecordStateVideoStateChangedBehavior(JI)I

    move-result v0

    .line 4643
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoMediaRecordStateVideoStateChangedV2Behavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4665
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4667
    :goto_0
    return-object v1

    .line 4666
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoMediaRecordStateVideoStateChangedV2Behavior(JI)I

    move-result v0

    .line 4667
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoMediaRecordVideoBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4579
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4581
    :goto_0
    return-object v1

    .line 4580
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoMediaRecordVideoBehavior(JI)I

    move-result v0

    .line 4581
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoMediaRecordVideoV2Behavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4603
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4605
    :goto_0
    return-object v1

    .line 4604
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoMediaRecordVideoV2Behavior(JI)I

    move-result v0

    .line 4605
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoMediaStreamingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5145
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5147
    :goto_0
    return-object v1

    .line 5146
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoMediaStreamingBehavior(JI)I

    move-result v0

    .line 5147
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoMediaStreamingStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5171
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5173
    :goto_0
    return-object v1

    .line 5172
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoMediaStreamingStateBehavior(JI)I

    move-result v0

    .line 5173
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoMediaStreamingStateVideoEnableChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5183
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5185
    :goto_0
    return-object v1

    .line 5184
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoMediaStreamingStateVideoEnableChangedBehavior(JI)I

    move-result v0

    .line 5185
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoMediaStreamingVideoEnableBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5157
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5159
    :goto_0
    return-object v1

    .line 5158
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoMediaStreamingVideoEnableBehavior(JI)I

    move-result v0

    .line 5159
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoNetworkBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4769
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4771
    :goto_0
    return-object v1

    .line 4770
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoNetworkBehavior(JI)I

    move-result v0

    .line 4771
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoNetworkSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4717
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4719
    :goto_0
    return-object v1

    .line 4718
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoNetworkSettingsBehavior(JI)I

    move-result v0

    .line 4719
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoNetworkSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4743
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4745
    :goto_0
    return-object v1

    .line 4744
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoNetworkSettingsStateBehavior(JI)I

    move-result v0

    .line 4745
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoNetworkSettingsStateWifiSelectionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4755
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4757
    :goto_0
    return-object v1

    .line 4756
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoNetworkSettingsStateWifiSelectionChangedBehavior(JI)I

    move-result v0

    .line 4757
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoNetworkSettingsWifiSelectionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4729
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4731
    :goto_0
    return-object v1

    .line 4730
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoNetworkSettingsWifiSelectionBehavior(JI)I

    move-result v0

    .line 4731
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoNetworkStateAllWifiAuthChannelChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4855
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4857
    :goto_0
    return-object v1

    .line 4856
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoNetworkStateAllWifiAuthChannelChangedBehavior(JI)I

    move-result v0

    .line 4857
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoNetworkStateAllWifiScanChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4831
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4833
    :goto_0
    return-object v1

    .line 4832
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoNetworkStateAllWifiScanChangedBehavior(JI)I

    move-result v0

    .line 4833
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoNetworkStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4807
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4809
    :goto_0
    return-object v1

    .line 4808
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoNetworkStateBehavior(JI)I

    move-result v0

    .line 4809
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoNetworkStateLinkQualityChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4867
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4869
    :goto_0
    return-object v1

    .line 4868
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoNetworkStateLinkQualityChangedBehavior(JI)I

    move-result v0

    .line 4869
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoNetworkStateWifiAuthChannelListChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4843
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4845
    :goto_0
    return-object v1

    .line 4844
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoNetworkStateWifiAuthChannelListChangedBehavior(JI)I

    move-result v0

    .line 4845
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoNetworkStateWifiScanListChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4819
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4821
    :goto_0
    return-object v1

    .line 4820
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoNetworkStateWifiScanListChangedBehavior(JI)I

    move-result v0

    .line 4821
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoNetworkWifiAuthChannelBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4793
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4795
    :goto_0
    return-object v1

    .line 4794
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoNetworkWifiAuthChannelBehavior(JI)I

    move-result v0

    .line 4795
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoNetworkWifiScanBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4781
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4783
    :goto_0
    return-object v1

    .line 4782
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoNetworkWifiScanBehavior(JI)I

    move-result v0

    .line 4783
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoPilotingAddCapOffsetBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4341
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4343
    :goto_0
    return-object v1

    .line 4342
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoPilotingAddCapOffsetBehavior(JI)I

    move-result v0

    .line 4343
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoPilotingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4305
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4307
    :goto_0
    return-object v1

    .line 4306
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoPilotingBehavior(JI)I

    move-result v0

    .line 4307
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoPilotingPCMDBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4317
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4319
    :goto_0
    return-object v1

    .line 4318
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoPilotingPCMDBehavior(JI)I

    move-result v0

    .line 4319
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoPilotingPostureBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4329
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4331
    :goto_0
    return-object v1

    .line 4330
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoPilotingPostureBehavior(JI)I

    move-result v0

    .line 4331
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoPilotingStateAlertStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4379
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4381
    :goto_0
    return-object v1

    .line 4380
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoPilotingStateAlertStateChangedBehavior(JI)I

    move-result v0

    .line 4381
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoPilotingStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4355
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4357
    :goto_0
    return-object v1

    .line 4356
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoPilotingStateBehavior(JI)I

    move-result v0

    .line 4357
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoPilotingStatePostureChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4367
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4369
    :goto_0
    return-object v1

    .line 4368
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoPilotingStatePostureChangedBehavior(JI)I

    move-result v0

    .line 4369
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoPilotingStateSpeedChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4391
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4393
    :goto_0
    return-object v1

    .line 4392
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoPilotingStateSpeedChangedBehavior(JI)I

    move-result v0

    .line 4393
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoRoadPlanAllScriptsMetadataBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4969
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4971
    :goto_0
    return-object v1

    .line 4970
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoRoadPlanAllScriptsMetadataBehavior(JI)I

    move-result v0

    .line 4971
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoRoadPlanBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4957
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4959
    :goto_0
    return-object v1

    .line 4958
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoRoadPlanBehavior(JI)I

    move-result v0

    .line 4959
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoRoadPlanPlayScriptBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5005
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5007
    :goto_0
    return-object v1

    .line 5006
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoRoadPlanPlayScriptBehavior(JI)I

    move-result v0

    .line 5007
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoRoadPlanScriptDeleteBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4993
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4995
    :goto_0
    return-object v1

    .line 4994
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoRoadPlanScriptDeleteBehavior(JI)I

    move-result v0

    .line 4995
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoRoadPlanScriptUploadedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4981
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4983
    :goto_0
    return-object v1

    .line 4982
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoRoadPlanScriptUploadedBehavior(JI)I

    move-result v0

    .line 4983
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoRoadPlanStateAllScriptsMetadataChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5043
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5045
    :goto_0
    return-object v1

    .line 5044
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoRoadPlanStateAllScriptsMetadataChangedBehavior(JI)I

    move-result v0

    .line 5045
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoRoadPlanStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5019
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5021
    :goto_0
    return-object v1

    .line 5020
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoRoadPlanStateBehavior(JI)I

    move-result v0

    .line 5021
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoRoadPlanStatePlayScriptChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5079
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5081
    :goto_0
    return-object v1

    .line 5080
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoRoadPlanStatePlayScriptChangedBehavior(JI)I

    move-result v0

    .line 5081
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoRoadPlanStateScriptDeleteChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5067
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5069
    :goto_0
    return-object v1

    .line 5068
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoRoadPlanStateScriptDeleteChangedBehavior(JI)I

    move-result v0

    .line 5069
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoRoadPlanStateScriptMetadataListChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5031
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5033
    :goto_0
    return-object v1

    .line 5032
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoRoadPlanStateScriptMetadataListChangedBehavior(JI)I

    move-result v0

    .line 5033
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoRoadPlanStateScriptUploadChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5055
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5057
    :goto_0
    return-object v1

    .line 5056
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoRoadPlanStateScriptUploadChangedBehavior(JI)I

    move-result v0

    .line 5057
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4529
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4531
    :goto_0
    return-object v1

    .line 4530
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoSettingsStateBehavior(JI)I

    move-result v0

    .line 4531
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoSettingsStateProductGPSVersionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 4541
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 4543
    :goto_0
    return-object v1

    .line 4542
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoSettingsStateProductGPSVersionChangedBehavior(JI)I

    move-result v0

    .line 4543
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoSpeedSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5093
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5095
    :goto_0
    return-object v1

    .line 5094
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoSpeedSettingsBehavior(JI)I

    move-result v0

    .line 5095
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoSpeedSettingsOutdoorBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5105
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5107
    :goto_0
    return-object v1

    .line 5106
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoSpeedSettingsOutdoorBehavior(JI)I

    move-result v0

    .line 5107
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoSpeedSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5119
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5121
    :goto_0
    return-object v1

    .line 5120
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoSpeedSettingsStateBehavior(JI)I

    move-result v0

    .line 5121
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoSpeedSettingsStateOutdoorChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5131
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5133
    :goto_0
    return-object v1

    .line 5132
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoSpeedSettingsStateOutdoorChangedBehavior(JI)I

    move-result v0

    .line 5133
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoVideoSettingsAutorecordBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5209
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5211
    :goto_0
    return-object v1

    .line 5210
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoVideoSettingsAutorecordBehavior(JI)I

    move-result v0

    .line 5211
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoVideoSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5197
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5199
    :goto_0
    return-object v1

    .line 5198
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoVideoSettingsBehavior(JI)I

    move-result v0

    .line 5199
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoVideoSettingsStateAutorecordChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5235
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5237
    :goto_0
    return-object v1

    .line 5236
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoVideoSettingsStateAutorecordChangedBehavior(JI)I

    move-result v0

    .line 5237
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setJumpingSumoVideoSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5223
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5225
    :goto_0
    return-object v1

    .line 5224
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetJumpingSumoVideoSettingsStateBehavior(JI)I

    move-result v0

    .line 5225
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperActiveProductBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5442
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5444
    :goto_0
    return-object v1

    .line 5443
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperActiveProductBehavior(JI)I

    move-result v0

    .line 5444
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperApplicationAxisEventBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5394
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5396
    :goto_0
    return-object v1

    .line 5395
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperApplicationAxisEventBehavior(JI)I

    move-result v0

    .line 5396
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperApplicationButtonEventBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5406
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5408
    :goto_0
    return-object v1

    .line 5407
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperApplicationButtonEventBehavior(JI)I

    move-result v0

    .line 5408
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperAxisMappingItemBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5382
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5384
    :goto_0
    return-object v1

    .line 5383
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperAxisMappingItemBehavior(JI)I

    move-result v0

    .line 5384
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5250
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5252
    :goto_0
    return-object v1

    .line 5251
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperBehavior(JI)I

    move-result v0

    .line 5252
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperButtonMappingItemBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5370
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5372
    :goto_0
    return-object v1

    .line 5371
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperButtonMappingItemBehavior(JI)I

    move-result v0

    .line 5372
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperExpoMapItemBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5418
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5420
    :goto_0
    return-object v1

    .line 5419
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperExpoMapItemBehavior(JI)I

    move-result v0

    .line 5420
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperGrabAxisEventBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5358
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5360
    :goto_0
    return-object v1

    .line 5359
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperGrabAxisEventBehavior(JI)I

    move-result v0

    .line 5360
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperGrabBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5262
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5264
    :goto_0
    return-object v1

    .line 5263
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperGrabBehavior(JI)I

    move-result v0

    .line 5264
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperGrabButtonEventBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5346
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5348
    :goto_0
    return-object v1

    .line 5347
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperGrabButtonEventBehavior(JI)I

    move-result v0

    .line 5348
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperGrabStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5334
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5336
    :goto_0
    return-object v1

    .line 5335
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperGrabStateBehavior(JI)I

    move-result v0

    .line 5336
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperInvertedMapItemBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5430
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5432
    :goto_0
    return-object v1

    .line 5431
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperInvertedMapItemBehavior(JI)I

    move-result v0

    .line 5432
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperMapAxisActionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5286
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5288
    :goto_0
    return-object v1

    .line 5287
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperMapAxisActionBehavior(JI)I

    move-result v0

    .line 5288
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperMapButtonActionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5274
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5276
    :goto_0
    return-object v1

    .line 5275
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperMapButtonActionBehavior(JI)I

    move-result v0

    .line 5276
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperMiniAxisMappingItemBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5516
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5518
    :goto_0
    return-object v1

    .line 5517
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperMiniAxisMappingItemBehavior(JI)I

    move-result v0

    .line 5518
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperMiniBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5456
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5458
    :goto_0
    return-object v1

    .line 5457
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperMiniBehavior(JI)I

    move-result v0

    .line 5458
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperMiniButtonMappingItemBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5504
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5506
    :goto_0
    return-object v1

    .line 5505
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperMiniButtonMappingItemBehavior(JI)I

    move-result v0

    .line 5506
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperMiniMapAxisActionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5480
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5482
    :goto_0
    return-object v1

    .line 5481
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperMiniMapAxisActionBehavior(JI)I

    move-result v0

    .line 5482
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperMiniMapButtonActionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5468
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5470
    :goto_0
    return-object v1

    .line 5469
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperMiniMapButtonActionBehavior(JI)I

    move-result v0

    .line 5470
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperMiniResetMappingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5492
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5494
    :goto_0
    return-object v1

    .line 5493
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperMiniResetMappingBehavior(JI)I

    move-result v0

    .line 5494
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperResetMappingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5298
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5300
    :goto_0
    return-object v1

    .line 5299
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperResetMappingBehavior(JI)I

    move-result v0

    .line 5300
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperSetExpoBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5310
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5312
    :goto_0
    return-object v1

    .line 5311
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperSetExpoBehavior(JI)I

    move-result v0

    .line 5312
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMapperSetInvertedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5322
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5324
    :goto_0
    return-object v1

    .line 5323
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMapperSetInvertedBehavior(JI)I

    move-result v0

    .line 5324
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneAnimationsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5739
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5741
    :goto_0
    return-object v1

    .line 5740
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneAnimationsBehavior(JI)I

    move-result v0

    .line 5741
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneAnimationsCapBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5763
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5765
    :goto_0
    return-object v1

    .line 5764
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneAnimationsCapBehavior(JI)I

    move-result v0

    .line 5765
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneAnimationsFlipBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5751
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5753
    :goto_0
    return-object v1

    .line 5752
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneAnimationsFlipBehavior(JI)I

    move-result v0

    .line 5753
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5530
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5532
    :goto_0
    return-object v1

    .line 5531
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneBehavior(JI)I

    move-result v0

    .line 5532
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneConfigurationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6267
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6269
    :goto_0
    return-object v1

    .line 6268
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneConfigurationBehavior(JI)I

    move-result v0

    .line 6269
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneConfigurationControllerNameBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6291
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6293
    :goto_0
    return-object v1

    .line 6292
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneConfigurationControllerNameBehavior(JI)I

    move-result v0

    .line 6293
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneConfigurationControllerTypeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6279
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6281
    :goto_0
    return-object v1

    .line 6280
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneConfigurationControllerTypeBehavior(JI)I

    move-result v0

    .line 6281
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneFloodControlStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6203
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6205
    :goto_0
    return-object v1

    .line 6204
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneFloodControlStateBehavior(JI)I

    move-result v0

    .line 6205
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneFloodControlStateFloodControlChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6215
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6217
    :goto_0
    return-object v1

    .line 6216
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneFloodControlStateFloodControlChangedBehavior(JI)I

    move-result v0

    .line 6217
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneGPSBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6229
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6231
    :goto_0
    return-object v1

    .line 6230
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneGPSBehavior(JI)I

    move-result v0

    .line 6231
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneGPSControllerLatitudeForRunBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6241
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6243
    :goto_0
    return-object v1

    .line 6242
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneGPSControllerLatitudeForRunBehavior(JI)I

    move-result v0

    .line 6243
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneGPSControllerLongitudeForRunBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6253
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6255
    :goto_0
    return-object v1

    .line 6254
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneGPSControllerLongitudeForRunBehavior(JI)I

    move-result v0

    .line 6255
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneMediaRecordBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5777
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5779
    :goto_0
    return-object v1

    .line 5778
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneMediaRecordBehavior(JI)I

    move-result v0

    .line 5779
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneMediaRecordEventBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5853
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5855
    :goto_0
    return-object v1

    .line 5854
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneMediaRecordEventBehavior(JI)I

    move-result v0

    .line 5855
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneMediaRecordEventPictureEventChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5865
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5867
    :goto_0
    return-object v1

    .line 5866
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneMediaRecordEventPictureEventChangedBehavior(JI)I

    move-result v0

    .line 5867
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneMediaRecordPictureBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5789
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5791
    :goto_0
    return-object v1

    .line 5790
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneMediaRecordPictureBehavior(JI)I

    move-result v0

    .line 5791
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneMediaRecordPictureV2Behavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5801
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5803
    :goto_0
    return-object v1

    .line 5802
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneMediaRecordPictureV2Behavior(JI)I

    move-result v0

    .line 5803
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneMediaRecordStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5815
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5817
    :goto_0
    return-object v1

    .line 5816
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneMediaRecordStateBehavior(JI)I

    move-result v0

    .line 5817
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneMediaRecordStatePictureStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5827
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5829
    :goto_0
    return-object v1

    .line 5828
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneMediaRecordStatePictureStateChangedBehavior(JI)I

    move-result v0

    .line 5829
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneMediaRecordStatePictureStateChangedV2Behavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5839
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5841
    :goto_0
    return-object v1

    .line 5840
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneMediaRecordStatePictureStateChangedV2Behavior(JI)I

    move-result v0

    .line 5841
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneNavigationDataStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6431
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6433
    :goto_0
    return-object v1

    .line 6432
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneNavigationDataStateBehavior(JI)I

    move-result v0

    .line 6433
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneNavigationDataStateDronePositionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6443
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6445
    :goto_0
    return-object v1

    .line 6444
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneNavigationDataStateDronePositionBehavior(JI)I

    move-result v0

    .line 6445
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingAutoTakeOffModeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5615
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5617
    :goto_0
    return-object v1

    .line 5616
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingAutoTakeOffModeBehavior(JI)I

    move-result v0

    .line 5617
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5543
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5545
    :goto_0
    return-object v1

    .line 5544
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingBehavior(JI)I

    move-result v0

    .line 5545
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingEmergencyBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5603
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5605
    :goto_0
    return-object v1

    .line 5604
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingEmergencyBehavior(JI)I

    move-result v0

    .line 5605
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingFlatTrimBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5555
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5557
    :goto_0
    return-object v1

    .line 5556
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingFlatTrimBehavior(JI)I

    move-result v0

    .line 5557
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingFlyingModeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5627
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5629
    :goto_0
    return-object v1

    .line 5628
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingFlyingModeBehavior(JI)I

    move-result v0

    .line 5629
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingLandingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5591
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5593
    :goto_0
    return-object v1

    .line 5592
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingLandingBehavior(JI)I

    move-result v0

    .line 5593
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingPCMDBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5579
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5581
    :goto_0
    return-object v1

    .line 5580
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingPCMDBehavior(JI)I

    move-result v0

    .line 5581
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingPlaneGearBoxBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5639
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5641
    :goto_0
    return-object v1

    .line 5640
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingPlaneGearBoxBehavior(JI)I

    move-result v0

    .line 5641
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingSettingsBankedTurnBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5915
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5917
    :goto_0
    return-object v1

    .line 5916
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingSettingsBankedTurnBehavior(JI)I

    move-result v0

    .line 5917
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5879
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5881
    :goto_0
    return-object v1

    .line 5880
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingSettingsBehavior(JI)I

    move-result v0

    .line 5881
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingSettingsMaxAltitudeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5891
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5893
    :goto_0
    return-object v1

    .line 5892
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingSettingsMaxAltitudeBehavior(JI)I

    move-result v0

    .line 5893
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingSettingsMaxTiltBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5903
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5905
    :goto_0
    return-object v1

    .line 5904
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingSettingsMaxTiltBehavior(JI)I

    move-result v0

    .line 5905
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingSettingsStateBankedTurnChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5965
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5967
    :goto_0
    return-object v1

    .line 5966
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingSettingsStateBankedTurnChangedBehavior(JI)I

    move-result v0

    .line 5967
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5929
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5931
    :goto_0
    return-object v1

    .line 5930
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingSettingsStateBehavior(JI)I

    move-result v0

    .line 5931
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingSettingsStateMaxAltitudeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5941
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5943
    :goto_0
    return-object v1

    .line 5942
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingSettingsStateMaxAltitudeChangedBehavior(JI)I

    move-result v0

    .line 5943
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingSettingsStateMaxTiltChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5953
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5955
    :goto_0
    return-object v1

    .line 5954
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingSettingsStateMaxTiltChangedBehavior(JI)I

    move-result v0

    .line 5955
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingStateAlertStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5689
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5691
    :goto_0
    return-object v1

    .line 5690
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingStateAlertStateChangedBehavior(JI)I

    move-result v0

    .line 5691
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingStateAutoTakeOffModeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5701
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5703
    :goto_0
    return-object v1

    .line 5702
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingStateAutoTakeOffModeChangedBehavior(JI)I

    move-result v0

    .line 5703
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5653
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5655
    :goto_0
    return-object v1

    .line 5654
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingStateBehavior(JI)I

    move-result v0

    .line 5655
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingStateFlatTrimChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5665
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5667
    :goto_0
    return-object v1

    .line 5666
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingStateFlatTrimChangedBehavior(JI)I

    move-result v0

    .line 5667
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingStateFlyingModeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5713
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5715
    :goto_0
    return-object v1

    .line 5714
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingStateFlyingModeChangedBehavior(JI)I

    move-result v0

    .line 5715
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingStateFlyingStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5677
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5679
    :goto_0
    return-object v1

    .line 5678
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingStateFlyingStateChangedBehavior(JI)I

    move-result v0

    .line 5679
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingStatePlaneGearBoxChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5725
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5727
    :goto_0
    return-object v1

    .line 5726
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingStatePlaneGearBoxChangedBehavior(JI)I

    move-result v0

    .line 5727
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDronePilotingTakeOffBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5567
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5569
    :goto_0
    return-object v1

    .line 5568
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDronePilotingTakeOffBehavior(JI)I

    move-result v0

    .line 5569
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneRemoteControllerBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6405
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6407
    :goto_0
    return-object v1

    .line 6406
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneRemoteControllerBehavior(JI)I

    move-result v0

    .line 6407
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneRemoteControllerSetPairedRemoteBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6417
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6419
    :goto_0
    return-object v1

    .line 6418
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneRemoteControllerSetPairedRemoteBehavior(JI)I

    move-result v0

    .line 6419
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6127
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6129
    :goto_0
    return-object v1

    .line 6128
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneSettingsBehavior(JI)I

    move-result v0

    .line 6129
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneSettingsCutOutModeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6139
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6141
    :goto_0
    return-object v1

    .line 6140
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneSettingsCutOutModeBehavior(JI)I

    move-result v0

    .line 6141
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6153
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6155
    :goto_0
    return-object v1

    .line 6154
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneSettingsStateBehavior(JI)I

    move-result v0

    .line 6155
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneSettingsStateCutOutModeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6189
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6191
    :goto_0
    return-object v1

    .line 6190
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneSettingsStateCutOutModeChangedBehavior(JI)I

    move-result v0

    .line 6191
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneSettingsStateProductInertialVersionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6177
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6179
    :goto_0
    return-object v1

    .line 6178
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneSettingsStateProductInertialVersionChangedBehavior(JI)I

    move-result v0

    .line 6179
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneSettingsStateProductMotorsVersionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6165
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6167
    :goto_0
    return-object v1

    .line 6166
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneSettingsStateProductMotorsVersionChangedBehavior(JI)I

    move-result v0

    .line 6167
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneSpeedSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5979
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5981
    :goto_0
    return-object v1

    .line 5980
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneSpeedSettingsBehavior(JI)I

    move-result v0

    .line 5981
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneSpeedSettingsMaxHorizontalSpeedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6027
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6029
    :goto_0
    return-object v1

    .line 6028
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneSpeedSettingsMaxHorizontalSpeedBehavior(JI)I

    move-result v0

    .line 6029
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneSpeedSettingsMaxPlaneModeRotationSpeedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6039
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6041
    :goto_0
    return-object v1

    .line 6040
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneSpeedSettingsMaxPlaneModeRotationSpeedBehavior(JI)I

    move-result v0

    .line 6041
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneSpeedSettingsMaxRotationSpeedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6003
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6005
    :goto_0
    return-object v1

    .line 6004
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneSpeedSettingsMaxRotationSpeedBehavior(JI)I

    move-result v0

    .line 6005
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneSpeedSettingsMaxVerticalSpeedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 5991
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 5993
    :goto_0
    return-object v1

    .line 5992
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneSpeedSettingsMaxVerticalSpeedBehavior(JI)I

    move-result v0

    .line 5993
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneSpeedSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6053
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6055
    :goto_0
    return-object v1

    .line 6054
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneSpeedSettingsStateBehavior(JI)I

    move-result v0

    .line 6055
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneSpeedSettingsStateMaxHorizontalSpeedChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6101
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6103
    :goto_0
    return-object v1

    .line 6102
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneSpeedSettingsStateMaxHorizontalSpeedChangedBehavior(JI)I

    move-result v0

    .line 6103
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneSpeedSettingsStateMaxPlaneModeRotationSpeedChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6113
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6115
    :goto_0
    return-object v1

    .line 6114
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneSpeedSettingsStateMaxPlaneModeRotationSpeedChangedBehavior(JI)I

    move-result v0

    .line 6115
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneSpeedSettingsStateMaxRotationSpeedChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6077
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6079
    :goto_0
    return-object v1

    .line 6078
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneSpeedSettingsStateMaxRotationSpeedChangedBehavior(JI)I

    move-result v0

    .line 6079
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneSpeedSettingsStateMaxVerticalSpeedChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6065
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6067
    :goto_0
    return-object v1

    .line 6066
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneSpeedSettingsStateMaxVerticalSpeedChangedBehavior(JI)I

    move-result v0

    .line 6067
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneSpeedSettingsStateWheelsChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6089
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6091
    :goto_0
    return-object v1

    .line 6090
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneSpeedSettingsStateWheelsChangedBehavior(JI)I

    move-result v0

    .line 6091
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneSpeedSettingsWheelsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6015
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6017
    :goto_0
    return-object v1

    .line 6016
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneSpeedSettingsWheelsBehavior(JI)I

    move-result v0

    .line 6017
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneUsbAccessoryBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6355
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6357
    :goto_0
    return-object v1

    .line 6356
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneUsbAccessoryBehavior(JI)I

    move-result v0

    .line 6357
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneUsbAccessoryClawControlBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6379
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6381
    :goto_0
    return-object v1

    .line 6380
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneUsbAccessoryClawControlBehavior(JI)I

    move-result v0

    .line 6381
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneUsbAccessoryGunControlBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6391
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6393
    :goto_0
    return-object v1

    .line 6392
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneUsbAccessoryGunControlBehavior(JI)I

    move-result v0

    .line 6393
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneUsbAccessoryLightControlBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6367
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6369
    :goto_0
    return-object v1

    .line 6368
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneUsbAccessoryLightControlBehavior(JI)I

    move-result v0

    .line 6369
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneUsbAccessoryStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6305
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6307
    :goto_0
    return-object v1

    .line 6306
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneUsbAccessoryStateBehavior(JI)I

    move-result v0

    .line 6307
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneUsbAccessoryStateClawStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6329
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6331
    :goto_0
    return-object v1

    .line 6330
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneUsbAccessoryStateClawStateBehavior(JI)I

    move-result v0

    .line 6331
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneUsbAccessoryStateGunStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6341
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6343
    :goto_0
    return-object v1

    .line 6342
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneUsbAccessoryStateGunStateBehavior(JI)I

    move-result v0

    .line 6343
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setMiniDroneUsbAccessoryStateLightStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6317
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6319
    :goto_0
    return-object v1

    .line 6318
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetMiniDroneUsbAccessoryStateLightStateBehavior(JI)I

    move-result v0

    .line 6319
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6458
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6460
    :goto_0
    return-object v1

    .line 6459
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupBehavior(JI)I

    move-result v0

    .line 6460
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupMediaRecordBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6647
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6649
    :goto_0
    return-object v1

    .line 6648
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupMediaRecordBehavior(JI)I

    move-result v0

    .line 6649
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupMediaRecordEventBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6723
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6725
    :goto_0
    return-object v1

    .line 6724
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupMediaRecordEventBehavior(JI)I

    move-result v0

    .line 6725
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupMediaRecordEventPictureEventChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6735
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6737
    :goto_0
    return-object v1

    .line 6736
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupMediaRecordEventPictureEventChangedBehavior(JI)I

    move-result v0

    .line 6737
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupMediaRecordEventVideoEventChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6747
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6749
    :goto_0
    return-object v1

    .line 6748
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupMediaRecordEventVideoEventChangedBehavior(JI)I

    move-result v0

    .line 6749
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupMediaRecordPictureV2Behavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6659
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6661
    :goto_0
    return-object v1

    .line 6660
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupMediaRecordPictureV2Behavior(JI)I

    move-result v0

    .line 6661
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupMediaRecordStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6685
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6687
    :goto_0
    return-object v1

    .line 6686
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupMediaRecordStateBehavior(JI)I

    move-result v0

    .line 6687
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupMediaRecordStatePictureStateChangedV2Behavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6697
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6699
    :goto_0
    return-object v1

    .line 6698
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupMediaRecordStatePictureStateChangedV2Behavior(JI)I

    move-result v0

    .line 6699
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupMediaRecordStateVideoStateChangedV2Behavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6709
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6711
    :goto_0
    return-object v1

    .line 6710
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupMediaRecordStateVideoStateChangedV2Behavior(JI)I

    move-result v0

    .line 6711
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupMediaRecordVideoV2Behavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6671
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6673
    :goto_0
    return-object v1

    .line 6672
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupMediaRecordVideoV2Behavior(JI)I

    move-result v0

    .line 6673
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupMediaStreamingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6925
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6927
    :goto_0
    return-object v1

    .line 6926
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupMediaStreamingBehavior(JI)I

    move-result v0

    .line 6927
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupMediaStreamingStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6951
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6953
    :goto_0
    return-object v1

    .line 6952
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupMediaStreamingStateBehavior(JI)I

    move-result v0

    .line 6953
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupMediaStreamingStateVideoEnableChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6963
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6965
    :goto_0
    return-object v1

    .line 6964
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupMediaStreamingStateVideoEnableChangedBehavior(JI)I

    move-result v0

    .line 6965
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupMediaStreamingVideoEnableBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6937
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6939
    :goto_0
    return-object v1

    .line 6938
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupMediaStreamingVideoEnableBehavior(JI)I

    move-result v0

    .line 6939
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupNetworkBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6813
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6815
    :goto_0
    return-object v1

    .line 6814
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupNetworkBehavior(JI)I

    move-result v0

    .line 6815
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupNetworkSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6761
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6763
    :goto_0
    return-object v1

    .line 6762
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupNetworkSettingsBehavior(JI)I

    move-result v0

    .line 6763
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupNetworkSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6787
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6789
    :goto_0
    return-object v1

    .line 6788
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupNetworkSettingsStateBehavior(JI)I

    move-result v0

    .line 6789
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupNetworkSettingsStateWifiSelectionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6799
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6801
    :goto_0
    return-object v1

    .line 6800
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupNetworkSettingsStateWifiSelectionChangedBehavior(JI)I

    move-result v0

    .line 6801
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupNetworkSettingsWifiSelectionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6773
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6775
    :goto_0
    return-object v1

    .line 6774
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupNetworkSettingsWifiSelectionBehavior(JI)I

    move-result v0

    .line 6775
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupNetworkStateAllWifiAuthChannelChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6899
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6901
    :goto_0
    return-object v1

    .line 6900
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupNetworkStateAllWifiAuthChannelChangedBehavior(JI)I

    move-result v0

    .line 6901
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupNetworkStateAllWifiScanChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6875
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6877
    :goto_0
    return-object v1

    .line 6876
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupNetworkStateAllWifiScanChangedBehavior(JI)I

    move-result v0

    .line 6877
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupNetworkStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6851
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6853
    :goto_0
    return-object v1

    .line 6852
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupNetworkStateBehavior(JI)I

    move-result v0

    .line 6853
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupNetworkStateLinkQualityChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6911
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6913
    :goto_0
    return-object v1

    .line 6912
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupNetworkStateLinkQualityChangedBehavior(JI)I

    move-result v0

    .line 6913
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupNetworkStateWifiAuthChannelListChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6887
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6889
    :goto_0
    return-object v1

    .line 6888
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupNetworkStateWifiAuthChannelListChangedBehavior(JI)I

    move-result v0

    .line 6889
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupNetworkStateWifiScanListChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6863
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6865
    :goto_0
    return-object v1

    .line 6864
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupNetworkStateWifiScanListChangedBehavior(JI)I

    move-result v0

    .line 6865
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupNetworkWifiAuthChannelBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6837
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6839
    :goto_0
    return-object v1

    .line 6838
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupNetworkWifiAuthChannelBehavior(JI)I

    move-result v0

    .line 6839
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupNetworkWifiScanBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6825
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6827
    :goto_0
    return-object v1

    .line 6826
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupNetworkWifiScanBehavior(JI)I

    move-result v0

    .line 6827
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupPilotingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6471
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6473
    :goto_0
    return-object v1

    .line 6472
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupPilotingBehavior(JI)I

    move-result v0

    .line 6473
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupPilotingMotorModeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6507
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6509
    :goto_0
    return-object v1

    .line 6508
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupPilotingMotorModeBehavior(JI)I

    move-result v0

    .line 6509
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupPilotingPCMDBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6483
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6485
    :goto_0
    return-object v1

    .line 6484
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupPilotingPCMDBehavior(JI)I

    move-result v0

    .line 6485
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupPilotingSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6595
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6597
    :goto_0
    return-object v1

    .line 6596
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupPilotingSettingsBehavior(JI)I

    move-result v0

    .line 6597
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupPilotingSettingsSetBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6607
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6609
    :goto_0
    return-object v1

    .line 6608
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupPilotingSettingsSetBehavior(JI)I

    move-result v0

    .line 6609
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupPilotingSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6621
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6623
    :goto_0
    return-object v1

    .line 6622
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupPilotingSettingsStateBehavior(JI)I

    move-result v0

    .line 6623
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupPilotingSettingsStateSettingChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6633
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6635
    :goto_0
    return-object v1

    .line 6634
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupPilotingSettingsStateSettingChangedBehavior(JI)I

    move-result v0

    .line 6635
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupPilotingStateAlertStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6533
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6535
    :goto_0
    return-object v1

    .line 6534
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupPilotingStateAlertStateChangedBehavior(JI)I

    move-result v0

    .line 6535
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupPilotingStateAltitudeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6581
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6583
    :goto_0
    return-object v1

    .line 6582
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupPilotingStateAltitudeChangedBehavior(JI)I

    move-result v0

    .line 6583
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupPilotingStateAttitudeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6569
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6571
    :goto_0
    return-object v1

    .line 6570
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupPilotingStateAttitudeChangedBehavior(JI)I

    move-result v0

    .line 6571
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupPilotingStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6521
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6523
    :goto_0
    return-object v1

    .line 6522
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupPilotingStateBehavior(JI)I

    move-result v0

    .line 6523
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupPilotingStateFlyingStateChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6545
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6547
    :goto_0
    return-object v1

    .line 6546
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupPilotingStateFlyingStateChangedBehavior(JI)I

    move-result v0

    .line 6547
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupPilotingStateMotorModeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6557
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6559
    :goto_0
    return-object v1

    .line 6558
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupPilotingStateMotorModeChangedBehavior(JI)I

    move-result v0

    .line 6559
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupPilotingUserTakeOffBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6495
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6497
    :goto_0
    return-object v1

    .line 6496
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupPilotingUserTakeOffBehavior(JI)I

    move-result v0

    .line 6497
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupSoundsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7053
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7055
    :goto_0
    return-object v1

    .line 7054
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupSoundsBehavior(JI)I

    move-result v0

    .line 7055
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupSoundsBuzzBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7065
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7067
    :goto_0
    return-object v1

    .line 7066
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupSoundsBuzzBehavior(JI)I

    move-result v0

    .line 7067
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupSoundsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7079
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7081
    :goto_0
    return-object v1

    .line 7080
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupSoundsStateBehavior(JI)I

    move-result v0

    .line 7081
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupSoundsStateBuzzChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7091
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7093
    :goto_0
    return-object v1

    .line 7092
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupSoundsStateBuzzChangedBehavior(JI)I

    move-result v0

    .line 7093
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupVideoSettingsAutorecordBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6989
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6991
    :goto_0
    return-object v1

    .line 6990
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupVideoSettingsAutorecordBehavior(JI)I

    move-result v0

    .line 6991
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupVideoSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 6977
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 6979
    :goto_0
    return-object v1

    .line 6978
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupVideoSettingsBehavior(JI)I

    move-result v0

    .line 6979
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupVideoSettingsStateAutorecordChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7027
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7029
    :goto_0
    return-object v1

    .line 7028
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupVideoSettingsStateAutorecordChangedBehavior(JI)I

    move-result v0

    .line 7029
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupVideoSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7015
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7017
    :goto_0
    return-object v1

    .line 7016
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupVideoSettingsStateBehavior(JI)I

    move-result v0

    .line 7017
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupVideoSettingsStateVideoModeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7039
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7041
    :goto_0
    return-object v1

    .line 7040
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupVideoSettingsStateVideoModeChangedBehavior(JI)I

    move-result v0

    .line 7041
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setPowerupVideoSettingsVideoModeBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7001
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7003
    :goto_0
    return-object v1

    .line 7002
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetPowerupVideoSettingsVideoModeBehavior(JI)I

    move-result v0

    .line 7003
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setRcAbortCalibrationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7154
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7156
    :goto_0
    return-object v1

    .line 7155
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetRcAbortCalibrationBehavior(JI)I

    move-result v0

    .line 7156
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setRcBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7106
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7108
    :goto_0
    return-object v1

    .line 7107
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetRcBehavior(JI)I

    move-result v0

    .line 7108
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setRcCalibrationStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7226
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7228
    :goto_0
    return-object v1

    .line 7227
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetRcCalibrationStateBehavior(JI)I

    move-result v0

    .line 7228
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setRcChannelActionItemBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7250
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7252
    :goto_0
    return-object v1

    .line 7251
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetRcChannelActionItemBehavior(JI)I

    move-result v0

    .line 7252
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setRcChannelValueBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7214
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7216
    :goto_0
    return-object v1

    .line 7215
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetRcChannelValueBehavior(JI)I

    move-result v0

    .line 7216
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setRcChannelsMonitorStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7202
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7204
    :goto_0
    return-object v1

    .line 7203
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetRcChannelsMonitorStateBehavior(JI)I

    move-result v0

    .line 7204
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setRcEnableReceiverBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7178
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7180
    :goto_0
    return-object v1

    .line 7179
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetRcEnableReceiverBehavior(JI)I

    move-result v0

    .line 7180
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setRcInvertChannelBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7142
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7144
    :goto_0
    return-object v1

    .line 7143
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetRcInvertChannelBehavior(JI)I

    move-result v0

    .line 7144
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setRcMonitorChannelsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7118
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7120
    :goto_0
    return-object v1

    .line 7119
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetRcMonitorChannelsBehavior(JI)I

    move-result v0

    .line 7120
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setRcReceiverQualityBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7238
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7240
    :goto_0
    return-object v1

    .line 7239
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetRcReceiverQualityBehavior(JI)I

    move-result v0

    .line 7240
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setRcReceiverStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7190
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7192
    :goto_0
    return-object v1

    .line 7191
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetRcReceiverStateBehavior(JI)I

    move-result v0

    .line 7192
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setRcResetCalibrationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7166
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7168
    :goto_0
    return-object v1

    .line 7167
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetRcResetCalibrationBehavior(JI)I

    move-result v0

    .line 7168
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setRcStartCalibrationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7130
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7132
    :goto_0
    return-object v1

    .line 7131
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetRcStartCalibrationBehavior(JI)I

    move-result v0

    .line 7132
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAccessPointSettingsAccessPointChannelBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7775
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7777
    :goto_0
    return-object v1

    .line 7776
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAccessPointSettingsAccessPointChannelBehavior(JI)I

    move-result v0

    .line 7777
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAccessPointSettingsAccessPointSSIDBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7763
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7765
    :goto_0
    return-object v1

    .line 7764
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAccessPointSettingsAccessPointSSIDBehavior(JI)I

    move-result v0

    .line 7765
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAccessPointSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7751
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7753
    :goto_0
    return-object v1

    .line 7752
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAccessPointSettingsBehavior(JI)I

    move-result v0

    .line 7753
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAccessPointSettingsStateAccessPointChannelChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7825
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7827
    :goto_0
    return-object v1

    .line 7826
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAccessPointSettingsStateAccessPointChannelChangedBehavior(JI)I

    move-result v0

    .line 7827
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAccessPointSettingsStateAccessPointSSIDChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7813
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7815
    :goto_0
    return-object v1

    .line 7814
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAccessPointSettingsStateAccessPointSSIDChangedBehavior(JI)I

    move-result v0

    .line 7815
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAccessPointSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7801
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7803
    :goto_0
    return-object v1

    .line 7802
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAccessPointSettingsStateBehavior(JI)I

    move-result v0

    .line 7803
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAccessPointSettingsStateWifiSelectionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7837
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7839
    :goto_0
    return-object v1

    .line 7838
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAccessPointSettingsStateWifiSelectionChangedBehavior(JI)I

    move-result v0

    .line 7839
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAccessPointSettingsWifiSelectionBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7787
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7789
    :goto_0
    return-object v1

    .line 7788
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAccessPointSettingsWifiSelectionBehavior(JI)I

    move-result v0

    .line 7789
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisFiltersBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8189
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8191
    :goto_0
    return-object v1

    .line 8190
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisFiltersBehavior(JI)I

    move-result v0

    .line 8191
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisFiltersDefaultAxisFiltersBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8237
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8239
    :goto_0
    return-object v1

    .line 8238
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisFiltersDefaultAxisFiltersBehavior(JI)I

    move-result v0

    .line 8239
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisFiltersGetCurrentAxisFiltersBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8201
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8203
    :goto_0
    return-object v1

    .line 8202
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisFiltersGetCurrentAxisFiltersBehavior(JI)I

    move-result v0

    .line 8203
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisFiltersGetPresetAxisFiltersBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8213
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8215
    :goto_0
    return-object v1

    .line 8214
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisFiltersGetPresetAxisFiltersBehavior(JI)I

    move-result v0

    .line 8215
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisFiltersSetAxisFilterBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8225
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8227
    :goto_0
    return-object v1

    .line 8226
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisFiltersSetAxisFilterBehavior(JI)I

    move-result v0

    .line 8227
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisFiltersStateAllCurrentFiltersSentBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8275
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8277
    :goto_0
    return-object v1

    .line 8276
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisFiltersStateAllCurrentFiltersSentBehavior(JI)I

    move-result v0

    .line 8277
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisFiltersStateAllPresetFiltersSentBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8299
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8301
    :goto_0
    return-object v1

    .line 8300
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisFiltersStateAllPresetFiltersSentBehavior(JI)I

    move-result v0

    .line 8301
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisFiltersStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8251
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8253
    :goto_0
    return-object v1

    .line 8252
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisFiltersStateBehavior(JI)I

    move-result v0

    .line 8253
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisFiltersStateCurrentAxisFiltersBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8263
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8265
    :goto_0
    return-object v1

    .line 8264
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisFiltersStateCurrentAxisFiltersBehavior(JI)I

    move-result v0

    .line 8265
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisFiltersStatePresetAxisFiltersBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8287
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8289
    :goto_0
    return-object v1

    .line 8288
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisFiltersStatePresetAxisFiltersBehavior(JI)I

    move-result v0

    .line 8289
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisMappingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8065
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8067
    :goto_0
    return-object v1

    .line 8066
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisMappingsBehavior(JI)I

    move-result v0

    .line 8067
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisMappingsDefaultAxisMappingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8113
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8115
    :goto_0
    return-object v1

    .line 8114
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisMappingsDefaultAxisMappingBehavior(JI)I

    move-result v0

    .line 8115
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisMappingsGetAvailableAxisMappingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8089
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8091
    :goto_0
    return-object v1

    .line 8090
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisMappingsGetAvailableAxisMappingsBehavior(JI)I

    move-result v0

    .line 8091
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisMappingsGetCurrentAxisMappingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8077
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8079
    :goto_0
    return-object v1

    .line 8078
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisMappingsGetCurrentAxisMappingsBehavior(JI)I

    move-result v0

    .line 8079
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisMappingsSetAxisMappingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8101
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8103
    :goto_0
    return-object v1

    .line 8102
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisMappingsSetAxisMappingBehavior(JI)I

    move-result v0

    .line 8103
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisMappingsStateAllAvailableAxisMappingsSentBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8175
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8177
    :goto_0
    return-object v1

    .line 8176
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisMappingsStateAllAvailableAxisMappingsSentBehavior(JI)I

    move-result v0

    .line 8177
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisMappingsStateAllCurrentAxisMappingsSentBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8151
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8153
    :goto_0
    return-object v1

    .line 8152
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisMappingsStateAllCurrentAxisMappingsSentBehavior(JI)I

    move-result v0

    .line 8153
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisMappingsStateAvailableAxisMappingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8163
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8165
    :goto_0
    return-object v1

    .line 8164
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisMappingsStateAvailableAxisMappingsBehavior(JI)I

    move-result v0

    .line 8165
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisMappingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8127
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8129
    :goto_0
    return-object v1

    .line 8128
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisMappingsStateBehavior(JI)I

    move-result v0

    .line 8129
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerAxisMappingsStateCurrentAxisMappingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8139
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8141
    :goto_0
    return-object v1

    .line 8140
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerAxisMappingsStateCurrentAxisMappingsBehavior(JI)I

    move-result v0

    .line 8141
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7264
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7266
    :goto_0
    return-object v1

    .line 7265
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerBehavior(JI)I

    move-result v0

    .line 7266
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerButtonEventsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8429
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8431
    :goto_0
    return-object v1

    .line 8430
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerButtonEventsBehavior(JI)I

    move-result v0

    .line 8431
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerButtonEventsSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8441
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8443
    :goto_0
    return-object v1

    .line 8442
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerButtonEventsSettingsBehavior(JI)I

    move-result v0

    .line 8443
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerButtonMappingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7941
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7943
    :goto_0
    return-object v1

    .line 7942
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerButtonMappingsBehavior(JI)I

    move-result v0

    .line 7943
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerButtonMappingsDefaultButtonMappingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7989
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7991
    :goto_0
    return-object v1

    .line 7990
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerButtonMappingsDefaultButtonMappingBehavior(JI)I

    move-result v0

    .line 7991
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerButtonMappingsGetAvailableButtonMappingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7965
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7967
    :goto_0
    return-object v1

    .line 7966
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerButtonMappingsGetAvailableButtonMappingsBehavior(JI)I

    move-result v0

    .line 7967
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerButtonMappingsGetCurrentButtonMappingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7953
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7955
    :goto_0
    return-object v1

    .line 7954
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerButtonMappingsGetCurrentButtonMappingsBehavior(JI)I

    move-result v0

    .line 7955
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerButtonMappingsSetButtonMappingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7977
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7979
    :goto_0
    return-object v1

    .line 7978
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerButtonMappingsSetButtonMappingBehavior(JI)I

    move-result v0

    .line 7979
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerButtonMappingsStateAllAvailableButtonsMappingsSentBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8051
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8053
    :goto_0
    return-object v1

    .line 8052
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerButtonMappingsStateAllAvailableButtonsMappingsSentBehavior(JI)I

    move-result v0

    .line 8053
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerButtonMappingsStateAllCurrentButtonMappingsSentBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8027
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8029
    :goto_0
    return-object v1

    .line 8028
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerButtonMappingsStateAllCurrentButtonMappingsSentBehavior(JI)I

    move-result v0

    .line 8029
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerButtonMappingsStateAvailableButtonMappingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8039
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8041
    :goto_0
    return-object v1

    .line 8040
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerButtonMappingsStateAvailableButtonMappingsBehavior(JI)I

    move-result v0

    .line 8041
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerButtonMappingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8003
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8005
    :goto_0
    return-object v1

    .line 8004
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerButtonMappingsStateBehavior(JI)I

    move-result v0

    .line 8005
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerButtonMappingsStateCurrentButtonMappingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8015
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8017
    :goto_0
    return-object v1

    .line 8016
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerButtonMappingsStateCurrentButtonMappingsBehavior(JI)I

    move-result v0

    .line 8017
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerCalibrationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8365
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8367
    :goto_0
    return-object v1

    .line 8366
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerCalibrationBehavior(JI)I

    move-result v0

    .line 8367
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerCalibrationEnableMagnetoCalibrationQualityUpdatesBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8377
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8379
    :goto_0
    return-object v1

    .line 8378
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerCalibrationEnableMagnetoCalibrationQualityUpdatesBehavior(JI)I

    move-result v0

    .line 8379
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerCalibrationStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8391
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8393
    :goto_0
    return-object v1

    .line 8392
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerCalibrationStateBehavior(JI)I

    move-result v0

    .line 8393
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerCalibrationStateMagnetoCalibrationQualityUpdatesStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8415
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8417
    :goto_0
    return-object v1

    .line 8416
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerCalibrationStateMagnetoCalibrationQualityUpdatesStateBehavior(JI)I

    move-result v0

    .line 8417
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerCalibrationStateMagnetoCalibrationStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8403
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8405
    :goto_0
    return-object v1

    .line 8404
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerCalibrationStateMagnetoCalibrationStateBehavior(JI)I

    move-result v0

    .line 8405
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerCameraBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7851
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7853
    :goto_0
    return-object v1

    .line 7852
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerCameraBehavior(JI)I

    move-result v0

    .line 7853
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerCameraResetOrientationBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7863
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7865
    :goto_0
    return-object v1

    .line 7864
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerCameraResetOrientationBehavior(JI)I

    move-result v0

    .line 7865
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerCoPilotingBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8313
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8315
    :goto_0
    return-object v1

    .line 8314
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerCoPilotingBehavior(JI)I

    move-result v0

    .line 8315
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerCoPilotingSetPilotingSourceBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8325
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8327
    :goto_0
    return-object v1

    .line 8326
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerCoPilotingSetPilotingSourceBehavior(JI)I

    move-result v0

    .line 8327
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerCoPilotingStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8339
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8341
    :goto_0
    return-object v1

    .line 8340
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerCoPilotingStateBehavior(JI)I

    move-result v0

    .line 8341
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerCoPilotingStatePilotingSourceBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8351
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8353
    :goto_0
    return-object v1

    .line 8352
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerCoPilotingStatePilotingSourceBehavior(JI)I

    move-result v0

    .line 8353
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerCommonAllStatesBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7637
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7639
    :goto_0
    return-object v1

    .line 7638
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerCommonAllStatesBehavior(JI)I

    move-result v0

    .line 7639
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerCommonBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7625
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7627
    :goto_0
    return-object v1

    .line 7626
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerCommonBehavior(JI)I

    move-result v0

    .line 7627
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerCommonStateAllStatesChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7663
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7665
    :goto_0
    return-object v1

    .line 7664
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerCommonStateAllStatesChangedBehavior(JI)I

    move-result v0

    .line 7665
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerCommonStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7651
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7653
    :goto_0
    return-object v1

    .line 7652
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerCommonStateBehavior(JI)I

    move-result v0

    .line 7653
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerDeviceBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7425
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7427
    :goto_0
    return-object v1

    .line 7426
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerDeviceBehavior(JI)I

    move-result v0

    .line 7427
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerDeviceConnectToDeviceBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7461
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7463
    :goto_0
    return-object v1

    .line 7462
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerDeviceConnectToDeviceBehavior(JI)I

    move-result v0

    .line 7463
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerDeviceRequestCurrentDeviceBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7449
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7451
    :goto_0
    return-object v1

    .line 7450
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerDeviceRequestCurrentDeviceBehavior(JI)I

    move-result v0

    .line 7451
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerDeviceRequestDeviceListBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7437
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7439
    :goto_0
    return-object v1

    .line 7438
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerDeviceRequestDeviceListBehavior(JI)I

    move-result v0

    .line 7439
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerDeviceStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7475
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7477
    :goto_0
    return-object v1

    .line 7476
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerDeviceStateBehavior(JI)I

    move-result v0

    .line 7477
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerDeviceStateConnexionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7499
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7501
    :goto_0
    return-object v1

    .line 7500
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerDeviceStateConnexionChangedBehavior(JI)I

    move-result v0

    .line 7501
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerDeviceStateDeviceListBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7487
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7489
    :goto_0
    return-object v1

    .line 7488
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerDeviceStateDeviceListBehavior(JI)I

    move-result v0

    .line 7489
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerFactoryBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8455
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8457
    :goto_0
    return-object v1

    .line 8456
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerFactoryBehavior(JI)I

    move-result v0

    .line 8457
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerFactoryResetBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8467
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8469
    :goto_0
    return-object v1

    .line 8468
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerFactoryResetBehavior(JI)I

    move-result v0

    .line 8469
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerGamepadInfosBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7877
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7879
    :goto_0
    return-object v1

    .line 7878
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerGamepadInfosBehavior(JI)I

    move-result v0

    .line 7879
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerGamepadInfosGetGamepadControlsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7889
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7891
    :goto_0
    return-object v1

    .line 7890
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerGamepadInfosGetGamepadControlsBehavior(JI)I

    move-result v0

    .line 7891
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerGamepadInfosStateAllGamepadControlsSentBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7927
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7929
    :goto_0
    return-object v1

    .line 7928
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerGamepadInfosStateAllGamepadControlsSentBehavior(JI)I

    move-result v0

    .line 7929
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerGamepadInfosStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7903
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7905
    :goto_0
    return-object v1

    .line 7904
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerGamepadInfosStateBehavior(JI)I

    move-result v0

    .line 7905
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerGamepadInfosStateGamepadControlBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7915
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7917
    :goto_0
    return-object v1

    .line 7916
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerGamepadInfosStateGamepadControlBehavior(JI)I

    move-result v0

    .line 7917
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerSettingsAllSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7525
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7527
    :goto_0
    return-object v1

    .line 7526
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerSettingsAllSettingsBehavior(JI)I

    move-result v0

    .line 7527
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerSettingsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7513
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7515
    :goto_0
    return-object v1

    .line 7514
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerSettingsBehavior(JI)I

    move-result v0

    .line 7515
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerSettingsResetBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7537
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7539
    :goto_0
    return-object v1

    .line 7538
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerSettingsResetBehavior(JI)I

    move-result v0

    .line 7539
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerSettingsStateAllSettingsChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7563
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7565
    :goto_0
    return-object v1

    .line 7564
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerSettingsStateAllSettingsChangedBehavior(JI)I

    move-result v0

    .line 7565
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerSettingsStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7551
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7553
    :goto_0
    return-object v1

    .line 7552
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerSettingsStateBehavior(JI)I

    move-result v0

    .line 7553
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerSettingsStateProductSerialChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7587
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7589
    :goto_0
    return-object v1

    .line 7588
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerSettingsStateProductSerialChangedBehavior(JI)I

    move-result v0

    .line 7589
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerSettingsStateProductVariantChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7599
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7601
    :goto_0
    return-object v1

    .line 7600
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerSettingsStateProductVariantChangedBehavior(JI)I

    move-result v0

    .line 7601
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerSettingsStateProductVersionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7611
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7613
    :goto_0
    return-object v1

    .line 7612
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerSettingsStateProductVersionChangedBehavior(JI)I

    move-result v0

    .line 7613
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerSettingsStateResetChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7575
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7577
    :goto_0
    return-object v1

    .line 7576
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerSettingsStateResetChangedBehavior(JI)I

    move-result v0

    .line 7577
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerSkyControllerStateAttitudeChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7737
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7739
    :goto_0
    return-object v1

    .line 7738
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerSkyControllerStateAttitudeChangedBehavior(JI)I

    move-result v0

    .line 7739
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerSkyControllerStateBatteryChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7689
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7691
    :goto_0
    return-object v1

    .line 7690
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerSkyControllerStateBatteryChangedBehavior(JI)I

    move-result v0

    .line 7691
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerSkyControllerStateBatteryStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7725
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7727
    :goto_0
    return-object v1

    .line 7726
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerSkyControllerStateBatteryStateBehavior(JI)I

    move-result v0

    .line 7727
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerSkyControllerStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7677
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7679
    :goto_0
    return-object v1

    .line 7678
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerSkyControllerStateBehavior(JI)I

    move-result v0

    .line 7679
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerSkyControllerStateGpsFixChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7701
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7703
    :goto_0
    return-object v1

    .line 7702
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerSkyControllerStateGpsFixChangedBehavior(JI)I

    move-result v0

    .line 7703
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerSkyControllerStateGpsPositionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7713
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7715
    :goto_0
    return-object v1

    .line 7714
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerSkyControllerStateGpsPositionChangedBehavior(JI)I

    move-result v0

    .line 7715
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerWifiBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7351
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7353
    :goto_0
    return-object v1

    .line 7352
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerWifiBehavior(JI)I

    move-result v0

    .line 7353
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerWifiConnectToWifiBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7387
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7389
    :goto_0
    return-object v1

    .line 7388
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerWifiConnectToWifiBehavior(JI)I

    move-result v0

    .line 7389
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerWifiForgetWifiBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7399
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7401
    :goto_0
    return-object v1

    .line 7400
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerWifiForgetWifiBehavior(JI)I

    move-result v0

    .line 7401
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerWifiRequestCurrentWifiBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7375
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7377
    :goto_0
    return-object v1

    .line 7376
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerWifiRequestCurrentWifiBehavior(JI)I

    move-result v0

    .line 7377
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerWifiRequestWifiListBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7363
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7365
    :goto_0
    return-object v1

    .line 7364
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerWifiRequestWifiListBehavior(JI)I

    move-result v0

    .line 7365
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerWifiStateAllWifiAuthChannelChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7325
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7327
    :goto_0
    return-object v1

    .line 7326
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerWifiStateAllWifiAuthChannelChangedBehavior(JI)I

    move-result v0

    .line 7327
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerWifiStateBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7277
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7279
    :goto_0
    return-object v1

    .line 7278
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerWifiStateBehavior(JI)I

    move-result v0

    .line 7279
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerWifiStateConnexionChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7301
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7303
    :goto_0
    return-object v1

    .line 7302
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerWifiStateConnexionChangedBehavior(JI)I

    move-result v0

    .line 7303
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerWifiStateWifiAuthChannelListChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7313
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7315
    :goto_0
    return-object v1

    .line 7314
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerWifiStateWifiAuthChannelListChangedBehavior(JI)I

    move-result v0

    .line 7315
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerWifiStateWifiListBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7289
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7291
    :goto_0
    return-object v1

    .line 7290
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerWifiStateWifiListBehavior(JI)I

    move-result v0

    .line 7291
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerWifiStateWifiSignalChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7337
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7339
    :goto_0
    return-object v1

    .line 7338
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerWifiStateWifiSignalChangedBehavior(JI)I

    move-result v0

    .line 7339
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setSkyControllerWifiWifiAuthChannelBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 7411
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 7413
    :goto_0
    return-object v1

    .line 7412
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetSkyControllerWifiWifiAuthChannelBehavior(JI)I

    move-result v0

    .line 7413
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setWifiApChannelChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8590
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8592
    :goto_0
    return-object v1

    .line 8591
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetWifiApChannelChangedBehavior(JI)I

    move-result v0

    .line 8592
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setWifiAuthorizedChannelBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8578
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8580
    :goto_0
    return-object v1

    .line 8579
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetWifiAuthorizedChannelBehavior(JI)I

    move-result v0

    .line 8580
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setWifiBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8482
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8484
    :goto_0
    return-object v1

    .line 8483
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetWifiBehavior(JI)I

    move-result v0

    .line 8484
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setWifiCountryChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8614
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8616
    :goto_0
    return-object v1

    .line 8615
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetWifiCountryChangedBehavior(JI)I

    move-result v0

    .line 8616
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setWifiEnvironmentChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8626
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8628
    :goto_0
    return-object v1

    .line 8627
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetWifiEnvironmentChangedBehavior(JI)I

    move-result v0

    .line 8628
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setWifiRssiChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8638
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8640
    :goto_0
    return-object v1

    .line 8639
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetWifiRssiChangedBehavior(JI)I

    move-result v0

    .line 8640
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setWifiScanBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8494
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8496
    :goto_0
    return-object v1

    .line 8495
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetWifiScanBehavior(JI)I

    move-result v0

    .line 8496
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setWifiScannedItemBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8566
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8568
    :goto_0
    return-object v1

    .line 8567
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetWifiScannedItemBehavior(JI)I

    move-result v0

    .line 8568
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setWifiSecurityChangedBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8602
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8604
    :goto_0
    return-object v1

    .line 8603
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetWifiSecurityChangedBehavior(JI)I

    move-result v0

    .line 8604
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setWifiSetApChannelBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8518
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8520
    :goto_0
    return-object v1

    .line 8519
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetWifiSetApChannelBehavior(JI)I

    move-result v0

    .line 8520
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setWifiSetCountryBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8542
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8544
    :goto_0
    return-object v1

    .line 8543
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetWifiSetCountryBehavior(JI)I

    move-result v0

    .line 8544
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setWifiSetEnvironmentBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8554
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8556
    :goto_0
    return-object v1

    .line 8555
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetWifiSetEnvironmentBehavior(JI)I

    move-result v0

    .line 8556
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setWifiSetSecurityBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8530
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8532
    :goto_0
    return-object v1

    .line 8531
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetWifiSetSecurityBehavior(JI)I

    move-result v0

    .line 8532
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setWifiSupportedCountriesBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8650
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8652
    :goto_0
    return-object v1

    .line 8651
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetWifiSupportedCountriesBehavior(JI)I

    move-result v0

    .line 8652
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method

.method public setWifiUpdateAuthorizedChannelsBehavior(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;
    .locals 4
    .param p1, "behavior"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    .prologue
    .line 8506
    iget-boolean v1, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->valid:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->ARCOMMANDS_FILTER_ERROR_BAD_FILTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    .line 8508
    :goto_0
    return-object v1

    .line 8507
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->cFilter:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->getValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->nativeSetWifiUpdateAuthorizedChannelsBehavior(JI)I

    move-result v0

    .line 8508
    .local v0, "cErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_ERROR_ENUM;

    move-result-object v1

    goto :goto_0
.end method
