.class public Lcom/parrot/freeflight/core/model/DelosModel;
.super Lcom/parrot/freeflight/core/model/Model;
.source "DelosModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/model/DelosModel$WingXPlaneGear;,
        Lcom/parrot/freeflight/core/model/DelosModel$WingXFlyingMode;,
        Lcom/parrot/freeflight/core/model/DelosModel$FlipDirection;,
        Lcom/parrot/freeflight/core/model/DelosModel$DroneAnimation;,
        Lcom/parrot/freeflight/core/model/DelosModel$AnimationState;,
        Lcom/parrot/freeflight/core/model/DelosModel$ProductModel;,
        Lcom/parrot/freeflight/core/model/DelosModel$Accessory;,
        Lcom/parrot/freeflight/core/model/DelosModel$PhotoCaptureError;,
        Lcom/parrot/freeflight/core/model/DelosModel$PhotoCaptureEvent;,
        Lcom/parrot/freeflight/core/model/DelosModel$PhotoCaptureState;,
        Lcom/parrot/freeflight/core/model/DelosModel$FlyingState;,
        Lcom/parrot/freeflight/core/model/DelosModel$Type;
    }
.end annotation


# static fields
.field public static final ACCESSORY_NONE:I = 0x0

.field public static final ACCESSORY_UNKNOWN:I = -0x1

.field public static final BACKSWAP:I = 0x5

.field public static final BARREL_ROLL_180_LEFT:I = 0x4

.field public static final BARREL_ROLL_180_RIGHT:I = 0x3

.field public static final BLAZE:I = 0x4

.field public static final BLINK:I = 0x0

.field private static final CACHE_TAG:Ljava/lang/String; = "FFMini.Model.Cache"

.field public static final CLASSIC_WHEELS:I = 0x5

.field public static final DELOS:I = 0x0

.field public static final DELOS_3:I = 0x2

.field public static final DELOS_EVO:I = 0x1

.field public static final EMERGENCY:I = 0x6

.field public static final FLIP_BACK:I = 0x1

.field public static final FLIP_FRONT:I = 0x0

.field public static final FLIP_LEFT:I = 0x2

.field public static final FLIP_NO:I = 0x4

.field public static final FLIP_RIGHT:I = 0x3

.field public static final FLYING:I = 0x4

.field public static final GEAR_1:I = 0x0

.field public static final GEAR_2:I = 0x1

.field public static final GEAR_3:I = 0x2

.field public static final GEAR_UNKNOWN:I = 0x3

.field public static final HOVERING:I = 0x2

.field public static final HULL:I = 0x1

.field public static final HYDROFOIL:I = 0x2

.field private static final HYDROFOIL_NO_GAZ_MIN_VERSION:Lcom/parrot/freeflight/util/Version;

.field public static final INIT:I = 0x7

.field private static final KEY_ACCESSORY_STATE:Ljava/lang/String; = "accessory_state"

.field private static final KEY_BANKED_TURN_STATE:Ljava/lang/String; = "banked_turn_state"

.field private static final KEY_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final KEY_CUTOUT_STATE:Ljava/lang/String; = "cut_out"

.field private static final KEY_EMPTY:Ljava/lang/String; = "empty"

.field private static final KEY_MAX_ALTITUDE_STATE:Ljava/lang/String; = "max_altitude_state"

.field private static final KEY_MAX_HYDROFOIL_POOL_SIZE_STATE:Ljava/lang/String; = "max_hydrofoil_pool_size_state"

.field private static final KEY_MAX_HYDROFOIL_SPEED_STATE:Ljava/lang/String; = "max_hydrofoil_speed_state_state"

.field private static final KEY_MAX_ROTATION_SPEED_STATE:Ljava/lang/String; = "max_rotation_speed_state"

.field private static final KEY_MAX_TILT_STATE:Ljava/lang/String; = "max_tilt_state"

.field private static final KEY_MAX_VERTICAL_SPEED_STATE:Ljava/lang/String; = "max_vertical_speed_state"

.field private static final KEY_MODEL:Ljava/lang/String; = "model"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_PHOTO_COUNT:Ljava/lang/String; = "photo_count"

.field private static final KEY_PRODUCT:Ljava/lang/String; = "product"

.field private static final KEY_USB_CLAW_ACCESSORIES:Ljava/lang/String; = "usb_claw_accessories"

.field private static final KEY_USB_GUN_ACCESSORIES:Ljava/lang/String; = "usb_gun_accessories"

.field private static final KEY_USB_LIGHT_ACCESSORIES:Ljava/lang/String; = "usb_light_accessories"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final KEY_WINGX_HAS_ANIMATIONS:Ljava/lang/String; = "wingx_has_animations"

.field public static final LANDED:I = 0x0

.field public static final LANDING:I = 0x5

.field public static final LOOPING:I = 0x2

.field public static final MARS:I = 0x1

.field public static final MCLANE:I = 0x3

.field public static final MODEL_UNKNOWN:I = -0x1

.field public static final MODE_UNKNOWN:I = 0x3

.field public static final NEWZ:I = 0x6

.field public static final NOT_AVAILABLE:I = 0x2

.field public static final ORAK:I = 0x5

.field public static final OSCILLATION:I = 0x1

.field public static final PHOTO_CAPTURE_BUSY:I = 0x1

.field public static final PHOTO_CAPTURE_ERROR_BUSY:I = 0x0

.field public static final PHOTO_CAPTURE_ERROR_LOW_BATTERY:I = 0x3

.field public static final PHOTO_CAPTURE_ERROR_MEMORY_FULL:I = 0x2

.field public static final PHOTO_CAPTURE_ERROR_NOT_AVAILABLE:I = 0x1

.field public static final PHOTO_CAPTURE_ERROR_OK:I = 0x4

.field public static final PHOTO_CAPTURE_ERROR_UNKNOWN:I = -0x1

.field public static final PHOTO_CAPTURE_EVENT_FAILED:I = 0x1

.field public static final PHOTO_CAPTURE_EVENT_TAKEN:I = 0x0

.field public static final PHOTO_CAPTURE_EVENT_UNKNOWN:I = -0x1

.field public static final PHOTO_CAPTURE_READY:I = 0x0

.field public static final PHOTO_CAPTURE_UNAVAILABLE:I = 0x2

.field public static final PHOTO_CAPTURE_UNKNOWN:I = -0x1

.field public static final PLANE_BACKWARD:I = 0x2

.field public static final PLANE_FORWARD:I = 0x1

.field public static final QUADRICOPTER:I = 0x0

.field public static final ROLLING:I = 0x3

.field public static final STARTED:I = 0x0

.field public static final STD_WHEELS:I = 0x3

.field public static final STOPPED:I = 0x1

.field public static final SWAT:I = 0x2

.field public static final SW_BLACK:I = 0x7

.field public static final SW_WHITE:I = 0x8

.field public static final TAKING_OFF:I = 0x1

.field private static final TEMPORARY_ALERT_DELAY_MS:I = 0x1388

.field public static final TRAVIS:I = 0x0

.field public static final TRUCK_WHEELS:I = 0x4

.field public static final UNCONFIGURED:I = 0x64

.field public static final UNKNOWN:I = -0x1

.field public static final WINGX:I = 0x3

.field private static final WINGX_ANIMATIONS_MIN_VERSION:Lcom/parrot/freeflight/util/Version;

.field private static final WINGX_THROWIT_MIN_VERSION:Lcom/parrot/freeflight/util/Version;


# instance fields
.field private final mARMediaRecordControllerDelegate:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAccessoryInProgress:Z

.field protected final mAccessoryState:Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAutoTakeoffEnable:Z

.field private final mBankedTurnedState:Lcom/parrot/freeflight/util/ToggleState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBatteryChargeState:Lcom/parrot/freeflight/core/model/BatteryChargeState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mBatteryLevel:I

.field private mCharging:Z

.field private final mClawAccessories:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/model/ClawAccessory;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

.field private mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentFlipDirection:I

.field private final mCutOutState:Lcom/parrot/freeflight/util/ToggleState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDroneAnimationStates:Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlatTrimAllowed:Z

.field private mFlyingState:I

.field private final mGazLock:Ljava/lang/Object;

.field private final mGunAccessories:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/model/GunAccessory;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHardwareVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHasHydrofoilGazJoystick:Z

.field private mHasWingXAnimations:Z

.field private mHasWingXThrowIt:Z

.field private mHighProductSerial:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHydrofoilPoolSizeState:Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHydrofoilSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLastGaz:F

.field private mLastPitch:F

.field private mLastRoll:F

.field private mLastYaw:F

.field private mLatestPhotoCaptureError:I

.field private mLatestPhotoCaptureEvent:I

.field private final mLightAccessories:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/model/LightAccessory;",
            ">;"
        }
    .end annotation
.end field

.field private mLightIntensity:I

.field private final mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLowProductSerial:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMassStorageIdKey:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMassStorageName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMassStorageNbPhotosCmdSupported:Z

.field private mMassStoragePath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMaxAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMaxRotationSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMaxTiltState:Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMaxVerticalSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mNewFlyingStateReceived:Z

.field private final mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mOfflineEngine:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPermanentAlert:Lcom/parrot/freeflight/piloting/alert/Alert;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPhotoCountTakenDuringRun:I

.field private mPhotoRecordController:Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPhotoRecordingState:I

.field private mPhotosCount:I

.field private final mPitchLock:Ljava/lang/Object;

.field private final mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mProductModel:I

.field protected mProductName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRequestPicture:Z

.field private final mRollLock:Ljava/lang/Object;

.field private mRollingSpiderPhotoCompat:Z

.field private mRunId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mSoftwareVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mStoreEmpty:Z

.field private final mTemporaryAlert:Lcom/parrot/freeflight/piloting/alert/Alert;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mType:I

.field private mUpdateInternal:Z

.field private mUpdateInternalSettings:Z

.field private mWingXAnimationActive:Z

.field private mWingXFlyingMode:I

.field private mWingXPlaneGear:I

