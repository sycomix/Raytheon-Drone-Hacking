.class public Lcom/parrot/freeflight/piloting/ui/DelosUIController;
.super Ljava/lang/Object;
.source "DelosUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/UIController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/DelosUIController$OnDroneNotInitListener;
    }
.end annotation


# static fields
.field private static final AUTO_TAKE_OFF_ANIMATION_DURATION_MS:I = 0x1f4

.field private static final AUTO_TAKE_OFF_DEFAULT_COLOR:I = -0x1

.field private static final DEBUG_HUD_BUTTON:Z = true

.field private static final SAVED_STATE_ACCESSORY_STATE:Ljava/lang/String; = "accessory_state"

.field private static final SAVED_STATE_HUD_HIDDEN:Ljava/lang/String; = "hud_hidden"

.field private static final SAVED_STATE_IS_CHARGING:Ljava/lang/String; = "is_charging"

.field private static final SAVED_STATE_START_TAKEOFF_TIME:Ljava/lang/String; = "start_takeoff_time"

.field private static final TIME_UPDATE_UI:I = 0x3e8


# instance fields
.field private mAccessoryController:Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mActivityWindow:Landroid/view/Window;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAlertSound:Lcom/parrot/freeflight/util/AlertSound;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAnimationControllerInterface:Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAnimationControllerListener:Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAnimationMenuHasExpanded:Z

.field private mAutoTakeOffAnimation:Landroid/graphics/drawable/AnimationDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAutoTakeOffButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBackButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBattery4GamePadText:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBatteryLevel:I

.field private final mBatteryTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCharging:Z

.field private mConnection:Landroid/view/inputmethod/BaseInputConnection;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentAccessory:I

.field private mCurrentCommandChoice:I

.field private mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDelosCameraController:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDelosModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

.field private final mDuration4GamePadText:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDurationTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlyingState:I

.field private mGamePadBatteryLevel:I

.field private final mGamePadBatteryText:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadBatteryView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGamePadMode:Z

.field private final mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadZone:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHasThrowIt:Z

.field private mHideHud:Z

.field private mIsAutoTakeOffPending:Z

.field private mIsHydrofoil:Z

.field private final mIsWingX:Z

.field private final mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/ui/JoystickController",
            "<",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            ">;"
        }
    .end annotation
.end field

.field private mLastAccessoryType:I

.field private final mLocalSettingsListener:Lcom/parrot/freeflight/core/model/Model$Listener;

.field private final mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mOfflineTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOnDroneNotInitListener:Lcom/parrot/freeflight/piloting/ui/DelosUIController$OnDroneNotInitListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mParrotLogoImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPause:Z

.field private final mPhotoCaptureButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPhotoCaptureState:I

.field private mPilotingMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPreviousGamePadState:I

.field private mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRootView:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSettingsButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mStartTakeOffTime:J

.field private mSupportedAccessory:I

.field private final mTakeOffButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mThrowItTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTimeFormat:Ljava/text/DateFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTimerHandle:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUselessView4GamePadMode:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mVibrator:Landroid/os/Vibrator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Landroid/view/Window;Landroid/os/Bundle;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/DelosUIController$OnDroneNotInitListener;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "delosModel"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "activityWindow"    # Landroid/view/Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "permissionChecker"    # Lcom/parrot/freeflight/util/PermissionChecker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "gamePadManager"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "backButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "onDroneNotInitListener"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController$OnDroneNotInitListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 209
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mFlyingState:I

    .line 143
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mBatteryLevel:I

    .line 144
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentAccessory:I

    .line 146
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSupportedAccessory:I

    .line 153
    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_UNKNOWN:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 165
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPhotoCaptureState:I

    .line 170
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mStartTakeOffTime:J

    .line 196
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPreviousGamePadState:I

    .line 201
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadBatteryLevel:I

    .line 515
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    .line 552
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/DelosUIController$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController$10;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    .line 656
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/DelosUIController$12;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController$12;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 691
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/DelosUIController$13;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController$13;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mLocalSettingsListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 1074
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/DelosUIController$17;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController$17;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationControllerListener:Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    .line 210
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    .line 211
    check-cast p2, Lcom/parrot/freeflight/core/model/DelosModel;

    .end local p2    # "delosModel":Lcom/parrot/freeflight/core/model/Model;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosModel;->isWingX()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mIsWingX:Z

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosModel;->isWingX()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosModel;->hasWingXThrowIt()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHasThrowIt:Z

    .line 214
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mActivityWindow:Landroid/view/Window;

    .line 215
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 216
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 217
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mOnDroneNotInitListener:Lcom/parrot/freeflight/piloting/ui/DelosUIController$OnDroneNotInitListener;

    .line 218
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTimeFormat:Ljava/text/DateFormat;

    .line 219
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTimerHandle:Landroid/os/Handler;

    .line 220
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mVibrator:Landroid/os/Vibrator;

    .line 222
    new-instance v2, Lcom/parrot/freeflight/util/AlertSound;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/util/AlertSound;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAlertSound:Lcom/parrot/freeflight/util/AlertSound;

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mActivityWindow:Landroid/view/Window;

    const v3, 0x7f0f00b2

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mRootView:Landroid/view/ViewGroup;

    .line 224
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentCommandChoice:I

    .line 226
    new-instance v6, Lcom/parrot/freeflight/piloting/preference/DelosJoystickPreferences;

    invoke-direct {v6}, Lcom/parrot/freeflight/piloting/preference/DelosJoystickPreferences;-><init>()V

    .line 227
    .local v6, "joystickPreferences":Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
    new-instance v2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v6}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    .line 228
    new-instance v5, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v5, v2, v6, v3}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 229
    .local v5, "joystickHandler":Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;, "Lcom/parrot/freeflight/piloting/ui/IJoystickHandler<Lcom/parrot/freeflight/core/model/DelosModel;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getSelectedGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v18

    .line 230
    .local v18, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/JoystickController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v18, :cond_a

    invoke-virtual/range {v18 .. v18}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    :goto_1
    invoke-direct/range {v2 .. v7}, Lcom/parrot/freeflight/piloting/ui/JoystickController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->fixJoystick(Z)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mActivityWindow:Landroid/view/Window;

    const v3, 0x7f0f014d

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPhotoCaptureButton:Landroid/widget/ImageButton;

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mActivityWindow:Landroid/view/Window;

    const v3, 0x7f0f00bb

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mBackButton:Landroid/widget/ImageButton;

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mActivityWindow:Landroid/view/Window;

    const v3, 0x7f0f014a

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSettingsButton:Landroid/widget/ImageButton;

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mActivityWindow:Landroid/view/Window;

    const v3, 0x7f0f0152

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mActivityWindow:Landroid/view/Window;

    const v3, 0x7f0f0151

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mOfflineTextView:Landroid/widget/TextView;

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mActivityWindow:Landroid/view/Window;

    const v3, 0x7f0f0153

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mThrowItTextView:Landroid/widget/TextView;

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mActivityWindow:Landroid/view/Window;

    const v3, 0x7f0f0149

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mParrotLogoImageView:Landroid/widget/ImageView;

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mActivityWindow:Landroid/view/Window;

    const v3, 0x7f0f0148

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mActivityWindow:Landroid/view/Window;

    const v3, 0x7f0f00be

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mBatteryTextView:Landroid/widget/TextView;

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mActivityWindow:Landroid/view/Window;

    const v3, 0x7f0f014f

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDurationTextView:Landroid/widget/TextView;

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDurationTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTimeFormat:Ljava/text/DateFormat;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mActivityWindow:Landroid/view/Window;

    const v3, 0x7f0f0146

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/piloting/widget/AlertView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    const v3, 0x7f04004b

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/widget/AlertView;->setItemLayout(I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    const v3, 0x7f0f01ae

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/widget/AlertView;->setItemTextId(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0f0154

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadZone:Landroid/view/View;

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadZone:Landroid/view/View;

    const v3, 0x7f0f0157

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mBattery4GamePadText:Landroid/widget/TextView;

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadZone:Landroid/view/View;

    const v3, 0x7f0f0156

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDuration4GamePadText:Landroid/widget/TextView;

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0f0158

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadBatteryView:Landroid/view/View;

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadBatteryView:Landroid/view/View;

    const v3, 0x7f0f015a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadBatteryText:Landroid/widget/TextView;

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mActivityWindow:Landroid/view/Window;

    const v3, 0x7f0f0145

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/TextureView;

    .line 255
    .local v10, "cameraTextureView":Landroid/view/TextureView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mActivityWindow:Landroid/view/Window;

    const v3, 0x7f0f014b

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    .line 256
    .local v11, "recordButton":Landroid/widget/ImageButton;
    new-instance v7, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getJoystickState()Lcom/parrot/freeflight/piloting/preference/JoystickState;

    move-result-object v13

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    invoke-direct/range {v7 .. v13}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/util/PermissionChecker;Landroid/view/TextureView;Landroid/widget/ImageButton;Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/preference/JoystickState;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosCameraController:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    .line 258
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mIsWingX:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosModel;->hasWingXAnimations()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 259
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mActivityWindow:Landroid/view/Window;

    const v7, 0x7f0f014c

    invoke-virtual {v4, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationControllerInterface:Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;

    .line 264
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationControllerInterface:Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;

    if-eqz v2, :cond_2

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationControllerInterface:Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationControllerListener:Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    invoke-interface {v2, v3}, Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;->setAnimationControllerListener(Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationControllerInterface:Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-interface {v2, v3}, Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;->updateView(Lcom/parrot/freeflight/core/model/DelosModel;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosCameraController:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->getRecordButton()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_c

    const/16 v21, 0x1

    .line 268
    .local v21, "spaceIsreduced":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationControllerInterface:Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;

    move/from16 v0, v21

    invoke-interface {v2, v0}, Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;->spaceChanged(Z)V

    .line 271
    .end local v21    # "spaceIsreduced":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->fixPreLollipopTheme(Landroid/content/Context;)V

    .line 274
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mUselessView4GamePadMode:Ljava/util/List;

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mUselessView4GamePadMode:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f0f014e

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mUselessView4GamePadMode:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDurationTextView:Landroid/widget/TextView;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mUselessView4GamePadMode:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f0f00fe

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mUselessView4GamePadMode:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mBatteryTextView:Landroid/widget/TextView;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mBackButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/parrot/freeflight/piloting/ui/DelosUIController$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v3, v0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPhotoCaptureButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/parrot/freeflight/piloting/ui/DelosUIController$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController$2;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/parrot/freeflight/piloting/ui/DelosUIController$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController$3;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/parrot/freeflight/piloting/ui/DelosUIController$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController$4;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mThrowItTextView:Landroid/widget/TextView;

    new-instance v3, Lcom/parrot/freeflight/piloting/ui/DelosUIController$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController$5;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSettingsButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/parrot/freeflight/piloting/ui/DelosUIController$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController$6;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0f015b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    new-instance v3, Lcom/parrot/freeflight/piloting/ui/DelosUIController$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController$7;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->setOnBackButtonClickListener(Lcom/parrot/freeflight/piloting/ui/settings/SettingsView$OnBackButtonClickListener;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4}, Lcom/parrot/freeflight/piloting/ui/accessory/AccessoryFactory;->create(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAccessoryController:Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAccessoryController:Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    if-eqz v2, :cond_3

    .line 362
    if-eqz p4, :cond_d

    const-string v2, "accessory_state"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v20, 0x1

    .line 363
    .local v20, "isOpened":Z
    :goto_4
    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAccessoryController:Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    invoke-interface {v2}, Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;->open()V

    .line 367
    .end local v20    # "isOpened":Z
    :cond_3
    :goto_5
    if-eqz p4, :cond_6

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationControllerInterface:Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;

    if-eqz v2, :cond_4

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationControllerInterface:Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;

    move-object/from16 v0, p4

    invoke-interface {v2, v0}, Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 370
    :cond_4
    const-string v2, "hud_hidden"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    .line 371
    .local v19, "hideHud":Z
    if-eqz v19, :cond_5

    .line 372
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v17}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->show(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 373
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->hideUI(Z)V

    .line 375
    :cond_5
    const-string v2, "is_charging"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCharging:Z

    .line 376
    const-string v2, "start_takeoff_time"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mStartTakeOffTime:J

    .line 379
    .end local v19    # "hideHud":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mLocalSettingsListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v3, Lcom/parrot/freeflight/piloting/ui/DelosUIController$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController$8;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 389
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mIsWingX:Z

    if-eqz v2, :cond_7

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getJoystickState()Lcom/parrot/freeflight/piloting/preference/JoystickState;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->setControllerType(I)V

    .line 393
    :cond_7
    if-eqz v18, :cond_8

    .line 394
    invoke-virtual/range {v18 .. v18}, Lcom/parrot/freeflight/gamepad/GamePad;->getBatteryLevel()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updateGamePadBatteryLevel(I)V

    .line 397
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mOfflineTextView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mThrowItTextView:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mBatteryTextView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDurationTextView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadZone:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadBatteryText:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 404
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->applyTheme()V

    .line 405
    return-void

    .line 213
    .end local v5    # "joystickHandler":Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;, "Lcom/parrot/freeflight/piloting/ui/IJoystickHandler<Lcom/parrot/freeflight/core/model/DelosModel;>;"
    .end local v6    # "joystickPreferences":Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
    .end local v10    # "cameraTextureView":Landroid/view/TextureView;
    .end local v11    # "recordButton":Landroid/widget/ImageButton;
    .end local v18    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 230
    .restart local v5    # "joystickHandler":Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;, "Lcom/parrot/freeflight/piloting/ui/IJoystickHandler<Lcom/parrot/freeflight/core/model/DelosModel;>;"
    .restart local v6    # "joystickPreferences":Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
    .restart local v18    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 260
    .restart local v10    # "cameraTextureView":Landroid/view/TextureView;
    .restart local v11    # "recordButton":Landroid/widget/ImageButton;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mIsWingX:Z

    if-nez v2, :cond_1

    .line 261
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mActivityWindow:Landroid/view/Window;

    const v7, 0x7f0f014c

    invoke-virtual {v4, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationControllerInterface:Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;

    goto/16 :goto_2

    .line 267
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 362
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 364
    .restart local v20    # "isOpened":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAccessoryController:Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    invoke-interface {v2}, Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;->close()V

    goto/16 :goto_5
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/core/model/DelosModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPhotoCaptureButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/view/inputmethod/BaseInputConnection;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mConnection:Landroid/view/inputmethod/BaseInputConnection;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Landroid/view/inputmethod/BaseInputConnection;)Landroid/view/inputmethod/BaseInputConnection;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;
    .param p1, "x1"    # Landroid/view/inputmethod/BaseInputConnection;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mConnection:Landroid/view/inputmethod/BaseInputConnection;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/view/Window;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mActivityWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Landroid/view/inputmethod/BaseInputConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;
    .param p1, "x1"    # Landroid/view/inputmethod/BaseInputConnection;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updatePilotingMapper(Landroid/view/inputmethod/BaseInputConnection;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Landroid/view/inputmethod/BaseInputConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;
    .param p1, "x1"    # Landroid/view/inputmethod/BaseInputConnection;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updateNavigationMapper(Landroid/view/inputmethod/BaseInputConnection;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updateCurrentMapper()V

    return-void
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/piloting/ui/DelosUIController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updateGamePadBatteryLevel(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->setWingXQuadMode()V

    return-void
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/gamepad/mapper/Mapper;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Lcom/parrot/freeflight/gamepad/mapper/Mapper;)Lcom/parrot/freeflight/gamepad/mapper/Mapper;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPilotingMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCharging:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->setGamePadMode(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPreviousGamePadState:I

    return v0
.end method

.method static synthetic access$2102(Lcom/parrot/freeflight/piloting/ui/DelosUIController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPreviousGamePadState:I

    return p1
.end method

.method static synthetic access$2200(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/piloting/ui/DelosCameraController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosCameraController:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mLastAccessoryType:I

    return v0
.end method

.method static synthetic access$2402(Lcom/parrot/freeflight/piloting/ui/DelosUIController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mLastAccessoryType:I

    return p1
.end method

.method static synthetic access$2502(Lcom/parrot/freeflight/piloting/ui/DelosUIController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentCommandChoice:I

    return p1
.end method

.method static synthetic access$2600(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updatePilotingMapper()V

    return-void
.end method

.method static synthetic access$2700(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updateView()V

    return-void
.end method

.method static synthetic access$2800(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mStartTakeOffTime:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTimeFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadMode:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDuration4GamePadText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDurationTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTimerHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationMenuHasExpanded:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationMenuHasExpanded:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mParrotLogoImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHideHud:Z

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAccessoryController:Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->applyTheme()V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method static synthetic access$802(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object p1
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    return-object v0
.end method

.method private applyTheme()V
    .locals 3

    .prologue
    .line 734
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->applyToBackground(Landroid/view/View;)V

    .line 735
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->applyToDrawable(Landroid/widget/ImageView;I)V

    .line 737
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 738
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->resetAnimation()V

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAccessoryController:Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAccessoryController:Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;->applyTheme()V

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->updateModel(Ljava/lang/Object;)V

    .line 743
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHideHud:Z

    if-eqz v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->reload()V

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 747
    return-void
.end method

.method private checkFlyingState()V
    .locals 6

    .prologue
    .line 946
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->getFlyingState()I

    move-result v0

    .line 947
    .local v0, "curFlyingState":I
    const-string v1, "FFMini.Pilot.ui"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current flying state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    if-eqz v0, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 950
    iget-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mStartTakeOffTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFlightDuration()Lcom/parrot/freeflight/piloting/preference/FlightDuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/FlightDuration;->getTakeOffTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mStartTakeOffTime:J

    .line 951
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->startTimer()V

    .line 953
    :cond_1
    return-void
.end method

.method private fixPreLollipopTheme(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 905
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 906
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mBackButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 907
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSettingsButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 908
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPhotoCaptureButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPhotoCaptureButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 909
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0e010e

    invoke-static {p1, v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 910
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosCameraController:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->getRecordButton()Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosCameraController:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->getRecordButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0e010a

    invoke-static {p1, v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 912
    :cond_0
    return-void
.end method

.method private hideAutoTakeOffButton(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1007
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1008
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHasThrowIt:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mIsHydrofoil:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 1009
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1010
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1011
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setZAdjustment(I)V

    .line 1012
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/DelosUIController$15;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController$15;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1028
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1033
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private resetAnimation()V
    .locals 2

    .prologue
    .line 1066
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mIsAutoTakeOffPending:Z

    if-nez v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    const v1, 0x7f02023c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1072
    :cond_1
    return-void
.end method

.method private setGamePadMode(Z)V
    .locals 5
    .param p1, "isGamePadMode"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 567
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadMode:Z

    if-eq v1, p1, :cond_3

    .line 568
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadMode:Z

    .line 569
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHideHud:Z

    if-nez v1, :cond_3

    .line 570
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mUselessView4GamePadMode:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 571
    .local v0, "v":Landroid/view/View;
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadMode:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    .line 573
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadZone:Landroid/view/View;

    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadMode:Z

    if-eqz v1, :cond_6

    move v1, v3

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadBatteryView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadMode:Z

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 575
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadMode:Z

    if-eqz v1, :cond_7

    .line 576
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDuration4GamePadText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDurationTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mBattery4GamePadText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mBatteryTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHideHud:Z

    if-nez v2, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-virtual {v1, p1, v3}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setGamePadMode(ZZ)V

    .line 585
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAccessoryController:Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAccessoryController:Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadMode:Z

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;->setGamePadMode(Z)V

    .line 586
    :cond_5
    return-void

    :cond_6
    move v1, v2

    .line 573
    goto :goto_2

    .line 579
    :cond_7
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDurationTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDuration4GamePadText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mBatteryTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mBattery4GamePadText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private setWingXQuadMode()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getWingXFlyingMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->requestWingXFlyingMode(I)V

    .line 639
    :cond_0
    return-void
.end method

.method private showAutoTakeOffButton(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1037
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHasThrowIt:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mIsHydrofoil:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1038
    if-eqz p1, :cond_1

    .line 1039
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1040
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1041
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setZAdjustment(I)V

    .line 1042
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/DelosUIController$16;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController$16;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1058
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1063
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private startTimer()V
    .locals 6

    .prologue
    .line 956
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTimerHandle:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 957
    iget-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mStartTakeOffTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mStartTakeOffTime:J

    .line 958
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$14;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController$14;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    .line 968
    .local v0, "updateTimeRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTimerHandle:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 969
    return-void
.end method

.method private stopTimer(Z)V
    .locals 5
    .param p1, "resetTimer"    # Z

    .prologue
    const/4 v4, 0x0

    .line 972
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTimerHandle:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 973
    if-eqz p1, :cond_0

    .line 974
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mStartTakeOffTime:J

    .line 975
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFlightDuration()Lcom/parrot/freeflight/piloting/preference/FlightDuration;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mStartTakeOffTime:J

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/piloting/preference/FlightDuration;->setTakeOffTime(J)V

    .line 977
    :cond_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDuration4GamePadText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTimeFormat:Ljava/text/DateFormat;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    :goto_0
    return-void

    .line 978
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDurationTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTimeFormat:Ljava/text/DateFormat;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateAccessory(Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;)V
    .locals 8
    .param p1, "accessoryState"    # Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 877
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mFlyingState:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_1

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->getCurrentAccessory()I

    move-result v1

    .line 883
    .local v1, "lastAccessory":I
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 884
    .local v0, "currentAccessory":I
    :goto_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->getSupportedAccessory()I

    move-result v2

    .line 885
    .local v2, "supportedAccessory":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mIsHydrofoil:Z

    .line 887
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentAccessory:I

    if-ne v3, v0, :cond_2

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSupportedAccessory:I

    if-eq v3, v2, :cond_3

    .line 888
    :cond_2
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentAccessory:I

    .line 889
    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSupportedAccessory:I

    .line 890
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentAccessory:I

    const/16 v5, 0x64

    if-ne v3, v5, :cond_3

    .line 891
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    const-class v7, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 895
    :cond_3
    iget-boolean v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHideHud:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAccessoryController:Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAccessoryController:Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    invoke-interface {v3}, Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;->isOpened()Z

    move-result v3

    if-nez v3, :cond_0

    .line 896
    :cond_4
    iget-boolean v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mIsHydrofoil:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHasThrowIt:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mFlyingState:I

    if-nez v3, :cond_7

    .line 897
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->showAutoTakeOffButton(Z)V

    goto :goto_0

    .line 883
    .end local v0    # "currentAccessory":I
    .end local v2    # "supportedAccessory":I
    :cond_5
    const/4 v0, -0x1

    goto :goto_1

    .restart local v0    # "currentAccessory":I
    .restart local v2    # "supportedAccessory":I
    :cond_6
    move v3, v4

    .line 885
    goto :goto_2

    .line 899
    :cond_7
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->hideAutoTakeOffButton(Z)V

    goto :goto_0
.end method

.method private updateAlertMessage()V
    .locals 4

    .prologue
    .line 771
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/model/DelosModel;->getAlertMessages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, "alertStrings":[Ljava/lang/String;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/widget/AlertView;->refresh([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 777
    .end local v0    # "alertStrings":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/AlertView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPause:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAlertSound:Lcom/parrot/freeflight/util/AlertSound;

    invoke-virtual {v1}, Lcom/parrot/freeflight/util/AlertSound;->startRepeatSound()V

    .line 779
    :goto_0
    return-void

    .line 778
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAlertSound:Lcom/parrot/freeflight/util/AlertSound;

    invoke-virtual {v1}, Lcom/parrot/freeflight/util/AlertSound;->stopRepeatSound()V

    goto :goto_0
.end method

.method private updateAutoTakeOffButton(Z)V
    .locals 4
    .param p1, "autoTakeOffPending"    # Z

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHasThrowIt:Z

    if-eqz v0, :cond_3

    .line 983
    if-eqz p1, :cond_2

    .line 984
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mThrowItTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 985
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    const v1, 0x7f020256

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 986
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 988
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 989
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1003
    :cond_1
    :goto_0
    return-void

    .line 992
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mThrowItTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 993
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    const v1, 0x7f02014f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 994
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0e010e

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 995
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 996
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->resetAnimation()V

    goto :goto_0

    .line 1000
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1001
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffAnimation:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0
.end method

.method private updateAutoTakeoffState(Z)V
    .locals 1
    .param p1, "autoTakeOffPending"    # Z

    .prologue
    .line 782
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mIsAutoTakeOffPending:Z

    if-eq v0, p1, :cond_1

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 785
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mIsAutoTakeOffPending:Z

    .line 786
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updateAutoTakeOffButton(Z)V

    .line 788
    :cond_1
    return-void
.end method

.method private updateBatteryChargeState(Z)V
    .locals 3
    .param p1, "isCharging"    # Z

    .prologue
    .line 915
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCharging:Z

    if-eq v0, p1, :cond_0

    .line 916
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCharging:Z

    .line 917
    if-eqz p1, :cond_1

    .line 918
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    const v1, 0x7f020096

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 919
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00c1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    const v1, 0x7f02014f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 922
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    const v1, 0x7f02018a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateBatteryLevel(I)V
    .locals 5
    .param p1, "batteryLevel"    # I

    .prologue
    .line 867
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mBatteryLevel:I

    if-eq v1, p1, :cond_0

    .line 868
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mBatteryLevel:I

    .line 869
    const-string v1, "%d %%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, "batteryText":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mBattery4GamePadText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    .end local v0    # "batteryText":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 871
    .restart local v0    # "batteryText":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mBatteryTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateConnectionState(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)V
    .locals 5
    .param p1, "connectionState"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 791
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-eq v2, p1, :cond_2

    .line 792
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 793
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    sget-object v4, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne v2, v4, :cond_3

    const/4 v0, 0x1

    .line 794
    .local v0, "isConnected":Z
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 795
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mOfflineTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 796
    if-nez v0, :cond_1

    .line 797
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mThrowItTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 799
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setOnlineMode(Z)V

    .line 801
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->checkFlyingState()V

    .line 803
    .end local v0    # "isConnected":Z
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 793
    goto :goto_0

    .restart local v0    # "isConnected":Z
    :cond_4
    move v2, v3

    .line 794
    goto :goto_1
.end method

.method private updateCurrentMapper()V
    .locals 3

    .prologue
    .line 619
    const-string v0, "FFMini.Pilot.ui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMapper mSelectedGamePad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->clear()V

    .line 623
    :cond_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHideHud:Z

    if-eqz v0, :cond_2

    .line 624
    const-string v0, "FFMini.Pilot.ui"

    const-string/jumbo v1, "updateMapper: mNavigationMapper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    .line 631
    :cond_1
    :goto_0
    return-void

    .line 627
    :cond_2
    const-string v0, "FFMini.Pilot.ui"

    const-string/jumbo v1, "updateMapper: mPilotingMapper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPilotingMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    goto :goto_0
.end method

.method private updateFlyingState(I)V
    .locals 5
    .param p1, "flyingState"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 806
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mFlyingState:I

    if-eq v0, p1, :cond_1

    .line 807
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mFlyingState:I

    .line 808
    packed-switch p1, :pswitch_data_0

    .line 864
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 810
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->stopTimer(Z)V

    .line 811
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->showAutoTakeOffButton(Z)V

    .line 813
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 814
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 818
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mStartTakeOffTime:J

    .line 819
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFlightDuration()Lcom/parrot/freeflight/piloting/preference/FlightDuration;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mStartTakeOffTime:J

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/piloting/preference/FlightDuration;->setTakeOffTime(J)V

    .line 820
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->startTimer()V

    .line 821
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->hideAutoTakeOffButton(Z)V

    .line 824
    :pswitch_4
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 825
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 826
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->resetAnimation()V

    goto :goto_0

    .line 832
    :pswitch_5
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->stopTimer(Z)V

    .line 833
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 834
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 835
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->showAutoTakeOffButton(Z)V

    goto :goto_0

    .line 839
    :pswitch_6
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mOnDroneNotInitListener:Lcom/parrot/freeflight/piloting/ui/DelosUIController$OnDroneNotInitListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController$OnDroneNotInitListener;->onDroneNotInit()V

    goto :goto_0

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->isNewFlyingStateReceived()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    packed-switch p1, :pswitch_data_1

    :pswitch_7
    goto :goto_0

    .line 857
    :pswitch_8
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mTakeOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 808
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 850
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private updateGamePadBatteryLevel(I)V
    .locals 6
    .param p1, "batteryLevel"    # I

    .prologue
    .line 589
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadBatteryLevel:I

    if-ne p1, v0, :cond_0

    .line 593
    :goto_0
    return-void

    .line 590
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadBatteryLevel:I

    .line 592
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadBatteryText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNavigationMapper(Landroid/view/inputmethod/BaseInputConnection;)V
    .locals 11
    .param p1, "connection"    # Landroid/view/inputmethod/BaseInputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 612
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentCommandChoice:I

    const/4 v5, 0x2

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    move v6, v4

    move-object v8, p0

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIIILcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/UIController;Landroid/view/inputmethod/BaseInputConnection;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v10

    .line 615
    .local v10, "navigationMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v10}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .line 616
    return-void
.end method

.method private updatePhotoCaptureState(I)V
    .locals 2
    .param p1, "captureState"    # I

    .prologue
    .line 928
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPhotoCaptureState:I

    if-eq v0, p1, :cond_0

    .line 929
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPhotoCaptureState:I

    .line 930
    packed-switch p1, :pswitch_data_0

    .line 939
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPhotoCaptureButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 932
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPhotoCaptureButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 930
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePilotingMapper()V
    .locals 11

    .prologue
    const/4 v4, 0x1

    .line 604
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentCommandChoice:I

    const/4 v5, 0x2

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    iget-object v9, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mConnection:Landroid/view/inputmethod/BaseInputConnection;

    move v6, v4

    move-object v8, p0

    invoke-static/range {v0 .. v9}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIIILcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/UIController;Landroid/view/inputmethod/BaseInputConnection;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v10

    .line 607
    .local v10, "pilotingMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPilotingMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->resetCommand()V

    .line 608
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPilotingMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, v10}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->update(Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    .line 609
    return-void
.end method

.method private updatePilotingMapper(Landroid/view/inputmethod/BaseInputConnection;)V
    .locals 12
    .param p1, "connection"    # Landroid/view/inputmethod/BaseInputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x1

    .line 596
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentCommandChoice:I

    const/4 v5, 0x2

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    move v6, v4

    move-object v8, p0

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIIILcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/UIController;Landroid/view/inputmethod/BaseInputConnection;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v10

    .line 599
    .local v10, "pilotingMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    new-instance v7, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 600
    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentCommandChoice:I

    move-object v5, v11

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;-><init>(Landroid/content/Context;ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ILcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->getGamePadJoystickParams()Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    move-result-object v0

    invoke-direct {v7, v8, v10, v0}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    iput-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPilotingMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .line 601
    return-void
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->isAutoTakeoffEnable()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updateAutoTakeoffState(Z)V

    .line 751
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updateAlertMessage()V

    .line 752
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHideHud:Z

    if-nez v0, :cond_3

    .line 753
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getFlyingState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updateFlyingState(I)V

    .line 754
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getBatteryLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updateBatteryLevel(I)V

    .line 755
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->isCharging()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updateBatteryChargeState(Z)V

    .line 756
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getPhotoCaptureState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updatePhotoCaptureState(I)V

    .line 757
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->updateModel(Ljava/lang/Object;)V

    .line 761
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updateConnectionState(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)V

    .line 762
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getAccessoryState()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updateAccessory(Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;)V

    .line 763
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationControllerInterface:Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationControllerInterface:Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;->updateView(Lcom/parrot/freeflight/core/model/DelosModel;)V

    .line 764
    :cond_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHasThrowIt:Z

    if-nez v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAutoTakeOffButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->getBatteryLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updateGamePadBatteryLevel(I)V

    .line 768
    :cond_2
    return-void

    .line 759
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->update()V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->close()V

    .line 463
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 464
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 465
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAlertSound:Lcom/parrot/freeflight/util/AlertSound;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/AlertSound;->release()V

    .line 466
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->removeGamePadListener()V

    .line 467
    return-void
.end method

.method public hideUI(Z)V
    .locals 10
    .param p1, "hide"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 703
    iget-boolean v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHideHud:Z

    if-eq v7, p1, :cond_13

    .line 704
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHideHud:Z

    .line 705
    if-eqz p1, :cond_7

    const/4 v5, 0x4

    .line 706
    .local v5, "visibility":I
    :goto_0
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 707
    .local v0, "childViewCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_f

    .line 708
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 710
    .local v4, "view":Landroid/view/View;
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    if-eq v4, v7, :cond_0

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosCameraController:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-virtual {v7}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->getPreview()Landroid/view/TextureView;

    move-result-object v7

    if-ne v4, v7, :cond_8

    :cond_0
    move v1, v8

    .line 711
    .local v1, "consumed":Z
    :goto_2
    if-nez v1, :cond_1

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAccessoryController:Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    if-eqz v7, :cond_a

    iget-object v9, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAccessoryController:Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    if-nez p1, :cond_9

    move v7, v8

    :goto_3
    invoke-interface {v9, v4, v7}, Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;->shouldChangeVisibility(Landroid/view/View;Z)Z

    move-result v7

    if-nez v7, :cond_a

    :cond_1
    move v1, v8

    .line 712
    :goto_4
    if-nez v1, :cond_2

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v7, v4}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->shouldChangeVisibility(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_b

    :cond_2
    move v1, v8

    .line 713
    :goto_5
    if-nez v1, :cond_3

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mUselessView4GamePadMode:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-boolean v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadMode:Z

    if-eqz v7, :cond_c

    :cond_3
    move v1, v8

    .line 714
    :goto_6
    if-nez v1, :cond_4

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadZone:Landroid/view/View;

    if-ne v4, v7, :cond_d

    iget-boolean v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadMode:Z

    if-nez v7, :cond_d

    :cond_4
    move v1, v8

    .line 715
    :goto_7
    if-nez v1, :cond_5

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadBatteryView:Landroid/view/View;

    if-ne v4, v7, :cond_e

    iget-boolean v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadMode:Z

    if-nez v7, :cond_e

    :cond_5
    move v1, v8

    .line 716
    :goto_8
    if-nez v1, :cond_6

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 707
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "childViewCount":I
    .end local v1    # "consumed":Z
    .end local v2    # "i":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "visibility":I
    :cond_7
    move v5, v6

    .line 705
    goto :goto_0

    .restart local v0    # "childViewCount":I
    .restart local v2    # "i":I
    .restart local v4    # "view":Landroid/view/View;
    .restart local v5    # "visibility":I
    :cond_8
    move v1, v6

    .line 710
    goto :goto_2

    .restart local v1    # "consumed":Z
    :cond_9
    move v7, v6

    .line 711
    goto :goto_3

    :cond_a
    move v1, v6

    goto :goto_4

    :cond_b
    move v1, v6

    .line 712
    goto :goto_5

    :cond_c
    move v1, v6

    .line 713
    goto :goto_6

    :cond_d
    move v1, v6

    .line 714
    goto :goto_7

    :cond_e
    move v1, v6

    .line 715
    goto :goto_8

    .line 718
    .end local v1    # "consumed":Z
    .end local v4    # "view":Landroid/view/View;
    :cond_f
    if-nez p1, :cond_11

    .line 719
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updateView()V

    .line 720
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAccessoryController:Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAccessoryController:Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    invoke-interface {v7}, Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;->refreshVisibility()V

    .line 721
    :cond_10
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationControllerInterface:Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationControllerInterface:Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;

    invoke-interface {v7}, Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;->hideMenu()V

    .line 723
    :cond_11
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosCameraController:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    iget-boolean v9, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHideHud:Z

    invoke-virtual {v7, v9}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->updateRecordButtonVisibility(Z)V

    .line 724
    if-nez p1, :cond_12

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationControllerInterface:Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;

    if-eqz v7, :cond_12

    .line 725
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosCameraController:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-virtual {v7}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->getRecordButton()Landroid/widget/ImageButton;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v7

    if-nez v7, :cond_14

    move v3, v8

    .line 726
    .local v3, "spaceIsreduced":Z
    :goto_9
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationControllerInterface:Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;

    invoke-interface {v6, v3}, Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;->spaceChanged(Z)V

    .line 728
    .end local v3    # "spaceIsreduced":Z
    :cond_12
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->updateCurrentMapper()V

    .line 730
    .end local v0    # "childViewCount":I
    .end local v2    # "i":I
    .end local v5    # "visibility":I
    :cond_13
    return-void

    .restart local v0    # "childViewCount":I
    .restart local v2    # "i":I
    .restart local v5    # "visibility":I
    :cond_14
    move v3, v6

    .line 725
    goto :goto_9
.end method

.method public lowMemory()V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHideHud:Z

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSettingsButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/DelosUIController$11;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController$11;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation;->hideSettings(Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 650
    const/4 v0, 0x1

    .line 653
    :goto_0
    return v0

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosCameraController:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->readyToStopExecutor()V

    .line 653
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 500
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onJoystickEvent(FFFF)Z
    .locals 1
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F

    .prologue
    .line 490
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onJoystickEvent(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 485
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 480
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 475
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosCameraController:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 476
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 450
    const-string v0, "hud_hidden"

    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHideHud:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 451
    const-string v0, "is_charging"

    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCharging:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 452
    const-string v0, "start_takeoff_time"

    iget-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mStartTakeOffTime:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 453
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAccessoryController:Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    if-eqz v0, :cond_0

    .line 454
    const-string v0, "accessory_state"

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAccessoryController:Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;->isOpened()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationControllerInterface:Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAnimationControllerInterface:Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 458
    :cond_1
    return-void
.end method

.method public onSettingsPressed()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 505
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mHideHud:Z

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->onBackPressed()Z

    .line 513
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->removeGamePadListener()V

    .line 509
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->setWingXQuadMode()V

    .line 510
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mRootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSettingsButton:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    move-object v6, v2

    invoke-static/range {v0 .. v7}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation;->revealSettings(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;Landroid/view/View;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 511
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->hideUI(Z)V

    goto :goto_0
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 495
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onTriggerEvent(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPause:Z

    .line 428
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->setWingXQuadMode()V

    .line 429
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mAlertSound:Lcom/parrot/freeflight/util/AlertSound;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/AlertSound;->stopRepeatSound()V

    .line 430
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->pause()V

    .line 431
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosCameraController:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->stop()V

    .line 433
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mPause:Z

    .line 410
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->listenEvents(Landroid/content/Context;Z)V

    .line 411
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->start()V

    .line 412
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosCameraController:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->start()V

    .line 413
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 414
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 417
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->checkFlyingState()V

    .line 418
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 437
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->stop()V

    .line 438
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->listenEvents(Landroid/content/Context;Z)V

    .line 439
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->stopTimer(Z)V

    .line 440
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 441
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mDelosModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 442
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->setMode(I)V

    .line 444
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->clear()V

    .line 446
    :cond_0
    return-void
.end method