.field private final mYawLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 98
    new-instance v0, Lcom/parrot/freeflight/util/Version;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/util/Version;-><init>([I)V

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel;->HYDROFOIL_NO_GAZ_MIN_VERSION:Lcom/parrot/freeflight/util/Version;

    .line 99
    new-instance v0, Lcom/parrot/freeflight/util/Version;

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/util/Version;-><init>([I)V

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel;->WINGX_ANIMATIONS_MIN_VERSION:Lcom/parrot/freeflight/util/Version;

    .line 100
    new-instance v0, Lcom/parrot/freeflight/util/Version;

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/util/Version;-><init>([I)V

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel;->WINGX_THROWIT_MIN_VERSION:Lcom/parrot/freeflight/util/Version;

    return-void

    .line 98
    :array_0
    .array-data 4
        0x2
        0x1
        0x5
    .end array-data

    .line 99
    :array_1
    .array-data 4
        0x2
        0x6
        0x0
    .end array-data

    .line 100
    :array_2
    .array-data 4
        0x2
        0x6
        0x2
    .end array-data
.end method

.method protected constructor <init>(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/core/connection/ConnectionManager;)V
    .locals 6
    .param p1, "localStorage"    # Lcom/parrot/freeflight/core/model/LocalStorage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "connectionManager"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 178
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/Model;-><init>()V

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHandler:Landroid/os/Handler;

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mRunId:Ljava/lang/String;

    .line 203
    iput-boolean v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mStoreEmpty:Z

    .line 276
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 299
    iput v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mFlyingState:I

    .line 328
    iput v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoRecordingState:I

    .line 345
    iput v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLatestPhotoCaptureEvent:I

    .line 366
    iput v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLatestPhotoCaptureError:I

    .line 381
    new-instance v0, Lcom/parrot/freeflight/core/model/BatteryChargeState;

    invoke-direct {v0}, Lcom/parrot/freeflight/core/model/BatteryChargeState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mBatteryChargeState:Lcom/parrot/freeflight/core/model/BatteryChargeState;

    .line 389
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosPreset;->MAX_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 390
    invoke-static {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->copyOf(Lcom/parrot/freeflight/util/DoubleBoundedState;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 391
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosPreset;->MAX_TILT_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 392
    invoke-static {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->copyOf(Lcom/parrot/freeflight/util/DoubleBoundedState;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxTiltState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 393
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosPreset;->MAX_VERTICAL_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 394
    invoke-static {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->copyOf(Lcom/parrot/freeflight/util/DoubleBoundedState;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxVerticalSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 395
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosPreset;->MAX_ROTATION_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 396
    invoke-static {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->copyOf(Lcom/parrot/freeflight/util/DoubleBoundedState;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxRotationSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 397
    new-instance v0, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-direct {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHydrofoilPoolSizeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 399
    new-instance v0, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-direct {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHydrofoilSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 402
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosPreset;->BANKED_TURN_STATE:Lcom/parrot/freeflight/util/ToggleState;

    .line 403
    invoke-static {v0}, Lcom/parrot/freeflight/util/ToggleState;->copyOf(Lcom/parrot/freeflight/util/ToggleState;)Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mBankedTurnedState:Lcom/parrot/freeflight/util/ToggleState;

    .line 456
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mAccessoryState:Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    .line 464
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLightAccessories:Ljava/util/Map;

    .line 476
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mGunAccessories:Ljava/util/Map;

    .line 488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mClawAccessories:Ljava/util/Map;

    .line 513
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosPreset;->CUT_OUT_STATE:Lcom/parrot/freeflight/util/ToggleState;

    .line 514
    invoke-static {v0}, Lcom/parrot/freeflight/util/ToggleState;->copyOf(Lcom/parrot/freeflight/util/ToggleState;)Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mCutOutState:Lcom/parrot/freeflight/util/ToggleState;

    .line 521
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mAutoTakeoffEnable:Z

    .line 527
    iput-boolean v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mFlatTrimAllowed:Z

    .line 557
    const-string v0, "0.0.0"

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mSoftwareVersion:Ljava/lang/String;

    .line 566
    const-string v0, "HW_00"

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHardwareVersion:Ljava/lang/String;

    .line 602
    iput v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProductModel:I

    .line 702
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mRequestPicture:Z

    .line 751
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDroneAnimationStates:Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;

    .line 824
    iput v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mCurrentFlipDirection:I

    .line 889
    iput v5, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mWingXFlyingMode:I

    .line 919
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mWingXAnimationActive:Z

    .line 939
    iput v5, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mWingXPlaneGear:I

    .line 966
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mRollLock:Ljava/lang/Object;

    .line 967
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mYawLock:Ljava/lang/Object;

    .line 968
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPitchLock:Ljava/lang/Object;

    .line 969
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mGazLock:Ljava/lang/Object;

    .line 1149
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMassStorageNbPhotosCmdSupported:Z

    .line 1150
    iput v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotosCount:I

    .line 1177
    new-instance v0, Lcom/parrot/freeflight/piloting/alert/Alert;

    const v1, 0x104000e

    invoke-direct {v0, v3, v1}, Lcom/parrot/freeflight/piloting/alert/Alert;-><init>(II)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPermanentAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    .line 1180
    new-instance v0, Lcom/parrot/freeflight/piloting/alert/Alert;

    const v1, 0x104000e

    invoke-direct {v0, v3, v1}, Lcom/parrot/freeflight/piloting/alert/Alert;-><init>(II)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mTemporaryAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    .line 1195
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHighProductSerial:Ljava/lang/String;

    .line 1198
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLowProductSerial:Ljava/lang/String;

    .line 1212
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mRollingSpiderPhotoCompat:Z

    .line 1217
    new-instance v0, Lcom/parrot/freeflight/core/model/DelosModel$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/model/DelosModel$1;-><init>(Lcom/parrot/freeflight/core/model/DelosModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    .line 1278
    new-instance v0, Lcom/parrot/freeflight/core/model/DelosModel$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/model/DelosModel$2;-><init>(Lcom/parrot/freeflight/core/model/DelosModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mARMediaRecordControllerDelegate:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;

    .line 1371
    iput-boolean v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mUpdateInternal:Z

    .line 1372
    iput-boolean v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mUpdateInternalSettings:Z

    .line 1375
    new-instance v0, Lcom/parrot/freeflight/core/model/DelosModel$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/model/DelosModel$3;-><init>(Lcom/parrot/freeflight/core/model/DelosModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    .line 180
    iput-object p2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 181
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 195
    iput v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mType:I

    .line 198
    :goto_0
    new-instance v0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;-><init>(Lcom/parrot/freeflight/core/model/DelosModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mOfflineEngine:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    .line 199
    iput-object p3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->registerListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 201
    return-void

    .line 183
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mType:I

    goto :goto_0

    .line 186
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mType:I

    goto :goto_0

    .line 191
    :pswitch_2
    iput v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mType:I

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/core/model/DelosModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mRollingSpiderPhotoCompat:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/parrot/freeflight/core/model/DelosModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mRollingSpiderPhotoCompat:Z

    return p1
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoRecordController:Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;)Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;
    .param p1, "x1"    # Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoRecordController:Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mARMediaRecordControllerDelegate:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/core/model/DelosModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->update()V

    return-void
.end method

.method static synthetic access$1402(Lcom/parrot/freeflight/core/model/DelosModel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoRecordingState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/core/model/DelosModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mRequestPicture:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/parrot/freeflight/core/model/DelosModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mRequestPicture:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/parrot/freeflight/core/model/DelosModel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLatestPhotoCaptureEvent:I

    return p1
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight/core/model/DelosModel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/parrot/freeflight/core/model/DelosModel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLatestPhotoCaptureError:I

    return p1
.end method

.method static synthetic access$1900(Lcom/parrot/freeflight/core/model/DelosModel;II)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/model/DelosModel;->onNewTemporaryAlert(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/parrot/freeflight/core/model/DelosModel;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->onNotificationDictionaryChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/parrot/freeflight/core/model/DelosModel;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->updatePhotoEventState(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/freeflight/piloting/alert/Alert;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mTemporaryAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/model/DelosModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->updateConnectionState()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/core/model/DelosModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mStoreEmpty:Z

    return v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/core/model/DelosModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mStoreEmpty:Z

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/core/model/DelosModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mUpdateInternal:Z

    return v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/core/model/DelosModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mUpdateInternal:Z

    return p1
.end method

.method static synthetic access$602(Lcom/parrot/freeflight/core/model/DelosModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mUpdateInternalSettings:Z

    return p1
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    return-object v0
.end method

.method static synthetic access$702(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;
    .param p1, "x1"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    return-object p1
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;
    .param p1, "x1"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateUsbAccessories(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/freeflight/core/model/DelosOfflineEngine;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mOfflineEngine:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    return-object v0
.end method

.method private checkCommandsActivation()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 698
    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLastPitch:F

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLastRoll:F

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLastYaw:F

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLastGaz:F

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/core/model/DelosModel;->requestCommandsActivationChanged(Z)V

    .line 699
    return-void

    .line 698
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onNewTemporaryAlert(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "message"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mTemporaryAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/piloting/alert/Alert;->setInfo(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2352
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mTemporaryAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/alert/Alert;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2353
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2354
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/core/model/DelosModel$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/model/DelosModel$4;-><init>(Lcom/parrot/freeflight/core/model/DelosModel;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2364
    :cond_0
    return-void
.end method

.method private onNotificationDictionaryChanged(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "dictionary"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1450
    const-string v1, "DeviceControllerAccessoryStateSupportedAccessoriesListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateSupportedAccessory(Landroid/os/Bundle;)Z

    move-result v0

    .line 1451
    .local v0, "updated":Z
    const-string v1, "DeviceControllerAccessoryStateAccessoryConfigChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateConfiguredAccessory(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1452
    iget-boolean v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mUpdateInternal:Z

    if-eqz v1, :cond_3

    .line 1453
    const-string v1, "MiniDroneDeviceControllerPilotingStateFlyingStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateFlyingState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1454
    const-string v1, "DeviceControllerCommonStateBatteryStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateBatteryLevel(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1455
    const-string v1, "DeviceControllerChargerStateChargingInfoNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateBatteryChargerState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1456
    iget-boolean v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mUpdateInternalSettings:Z

    if-eqz v1, :cond_0

    .line 1457
    const-string v1, "MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateMaxAltitudeState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1458
    const-string v1, "MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateMaxTiltState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1459
    const-string v1, "MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateMaxVerticalSpeedState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1460
    const-string v1, "MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateMaxRotationSpeedState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1462
    :cond_0
    const-string v1, "DeviceControllerSettingsStateProductNameChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateProductNameState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1463
    const-string v1, "DeviceControllerAccessoryStateSupportedAccessoriesListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateSupportedAccessory(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1464
    const-string v1, "DeviceControllerAccessoryStateAccessoryConfigChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateConfiguredAccessory(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1465
    const-string v1, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateLightUsbAccessories(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1466
    const-string v1, "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateClawUsbAccessories(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1467
    const-string v1, "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateGunUsbAccessories(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1468
    const-string v1, "MiniDroneDeviceControllerSpeedSettingsStateWheelsChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateWheelsState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1469
    const-string v1, "DeviceControllerSettingsStateProductVersionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateProductVersions(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1470
    const-string v1, "MiniDroneDeviceControllerPilotingStateAutoTakeOffModeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateAutoTakeoffState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1471
    const-string v1, "DeviceControllerCommonStateProductModelNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateProductModel(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1472
    const-string v1, "MiniDroneDeviceControllerPilotingStateFlatTrimChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateFlatTrimAllowed(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1473
    const-string v1, "MiniDroneDeviceControllerSettingsStateCutOutModeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateCutOutState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1474
    const-string v1, "DeviceControllerHeadlightsStateIntensityChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateLightIntensity(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1475
    const-string v1, "DeviceControllerAnimationsStateListNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateAnimationStateList(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1476
    const-string v1, "DeviceControllerCommonStateMassStorageStateListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateMassStorageState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1477
    const-string v1, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateMassStorageStateInfo(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1478
    const-string v1, "DeviceControllerCommonStateDeprecatedMassStorageContentChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateMassStorageContent(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1479
    const-string v1, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedV2Notification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updatePhotoRecordState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1480
    const-string v1, "MiniDroneDeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updatePilotingAlertState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1481
    const-string v1, "DeviceControllerSettingsStateProductSerialHighChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateProductSerialHigh(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1482
    const-string v1, "DeviceControllerSettingsStateProductSerialLowChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateProductSerialLow(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1483
    const-string v1, "DeviceControllerRunStateRunIdChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateRunId(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1484
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->isWingX()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1485
    const-string v1, "MiniDroneDeviceControllerPilotingStateFlyingModeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateWingXFlyingMode(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1486
    const-string v1, "MiniDroneDeviceControllerPilotingStatePlaneGearBoxChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateWingXPlaneGear(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1488
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->isMambo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1489
    const-string v1, "MiniDroneDeviceControllerPilotingSettingsStateBankedTurnChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateBankedTurnState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1492
    :cond_2
    if-eqz v0, :cond_3

    .line 1493
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->notifyListener()V

    .line 1496
    :cond_3
    return-void
.end method

.method private update()V
    .locals 2

    .prologue
    .line 1410
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v1, :cond_0

    .line 1411
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v0

    .line 1412
    .local v0, "notificationDictionary":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v1, "MiniDroneDeviceControllerPilotingSettingsStateBankedTurnChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateBankedTurnState(Landroid/os/Bundle;)Z

    .line 1413
    const-string v1, "MiniDroneDeviceControllerPilotingStateFlyingStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateFlyingState(Landroid/os/Bundle;)Z

    .line 1414
    const-string v1, "DeviceControllerCommonStateBatteryStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateBatteryLevel(Landroid/os/Bundle;)Z

    .line 1415
    const-string v1, "DeviceControllerChargerStateChargingInfoNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateBatteryChargerState(Landroid/os/Bundle;)Z

    .line 1416
    const-string v1, "MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateMaxAltitudeState(Landroid/os/Bundle;)Z

    .line 1417
    const-string v1, "MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateMaxTiltState(Landroid/os/Bundle;)Z

    .line 1418
    const-string v1, "MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateMaxVerticalSpeedState(Landroid/os/Bundle;)Z

    .line 1419
    const-string v1, "MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateMaxRotationSpeedState(Landroid/os/Bundle;)Z

    .line 1420
    const-string v1, "DeviceControllerSettingsStateProductNameChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateProductNameState(Landroid/os/Bundle;)Z

    .line 1421
    const-string v1, "DeviceControllerAccessoryStateSupportedAccessoriesListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateSupportedAccessory(Landroid/os/Bundle;)Z

    .line 1422
    const-string v1, "DeviceControllerAccessoryStateAccessoryConfigChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateConfiguredAccessory(Landroid/os/Bundle;)Z

    .line 1423
    const-string v1, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateLightUsbAccessories(Landroid/os/Bundle;)Z

    .line 1424
    const-string v1, "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateClawUsbAccessories(Landroid/os/Bundle;)Z

    .line 1425
    const-string v1, "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateGunUsbAccessories(Landroid/os/Bundle;)Z

    .line 1426
    const-string v1, "MiniDroneDeviceControllerSpeedSettingsStateWheelsChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateWheelsState(Landroid/os/Bundle;)Z

    .line 1427
    const-string v1, "DeviceControllerSettingsStateProductVersionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateProductVersions(Landroid/os/Bundle;)Z

    .line 1428
    const-string v1, "MiniDroneDeviceControllerPilotingStateAutoTakeOffModeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateAutoTakeoffState(Landroid/os/Bundle;)Z

    .line 1429
    const-string v1, "DeviceControllerCommonStateProductModelNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateProductModel(Landroid/os/Bundle;)Z

    .line 1430
    const-string v1, "MiniDroneDeviceControllerPilotingStateFlatTrimChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateFlatTrimAllowed(Landroid/os/Bundle;)Z

    .line 1431
    const-string v1, "MiniDroneDeviceControllerSettingsStateCutOutModeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateCutOutState(Landroid/os/Bundle;)Z

    .line 1432
    const-string v1, "DeviceControllerHeadlightsStateIntensityChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateLightIntensity(Landroid/os/Bundle;)Z

    .line 1433
    const-string v1, "DeviceControllerAnimationsStateListNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateAnimationStateList(Landroid/os/Bundle;)Z

    .line 1434
    const-string v1, "DeviceControllerCommonStateMassStorageStateListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateMassStorageState(Landroid/os/Bundle;)Z

    .line 1435
    const-string v1, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateMassStorageStateInfo(Landroid/os/Bundle;)Z

    .line 1436
    const-string v1, "DeviceControllerCommonStateDeprecatedMassStorageContentChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateMassStorageContent(Landroid/os/Bundle;)Z

    .line 1437
    const-string v1, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedV2Notification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updatePhotoRecordState(Landroid/os/Bundle;)Z

    .line 1438
    const-string v1, "MiniDroneDeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updatePilotingAlertState(Landroid/os/Bundle;)Z

    .line 1439
    const-string v1, "DeviceControllerSettingsStateProductSerialHighChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateProductSerialHigh(Landroid/os/Bundle;)Z

    .line 1440
    const-string v1, "DeviceControllerSettingsStateProductSerialLowChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateProductSerialLow(Landroid/os/Bundle;)Z

    .line 1441
    const-string v1, "DeviceControllerRunStateRunIdChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateRunId(Landroid/os/Bundle;)Z

    .line 1442
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->isWingX()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1443
    const-string v1, "MiniDroneDeviceControllerPilotingStateFlyingModeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateWingXFlyingMode(Landroid/os/Bundle;)Z

    .line 1444
    const-string v1, "MiniDroneDeviceControllerPilotingStatePlaneGearBoxChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateWingXPlaneGear(Landroid/os/Bundle;)Z

    .line 1447
    .end local v0    # "notificationDictionary":Lcom/parrot/controller/devicecontrollers/ARBundle;
    :cond_0
    return-void
.end method

.method private updateAnimationStateList(Landroid/os/Bundle;)Z
    .locals 11
    .param p1, "animationStatesBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    .line 2157
    const/4 v4, 0x0

    .line 2158
    .local v4, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 2159
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;

    move-result-object v2

    .line 2161
    .local v2, "animationsNameArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;
    iget-object v6, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDroneAnimationStates:Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;->clear()V

    .line 2162
    array-length v8, v2

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v0, v2, v6

    .line 2163
    .local v0, "animationName":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2164
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 2165
    .local v3, "bundle":Landroid/os/Bundle;
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM;->eARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM;

    .line 2166
    .local v5, "state":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM;
    if-eqz v3, :cond_0

    .line 2167
    const-string v9, "DeviceControllerAnimationsStateListNotificationStateKey"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM;

    move-result-object v5

    .line 2171
    :cond_0
    sget-object v9, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM:[I

    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 2179
    const/4 v1, 0x2

    .line 2182
    .local v1, "animationState":I
    :goto_1
    sget-object v9, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM:[I

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    .line 2162
    .end local v1    # "animationState":I
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "state":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM;
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2173
    .restart local v3    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "state":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM;
    :pswitch_0
    const/4 v1, 0x0

    .line 2174
    .restart local v1    # "animationState":I
    goto :goto_1

    .line 2176
    .end local v1    # "animationState":I
    :pswitch_1
    const/4 v1, 0x1

    .line 2177
    .restart local v1    # "animationState":I
    goto :goto_1

    .line 2184
    :pswitch_2
    iget-object v9, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDroneAnimationStates:Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;

    invoke-virtual {v9, v7, v1}, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;->update(II)Z

    move-result v9

    or-int/2addr v4, v9

    .line 2185
    goto :goto_2

    .line 2187
    :pswitch_3
    iget-object v9, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDroneAnimationStates:Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v1}, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;->update(II)Z

    move-result v9

    or-int/2addr v4, v9

    .line 2188
    goto :goto_2

    .line 2190
    :pswitch_4
    iget-object v9, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDroneAnimationStates:Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v1}, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;->update(II)Z

    move-result v9

    or-int/2addr v4, v9

    .line 2191
    goto :goto_2

    .line 2193
    :pswitch_5
    iget-object v9, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDroneAnimationStates:Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;

    const/4 v10, 0x4

    invoke-virtual {v9, v10, v1}, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;->update(II)Z

    move-result v9

    or-int/2addr v4, v9

    .line 2194
    goto :goto_2

    .line 2196
    :pswitch_6
    iget-object v9, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDroneAnimationStates:Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;

    const/4 v10, 0x3

    invoke-virtual {v9, v10, v1}, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;->update(II)Z

    move-result v9

    or-int/2addr v4, v9

    .line 2197
    goto :goto_2

    .line 2199
    :pswitch_7
    iget-object v9, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDroneAnimationStates:Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;

    const/4 v10, 0x5

    invoke-virtual {v9, v10, v1}, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;->update(II)Z

    move-result v9

    or-int/2addr v4, v9

    goto :goto_2

    .line 2205
    .end local v0    # "animationName":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;
    .end local v1    # "animationState":I
    .end local v2    # "animationsNameArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "state":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM;
    :cond_2
    return v4

    .line 2171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2182
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private updateAutoTakeoffState(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "autoTakeoffBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2056
    const/4 v1, 0x0

    .line 2057
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2058
    const-string v2, "MiniDroneDeviceControllerPilotingStateAutoTakeOffModeChangedNotificationStateKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 2059
    .local v0, "checked":Z
    :goto_0
    iget-boolean v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mAutoTakeoffEnable:Z

    if-eq v2, v0, :cond_0

    .line 2060
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mAutoTakeoffEnable:Z

    .line 2061
    const/4 v1, 0x1

    .line 2064
    .end local v0    # "checked":Z
    :cond_0
    return v1

    .line 2058
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBankedTurnState(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "bankedTurnBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 2122
    const/4 v1, 0x0

    .line 2123
    .local v1, "shouldUpdate":Z
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->isMambo()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 2125
    const-string v2, "MiniDroneDeviceControllerPilotingSettingsStateBankedTurnChangedNotificationStateKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    if-ne v2, v0, :cond_1

    .line 2126
    .local v0, "bankedTurnEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mBankedTurnedState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/util/ToggleState;->updateToggleState(Z)Z

    move-result v1

    .line 2128
    .end local v0    # "bankedTurnEnabled":Z
    :cond_0
    return v1

    .line 2125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBatteryChargerState(Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "batteryChargerStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 1601
    const/4 v9, 0x0

    .line 1602
    .local v9, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 1603
    const-string v10, "DeviceControllerChargerStateChargingInfoNotificationPhaseKey"

    invoke-virtual {p1, v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1604
    .local v7, "phase":I
    const-string v10, "DeviceControllerChargerStateChargingInfoNotificationRateKey"

    invoke-virtual {p1, v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1605
    .local v8, "rate":I
    const-string v10, "DeviceControllerChargerStateChargingInfoNotificationIntensityKey"

    invoke-virtual {p1, v10, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    .line 1606
    .local v6, "intensity":I
    const-string v10, "DeviceControllerChargerStateChargingInfoNotificationFullChargingTimeKey"

    invoke-virtual {p1, v10, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    .line 1608
    .local v5, "fullChargingTime":I
    sget-object v10, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CONSTANT_CURRENT_1:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    invoke-virtual {v10}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->getValue()I

    move-result v10

    if-lt v7, v10, :cond_0

    sget-object v10, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CHARGED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    .line 1609
    invoke-virtual {v10}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->getValue()I

    move-result v10

    if-gt v7, v10, :cond_0

    const/4 v2, 0x1

    .line 1611
    .local v2, "charging":Z
    :cond_0
    iget-boolean v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mCharging:Z

    if-eq v2, v10, :cond_1

    .line 1612
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mCharging:Z

    .line 1613
    const/4 v9, 0x1

    .line 1617
    :cond_1
    invoke-static {v7}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    move-result-object v3

    .line 1618
    .local v3, "enumPhaseValue":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;
    sget-object v10, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM:[I

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 1636
    const/4 v0, 0x0

    .line 1640
    .local v0, "batteryPhase":I
    :goto_0
    invoke-static {v8}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;

    move-result-object v4

    .line 1642
    .local v4, "enumRateValue":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;
    sget-object v10, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM:[I

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    .line 1654
    const/4 v1, 0x0

    .line 1657
    .local v1, "batteryRate":I
    :goto_1
    iget-object v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mBatteryChargeState:Lcom/parrot/freeflight/core/model/BatteryChargeState;

    invoke-virtual {v10, v0, v1, v6, v5}, Lcom/parrot/freeflight/core/model/BatteryChargeState;->update(IIII)Z

    move-result v10

    or-int/2addr v9, v10

    .line 1659
    .end local v0    # "batteryPhase":I
    .end local v1    # "batteryRate":I
    .end local v2    # "charging":Z
    .end local v3    # "enumPhaseValue":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;
    .end local v4    # "enumRateValue":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;
    .end local v5    # "fullChargingTime":I
    .end local v6    # "intensity":I
    .end local v7    # "phase":I
    .end local v8    # "rate":I
    :cond_2
    return v9

    .line 1620
    .restart local v2    # "charging":Z
    .restart local v3    # "enumPhaseValue":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;
    .restart local v5    # "fullChargingTime":I
    .restart local v6    # "intensity":I
    .restart local v7    # "phase":I
    .restart local v8    # "rate":I
    :pswitch_0
    const/4 v0, 0x1

    .line 1621
    .restart local v0    # "batteryPhase":I
    goto :goto_0

    .line 1623
    .end local v0    # "batteryPhase":I
    :pswitch_1
    const/4 v0, 0x2

    .line 1624
    .restart local v0    # "batteryPhase":I
    goto :goto_0

    .line 1626
    .end local v0    # "batteryPhase":I
    :pswitch_2
    const/4 v0, 0x3

    .line 1627
    .restart local v0    # "batteryPhase":I
    goto :goto_0

    .line 1629
    .end local v0    # "batteryPhase":I
    :pswitch_3
    const/4 v0, 0x4

    .line 1630
    .restart local v0    # "batteryPhase":I
    goto :goto_0

    .line 1632
    .end local v0    # "batteryPhase":I
    :pswitch_4
    const/4 v0, 0x5

    .line 1633
    .restart local v0    # "batteryPhase":I
    goto :goto_0

    .line 1644
    .restart local v4    # "enumRateValue":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;
    :pswitch_5
    const/4 v1, 0x1

    .line 1645
    .restart local v1    # "batteryRate":I
    goto :goto_1

    .line 1647
    .end local v1    # "batteryRate":I
    :pswitch_6
    const/4 v1, 0x2

    .line 1648
    .restart local v1    # "batteryRate":I
    goto :goto_1

    .line 1650
    .end local v1    # "batteryRate":I
    :pswitch_7
    const/4 v1, 0x3

    .line 1651
    .restart local v1    # "batteryRate":I
    goto :goto_1

    .line 1618
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1642
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private updateBatteryLevel(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "batteryBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1589
    const/4 v1, 0x0

    .line 1590
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1591
    const-string v2, "DeviceControllerCommonStateBatteryStateChangedNotificationPercentKey"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 1592
    .local v0, "batteryLevel":I
    iget v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mBatteryLevel:I

    if-eq v0, v2, :cond_0

    .line 1593
    iput v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mBatteryLevel:I

    .line 1594
    const/4 v1, 0x1

    .line 1597
    .end local v0    # "batteryLevel":I
    :cond_0
    return v1
.end method

.method private updateClawUsbAccessories(Landroid/os/Bundle;)Z
    .locals 11
    .param p1, "clawAccessoriesBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1885
    const/4 v5, 0x0

    .line 1886
    .local v5, "shouldUpdate":Z
    if-eqz p1, :cond_3

    .line 1887
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1888
    .local v1, "accessoryIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mClawAccessories:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1889
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1890
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1891
    .local v0, "accessory":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1892
    const-string v9, "MiniDroneDeviceControllerUsbAccessoryStateClawStateNotificationStateKey"

    sget-object v10, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->eARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;

    .line 1893
    invoke-virtual {v10}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->getValue()I

    move-result v10

    .line 1892
    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1894
    .local v7, "stateValue":I
    invoke-static {v7}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;

    move-result-object v3

    .line 1896
    .local v3, "clawState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;
    sget-object v9, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM:[I

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1914
    const/4 v6, -0x1

    .line 1917
    .local v6, "state":I
    :goto_1
    iget-object v9, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mClawAccessories:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/core/model/ClawAccessory;

    .line 1918
    .local v2, "clawAccessory":Lcom/parrot/freeflight/core/model/ClawAccessory;
    if-nez v2, :cond_1

    .line 1919
    new-instance v2, Lcom/parrot/freeflight/core/model/ClawAccessory;

    .end local v2    # "clawAccessory":Lcom/parrot/freeflight/core/model/ClawAccessory;
    const/4 v9, 0x0

    invoke-static {v4, v9}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v2, v9, v6}, Lcom/parrot/freeflight/core/model/ClawAccessory;-><init>(II)V

    .line 1920
    .restart local v2    # "clawAccessory":Lcom/parrot/freeflight/core/model/ClawAccessory;
    iget-object v9, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mClawAccessories:Ljava/util/Map;

    invoke-interface {v9, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    :goto_2
    iget-object v9, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v2, v9}, Lcom/parrot/freeflight/core/model/ClawAccessory;->setDeviceController(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V

    goto :goto_0

    .line 1898
    .end local v2    # "clawAccessory":Lcom/parrot/freeflight/core/model/ClawAccessory;
    .end local v6    # "state":I
    :pswitch_0
    const/4 v6, 0x1

    .line 1899
    .restart local v6    # "state":I
    goto :goto_1

    .line 1902
    .end local v6    # "state":I
    :pswitch_1
    const/4 v6, 0x0

    .line 1903
    .restart local v6    # "state":I
    goto :goto_1

    .line 1906
    .end local v6    # "state":I
    :pswitch_2
    const/4 v6, 0x2

    .line 1907
    .restart local v6    # "state":I
    goto :goto_1

    .line 1910
    .end local v6    # "state":I
    :pswitch_3
    const/4 v6, 0x3

    .line 1911
    .restart local v6    # "state":I
    goto :goto_1

    .line 1922
    .restart local v2    # "clawAccessory":Lcom/parrot/freeflight/core/model/ClawAccessory;
    :cond_1
    invoke-virtual {v2, v6}, Lcom/parrot/freeflight/core/model/ClawAccessory;->update(I)Z

    goto :goto_2

    .line 1927
    .end local v0    # "accessory":Landroid/os/Bundle;
    .end local v2    # "clawAccessory":Lcom/parrot/freeflight/core/model/ClawAccessory;
    .end local v3    # "clawState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;
    .end local v4    # "id":Ljava/lang/String;
    .end local v6    # "state":I
    .end local v7    # "stateValue":I
    :cond_2
    const/4 v5, 0x1

    .line 1929
    .end local v1    # "accessoryIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    return v5

    .line 1896
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateConfiguredAccessory(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "accessorySetBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1778
    const/4 v4, 0x0

    .line 1779
    .local v4, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 1780
    const-string v7, "DeviceControllerAccessoryStateAccessoryConfigChangedNotificationNewAccessoryKey"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1781
    .local v1, "accessorySetValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;

    move-result-object v0

    .line 1783
    .local v0, "accessorySet":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;
    const/4 v3, 0x0

    .line 1784
    .local v3, "inProgress":Z
    sget-object v7, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM:[I

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1812
    :goto_0
    const/4 v2, -0x1

    .line 1815
    .local v2, "configuredAccessory":I
    :goto_1
    if-nez v3, :cond_3

    .line 1816
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/core/model/DelosModel;->updateConfiguredAccessory(I)Z

    move-result v4

    .line 1817
    iget-boolean v7, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mAccessoryInProgress:Z

    if-eqz v7, :cond_0

    .line 1818
    iput-boolean v6, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mAccessoryInProgress:Z

    .line 1819
    iget-object v7, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mOfflineEngine:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->save()V

    .line 1820
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->update()V

    .line 1821
    iget-object v7, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mOfflineEngine:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->restore()V

    .line 1823
    const-string v7, "FFMini.Model.Cache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cache restored after in progress = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mUpdateInternal:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->notifyListener()V

    .line 1827
    :cond_0
    iput-boolean v5, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mUpdateInternal:Z

    .line 1828
    const/16 v7, 0x64

    if-eq v2, v7, :cond_2

    :goto_2
    iput-boolean v5, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mUpdateInternalSettings:Z

    .line 1835
    .end local v0    # "accessorySet":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;
    .end local v1    # "accessorySetValue":I
    .end local v2    # "configuredAccessory":I
    .end local v3    # "inProgress":Z
    :cond_1
    :goto_3
    return v4

    .line 1786
    .restart local v0    # "accessorySet":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;
    .restart local v1    # "accessorySetValue":I
    .restart local v3    # "inProgress":Z
    :pswitch_0
    const/4 v2, 0x1

    .line 1787
    .restart local v2    # "configuredAccessory":I
    goto :goto_1

    .line 1790
    .end local v2    # "configuredAccessory":I
    :pswitch_1
    const/4 v2, 0x2

    .line 1791
    .restart local v2    # "configuredAccessory":I
    goto :goto_1

    .line 1794
    .end local v2    # "configuredAccessory":I
    :pswitch_2
    const/4 v2, 0x0

    .line 1795
    .restart local v2    # "configuredAccessory":I
    goto :goto_1

    .line 1798
    .end local v2    # "configuredAccessory":I
    :pswitch_3
    const/4 v2, 0x3

    .line 1799
    .restart local v2    # "configuredAccessory":I
    goto :goto_1

    .line 1802
    .end local v2    # "configuredAccessory":I
    :pswitch_4
    const/4 v2, 0x4

    .line 1803
    .restart local v2    # "configuredAccessory":I
    goto :goto_1

    .line 1806
    .end local v2    # "configuredAccessory":I
    :pswitch_5
    const/16 v2, 0x64

    .line 1807
    .restart local v2    # "configuredAccessory":I
    goto :goto_1

    .line 1810
    .end local v2    # "configuredAccessory":I
    :pswitch_6
    const/4 v3, 0x1

    goto :goto_0

    .restart local v2    # "configuredAccessory":I
    :cond_2
    move v5, v6

    .line 1828
    goto :goto_2

    .line 1830
    :cond_3
    iput-boolean v5, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mAccessoryInProgress:Z

    .line 1831
    iput-boolean v6, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mUpdateInternal:Z

    .line 1832
    iput-boolean v6, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mUpdateInternalSettings:Z

    goto :goto_3

    .line 1784
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateConnectionState()V
    .locals 0

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->notifyListener()V

    .line 1395
    return-void
.end method

.method private updateCutOutState(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "cutOutState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2133
    const/4 v1, 0x0

    .line 2134
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2135
    const-string v2, "MiniDroneDeviceControllerSettingsStateCutOutModeChangedNotificationEnableKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 2136
    .local v0, "cutOffState":Z
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mCutOutState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/util/ToggleState;->updateToggleState(Z)Z

    move-result v1

    .line 2138
    .end local v0    # "cutOffState":Z
    :cond_0
    return v1

    .line 2135
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateFlatTrimAllowed(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "flatTrimBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2114
    const/4 v0, 0x0

    .line 2115
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2116
    const/4 v0, 0x1

    .line 2118
    :cond_0
    return v0
.end method

.method private updateFlyingState(Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "flyingStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1514
    const/4 v4, 0x0

    .line 1515
    .local v4, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 1516
    const-string v5, "MiniDroneDeviceControllerPilotingStateFlyingStateChangedNotificationStateKey"

    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->getValue()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1517
    .local v0, "flyStateValue":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    move-result-object v1

    .line 1519
    .local v1, "flyingState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;
    iput-boolean v8, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mNewFlyingStateReceived:Z

    .line 1521
    iget v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mFlyingState:I

    .line 1523
    .local v3, "previousState":I
    sget-object v5, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1557
    const/4 v2, 0x0

    .line 1560
    .local v2, "newState":I
    :goto_0
    if-eq v3, v2, :cond_1

    .line 1561
    packed-switch v2, :pswitch_data_1

    .line 1581
    :cond_0
    :goto_1
    :pswitch_0
    iput v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mFlyingState:I

    .line 1583
    :cond_1
    const/4 v4, 0x1

    .line 1585
    .end local v0    # "flyStateValue":I
    .end local v1    # "flyingState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;
    .end local v2    # "newState":I
    .end local v3    # "previousState":I
    :cond_2
    return v4

    .line 1525
    .restart local v0    # "flyStateValue":I
    .restart local v1    # "flyingState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;
    .restart local v3    # "previousState":I
    :pswitch_1
    const/4 v2, 0x0

    .line 1526
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1529
    .end local v2    # "newState":I
    :pswitch_2
    const/4 v2, 0x1

    .line 1530
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1533
    .end local v2    # "newState":I
    :pswitch_3
    const/4 v2, 0x2

    .line 1534
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1537
    .end local v2    # "newState":I
    :pswitch_4
    const/4 v2, 0x4

    .line 1538
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1541
    .end local v2    # "newState":I
    :pswitch_5
    const/4 v2, 0x3

    .line 1542
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1545
    .end local v2    # "newState":I
    :pswitch_6
    const/4 v2, 0x5

    .line 1546
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1549
    .end local v2    # "newState":I
    :pswitch_7
    const/4 v2, 0x6

    .line 1550
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1553
    .end local v2    # "newState":I
    :pswitch_8
    const/4 v2, 0x7

    .line 1554
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1563
    :pswitch_9
    iput v7, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoCountTakenDuringRun:I

    .line 1569
    :pswitch_a
    iget-boolean v5, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mFlatTrimAllowed:Z

    if-eqz v5, :cond_0

    .line 1570
    iput-boolean v7, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mFlatTrimAllowed:Z

    goto :goto_1

    .line 1575
    :pswitch_b
    iget-boolean v5, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mFlatTrimAllowed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mAccessoryState:Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    invoke-virtual {v5}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->getCurrentAccessory()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 1576
    iput-boolean v8, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mFlatTrimAllowed:Z

    goto :goto_1

    .line 1523
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1561
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method private updateGunUsbAccessories(Landroid/os/Bundle;)Z
    .locals 11
    .param p1, "gunAccessoriesBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1933
    const/4 v5, 0x0

    .line 1934
    .local v5, "shouldUpdate":Z
    if-eqz p1, :cond_3

    .line 1935
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1936
    .local v1, "accessoryIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mGunAccessories:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1937
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1938
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1939
    .local v0, "accessory":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1940
    const-string v9, "MiniDroneDeviceControllerUsbAccessoryStateGunStateNotificationStateKey"

    sget-object v10, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;->eARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;

    .line 1941
    invoke-virtual {v10}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;->getValue()I

    move-result v10

    .line 1940
    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1942
    .local v7, "stateValue":I
    invoke-static {v7}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;

    move-result-object v2

    .line 1944
    .local v2, "clawState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;
    sget-object v9, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM:[I

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1954
    const/4 v6, -0x1

    .line 1957
    .local v6, "state":I
    :goto_1
    iget-object v9, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mGunAccessories:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/core/model/GunAccessory;

    .line 1958
    .local v3, "gunAccessory":Lcom/parrot/freeflight/core/model/GunAccessory;
    if-nez v3, :cond_1

    .line 1959
    new-instance v3, Lcom/parrot/freeflight/core/model/GunAccessory;

    .end local v3    # "gunAccessory":Lcom/parrot/freeflight/core/model/GunAccessory;
    const/4 v9, 0x0

    invoke-static {v4, v9}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v3, v9, v6}, Lcom/parrot/freeflight/core/model/GunAccessory;-><init>(II)V

    .line 1960
    .restart local v3    # "gunAccessory":Lcom/parrot/freeflight/core/model/GunAccessory;
    iget-object v9, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mGunAccessories:Ljava/util/Map;

    invoke-interface {v9, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    :goto_2
    iget-object v9, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v3, v9}, Lcom/parrot/freeflight/core/model/GunAccessory;->setDeviceController(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V

    goto :goto_0

    .line 1946
    .end local v3    # "gunAccessory":Lcom/parrot/freeflight/core/model/GunAccessory;
    .end local v6    # "state":I
    :pswitch_0
    const/4 v6, 0x0

    .line 1947
    .restart local v6    # "state":I
    goto :goto_1

    .line 1950
    .end local v6    # "state":I
    :pswitch_1
    const/4 v6, 0x1

    .line 1951
    .restart local v6    # "state":I
    goto :goto_1

    .line 1962
    .restart local v3    # "gunAccessory":Lcom/parrot/freeflight/core/model/GunAccessory;
    :cond_1
    invoke-virtual {v3, v6}, Lcom/parrot/freeflight/core/model/GunAccessory;->update(I)Z

    goto :goto_2

    .line 1967
    .end local v0    # "accessory":Landroid/os/Bundle;
    .end local v2    # "clawState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;
    .end local v3    # "gunAccessory":Lcom/parrot/freeflight/core/model/GunAccessory;
    .end local v4    # "id":Ljava/lang/String;
    .end local v6    # "state":I
    .end local v7    # "stateValue":I
    :cond_2
    const/4 v5, 0x1

    .line 1969
    .end local v1    # "accessoryIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    return v5

    .line 1944
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLightIntensity(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "lightIntensityBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2142
    const/4 v3, 0x0

    .line 2143
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2144
    const-string v4, "DeviceControllerHeadlightsStateIntensityChangedNotificationLeftKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    .line 2145
    .local v1, "leftIntensity":B
    const-string v4, "DeviceControllerHeadlightsStateIntensityChangedNotificationRightKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    .line 2147
    .local v2, "rightIntensity":B
    and-int/lit16 v4, v1, 0xff

    and-int/lit16 v5, v2, 0xff

    add-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 2148
    .local v0, "finalIntensity":I
    iget v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLightIntensity:I

    if-eq v4, v0, :cond_0

    .line 2149
    iput v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLightIntensity:I

    .line 2150
    const/4 v3, 0x1

    .line 2153
    .end local v0    # "finalIntensity":I
    .end local v1    # "leftIntensity":B
    .end local v2    # "rightIntensity":B
    :cond_0
    return v3
.end method

.method private updateLightUsbAccessories(Landroid/os/Bundle;)Z
    .locals 13
    .param p1, "lightAccessoriesBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1839
    const/4 v7, 0x0

    .line 1840
    .local v7, "shouldUpdate":Z
    if-eqz p1, :cond_3

    .line 1841
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1842
    .local v1, "accessoryIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLightAccessories:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1843
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1844
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1845
    .local v0, "accessory":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1846
    const-string v11, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotificationIntensityKey"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    .line 1847
    .local v2, "byteIntensity":I
    and-int/lit16 v4, v2, 0xff

    .line 1848
    .local v4, "intensity":I
    const-string v11, "MiniDroneDeviceControllerUsbAccessoryStateLightStateNotificationStateKey"

    sget-object v12, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;->eARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;

    .line 1849
    invoke-virtual {v12}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;->getValue()I

    move-result v12

    .line 1848
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1850
    .local v9, "stateValue":I
    invoke-static {v9}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;

    move-result-object v6

    .line 1852
    .local v6, "lightState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;
    sget-object v11, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM:[I

    invoke-virtual {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 1866
    const/4 v8, -0x1

    .line 1869
    .local v8, "state":I
    :goto_1
    iget-object v11, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLightAccessories:Ljava/util/Map;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/core/model/LightAccessory;

    .line 1870
    .local v5, "lightAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    if-nez v5, :cond_1

    .line 1871
    new-instance v5, Lcom/parrot/freeflight/core/model/LightAccessory;

    .end local v5    # "lightAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    const/4 v11, 0x0

    invoke-static {v3, v11}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v5, v11, v8, v4}, Lcom/parrot/freeflight/core/model/LightAccessory;-><init>(III)V

    .line 1872
    .restart local v5    # "lightAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    iget-object v11, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLightAccessories:Ljava/util/Map;

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1876
    :goto_2
    iget-object v11, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v5, v11}, Lcom/parrot/freeflight/core/model/LightAccessory;->setDeviceController(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V

    goto :goto_0

    .line 1854
    .end local v5    # "lightAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    .end local v8    # "state":I
    :pswitch_0
    const/4 v8, 0x1

    .line 1855
    .restart local v8    # "state":I
    goto :goto_1

    .line 1858
    .end local v8    # "state":I
    :pswitch_1
    const/4 v8, 0x0

    .line 1859
    .restart local v8    # "state":I
    goto :goto_1

    .line 1862
    .end local v8    # "state":I
    :pswitch_2
    const/4 v8, 0x2

    .line 1863
    .restart local v8    # "state":I
    goto :goto_1

    .line 1874
    .restart local v5    # "lightAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    :cond_1
    invoke-virtual {v5, v8, v4}, Lcom/parrot/freeflight/core/model/LightAccessory;->update(II)Z

    goto :goto_2

    .line 1879
    .end local v0    # "accessory":Landroid/os/Bundle;
    .end local v2    # "byteIntensity":I
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "intensity":I
    .end local v5    # "lightAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    .end local v6    # "lightState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;
    .end local v8    # "state":I
    .end local v9    # "stateValue":I
    :cond_2
    const/4 v7, 0x1

    .line 1881
    .end local v1    # "accessoryIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    return v7

    .line 1852
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateMassStorageContent(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "massStorageContent"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2244
    const/4 v3, 0x0

    .line 2246
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMassStorageIdKey:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 2247
    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMassStorageIdKey:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2248
    .local v0, "massStorageContentForKey":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 2249
    iget-boolean v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMassStorageNbPhotosCmdSupported:Z

    if-nez v4, :cond_0

    .line 2250
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMassStorageNbPhotosCmdSupported:Z

    .line 2252
    :cond_0
    const-string v4, "DeviceControllerCommonStateDeprecatedMassStorageContentChangedNotificationNbPhotosKey"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v1

    .line 2253
    .local v1, "newPhotoCount":S
    iget v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotosCount:I

    sub-int v2, v1, v4

    .line 2254
    .local v2, "photoCountDifference":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->isOnTheGround()Z

    move-result v4

    if-nez v4, :cond_1

    if-lez v2, :cond_1

    .line 2256
    iget v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoCountTakenDuringRun:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoCountTakenDuringRun:I

    .line 2258
    :cond_1
    iput v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotosCount:I

    .line 2259
    const/4 v3, 0x1

    .line 2262
    .end local v0    # "massStorageContentForKey":Landroid/os/Bundle;
    .end local v1    # "newPhotoCount":S
    .end local v2    # "photoCountDifference":I
    :cond_2
    return v3
.end method

.method private updateMassStorageState(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "massStorageState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2209
    const/4 v3, 0x0

    .line 2211
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2212
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2214
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2215
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2216
    .local v1, "massStorageIdKey":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 2218
    .local v2, "massStorageStateForKey":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 2219
    iput-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMassStorageIdKey:Ljava/lang/String;

    .line 2220
    const-string v4, "DeviceControllerCommonStateMassStorageStateListChangedNotificationNameKey"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMassStorageName:Ljava/lang/String;

    .line 2221
    const/4 v3, 0x1

    .line 2225
    .end local v0    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "massStorageIdKey":Ljava/lang/String;
    .end local v2    # "massStorageStateForKey":Landroid/os/Bundle;
    :cond_0
    return v3
.end method

.method private updateMassStorageStateInfo(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "massStorageInfoState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2229
    const/4 v2, 0x0

    .line 2231
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMassStorageIdKey:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2232
    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMassStorageIdKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 2234
    .local v1, "massStorageInfoForKey":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 2235
    const-string v3, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationMassStorageIdKey"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 2236
    .local v0, "idKey":I
    const-string v3, "%s_%03d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMassStorageName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMassStoragePath:Ljava/lang/String;

    .line 2237
    const/4 v2, 0x1

    .line 2240
    .end local v0    # "idKey":I
    .end local v1    # "massStorageInfoForKey":Landroid/os/Bundle;
    :cond_0
    return v2
.end method

.method private updateMaxAltitudeState(Landroid/os/Bundle;)Z
    .locals 11
    .param p1, "maxAltitudeStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1672
    const/4 v10, 0x0

    .line 1673
    .local v10, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1674
    const-string v1, "MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 1675
    .local v9, "minValue":F
    const-string v1, "MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    .line 1676
    .local v8, "maxValue":F
    const-string v1, "MiniDroneDeviceControllerPilotingSettingsStateMaxAltitudeChangedNotificationCurrentKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 1677
    .local v0, "currentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v8

    float-to-double v6, v9

    invoke-virtual/range {v1 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateState(DDD)Z

    move-result v10

    .line 1679
    .end local v0    # "currentValue":F
    .end local v8    # "maxValue":F
    .end local v9    # "minValue":F
    :cond_0
    return v10
.end method

.method private updateMaxRotationSpeedState(Landroid/os/Bundle;)Z
    .locals 13
    .param p1, "maxRotationSpeedBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1710
    const/4 v12, 0x0

    .line 1711
    .local v12, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 1712
    const-string v1, "MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    .line 1713
    .local v11, "minValue":F
    const-string v1, "MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 1714
    .local v10, "maxValue":F
    const-string v1, "MiniDroneDeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotificationCurrentKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 1715
    .local v0, "currentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxRotationSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v10

    float-to-double v6, v11

    invoke-virtual/range {v1 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateState(DDD)Z

    move-result v9

    .line 1716
    .local v9, "maxRotationUpdated":Z
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHydrofoilPoolSizeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v10

    float-to-double v6, v11

    invoke-virtual/range {v1 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateState(DDD)Z

    move-result v8

    .line 1717
    .local v8, "hydrofoilPoolSizeUpdated":Z
    if-nez v9, :cond_0

    if-eqz v8, :cond_2

    :cond_0
    const/4 v12, 0x1

    .line 1719
    .end local v0    # "currentValue":F
    .end local v8    # "hydrofoilPoolSizeUpdated":Z
    .end local v9    # "maxRotationUpdated":Z
    .end local v10    # "maxValue":F
    .end local v11    # "minValue":F
    :cond_1
    :goto_0
    return v12

    .line 1717
    .restart local v0    # "currentValue":F
    .restart local v8    # "hydrofoilPoolSizeUpdated":Z
    .restart local v9    # "maxRotationUpdated":Z
    .restart local v10    # "maxValue":F
    .restart local v11    # "minValue":F
    :cond_2
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private updateMaxTiltState(Landroid/os/Bundle;)Z
    .locals 11
    .param p1, "maxTiltStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1683
    const/4 v10, 0x0

    .line 1684
    .local v10, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1685
    const-string v1, "MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 1686
    .local v9, "minValue":F
    const-string v1, "MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    .line 1687
    .local v8, "maxValue":F
    const-string v1, "MiniDroneDeviceControllerPilotingSettingsStateMaxTiltChangedNotificationCurrentKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 1688
    .local v0, "currentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxTiltState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v8

    float-to-double v6, v9

    invoke-virtual/range {v1 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateState(DDD)Z

    move-result v10

    .line 1690
    .end local v0    # "currentValue":F
    .end local v8    # "maxValue":F
    .end local v9    # "minValue":F
    :cond_0
    return v10
.end method

.method private updateMaxVerticalSpeedState(Landroid/os/Bundle;)Z
    .locals 13
    .param p1, "maxVerticalSpeedBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1694
    const/4 v12, 0x0

    .line 1695
    .local v12, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 1696
    const-string v1, "MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    .line 1697
    .local v11, "minValue":F
    const-string v1, "MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 1698
    .local v9, "maxValue":F
    const-string v1, "MiniDroneDeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotificationCurrentKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 1699
    .local v0, "currentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxVerticalSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v9

    float-to-double v6, v11

    invoke-virtual/range {v1 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateState(DDD)Z

    move-result v10

    .line 1700
    .local v10, "maxVerticalSpeedUpdated":Z
    const/4 v8, 0x0

    .line 1701
    .local v8, "hydrofoilSpeedUpdated":Z
    iget-boolean v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHasHydrofoilGazJoystick:Z

    if-nez v1, :cond_0

    .line 1702
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHydrofoilSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v9

    float-to-double v6, v11

    invoke-virtual/range {v1 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateState(DDD)Z

    move-result v8

    .line 1704
    :cond_0
    if-nez v8, :cond_1

    if-eqz v10, :cond_3

    :cond_1
    const/4 v12, 0x1

    .line 1706
    .end local v0    # "currentValue":F
    .end local v8    # "hydrofoilSpeedUpdated":Z
    .end local v9    # "maxValue":F
    .end local v10    # "maxVerticalSpeedUpdated":Z
    .end local v11    # "minValue":F
    :cond_2
    :goto_0
    return v12

    .line 1704
    .restart local v0    # "currentValue":F
    .restart local v8    # "hydrofoilSpeedUpdated":Z
    .restart local v9    # "maxValue":F
    .restart local v10    # "maxVerticalSpeedUpdated":Z
    .restart local v11    # "minValue":F
    :cond_3
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private updatePhotoEventState(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "photoEventBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v8, 0x7f080113

    const/16 v7, 0x10

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2297
    if-eqz p1, :cond_1

    .line 2298
    const-string v2, "MiniDroneDeviceControllerMediaRecordEventPictureEventChangedNotificationEventKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->eARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;

    .line 2299
    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->getValue()I

    move-result v3

    .line 2298
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2300
    .local v1, "eventValue":I
    const-string v2, "MiniDroneDeviceControllerMediaRecordEventPictureEventChangedNotificationErrorKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->eARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;

    .line 2301
    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->getValue()I

    move-result v3

    .line 2300
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2302
    .local v0, "errorValue":I
    sget-object v2, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM:[I

    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2318
    :cond_0
    :goto_0
    sget-object v2, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM:[I

    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 2348
    .end local v0    # "errorValue":I
    .end local v1    # "eventValue":I
    :cond_1
    :goto_1
    return-void

    .line 2304
    .restart local v0    # "errorValue":I
    .restart local v1    # "eventValue":I
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLatestPhotoCaptureEvent:I

    .line 2305
    invoke-static {p0}, Lcom/parrot/freeflight/media/MediaCountCompat;->incrementPhotosCount(Lcom/parrot/freeflight/core/model/Model;)V

    .line 2306
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->isOnTheGround()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2307
    invoke-static {p0}, Lcom/parrot/freeflight/media/MediaCountCompat;->incrementPhotosCountTakenDuringRun(Lcom/parrot/freeflight/core/model/Model;)V

    goto :goto_0

    .line 2312
    :pswitch_1
    iput v6, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLatestPhotoCaptureEvent:I

    goto :goto_0

    .line 2320
    :pswitch_2
    iput v5, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLatestPhotoCaptureError:I

    goto :goto_1

    .line 2324
    :pswitch_3
    const/4 v2, 0x3

    iput v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLatestPhotoCaptureError:I

    .line 2325
    invoke-direct {p0, v7, v8}, Lcom/parrot/freeflight/core/model/DelosModel;->onNewTemporaryAlert(II)V

    goto :goto_1

    .line 2329
    :pswitch_4
    const/4 v2, 0x2

    iput v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLatestPhotoCaptureError:I

    .line 2330
    const/16 v2, 0xf

    const v3, 0x7f08032f

    invoke-direct {p0, v2, v3}, Lcom/parrot/freeflight/core/model/DelosModel;->onNewTemporaryAlert(II)V

    goto :goto_1

    .line 2334
    :pswitch_5
    iput v6, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLatestPhotoCaptureError:I

    .line 2335
    invoke-direct {p0, v7, v8}, Lcom/parrot/freeflight/core/model/DelosModel;->onNewTemporaryAlert(II)V

    goto :goto_1

    .line 2339
    :pswitch_6
    iput v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLatestPhotoCaptureError:I

    goto :goto_1

    .line 2343
    :pswitch_7
    const/4 v2, 0x4

    iput v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLatestPhotoCaptureError:I

    .line 2344
    const v2, 0x104000e

    invoke-direct {p0, v4, v2}, Lcom/parrot/freeflight/core/model/DelosModel;->onNewTemporaryAlert(II)V

    goto :goto_1

    .line 2302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2318
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private updatePhotoRecordState(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "photoRecordBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x2

    .line 2266
    const/4 v2, 0x0

    .line 2267
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2268
    const-string v3, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedV2NotificationStateKey"

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->eARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;

    .line 2269
    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->getValue()I

    move-result v4

    .line 2268
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2270
    .local v1, "recordingPictureStateValue":I
    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoRecordingState:I

    .line 2271
    .local v0, "previousState":I
    sget-object v3, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM:[I

    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2285
    const-string v3, "FFMini.Model"

    const-string v4, "recording picture State not known"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    iput v5, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoRecordingState:I

    .line 2289
    :goto_0
    iget v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoRecordingState:I

    if-eq v0, v3, :cond_0

    .line 2290
    const/4 v2, 0x1

    .line 2293
    .end local v0    # "previousState":I
    .end local v1    # "recordingPictureStateValue":I
    :cond_0
    return v2

    .line 2273
    .restart local v0    # "previousState":I
    .restart local v1    # "recordingPictureStateValue":I
    :pswitch_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoRecordingState:I

    goto :goto_0

    .line 2277
    :pswitch_1
    const/4 v3, 0x1

    iput v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoRecordingState:I

    goto :goto_0

    .line 2281
    :pswitch_2
    iput v5, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoRecordingState:I

    goto :goto_0

    .line 2271
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updatePilotingAlertState(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "pilotingStateAlert"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2425
    if-eqz p1, :cond_0

    .line 2426
    const-string v3, "MiniDroneDeviceControllerPilotingStateAlertStateChangedNotificationStateKey"

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->getValue()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2431
    .local v0, "alertState":I
    sget-object v3, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2450
    const/4 v2, -0x1

    .line 2451
    .local v2, "type":I
    const v1, 0x104000e

    .line 2455
    .local v1, "message":I
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPermanentAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-virtual {v3, v2, v1}, Lcom/parrot/freeflight/piloting/alert/Alert;->setInfo(II)Z

    move-result v3

    .line 2457
    .end local v0    # "alertState":I
    .end local v1    # "message":I
    .end local v2    # "type":I
    :goto_1
    return v3

    .line 2433
    .restart local v0    # "alertState":I
    :pswitch_0
    const/4 v2, 0x0

    .line 2434
    .restart local v2    # "type":I
    const v1, 0x7f080043

    .line 2435
    .restart local v1    # "message":I
    goto :goto_0

    .line 2437
    .end local v1    # "message":I
    .end local v2    # "type":I
    :pswitch_1
    const/4 v2, 0x1

    .line 2438
    .restart local v2    # "type":I
    const v1, 0x7f080044

    .line 2439
    .restart local v1    # "message":I
    goto :goto_0

    .line 2441
    .end local v1    # "message":I
    .end local v2    # "type":I
    :pswitch_2
    const/4 v2, 0x2

    .line 2442
    .restart local v2    # "type":I
    const v1, 0x7f080045

    .line 2443
    .restart local v1    # "message":I
    goto :goto_0

    .line 2445
    .end local v1    # "message":I
    .end local v2    # "type":I
    :pswitch_3
    const/4 v2, 0x3

    .line 2446
    .restart local v2    # "type":I
    const v1, 0x7f080046

    .line 2447
    .restart local v1    # "message":I
    goto :goto_0

    .line 2457
    .end local v0    # "alertState":I
    .end local v1    # "message":I
    .end local v2    # "type":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 2431
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateProductModel(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "modelBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2068
    const/4 v3, 0x0

    .line 2069
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2070
    const-string v4, "DeviceControllerCommonStateProductModelNotificationModelKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2071
    .local v1, "deviceModelVal":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    move-result-object v0

    .line 2073
    .local v0, "currentModel":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;
    sget-object v4, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM:[I

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2102
    const/4 v2, -0x1

    .line 2105
    .local v2, "newModel":I
    :goto_0
    iget v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProductModel:I

    if-eq v4, v2, :cond_0

    .line 2106
    iput v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProductModel:I

    .line 2107
    const/4 v3, 0x1

    .line 2110
    .end local v0    # "currentModel":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;
    .end local v1    # "deviceModelVal":I
    .end local v2    # "newModel":I
    :cond_0
    return v3

    .line 2075
    .restart local v0    # "currentModel":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;
    .restart local v1    # "deviceModelVal":I
    :pswitch_0
    const/4 v2, 0x0

    .line 2076
    .restart local v2    # "newModel":I
    goto :goto_0

    .line 2078
    .end local v2    # "newModel":I
    :pswitch_1
    const/4 v2, 0x1

    .line 2079
    .restart local v2    # "newModel":I
    goto :goto_0

    .line 2081
    .end local v2    # "newModel":I
    :pswitch_2
    const/4 v2, 0x2

    .line 2082
    .restart local v2    # "newModel":I
    goto :goto_0

    .line 2084
    .end local v2    # "newModel":I
    :pswitch_3
    const/4 v2, 0x3

    .line 2085
    .restart local v2    # "newModel":I
    goto :goto_0

    .line 2087
    .end local v2    # "newModel":I
    :pswitch_4
    const/4 v2, 0x4

    .line 2088
    .restart local v2    # "newModel":I
    goto :goto_0

    .line 2090
    .end local v2    # "newModel":I
    :pswitch_5
    const/4 v2, 0x5

    .line 2091
    .restart local v2    # "newModel":I
    goto :goto_0

    .line 2093
    .end local v2    # "newModel":I
    :pswitch_6
    const/4 v2, 0x6

    .line 2094
    .restart local v2    # "newModel":I
    goto :goto_0

    .line 2096
    .end local v2    # "newModel":I
    :pswitch_7
    const/4 v2, 0x7

    .line 2097
    .restart local v2    # "newModel":I
    goto :goto_0

    .line 2099
    .end local v2    # "newModel":I
    :pswitch_8
    const/16 v2, 0x8

    .line 2100
    .restart local v2    # "newModel":I
    goto :goto_0

    .line 2073
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private updateProductNameState(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "productNameBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1723
    const/4 v1, 0x0

    .line 1724
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1725
    const-string v2, "DeviceControllerSettingsStateProductNameChangedNotificationNameKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1726
    .local v0, "productName":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1727
    const/4 v1, 0x1

    .line 1728
    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProductName:Ljava/lang/String;

    .line 1731
    .end local v0    # "productName":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private updateProductSerialHigh(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "productSerialHighBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2461
    const/4 v1, 0x0

    .line 2462
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2463
    const-string v2, "DeviceControllerSettingsStateProductSerialHighChangedNotificationHighKey"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2464
    .local v0, "newSerial":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHighProductSerial:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2465
    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHighProductSerial:Ljava/lang/String;

    .line 2466
    const/4 v1, 0x1

    .line 2467
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLowProductSerial:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHighProductSerial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLowProductSerial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/freeflight/util/dataCollect/DataCollection;->registerSerial(Ljava/lang/String;)Z

    .line 2472
    .end local v0    # "newSerial":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private updateProductSerialLow(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "productSerialLowBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2476
    const/4 v1, 0x0

    .line 2477
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2478
    const-string v2, "DeviceControllerSettingsStateProductSerialLowChangedNotificationLowKey"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2479
    .local v0, "newSerial":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLowProductSerial:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2480
    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLowProductSerial:Ljava/lang/String;

    .line 2481
    const/4 v1, 0x1

    .line 2482
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHighProductSerial:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHighProductSerial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLowProductSerial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/freeflight/util/dataCollect/DataCollection;->registerSerial(Ljava/lang/String;)Z

    .line 2487
    .end local v0    # "newSerial":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private updateProductVersions(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "productVersionBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2035
    const/4 v3, 0x0

    .line 2036
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 2037
    const-string v4, "DeviceControllerSettingsStateProductVersionChangedNotificationSoftwareKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2038
    .local v1, "productSoftwareVersion":Ljava/lang/String;
    const-string v4, "DeviceControllerSettingsStateProductVersionChangedNotificationHardwareKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2039
    .local v0, "productHardwareVersion":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2040
    const/4 v3, 0x1

    .line 2041
    iput-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mSoftwareVersion:Ljava/lang/String;

    .line 2042
    new-instance v2, Lcom/parrot/freeflight/util/Version;

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mSoftwareVersion:Ljava/lang/String;

    invoke-direct {v2, v4}, Lcom/parrot/freeflight/util/Version;-><init>(Ljava/lang/String;)V

    .line 2043
    .local v2, "productVersion":Lcom/parrot/freeflight/util/Version;
    sget-object v4, Lcom/parrot/freeflight/core/model/DelosModel;->HYDROFOIL_NO_GAZ_MIN_VERSION:Lcom/parrot/freeflight/util/Version;

    invoke-virtual {v2, v4}, Lcom/parrot/freeflight/util/Version;->compareTo(Lcom/parrot/freeflight/util/Version;)I

    move-result v4

    if-ltz v4, :cond_2

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHasHydrofoilGazJoystick:Z

    .line 2044
    sget-object v4, Lcom/parrot/freeflight/core/model/DelosModel;->WINGX_ANIMATIONS_MIN_VERSION:Lcom/parrot/freeflight/util/Version;

    invoke-virtual {v2, v4}, Lcom/parrot/freeflight/util/Version;->compareTo(Lcom/parrot/freeflight/util/Version;)I

    move-result v4

    if-ltz v4, :cond_3

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHasWingXAnimations:Z

    .line 2045
    sget-object v4, Lcom/parrot/freeflight/core/model/DelosModel;->WINGX_THROWIT_MIN_VERSION:Lcom/parrot/freeflight/util/Version;

    invoke-virtual {v2, v4}, Lcom/parrot/freeflight/util/Version;->compareTo(Lcom/parrot/freeflight/util/Version;)I

    move-result v4

    if-ltz v4, :cond_4

    :goto_2
    iput-boolean v5, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHasWingXThrowIt:Z

    .line 2047
    .end local v2    # "productVersion":Lcom/parrot/freeflight/util/Version;
    :cond_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHardwareVersion:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2048
    const/4 v3, 0x1

    .line 2049
    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHardwareVersion:Ljava/lang/String;

    .line 2052
    .end local v0    # "productHardwareVersion":Ljava/lang/String;
    .end local v1    # "productSoftwareVersion":Ljava/lang/String;
    :cond_1
    return v3

    .restart local v0    # "productHardwareVersion":Ljava/lang/String;
    .restart local v1    # "productSoftwareVersion":Ljava/lang/String;
    .restart local v2    # "productVersion":Lcom/parrot/freeflight/util/Version;
    :cond_2
    move v4, v6

    .line 2043
    goto :goto_0

    :cond_3
    move v4, v6

    .line 2044
    goto :goto_1

    :cond_4
    move v5, v6

    .line 2045
    goto :goto_2
.end method

.method private updateRunId(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "runIdBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1505
    const/4 v0, 0x0

    .line 1506
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1507
    const-string v1, "DeviceControllerRunStateRunIdChangedNotificationRunIdKey"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mRunId:Ljava/lang/String;

    .line 1508
    const/4 v0, 0x1

    .line 1510
    :cond_0
    return v0
.end method

.method private updateSupportedAccessory(Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "supportedAccessoriesBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1735
    const/4 v5, 0x0

    .line 1736
    .local v5, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 1737
    const/4 v6, -0x1

    .line 1738
    .local v6, "supportedAccessory":I
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1739
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1740
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1741
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1742
    .local v1, "accessoryBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1743
    const-string v7, "DeviceControllerAccessoryStateSupportedAccessoriesListChangedNotificationAccessoryKey"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1744
    .local v0, "accessory":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;

    move-result-object v2

    .line 1745
    .local v2, "accessoryEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;
    sget-object v7, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM:[I

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1767
    const/4 v6, -0x1

    .line 1772
    .end local v0    # "accessory":I
    .end local v1    # "accessoryBundle":Landroid/os/Bundle;
    .end local v2    # "accessoryEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mAccessoryState:Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    invoke-virtual {v7, v6}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->updateSupportedAccessory(I)Z

    move-result v5

    .line 1774
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "supportedAccessory":I
    :cond_1
    return v5

    .line 1747
    .restart local v0    # "accessory":I
    .restart local v1    # "accessoryBundle":Landroid/os/Bundle;
    .restart local v2    # "accessoryEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v6    # "supportedAccessory":I
    :pswitch_0
    const/4 v6, 0x1

    .line 1748
    goto :goto_0

    .line 1751
    :pswitch_1
    const/4 v6, 0x2

    .line 1752
    goto :goto_0

    .line 1755
    :pswitch_2
    const/4 v6, 0x0

    .line 1756
    goto :goto_0

    .line 1759
    :pswitch_3
    const/4 v6, 0x3

    .line 1760
    goto :goto_0

    .line 1763
    :pswitch_4
    const/4 v6, 0x4

    .line 1764
    goto :goto_0

    .line 1745
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateUsbAccessories(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V
    .locals 5
    .param p1, "newDeviceController"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1398
    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLightAccessories:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/core/model/LightAccessory;

    .line 1399
    .local v2, "lightAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/core/model/LightAccessory;->setDeviceController(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V

    goto :goto_0

    .line 1401
    .end local v2    # "lightAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mClawAccessories:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/model/ClawAccessory;

    .line 1402
    .local v0, "clawAccessory":Lcom/parrot/freeflight/core/model/ClawAccessory;
    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/ClawAccessory;->setDeviceController(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V

    goto :goto_1

    .line 1404
    .end local v0    # "clawAccessory":Lcom/parrot/freeflight/core/model/ClawAccessory;
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mGunAccessories:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/core/model/GunAccessory;

    .line 1405
    .local v1, "gunAccessory":Lcom/parrot/freeflight/core/model/GunAccessory;
    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/core/model/GunAccessory;->setDeviceController(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V

    goto :goto_2

    .line 1407
    .end local v1    # "gunAccessory":Lcom/parrot/freeflight/core/model/GunAccessory;
    :cond_2
    return-void
.end method

.method private updateWheelsState(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "wheelStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 2025
    const/4 v1, 0x0

    .line 2026
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 2027
    const-string v4, "MiniDroneDeviceControllerSpeedSettingsStateWheelsChangedNotificationPresentKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .line 2028
    .local v0, "hasWheels":Z
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mAccessoryState:Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    invoke-virtual {v4, v3}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->updateSupportedAccessory(I)Z

    move-result v1

    .line 2029
    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mAccessoryState:Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v4, v2}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->updateConfiguredAccessory(I)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2031
    .end local v0    # "hasWheels":Z
    :cond_1
    return v1

    :cond_2
    move v0, v2

    .line 2027
    goto :goto_0
.end method

.method private updateWingXFlyingMode(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "flyingModeBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2368
    const/4 v2, 0x0

    .line 2369
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2370
    const-string v3, "MiniDroneDeviceControllerPilotingStateFlyingModeChangedNotificationModeKey"

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;->eARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;

    .line 2371
    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;->getValue()I

    move-result v4

    .line 2370
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2373
    .local v0, "flyingModeValue":I
    sget-object v3, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM:[I

    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2384
    const/4 v1, 0x3

    .line 2387
    .local v1, "newFlyingMode":I
    :goto_0
    iget v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mWingXFlyingMode:I

    if-eq v1, v3, :cond_0

    .line 2388
    iput v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mWingXFlyingMode:I

    .line 2389
    const/4 v2, 0x1

    .line 2392
    .end local v0    # "flyingModeValue":I
    .end local v1    # "newFlyingMode":I
    :cond_0
    return v2

    .line 2375
    .restart local v0    # "flyingModeValue":I
    :pswitch_0
    const/4 v1, 0x0

    .line 2376
    .restart local v1    # "newFlyingMode":I
    goto :goto_0

    .line 2378
    .end local v1    # "newFlyingMode":I
    :pswitch_1
    const/4 v1, 0x1

    .line 2379
    .restart local v1    # "newFlyingMode":I
    goto :goto_0

    .line 2381
    .end local v1    # "newFlyingMode":I
    :pswitch_2
    const/4 v1, 0x2

    .line 2382
    .restart local v1    # "newFlyingMode":I
    goto :goto_0

    .line 2373
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateWingXPlaneGear(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "gearBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2397
    const/4 v2, 0x0

    .line 2398
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2399
    const-string v3, "MiniDroneDeviceControllerPilotingStatePlaneGearBoxChangedNotificationStateKey"

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;->eARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;

    .line 2400
    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;->getValue()I

    move-result v4

    .line 2399
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2402
    .local v0, "gearValue":I
    sget-object v3, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM:[I

    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2413
    const/4 v1, 0x3

    .line 2416
    .local v1, "newGear":I
    :goto_0
    iget v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mWingXPlaneGear:I

    if-eq v1, v3, :cond_0

    .line 2417
    iput v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mWingXPlaneGear:I

    .line 2418
    const/4 v2, 0x1

    .line 2421
    .end local v0    # "gearValue":I
    .end local v1    # "newGear":I
    :cond_0
    return v2

    .line 2404
    .restart local v0    # "gearValue":I
    :pswitch_0
    const/4 v1, 0x0

    .line 2405
    .restart local v1    # "newGear":I
    goto :goto_0

    .line 2407
    .end local v1    # "newGear":I
    :pswitch_1
    const/4 v1, 0x1

    .line 2408
    .restart local v1    # "newGear":I
    goto :goto_0

    .line 2410
    .end local v1    # "newGear":I
    :pswitch_2
    const/4 v1, 0x2

    .line 2411
    .restart local v1    # "newGear":I
    goto :goto_0

    .line 2402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Lcom/parrot/freeflight/core/model/Model;->close()V

    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoRecordController:Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoRecordController:Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mARMediaRecordControllerDelegate:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->removeFromDelegates(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;)Z

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoRecordController:Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->unregisterListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 269
    return-void
.end method

.method public getAccessoryState()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mAccessoryState:Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    return-object v0
.end method

.method public getAccessoryType()I
    .locals 2

    .prologue
    .line 502
    const/4 v0, -0x1

    .line 503
    .local v0, "accessoryType":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->hasLightAccessories()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    const/4 v0, 0x0

    .line 510
    :cond_0
    :goto_0
    return v0

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->hasClawAccessories()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 506
    const/4 v0, 0x2

    goto :goto_0

    .line 507
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->hasGunAccessories()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAlertMessages(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1185
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPermanentAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/alert/Alert;->getType()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mTemporaryAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/alert/Alert;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1186
    new-array v0, v3, [Ljava/lang/String;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPermanentAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/alert/Alert;->getMessage()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1192
    :goto_0
    return-object v0

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPermanentAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/alert/Alert;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mTemporaryAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/alert/Alert;->getType()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1188
    new-array v0, v3, [Ljava/lang/String;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mTemporaryAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/alert/Alert;->getMessage()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    .line 1189
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPermanentAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/alert/Alert;->getType()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mTemporaryAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/alert/Alert;->getType()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 1190
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPermanentAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/alert/Alert;->getMessage()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mTemporaryAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/alert/Alert;->getMessage()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 1192
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBankedTurnedState()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mBankedTurnedState:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method public getBatteryChargeState()Lcom/parrot/freeflight/core/model/BatteryChargeState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mBatteryChargeState:Lcom/parrot/freeflight/core/model/BatteryChargeState;

    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mBatteryLevel:I

    return v0
.end method

.method public getClawAccessories()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/model/ClawAccessory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mClawAccessories:Ljava/util/Map;

    return-object v0
.end method

.method public getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object v0
.end method

.method public getCurrentFlipDirection()I
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mCurrentFlipDirection:I

    return v0
.end method

.method public getCutOutState()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mCutOutState:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method public getDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object v0
.end method

.method public getDroneAnimationStates()Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 756
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDroneAnimationStates:Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;

    return-object v0
.end method

.method public getFlyingState()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mFlyingState:I

    return v0
.end method

.method public getGunAccessories()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/model/GunAccessory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mGunAccessories:Ljava/util/Map;

    return-object v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHardwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHydrofoilPoolSizeState()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHydrofoilPoolSizeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getHydrofoilSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 437
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHydrofoilSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getLatestPhotoCaptureError()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLatestPhotoCaptureError:I

    return v0
.end method

.method public getLatestPhotoCaptureEvent()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLatestPhotoCaptureEvent:I

    return v0
.end method

.method public getLightAccessories()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/model/LightAccessory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLightAccessories:Ljava/util/Map;

    return-object v0
.end method

.method public getLightIntensity()I
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLightIntensity:I

    return v0
.end method

.method public getMassStorageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMassStorageName:Ljava/lang/String;

    return-object v0
.end method

.method public getMassStoragePath()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMassStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMaxRotationSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxRotationSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMaxTiltState()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxTiltState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMaxVerticalSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxVerticalSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProductName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProductName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhotoCaptureState()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoRecordingState:I

    return v0
.end method

.method public getPhotoCountTakenDuringRun()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoCountTakenDuringRun:I

    return v0
.end method

.method public getPhotosCount()I
    .locals 1

    .prologue
    .line 1161
    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotosCount:I

    return v0
.end method

.method public getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method public getProductModel()I
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProductModel:I

    return v0
.end method

.method public getProductModelName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const v2, 0x7f080685

    .line 612
    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProductModel:I

    packed-switch v0, :pswitch_data_0

    .line 632
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_DELOS3:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v0, v1, :cond_0

    .line 633
    const v0, 0x7f08067e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 639
    :goto_0
    return-object v0

    .line 614
    :pswitch_0
    const v0, 0x7f080684

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 616
    :pswitch_1
    const v0, 0x7f08067f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 618
    :pswitch_2
    const v0, 0x7f080683

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 620
    :pswitch_3
    const v0, 0x7f080680

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 622
    :pswitch_4
    const v0, 0x7f080682

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 624
    :pswitch_5
    const v0, 0x7f080681

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 626
    :pswitch_6
    const v0, 0x7f08067c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 629
    :pswitch_7
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_WINGX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v0, v1, :cond_1

    .line 635
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v0, v1, :cond_2

    .line 637
    const v0, 0x7f08067d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 639
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public getProductSerial()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHighProductSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLowProductSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadMediaCount()I
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadReadMediaCount()I

    move-result v0

    return v0
.end method

.method public getRunId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mRunId:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mType:I

    return v0
.end method

.method public getWingXFlyingMode()I
    .locals 1

    .prologue
    .line 895
    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mWingXFlyingMode:I

    return v0
.end method

.method public getWingXPlaneGear()I
    .locals 1

    .prologue
    .line 944
    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mWingXPlaneGear:I

    return v0
.end method

.method public hasClawAccessories()Z
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mClawAccessories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGunAccessories()Z
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mGunAccessories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHydrofoilGasJoystick()Z
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHasHydrofoilGazJoystick:Z

    return v0
.end method

.method public hasLightAccessories()Z
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLightAccessories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWingXAnimations()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHasWingXAnimations:Z

    return v0
.end method

.method public hasWingXThrowIt()Z
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHasWingXThrowIt:Z

    return v0
.end method

.method public isAutoTakeoffEnable()Z
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mAutoTakeoffEnable:Z

    return v0
.end method

.method public isCharging()Z
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mCharging:Z

    return v0
.end method

.method public isFlatTrimAllowed()Z
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mFlatTrimAllowed:Z

    return v0
.end method

.method public isHydrofoil()Z
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_HYDROFOIL:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMambo()Z
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_DELOS3:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMassStorageNbPhotosCmdSupported()Z
    .locals 1

    .prologue
    .line 1153
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMassStorageNbPhotosCmdSupported:Z

    return v0
.end method

.method public isNewFlyingStateReceived()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mNewFlyingStateReceived:Z

    return v0
.end method

.method public isOnTheGround()Z
    .locals 2

    .prologue
    .line 315
    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mFlyingState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mFlyingState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWingX()Z
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_WINGX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWingXAnimationActive()Z
    .locals 1

    .prologue
    .line 922
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mWingXAnimationActive:Z

    return v0
.end method

.method public land()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestedLanding()V

    .line 653
    :cond_0
    return-void
.end method

.method public listenEvents(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listen"    # Z

    .prologue
    .line 1361
    if-eqz p2, :cond_0

    .line 1362
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1364
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "MiniDroneDeviceControllerMediaRecordEventPictureEventChangedNotification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1365
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1369
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 1367
    :cond_0
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public loadFromStore()V
    .locals 5

    .prologue
    .line 206
    invoke-super {p0}, Lcom/parrot/freeflight/core/model/Model;->loadFromStore()V

    .line 207
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/LocalStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 208
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "name"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mStoreEmpty:Z

    .line 209
    const-string v2, "model"

    iget v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProductModel:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 210
    .local v0, "model":I
    iput v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProductModel:I

    .line 211
    const-string v2, "name"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProductName:Ljava/lang/String;

    .line 212
    const-string/jumbo v2, "version"

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mSoftwareVersion:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mSoftwareVersion:Ljava/lang/String;

    .line 213
    const-string v2, "battery_level"

    iget v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mBatteryLevel:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mBatteryLevel:I

    .line 214
    const-string v2, "photo_count"

    iget v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotosCount:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotosCount:I

    .line 215
    const-string/jumbo v2, "wingx_has_animations"

    iget-boolean v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHasWingXAnimations:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHasWingXAnimations:Z

    .line 216
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "max_altitude_state"

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 217
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "max_tilt_state"

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxTiltState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 218
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "max_vertical_speed_state"

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxVerticalSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 219
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "max_rotation_speed_state"

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxRotationSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 220
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "max_hydrofoil_pool_size_state"

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHydrofoilPoolSizeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 221
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "max_hydrofoil_speed_state_state"

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHydrofoilSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 222
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "accessory_state"

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mAccessoryState:Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadAccessoryState(Ljava/lang/String;Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;)V

    .line 223
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "cut_out"

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mCutOutState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadToggleState(Ljava/lang/String;Lcom/parrot/freeflight/util/ToggleState;)V

    .line 224
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string/jumbo v3, "usb_light_accessories"

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLightAccessories:Ljava/util/Map;

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadUsbLightAccessories(Ljava/lang/String;Ljava/util/Map;)V

    .line 225
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string/jumbo v3, "usb_claw_accessories"

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mClawAccessories:Ljava/util/Map;

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadUsbClawAccessories(Ljava/lang/String;Ljava/util/Map;)V

    .line 226
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string/jumbo v3, "usb_gun_accessories"

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mGunAccessories:Ljava/util/Map;

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadUsbGunAccessories(Ljava/lang/String;Ljava/util/Map;)V

    .line 227
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "banked_turn_state"

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mBankedTurnedState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadToggleState(Ljava/lang/String;Lcom/parrot/freeflight/util/ToggleState;)V

    .line 228
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/core/model/DelosModel;->updateUsbAccessories(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V

    .line 229
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mOfflineEngine:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->reset()V

    .line 230
    return-void

    .line 208
    .end local v0    # "model":I
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public notifyListener()V
    .locals 1

    .prologue
    .line 1500
    invoke-super {p0}, Lcom/parrot/freeflight/core/model/Model;->notifyListener()V

    .line 1501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mNewFlyingStateReceived:Z

    .line 1502
    return-void
.end method

.method public pitchAt(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 972
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPitchLock:Ljava/lang/Object;

    monitor-enter v1

    .line 973
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userPitchChanged(F)V

    .line 976
    :cond_0
    monitor-exit v1

    .line 977
    return-void

    .line 976
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pitchAtWithCommandsActivation(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 674
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->pitchAt(F)V

    .line 675
    iput p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLastPitch:F

    .line 676
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->checkCommandsActivation()V

    .line 677
    return-void
.end method

.method public reboot()V
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestReboot()V

    .line 1111
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->disconnectDrone()V

    .line 1113
    :cond_0
    return-void
.end method

.method public requestAutoTakeOff(Z)V
    .locals 2
    .param p1, "needAutoTakeOff"    # Z

    .prologue
    .line 656
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v1, :cond_0

    .line 657
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 658
    .local v0, "newValue":B
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestSetAutoTakeOffMode(B)V

    .line 660
    .end local v0    # "newValue":B
    :cond_0
    return-void

    .line 657
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestCap(S)V
    .locals 1
    .param p1, "value"    # S

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestCap(S)V

    .line 1007
    :cond_0
    return-void
.end method

.method public requestCommandsActivationChanged(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 663
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userCommandsActivationChanged(Z)V

    .line 666
    :cond_0
    return-void
.end method

.method public requestFlip()V
    .locals 1

    .prologue
    .line 876
    iget v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mCurrentFlipDirection:I

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/core/model/DelosModel;->requestFlip(I)V

    .line 877
    return-void
.end method

.method public requestFlip(I)V
    .locals 2
    .param p1, "flipDirection"    # I

    .prologue
    .line 854
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->isWingX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 855
    packed-switch p1, :pswitch_data_0

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 857
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_ENUM;->ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_FRONT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestFlip(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_ENUM;)V

    goto :goto_0

    .line 860
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_ENUM;->ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_BACK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestFlip(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_ENUM;)V

    goto :goto_0

    .line 863
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_ENUM;->ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_LEFT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestFlip(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_ENUM;)V

    goto :goto_0

    .line 866
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_ENUM;->ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_RIGHT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestFlip(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_ANIMATIONS_FLIP_DIRECTION_ENUM;)V

    goto :goto_0

    .line 855
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public requestWingXFlyingMode(I)V
    .locals 2
    .param p1, "flyingMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 899
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->isWingX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    packed-switch p1, :pswitch_data_0

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 902
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_FLYINGMODE_MODE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTING_FLYINGMODE_MODE_QUADRICOPTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_FLYINGMODE_MODE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestFlyingMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_FLYINGMODE_MODE_ENUM;)V

    goto :goto_0

    .line 905
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->requestWingXPlaneGear(I)V

    .line 906
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_FLYINGMODE_MODE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTING_FLYINGMODE_MODE_PLANE_FORWARD:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_FLYINGMODE_MODE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestFlyingMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_FLYINGMODE_MODE_ENUM;)V

    goto :goto_0

    .line 909
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->requestWingXPlaneGear(I)V

    .line 910
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_FLYINGMODE_MODE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTING_FLYINGMODE_MODE_PLANE_BACKWARD:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_FLYINGMODE_MODE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestFlyingMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_FLYINGMODE_MODE_ENUM;)V

    goto :goto_0

    .line 900
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public requestWingXPlaneGear(I)V
    .locals 2
    .param p1, "gear"    # I

    .prologue
    .line 948
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->isWingX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    packed-switch p1, :pswitch_data_0

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 951
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_PLANEGEARBOX_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTING_PLANEGEARBOX_STATE_GEAR_1:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_PLANEGEARBOX_STATE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestPlaneGearBox(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_PLANEGEARBOX_STATE_ENUM;)V

    goto :goto_0

    .line 954
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_PLANEGEARBOX_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTING_PLANEGEARBOX_STATE_GEAR_2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_PLANEGEARBOX_STATE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestPlaneGearBox(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_PLANEGEARBOX_STATE_ENUM;)V

    goto :goto_0

    .line 957
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_PLANEGEARBOX_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTING_PLANEGEARBOX_STATE_GEAR_3:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_PLANEGEARBOX_STATE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestPlaneGearBox(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTING_PLANEGEARBOX_STATE_ENUM;)V

    goto :goto_0

    .line 949
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestedSettingsReset()V

    .line 1127
    :goto_0
    return-void

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    sget-object v1, Lcom/parrot/freeflight/core/model/DelosPreset;->MAX_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(Lcom/parrot/freeflight/util/DoubleBoundedState;)Z

    .line 1120
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxTiltState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    sget-object v1, Lcom/parrot/freeflight/core/model/DelosPreset;->MAX_TILT_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(Lcom/parrot/freeflight/util/DoubleBoundedState;)Z

    .line 1121
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxRotationSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    sget-object v1, Lcom/parrot/freeflight/core/model/DelosPreset;->MAX_ROTATION_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(Lcom/parrot/freeflight/util/DoubleBoundedState;)Z

    .line 1122
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxVerticalSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    sget-object v1, Lcom/parrot/freeflight/core/model/DelosPreset;->MAX_VERTICAL_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(Lcom/parrot/freeflight/util/DoubleBoundedState;)Z

    .line 1123
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mCutOutState:Lcom/parrot/freeflight/util/ToggleState;

    sget-object v1, Lcom/parrot/freeflight/core/model/DelosPreset;->CUT_OUT_STATE:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/util/ToggleState;->update(Lcom/parrot/freeflight/util/ToggleState;)Z

    .line 1124
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mBankedTurnedState:Lcom/parrot/freeflight/util/ToggleState;

    sget-object v1, Lcom/parrot/freeflight/core/model/DelosPreset;->BANKED_TURN_STATE:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/util/ToggleState;->update(Lcom/parrot/freeflight/util/ToggleState;)Z

    .line 1125
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->notifyListener()V

    goto :goto_0
.end method

.method public resetRunMediasInfo()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoCountTakenDuringRun:I

    .line 156
    return-void
.end method

.method public rollAt(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 980
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mRollLock:Ljava/lang/Object;

    monitor-enter v1

    .line 981
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRollChanged(F)V

    .line 984
    :cond_0
    monitor-exit v1

    .line 985
    return-void

    .line 984
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rollAtWithCommandsActivation(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 680
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->rollAt(F)V

    .line 681
    iput p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLastRoll:F

    .line 682
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->checkCommandsActivation()V

    .line 683
    return-void
.end method

.method public saveToStore()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 233
    invoke-super {p0}, Lcom/parrot/freeflight/core/model/Model;->saveToStore()V

    .line 234
    iput-boolean v3, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mStoreEmpty:Z

    .line 235
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/LocalStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 236
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 237
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "empty"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 238
    const-string v2, "product"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 239
    const-string v2, "name"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    const-string v2, "model"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getProductModel()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 241
    const-string/jumbo v2, "version"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 242
    const-string v2, "battery_level"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getBatteryLevel()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 243
    const-string v2, "photo_count"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getPhotosCount()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 244
    const-string/jumbo v2, "wingx_has_animations"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->hasWingXAnimations()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 245
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "max_altitude_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getMaxAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 246
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "max_tilt_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getMaxTiltState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 247
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "max_vertical_speed_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getMaxVerticalSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 248
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "max_rotation_speed_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getMaxRotationSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 249
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "max_hydrofoil_pool_size_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getHydrofoilPoolSizeState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 250
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "max_hydrofoil_speed_state_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getHydrofoilSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 251
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "accessory_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getAccessoryState()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveAccessoryState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;)V

    .line 252
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "cut_out"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getCutOutState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveToggleState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/ToggleState;)V

    .line 253
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "banked_turn_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getBankedTurnedState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveToggleState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/ToggleState;)V

    .line 254
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string/jumbo v3, "usb_light_accessories"

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLightAccessories:Ljava/util/Map;

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveUsbLightAccessories(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/util/Map;)V

    .line 255
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string/jumbo v3, "usb_claw_accessories"

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mClawAccessories:Ljava/util/Map;

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveUsbClawAccessories(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/util/Map;)V

    .line 256
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string/jumbo v3, "usb_gun_accessories"

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mGunAccessories:Ljava/util/Map;

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveUsbGunAccessories(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/util/Map;)V

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 258
    return-void
.end method

.method public setAccessory(I)V
    .locals 2
    .param p1, "accessory"    # I

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    const-string v0, "FFMini.Model.Cache"

    const-string v1, "Trying to set Accessory. Disable dictionary updates and try to restore cache after a delay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateConfiguredAccessory(I)Z

    .line 1057
    packed-switch p1, :pswitch_data_0

    .line 1092
    :cond_0
    :goto_0
    return-void

    .line 1059
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;->ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_HULL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestSendAccessoryConfig(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;)Z

    goto :goto_0

    .line 1063
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;->ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_HYDROFOIL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestSendAccessoryConfig(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;)Z

    goto :goto_0

    .line 1067
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v0, v1, :cond_1

    .line 1068
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestedSpeedSettingsWheels(Z)V

    goto :goto_0

    .line 1070
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;->ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_NO_ACCESSORY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestSendAccessoryConfig(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;)Z

    goto :goto_0

    .line 1075
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;->ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_STD_WHEELS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestSendAccessoryConfig(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;)Z

    goto :goto_0

    .line 1079
    :pswitch_4
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;->ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_TRUCK_WHEELS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestSendAccessoryConfig(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;)Z

    goto :goto_0

    .line 1083
    :pswitch_5
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestedSpeedSettingsWheels(Z)V

    goto :goto_0

    .line 1057
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setBankTurn(Z)V
    .locals 2
    .param p1, "activate"    # Z

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestedPilotingSettingsBankedTurn(Z)V

    .line 1667
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mBankedTurnedState:Lcom/parrot/freeflight/util/ToggleState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/parrot/freeflight/util/ToggleState;->update(ZZ)Z

    .line 1668
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->notifyListener()V

    .line 1669
    return-void
.end method

.method public setCurrentFlipDirection(I)V
    .locals 1
    .param p1, "currentFlipDirection"    # I

    .prologue
    .line 828
    packed-switch p1, :pswitch_data_0

    .line 843
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/google/Analytic;->trackMainConnectedDroneFigure5()V

    .line 845
    :goto_0
    iput p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mCurrentFlipDirection:I

    .line 846
    return-void

    .line 830
    :pswitch_0
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/google/Analytic;->trackMainConnectedDroneFigure1()V

    goto :goto_0

    .line 833
    :pswitch_1
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/google/Analytic;->trackMainConnectedDroneFigure2()V

    goto :goto_0

    .line 836
    :pswitch_2
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/google/Analytic;->trackMainConnectedDroneFigure3()V

    goto :goto_0

    .line 840
    :pswitch_3
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/google/Analytic;->trackMainConnectedDroneFigure4()V

    goto :goto_0

    .line 828
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCutOutState(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestedSettingsCutOut(Z)V

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mCutOutState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/util/ToggleState;->updateToggleState(Z)Z

    .line 1105
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->notifyListener()V

    .line 1106
    return-void
.end method

.method public setLightsIntensity(I)V
    .locals 1
    .param p1, "intensity"    # I

    .prologue
    .line 724
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestSetHeadlightsIntensity(I)V

    .line 727
    :cond_0
    return-void
.end method

.method public setMaxAltitude(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestedPilotingSettingsMaxAltitude(F)V

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 1042
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->notifyListener()V

    .line 1043
    return-void
.end method

.method public setMaxRotationSpeed(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestedSpeedSettingsMaxRotationSpeed(F)V

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxRotationSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 1033
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHydrofoilPoolSizeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 1034
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->notifyListener()V

    .line 1035
    return-void
.end method

.method public setMaxTilt(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestedPilotingSettingsMaxTilt(F)V

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxTiltState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 1014
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->notifyListener()V

    .line 1015
    return-void
.end method

.method public setMaxVerticalSpeed(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestedSpeedSettingsMaxVerticalSpeed(F)V

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxVerticalSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 1022
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHasHydrofoilGazJoystick:Z

    if-nez v0, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHydrofoilSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 1025
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->notifyListener()V

    .line 1026
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestedSettingsProductName(Ljava/lang/String;)V

    .line 1049
    :cond_0
    return-void
.end method

.method public setPhotoCountTakenDuringRun(I)V
    .locals 0
    .param p1, "photoCountTakenDuringRun"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoCountTakenDuringRun:I

    .line 152
    return-void
.end method

.method public setPhotosCount(I)V
    .locals 0
    .param p1, "photosCount"    # I

    .prologue
    .line 1157
    iput p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotosCount:I

    .line 1158
    return-void
.end method

.method public setReadMediaCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 1165
    if-ltz p1, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveReadMediaCount(I)V

    .line 1167
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMassStorageNbPhotosCmdSupported:Z

    if-nez v0, :cond_0

    .line 1168
    iput p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotosCount:I

    .line 1171
    :cond_0
    return-void
.end method

.method public setWingXAnimationActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 926
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mWingXAnimationActive:Z

    .line 927
    return-void
.end method

.method public startAnimation(I)V
    .locals 2
    .param p1, "animation"    # I

    .prologue
    .line 760
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v1, :cond_0

    .line 761
    const/4 v0, 0x0

    .line 762
    .local v0, "animationType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;
    packed-switch p1, :pswitch_data_0

    .line 782
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestStartAnimation(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;)V

    .line 784
    .end local v0    # "animationType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;
    :cond_0
    return-void

    .line 764
    .restart local v0    # "animationType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;->ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_HEADLIGHTS_BLINK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;

    .line 765
    goto :goto_0

    .line 767
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;->ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_HEADLIGHTS_OSCILLATION:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;

    .line 768
    goto :goto_0

    .line 770
    :pswitch_2
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;->ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_LOOPING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;

    .line 771
    goto :goto_0

    .line 773
    :pswitch_3
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;->ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_BARREL_ROLL_180_LEFT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;

    .line 774
    goto :goto_0

    .line 776
    :pswitch_4
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;->ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_BARREL_ROLL_180_RIGHT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;

    .line 777
    goto :goto_0

    .line 779
    :pswitch_5
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;->ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_BACKSWAP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STARTANIMATION_ANIM_ENUM;

    goto :goto_0

    .line 762
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public stopLightAnimation(I)V
    .locals 2
    .param p1, "animation"    # I

    .prologue
    .line 787
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v1, :cond_0

    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "animationType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;
    packed-switch p1, :pswitch_data_0

    .line 809
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestStopAnimation(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;)V

    .line 811
    .end local v0    # "animationType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;
    :cond_0
    return-void

    .line 791
    .restart local v0    # "animationType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;->ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_HEADLIGHTS_BLINK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;

    .line 792
    goto :goto_0

    .line 794
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;->ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_HEADLIGHTS_OSCILLATION:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;

    .line 795
    goto :goto_0

    .line 797
    :pswitch_2
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;->ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_LOOPING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;

    .line 798
    goto :goto_0

    .line 800
    :pswitch_3
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;->ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_BARREL_ROLL_180_LEFT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;

    .line 801
    goto :goto_0

    .line 803
    :pswitch_4
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;->ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_BARREL_ROLL_180_RIGHT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;

    .line 804
    goto :goto_0

    .line 806
    :pswitch_5
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;->ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_BACKSWAP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONS_STOPANIMATION_ANIM_ENUM;

    goto :goto_0

    .line 789
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public takeOff()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestedTakeOff()V

    .line 647
    :cond_0
    return-void
.end method

.method public takePicture()V
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    .line 706
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mRollingSpiderPhotoCompat:Z

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoRecordController:Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mPhotoRecordController:Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    invoke-virtual {v0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->startRecording()V

    .line 709
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mRequestPicture:Z

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestRecordPictureV2()V

    goto :goto_0
.end method

.method public throttleAt(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 996
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mGazLock:Ljava/lang/Object;

    monitor-enter v1

    .line 997
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userGazChanged(F)V

    .line 1000
    :cond_0
    monitor-exit v1

    .line 1001
    return-void

    .line 1000
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public throttleAtWithCommandsActivation(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 692
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->throttleAt(F)V

    .line 693
    iput p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLastGaz:F

    .line 694
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->checkCommandsActivation()V

    .line 695
    return-void
.end method

.method protected updateConfiguredAccessory(I)Z
    .locals 11
    .param p1, "configuredAccessory"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1973
    const/4 v7, 0x0

    .line 1980
    .local v7, "shouldUpdate":Z
    const/4 v2, 0x0

    .line 1982
    .local v2, "hydrofoilSpeedUpdated":Z
    const/4 v10, 0x2

    if-ne p1, v10, :cond_3

    .line 1983
    iget-object v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mCutOutState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v10, v8}, Lcom/parrot/freeflight/util/ToggleState;->updateSettingEnabled(Z)Z

    move-result v0

    .line 1984
    .local v0, "cutOutUpdated":Z
    iget-object v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v10, v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateAvailability(Z)Z

    move-result v3

    .line 1985
    .local v3, "maxAltitudeUpdated":Z
    iget-object v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxTiltState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v10, v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateAvailability(Z)Z

    move-result v5

    .line 1986
    .local v5, "maxTiltUpdated":Z
    iget-object v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxVerticalSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v10, v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateAvailability(Z)Z

    move-result v6

    .line 1987
    .local v6, "maxVerticalSpeedUpdated":Z
    iget-object v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxRotationSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v10, v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateAvailability(Z)Z

    move-result v4

    .line 1988
    .local v4, "maxRotationSpeddUpdated":Z
    iget-object v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHydrofoilPoolSizeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v10, v9}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateAvailability(Z)Z

    move-result v1

    .line 1989
    .local v1, "hydrofoilPoolSizeUpdated":Z
    iget-boolean v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHasHydrofoilGazJoystick:Z

    if-nez v10, :cond_0

    .line 1990
    iget-object v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHydrofoilSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v10, v9}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateAvailability(Z)Z

    move-result v2

    .line 1992
    :cond_0
    iget-boolean v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mFlatTrimAllowed:Z

    if-eqz v10, :cond_1

    .line 1993
    iput-boolean v8, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mFlatTrimAllowed:Z

    .line 1994
    const/4 v7, 0x1

    .line 2011
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mAccessoryState:Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    invoke-virtual {v10, p1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->updateConfiguredAccessory(I)Z

    move-result v10

    if-nez v10, :cond_2

    if-nez v7, :cond_2

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-nez v5, :cond_2

    if-nez v6, :cond_2

    if-nez v4, :cond_2

    if-nez v1, :cond_2

    if-eqz v2, :cond_5

    :cond_2
    move v7, v9

    .line 2021
    :goto_1
    return v7

    .line 1997
    .end local v0    # "cutOutUpdated":Z
    .end local v1    # "hydrofoilPoolSizeUpdated":Z
    .end local v3    # "maxAltitudeUpdated":Z
    .end local v4    # "maxRotationSpeddUpdated":Z
    .end local v5    # "maxTiltUpdated":Z
    .end local v6    # "maxVerticalSpeedUpdated":Z
    :cond_3
    iget-object v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mCutOutState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v10, v9}, Lcom/parrot/freeflight/util/ToggleState;->updateSettingEnabled(Z)Z

    move-result v0

    .line 1998
    .restart local v0    # "cutOutUpdated":Z
    iget-object v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v10, v9}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateAvailability(Z)Z

    move-result v3

    .line 1999
    .restart local v3    # "maxAltitudeUpdated":Z
    iget-object v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxTiltState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v10, v9}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateAvailability(Z)Z

    move-result v5

    .line 2000
    .restart local v5    # "maxTiltUpdated":Z
    iget-object v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxVerticalSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v10, v9}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateAvailability(Z)Z

    move-result v6

    .line 2001
    .restart local v6    # "maxVerticalSpeedUpdated":Z
    iget-object v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mMaxRotationSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v10, v9}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateAvailability(Z)Z

    move-result v4

    .line 2002
    .restart local v4    # "maxRotationSpeddUpdated":Z
    iget-object v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHydrofoilPoolSizeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v10, v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateAvailability(Z)Z

    move-result v1

    .line 2003
    .restart local v1    # "hydrofoilPoolSizeUpdated":Z
    iget-boolean v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHasHydrofoilGazJoystick:Z

    if-nez v10, :cond_4

    .line 2004
    iget-object v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mHydrofoilSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v10, v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateAvailability(Z)Z

    move-result v2

    .line 2006
    :cond_4
    iget-boolean v10, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mFlatTrimAllowed:Z

    if-nez v10, :cond_1

    .line 2007
    iput-boolean v9, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mFlatTrimAllowed:Z

    .line 2008
    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    move v7, v8

    .line 2011
    goto :goto_1
.end method

.method public validateFlatTrim()V
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestedFlatTrim()V

    .line 1098
    :cond_0
    return-void
.end method

.method public yawTo(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 988
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mYawLock:Ljava/lang/Object;

    monitor-enter v1

    .line 989
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userYawChanged(F)V

    .line 992
    :cond_0
    monitor-exit v1

    .line 993
    return-void

    .line 992
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public yawToWithCommandsActivation(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 686
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->yawTo(F)V

    .line 687
    iput p1, p0, Lcom/parrot/freeflight/core/model/DelosModel;->mLastYaw:F

    .line 688
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->checkCommandsActivation()V

    .line 689
    return-void
.end method
