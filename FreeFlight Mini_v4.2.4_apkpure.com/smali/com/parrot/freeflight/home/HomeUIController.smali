.class public Lcom/parrot/freeflight/home/HomeUIController;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/home/HomeUIController$AcademyListener;
    }
.end annotation


# static fields
.field private static final BATTERY_CHARGING_ANIMATION_DURATION:I = 0x3e8

.field private static final BATTERY_CHARGING_MAX_ALPHA:F = 1.0f

.field private static final BATTERY_CHARGING_MIN_ALPHA:F = 0.0f

.field public static final DRONE_NAME_EXTRA_KEY:Ljava/lang/String; = "DroneNameText"

.field private static final DRONE_SCHOOL_URL:Ljava/lang/String; = "http://www.parrot.com/%s/drones-tutorial/new-minidrones/"

.field private static final DRONE_STORE_URL:Ljava/lang/String; = "http://www.parrot.com/%s/buy/minidrone/"

.field public static final TRANSITION_NAME:Ljava/lang/String; = "DroneName"


# instance fields
.field private final mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mActivityWindow:Landroid/view/Window;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAndroidConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBatteryLevel:I

.field private final mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBlacklistUpdatedReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBracketView:Lcom/parrot/freeflight/home/BracketView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCardParentLayout:Landroid/support/percent/PercentRelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCharging:Z

.field private final mConnectionStatusTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDeviceListListener:Lcom/parrot/freeflight/core/DeviceConnector$IDeviceListListener;

.field private final mDrawer:Landroid/support/v4/widget/DrawerLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneBatteryButtonView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneBatteryFrameLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneBatteryImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneBatteryTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

.field mDroneConnectorState:I

.field private final mDroneFullBatteryImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneIconId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private final mDroneImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneListView:Lcom/parrot/freeflight/home/DroneListView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneMemoryButtonView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneMemorySpaceImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneMemorySpaceTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneStatusImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneStatusLoadingImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneUpdateButtonView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneUpdateImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneUpdateTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDropDownImageButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFirstCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFirstCardBackgroundImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFirstCardImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFirstCardTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

.field private final mGamePadStatusBar:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadStatusBarRootLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMassStoragePath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMediaCountCompat:Lcom/parrot/freeflight/media/MediaCountCompat;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mModel:Lcom/parrot/freeflight/core/model/Model;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

.field private final mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

.field private final mMyFlightsButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNavigationView:Landroid/support/design/widget/NavigationView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNavigationViewHeader:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNavigationViewHeaderImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNavigationViewHeaderTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPhotosCount:I

.field private final mPilotingCardLayout:Landroid/support/percent/PercentRelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRemoteStatusImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRootLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSecondCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSecondCardBackgroundView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSecondCardImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSecondCardTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

.field private final mStartIconImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mStatusBar:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mStatusBarRootLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mToolBarTitleTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mToolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUnreadCount:I

.field private final mUnreadMediaTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUserDrone:Lcom/parrot/freeflight/UserDrone;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mWindowSizePoint:Landroid/graphics/Point;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/view/Window;Landroid/support/design/widget/NavigationView;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Lcom/parrot/freeflight/core/BitmapCache;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/purchase/Purchaser;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "modelStore"    # Lcom/parrot/freeflight/core/model/ModelStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "deviceConnector"    # Lcom/parrot/freeflight/core/DeviceConnector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "academyManager"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "videoStreamingController"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "activityWindow"    # Landroid/view/Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "navigationView"    # Landroid/support/design/widget/NavigationView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "toolbar"    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10, "drawer"    # Landroid/support/v4/widget/DrawerLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p11, "bitmapCache"    # Lcom/parrot/freeflight/core/BitmapCache;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p12, "gamePadManager"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p13, "permissionChecker"    # Lcom/parrot/freeflight/util/PermissionChecker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p14, "purchaser"    # Lcom/parrot/freeflight/purchase/Purchaser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    const/4 v6, 0x0

    iput v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorState:I

    .line 253
    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;->ARDISCOVERY_CONNECTION_STATE_UNKNOWN:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    .line 262
    const/4 v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBatteryLevel:I

    .line 263
    const/4 v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPhotosCount:I

    .line 264
    const/4 v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadCount:I

    .line 265
    const/4 v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneIconId:I

    .line 271
    new-instance v6, Lcom/parrot/freeflight/home/HomeUIController$1;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/home/HomeUIController$1;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBlacklistUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 280
    new-instance v6, Lcom/parrot/freeflight/home/HomeUIController$2;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/home/HomeUIController$2;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    .line 299
    new-instance v6, Lcom/parrot/freeflight/home/HomeUIController$3;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/home/HomeUIController$3;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 307
    new-instance v6, Lcom/parrot/freeflight/home/HomeUIController$4;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/home/HomeUIController$4;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    .line 668
    new-instance v6, Lcom/parrot/freeflight/home/HomeUIController$24;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/home/HomeUIController$24;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    .line 696
    new-instance v6, Lcom/parrot/freeflight/home/HomeUIController$25;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/home/HomeUIController$25;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    .line 1175
    new-instance v6, Lcom/parrot/freeflight/home/HomeUIController$28;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/home/HomeUIController$28;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    .line 1220
    new-instance v6, Lcom/parrot/freeflight/home/HomeUIController$29;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/home/HomeUIController$29;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceListListener:Lcom/parrot/freeflight/core/DeviceConnector$IDeviceListListener;

    .line 1290
    new-instance v6, Lcom/parrot/freeflight/home/HomeUIController$31;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/home/HomeUIController$31;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAndroidConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 333
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    .line 334
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mActivityWindow:Landroid/view/Window;

    .line 335
    new-instance v6, Lcom/parrot/freeflight/home/HomeUIController$AcademyListener;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/home/HomeUIController$AcademyListener;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 336
    iput-object p3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 337
    iput-object p4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    .line 338
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    .line 339
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 340
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;

    .line 341
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationView:Landroid/support/design/widget/NavigationView;

    .line 342
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 343
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    .line 344
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWindowSizePoint:Landroid/graphics/Point;

    .line 345
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    .line 347
    const v6, 0x7f0f00b2

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRootLayout:Landroid/view/View;

    .line 348
    const v6, 0x7f0f0105

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/home/BracketView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBracketView:Lcom/parrot/freeflight/home/BracketView;

    .line 349
    const v6, 0x7f0f00db

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mToolBarTitleTextView:Landroid/widget/TextView;

    .line 350
    const v6, 0x7f0f00f0

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMyFlightsButton:Landroid/widget/Button;

    .line 351
    const v6, 0x7f0f00f5

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mStatusBar:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    .line 352
    const v6, 0x7f0f00f6

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mStatusBarRootLayout:Landroid/widget/RelativeLayout;

    .line 353
    const v6, 0x7f0f0108

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/percent/PercentRelativeLayout;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mCardParentLayout:Landroid/support/percent/PercentRelativeLayout;

    .line 354
    const v6, 0x7f0f00f7

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneStatusImageView:Landroid/widget/ImageView;

    .line 355
    const v6, 0x7f0f00f8

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneStatusLoadingImageView:Landroid/widget/ImageView;

    .line 356
    const v6, 0x7f0f00c9

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/view/UnclickableEditText;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    .line 357
    const v6, 0x7f0f00f9

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemoryButtonView:Landroid/view/View;

    .line 358
    const v6, 0x7f0f00fa

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceImageView:Landroid/widget/ImageView;

    .line 359
    const v6, 0x7f0f00e0

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceTextView:Landroid/widget/TextView;

    .line 360
    const v6, 0x7f0f00fc

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadMediaTextView:Landroid/widget/TextView;

    .line 361
    const v6, 0x7f0f00fd

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryButtonView:Landroid/view/View;

    .line 362
    const v6, 0x7f0f00fb

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryFrameLayout:Landroid/view/View;

    .line 363
    const v6, 0x7f0f00fe

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryImageView:Landroid/widget/ImageView;

    .line 364
    const v6, 0x7f0f00ff

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneFullBatteryImageView:Landroid/widget/ImageView;

    .line 365
    const v6, 0x7f0f00be

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryTextView:Landroid/widget/TextView;

    .line 366
    const v6, 0x7f0f0101

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateButtonView:Landroid/view/View;

    .line 367
    const v6, 0x7f0f0103

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateImageView:Landroid/widget/ImageView;

    .line 368
    const v6, 0x7f0f0102

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateTextView:Landroid/widget/TextView;

    .line 370
    const v6, 0x7f0f0100

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDropDownImageButton:Landroid/widget/ImageButton;

    .line 371
    const v6, 0x7f0f0109

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    .line 372
    const v6, 0x7f0f010b

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardBackgroundImageView:Landroid/widget/ImageView;

    .line 373
    const v6, 0x7f0f010c

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardTextView:Landroid/widget/TextView;

    .line 374
    const v6, 0x7f0f010d

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardImageView:Landroid/widget/ImageView;

    .line 375
    const v6, 0x7f0f010e

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    .line 376
    const v6, 0x7f0f0110

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardBackgroundView:Landroid/widget/ImageView;

    .line 377
    const v6, 0x7f0f0111

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardTextView:Landroid/widget/TextView;

    .line 378
    const v6, 0x7f0f0112

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardImageView:Landroid/widget/ImageView;

    .line 379
    const v6, 0x7f0f00cd

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mConnectionStatusTextView:Landroid/widget/TextView;

    .line 380
    const v6, 0x7f0f0104

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/percent/PercentRelativeLayout;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPilotingCardLayout:Landroid/support/percent/PercentRelativeLayout;

    .line 381
    const v6, 0x7f0f0106

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneImageView:Landroid/widget/ImageView;

    .line 382
    const v6, 0x7f0f0107

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mStartIconImageView:Landroid/widget/ImageView;

    .line 383
    const v6, 0x7f0f0113

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/home/DroneListView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneListView:Lcom/parrot/freeflight/home/DroneListView;

    .line 384
    const v6, 0x7f0f00f1

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePadStatusBar:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    .line 385
    const v6, 0x7f0f00f2

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePadStatusBarRootLayout:Landroid/widget/RelativeLayout;

    .line 386
    const v6, 0x7f0f00f4

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteStatusImageView:Landroid/widget/ImageView;

    .line 388
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationView:Landroid/support/design/widget/NavigationView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/design/widget/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationViewHeader:Landroid/view/ViewGroup;

    .line 389
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationViewHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0f0234

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationViewHeaderTextView:Landroid/widget/TextView;

    .line 390
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationViewHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0f0233

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationViewHeaderImageView:Landroid/widget/ImageView;

    .line 391
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 392
    .local v5, "resources":Landroid/content/res/Resources;
    const v6, 0x7f020063

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 393
    .local v3, "defaultAvatar":Landroid/graphics/Bitmap;
    const v6, 0x7f0a0087

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 394
    .local v2, "bitmapSize":I
    invoke-static {v3, v2, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 395
    invoke-static {v5, v3}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 396
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    const v7, 0x7f0a0087

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 397
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 398
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setDither(Z)V

    .line 399
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationViewHeaderImageView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    new-instance v6, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 402
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$5;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$5;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 409
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationView:Landroid/support/design/widget/NavigationView;

    const v7, 0x7f0f0116

    invoke-virtual {v6, v7}, Landroid/support/design/widget/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 410
    .local v4, "navigationViewFooterTextView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v7, 0x7f080632

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "4.2.4"

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationViewHeader:Landroid/view/ViewGroup;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$6;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$6;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMyFlightsButton:Landroid/widget/Button;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$7;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$7;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mStatusBar:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$8;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$8;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mStatusBar:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$9;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$9;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 456
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$10;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$10;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/view/UnclickableEditText;->setOnActionListener(Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;)V

    .line 474
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePadStatusBar:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$11;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$11;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemoryButtonView:Landroid/view/View;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$12;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$12;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryButtonView:Landroid/view/View;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$13;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$13;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateButtonView:Landroid/view/View;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$14;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$14;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDropDownImageButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$15;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$15;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneListView:Lcom/parrot/freeflight/home/DroneListView;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$16;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$16;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/home/DroneListView;->setOnVisibilityChangeListener(Lcom/parrot/freeflight/home/DeviceListView$OnVisibilityChangeListener;)V

    .line 540
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneListView:Lcom/parrot/freeflight/home/DroneListView;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$17;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$17;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/home/DroneListView;->setOnAnimationListener(Lcom/parrot/freeflight/home/DeviceListView$OnAnimationListener;)V

    .line 554
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneListView:Lcom/parrot/freeflight/home/DroneListView;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$18;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$18;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/home/DroneListView;->setOnDeviceClickListener(Lcom/parrot/freeflight/home/DeviceListView$OnDeviceClickListener;)V

    .line 563
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$19;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$19;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$20;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$20;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPilotingCardLayout:Landroid/support/percent/PercentRelativeLayout;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$21;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$21;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Landroid/support/percent/PercentRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryButtonView:Landroid/view/View;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$22;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$22;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationView:Landroid/support/design/widget/NavigationView;

    new-instance v7, Lcom/parrot/freeflight/home/HomeUIController$23;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/HomeUIController$23;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v6, v7}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 619
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 621
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadMediaTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v8, 0x7f0e00c1

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColor(Landroid/view/View;I)V

    .line 622
    invoke-virtual/range {p7 .. p7}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWindowSizePoint:Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 623
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;

    const v7, 0x7f020226

    iget-object v8, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWindowSizePoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWindowSizePoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/parrot/freeflight/core/BitmapCache;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 624
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRootLayout:Landroid/view/View;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRootLayout:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 625
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->applyThemeToNavigationView()V

    .line 626
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mToolBarTitleTextView:Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 627
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMyFlightsButton:Landroid/widget/Button;

    invoke-static {v6, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 628
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 629
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mConnectionStatusTextView:Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 630
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceTextView:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 631
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadMediaTextView:Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 632
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryTextView:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 633
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateTextView:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 634
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardTextView:Landroid/widget/TextView;

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 635
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardTextView:Landroid/widget/TextView;

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 636
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 637
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {p3, v6}, Lcom/parrot/freeflight/core/model/ModelStore;->addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 638
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/UserDrone;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/UserDrone;)Lcom/parrot/freeflight/UserDrone;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/UserDrone;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateProfileInfos()V

    return-void
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/util/PermissionChecker;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->onStatusBarClicked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/view/UnclickableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->onGamePadStatusBarClicked()V

    return-void
.end method

.method static synthetic access$1800(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->startDroneMemoryActivity()V

    return-void
.end method

.method static synthetic access$1900(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/DroneListView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneListView:Lcom/parrot/freeflight/home/DroneListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/UserDrone;ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/UserDrone;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/home/HomeUIController;->updateStatusBar(Lcom/parrot/freeflight/UserDrone;ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/DeviceConnector$IDeviceListListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceListListener:Lcom/parrot/freeflight/core/DeviceConnector$IDeviceListListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/DeviceConnector;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/support/percent/PercentRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPilotingCardLayout:Landroid/support/percent/PercentRelativeLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDropDownImageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/parrot/freeflight/home/HomeUIController;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/home/HomeUIController;->switchPilotingCardVisibility(ZZ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/parrot/freeflight/home/HomeUIController;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/home/HomeUIController;->switchDropDownImageOrientation(ZZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->onFirstCardClicked()V

    return-void
.end method

.method static synthetic access$2700(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->onSecondCardClicked()V

    return-void
.end method

.method static synthetic access$2800(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->onPilotingCardClicked()V

    return-void
.end method

.method static synthetic access$2900(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->onBatteryClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/parrot/freeflight/home/HomeUIController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->getDroneSchoolUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/core/model/Model;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/Model;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/parrot/freeflight/home/HomeUIController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->getDroneStoreUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/view/Window;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mActivityWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/parrot/freeflight/home/HomeUIController;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/home/HomeUIController;->startDroneMemoryActivity(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/parrot/freeflight/home/HomeUIController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/home/HomeUIController;->updateView(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/parrot/freeflight/home/HomeUIController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->isBluetoothOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updatePhotosCount()V

    return-void
.end method

.method static synthetic access$3900(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationViewHeaderImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/home/HomeUIController;->updateGamePadBar(Lcom/parrot/freeflight/gamepad/GamePad;)V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->showLastMediasTakenSnackbar()V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateDroneInfo()V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateFwCompatInfo()V

    return-void
.end method

.method private applyFontToMenuItem(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 809
    new-instance v0, Landroid/text/SpannableString;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 810
    .local v0, "newTitle":Landroid/text/SpannableString;
    new-instance v1, Lcom/parrot/freeflight/util/ui/CustomTypefaceSpan;

    const-string v2, ""

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->getFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/parrot/freeflight/util/ui/CustomTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 811
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 812
    return-void
.end method

.method private applyThemeToNavigationView()V
    .locals 8

    .prologue
    .line 797
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationView:Landroid/support/design/widget/NavigationView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/design/widget/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 798
    .local v0, "header":Landroid/view/ViewGroup;
    const v6, 0x7f0f0234

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 799
    .local v1, "headerTextView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 800
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationView:Landroid/support/design/widget/NavigationView;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v7}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v7

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/design/widget/NavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 801
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v6}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 802
    .local v3, "menu":Landroid/view/Menu;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v3}, Landroid/view/Menu;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 803
    invoke-interface {v3, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 804
    .local v4, "menuItem":Landroid/view/MenuItem;
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/home/HomeUIController;->applyFontToMenuItem(Landroid/view/MenuItem;)V

    .line 802
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 806
    .end local v4    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method private applyUiTheme()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1387
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v2

    .line 1389
    .local v2, "mainColor":I
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductTileColor()I

    move-result v3

    .line 1391
    .local v3, "tileColor":I
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->applyThemeToNavigationView()V

    .line 1393
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mStatusBarRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1394
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePadStatusBarRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1396
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1397
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1398
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1399
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDropDownImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->applyToDrawable(Landroid/widget/ImageView;I)V

    .line 1401
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mStartIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->applyToDrawable(Landroid/widget/ImageView;I)V

    .line 1402
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-eqz v4, :cond_2

    .line 1403
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    invoke-virtual {v4}, Lcom/parrot/freeflight/UserDrone;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/parrot/freeflight/home/HomeUIController;->updateDroneIcon(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 1405
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRootLayout:Landroid/view/View;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v7}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1410
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    instance-of v4, v4, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v4, :cond_1

    .line 1411
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v4, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    .line 1412
    .local v1, "droneConnected":Z
    if-nez v1, :cond_3

    .line 1413
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBracketView:Lcom/parrot/freeflight/home/BracketView;

    iget-object v8, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v9, 0x7f0e00ec

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->applyToDrawable(Landroid/widget/ImageView;I)V

    .line 1417
    :goto_1
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-eqz v4, :cond_0

    .line 1418
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRootLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v1, :cond_4

    move v4, v5

    :goto_2
    invoke-static {v7, v4}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->convertDrawableToGreyScale(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    .line 1420
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v1, :cond_5

    :goto_3
    invoke-static {v4, v5}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->convertDrawableToGreyScale(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    .line 1422
    .end local v1    # "droneConnected":Z
    :cond_1
    return-void

    .line 1407
    :cond_2
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;

    const v7, 0x7f020226

    iget-object v8, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWindowSizePoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWindowSizePoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v7, v8, v9}, Lcom/parrot/freeflight/core/BitmapCache;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1408
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRootLayout:Landroid/view/View;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRootLayout:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1415
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "droneConnected":Z
    :cond_3
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBracketView:Lcom/parrot/freeflight/home/BracketView;

    iget-object v8, p0, Lcom/parrot/freeflight/home/HomeUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v8}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->applyToDrawable(Landroid/widget/ImageView;I)V

    goto :goto_1

    :cond_4
    move v4, v6

    .line 1418
    goto :goto_2

    :cond_5
    move v5, v6

    .line 1420
    goto :goto_3
.end method

.method private changeUpdateButtonDisplay(IIII)V
    .locals 5
    .param p1, "text"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "color"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p3, "background"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4, "textStartAlignmentId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x0

    .line 945
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 946
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 947
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateButtonView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 948
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mConnectionStatusTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 950
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 951
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 952
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintImageViewDrawable(Landroid/widget/ImageView;I)V

    .line 953
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateButtonView:Landroid/view/View;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p3, v3}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 957
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 958
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v4, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 960
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    invoke-virtual {v1}, Lcom/parrot/freeflight/view/UnclickableEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 961
    .restart local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const v1, 0x7f0f0101

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 962
    return-void
.end method

.method private getDelos3AccessoryIcon()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    instance-of v0, v0, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_2

    .line 1136
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v0, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->hasLightAccessories()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    const v0, 0x7f020079

    .line 1144
    :goto_0
    return v0

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v0, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->hasGunAccessories()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1139
    const v0, 0x7f020078

    goto :goto_0

    .line 1140
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v0, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->hasClawAccessories()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1141
    const v0, 0x7f020077

    goto :goto_0

    .line 1144
    :cond_2
    const v0, 0x7f020076

    goto :goto_0
.end method

.method private getDelosEvoModelIcon(I)I
    .locals 2
    .param p1, "defaultIcon"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 1150
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    instance-of v1, v1, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v1, :cond_0

    .line 1151
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v1, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->getProductModel()I

    move-result v0

    .line 1152
    .local v0, "model":I
    packed-switch v0, :pswitch_data_0

    .line 1172
    .end local v0    # "model":I
    .end local p1    # "defaultIcon":I
    :cond_0
    :goto_0
    return p1

    .line 1154
    .restart local v0    # "model":I
    .restart local p1    # "defaultIcon":I
    :pswitch_0
    const p1, 0x7f020074

    goto :goto_0

    .line 1156
    :pswitch_1
    const p1, 0x7f02007b

    goto :goto_0

    .line 1158
    :pswitch_2
    const p1, 0x7f02007a

    goto :goto_0

    .line 1160
    :pswitch_3
    const p1, 0x7f02007c

    goto :goto_0

    .line 1162
    :pswitch_4
    const p1, 0x7f02007d

    goto :goto_0

    .line 1164
    :pswitch_5
    const p1, 0x7f02007e

    goto :goto_0

    .line 1166
    :pswitch_6
    const p1, 0x7f020081

    goto :goto_0

    .line 1152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private getDroneSchoolUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 665
    const-string v0, "http://www.parrot.com/%s/drones-tutorial/new-minidrones/"

    invoke-static {v0}, Lcom/parrot/freeflight/util/WebUrlBuilder;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDroneStoreUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 660
    const-string v0, "http://www.parrot.com/%s/buy/minidrone/"

    invoke-static {v0}, Lcom/parrot/freeflight/util/WebUrlBuilder;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSwingModelIcon(I)I
    .locals 2
    .param p1, "defaultIcon"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 1118
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    instance-of v1, v1, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v1, :cond_0

    .line 1119
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v1, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->getProductModel()I

    move-result v0

    .line 1120
    .local v0, "model":I
    packed-switch v0, :pswitch_data_0

    .line 1130
    .end local v0    # "model":I
    .end local p1    # "defaultIcon":I
    :cond_0
    :goto_0
    return p1

    .line 1122
    .restart local v0    # "model":I
    .restart local p1    # "defaultIcon":I
    :pswitch_0
    const p1, 0x7f02007f

    goto :goto_0

    .line 1124
    :pswitch_1
    const p1, 0x7f020080

    goto :goto_0

    .line 1120
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isBluetoothOn()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1308
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1309
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    .line 1310
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 1311
    .local v1, "state":I
    const/16 v3, 0xc

    if-eq v1, v3, :cond_0

    const/16 v3, 0xb

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 1313
    .end local v1    # "state":I
    :cond_1
    return v2
.end method

.method private onBatteryClicked()V
    .locals 5

    .prologue
    .line 1232
    iget v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorState:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-eqz v2, :cond_0

    .line 1235
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    invoke-virtual {v3}, Lcom/parrot/freeflight/UserDrone;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;

    move-result-object v0

    .line 1236
    .local v0, "batteryInfoIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1237
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 1238
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryImageView:Landroid/widget/ImageView;

    .line 1239
    invoke-virtual {v4}, Landroid/widget/ImageView;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object v1

    .line 1240
    .local v1, "options":Landroid/support/v4/app/ActivityOptionsCompat;
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1246
    .end local v0    # "batteryInfoIntent":Landroid/content/Intent;
    .end local v1    # "options":Landroid/support/v4/app/ActivityOptionsCompat;
    :cond_0
    :goto_0
    return-void

    .line 1242
    .restart local v0    # "batteryInfoIntent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onFirstCardClicked()V
    .locals 3

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_DELOS3:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/PilotingActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1214
    return-void
.end method

.method private onGamePadStatusBarClicked()V
    .locals 4

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1210
    return-void
.end method

.method private onPilotingCardClicked()V
    .locals 3

    .prologue
    .line 1249
    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorState:I

    if-nez v0, :cond_0

    .line 1250
    const-string v0, "FFMini.Home"

    const-string v1, "Clicked on piloting card while state is UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :goto_0
    return-void

    .line 1251
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1252
    const-string v0, "FFMini.Home"

    const-string v1, "Clicked on piloting card while state is NO_DRONE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1253
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-nez v0, :cond_2

    .line 1254
    const-string v0, "FFMini.Home"

    const-string v1, "Clicked on second card while state is not NO_DRONE nor UNKNOWN but mUserDrone = null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1256
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    invoke-virtual {v2}, Lcom/parrot/freeflight/UserDrone;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/PilotingActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onSecondCardClicked()V
    .locals 4

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->getDroneStoreUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1218
    return-void
.end method

.method private onStatusBarClicked()V
    .locals 4

    .prologue
    .line 1186
    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1193
    :goto_0
    return-void

    .line 1188
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorState:I

    if-nez v0, :cond_1

    .line 1189
    const-string v0, "FFMini.Home"

    const-string v1, "Clicked on start button while state is UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1191
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->startDroneInfosActivity()V

    goto :goto_0
.end method

.method private showDiscoveringTiles()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 823
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPilotingCardLayout:Landroid/support/percent/PercentRelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 824
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mCardParentLayout:Landroid/support/percent/PercentRelativeLayout;

    invoke-virtual {v1, v5}, Landroid/support/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 825
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardTextView:Landroid/widget/TextView;

    const v2, 0x7f0802ce

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 826
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;

    const v2, 0x7f0201bf

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/parrot/freeflight/core/BitmapCache;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 827
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 828
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;

    const v2, 0x7f020262

    invoke-virtual {v1, v2, v5, v5}, Lcom/parrot/freeflight/core/BitmapCache;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 829
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardBackgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 831
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardTextView:Landroid/widget/TextView;

    const v2, 0x7f0800f0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 832
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;

    const v2, 0x7f020229

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/parrot/freeflight/core/BitmapCache;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 833
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 834
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;

    const v2, 0x7f02025d

    invoke-virtual {v1, v2, v5, v5}, Lcom/parrot/freeflight/core/BitmapCache;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 835
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 836
    return-void
.end method

.method private showLastMediasTakenSnackbar()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1035
    iget v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorState:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v5, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v0, Lcom/parrot/freeflight/core/model/DelosModel;

    .line 1037
    .local v0, "delosModel":Lcom/parrot/freeflight/core/model/DelosModel;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getPhotoCountTakenDuringRun()I

    move-result v2

    .line 1039
    .local v2, "photoCountTakenDuringRun":I
    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->isOnTheGround()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1040
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getRunId()Ljava/lang/String;

    move-result-object v3

    .line 1042
    .local v3, "runId":Ljava/lang/String;
    if-ne v2, v7, :cond_1

    .line 1043
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v6, 0x7f0803c6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1047
    .local v1, "msg":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRootLayout:Landroid/view/View;

    invoke-static {v5, v1, v8}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v4

    .line 1048
    .local v4, "snackbar":Landroid/support/design/widget/Snackbar;
    const v5, 0x7f08066d

    new-instance v6, Lcom/parrot/freeflight/home/HomeUIController$26;

    invoke-direct {v6, p0, v3, v2}, Lcom/parrot/freeflight/home/HomeUIController$26;-><init>(Lcom/parrot/freeflight/home/HomeUIController;Ljava/lang/String;I)V

    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 1054
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->resetRunMediasInfo()V

    .line 1055
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 1056
    invoke-virtual {v4}, Landroid/support/design/widget/Snackbar;->show()V

    .line 1059
    .end local v0    # "delosModel":Lcom/parrot/freeflight/core/model/DelosModel;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "photoCountTakenDuringRun":I
    .end local v3    # "runId":Ljava/lang/String;
    .end local v4    # "snackbar":Landroid/support/design/widget/Snackbar;
    :cond_0
    return-void

    .line 1045
    .restart local v0    # "delosModel":Lcom/parrot/freeflight/core/model/DelosModel;
    .restart local v2    # "photoCountTakenDuringRun":I
    .restart local v3    # "runId":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v6, 0x7f0803c5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_0
.end method

.method private showPilotingTiles()V
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPilotingCardLayout:Landroid/support/percent/PercentRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 816
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mCardParentLayout:Landroid/support/percent/PercentRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 817
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v0, :cond_0

    .line 818
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->applyUiTheme()V

    .line 820
    :cond_0
    return-void
.end method

.method private startDroneInfosActivity()V
    .locals 5

    .prologue
    .line 1196
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/parrot/freeflight/infos/DroneInfosActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1197
    .local v0, "droneInfoIntent":Landroid/content/Intent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 1198
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    const-string v3, "DroneName"

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/view/UnclickableEditText;->setTransitionName(Ljava/lang/String;)V

    .line 1199
    const-string v2, "DroneNameText"

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    invoke-virtual {v3}, Lcom/parrot/freeflight/view/UnclickableEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1200
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    .line 1201
    invoke-virtual {v4}, Lcom/parrot/freeflight/view/UnclickableEditText;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object v1

    .line 1202
    .local v1, "options":Landroid/support/v4/app/ActivityOptionsCompat;
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1206
    .end local v1    # "options":Landroid/support/v4/app/ActivityOptionsCompat;
    :goto_0
    return-void

    .line 1204
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startDroneMemoryActivity()V
    .locals 2

    .prologue
    .line 1062
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->startDroneMemoryActivity(Ljava/lang/String;I)V

    .line 1063
    return-void
.end method

.method private startDroneMemoryActivity(Ljava/lang/String;I)V
    .locals 5
    .param p1, "runId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "photoCountTakenDuringRun"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1066
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    new-array v2, v3, [I

    const v3, 0x7f080623

    aput v3, v2, v4

    const v3, 0x7f080624

    new-instance v4, Lcom/parrot/freeflight/home/HomeUIController$27;

    invoke-direct {v4, p0, p1, p2}, Lcom/parrot/freeflight/home/HomeUIController$27;-><init>(Lcom/parrot/freeflight/home/HomeUIController;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/util/PermissionChecker;->checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/PermissionChecker$Listener;)V

    .line 1084
    return-void
.end method

.method private startFwCompatInfoUpdate(Lcom/parrot/freeflight/core/model/DelosModel;)V
    .locals 4
    .param p1, "delosModel"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1330
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->isMassStorageNbPhotosCmdSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1331
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getMassStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 1332
    .local v1, "massStoragePath":Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMassStoragePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1333
    iput-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMassStoragePath:Ljava/lang/String;

    .line 1334
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMediaCountCompat:Lcom/parrot/freeflight/media/MediaCountCompat;

    if-nez v2, :cond_0

    .line 1335
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/parrot/freeflight/media/DroneMemoryInitializationInfoBuilder;->build(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;

    move-result-object v0

    .line 1336
    .local v0, "droneMemoryInitializationInfo":Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;
    if-eqz v0, :cond_0

    .line 1337
    new-instance v2, Lcom/parrot/freeflight/media/MediaCountCompat;

    new-instance v3, Lcom/parrot/freeflight/home/HomeUIController$32;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/home/HomeUIController$32;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-direct {v2, v0, v3}, Lcom/parrot/freeflight/media/MediaCountCompat;-><init>(Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;Lcom/parrot/freeflight/media/MediaCountCompat$Listener;)V

    iput-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMediaCountCompat:Lcom/parrot/freeflight/media/MediaCountCompat;

    .line 1353
    .end local v0    # "droneMemoryInitializationInfo":Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMediaCountCompat:Lcom/parrot/freeflight/media/MediaCountCompat;

    if-eqz v2, :cond_1

    .line 1354
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMediaCountCompat:Lcom/parrot/freeflight/media/MediaCountCompat;

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMassStoragePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/media/MediaCountCompat;->getMediaCountAsync(Ljava/lang/String;)V

    .line 1358
    .end local v1    # "massStoragePath":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private stopFwCompatInfoUpdate()V
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMediaCountCompat:Lcom/parrot/freeflight/media/MediaCountCompat;

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMediaCountCompat:Lcom/parrot/freeflight/media/MediaCountCompat;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/MediaCountCompat;->destroy()V

    .line 1363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMediaCountCompat:Lcom/parrot/freeflight/media/MediaCountCompat;

    .line 1365
    :cond_0
    return-void
.end method

.method private switchDropDownImageOrientation(ZZ)V
    .locals 2
    .param p1, "dropDownMenuOpening"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 1282
    if-eqz p1, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    .line 1283
    .local v0, "endValue":F
    :goto_0
    if-eqz p2, :cond_1

    .line 1284
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDropDownImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 1288
    :goto_1
    return-void

    .line 1282
    .end local v0    # "endValue":F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1286
    .restart local v0    # "endValue":F
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDropDownImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setRotation(F)V

    goto :goto_1
.end method

.method private switchPilotingCardVisibility(ZZ)V
    .locals 4
    .param p1, "dropDownMenuOpening"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1261
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPilotingCardLayout:Landroid/support/percent/PercentRelativeLayout;

    invoke-virtual {v3}, Landroid/support/percent/PercentRelativeLayout;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 1262
    .local v0, "endValue":F
    :goto_0
    if-eqz p2, :cond_2

    .line 1263
    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    .line 1264
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPilotingCardLayout:Landroid/support/percent/PercentRelativeLayout;

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPilotingCardLayout:Landroid/support/percent/PercentRelativeLayout;

    invoke-virtual {v3}, Landroid/support/percent/PercentRelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/support/percent/PercentRelativeLayout;->setTranslationY(F)V

    .line 1266
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPilotingCardLayout:Landroid/support/percent/PercentRelativeLayout;

    invoke-virtual {v2, v1}, Landroid/support/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 1267
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPilotingCardLayout:Landroid/support/percent/PercentRelativeLayout;

    invoke-virtual {v1}, Landroid/support/percent/PercentRelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/parrot/freeflight/home/HomeUIController$30;

    invoke-direct {v2, p0, v0}, Lcom/parrot/freeflight/home/HomeUIController$30;-><init>(Lcom/parrot/freeflight/home/HomeUIController;F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1279
    :goto_1
    return-void

    .end local v0    # "endValue":F
    :cond_1
    move v0, v2

    .line 1261
    goto :goto_0

    .line 1276
    .restart local v0    # "endValue":F
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPilotingCardLayout:Landroid/support/percent/PercentRelativeLayout;

    invoke-virtual {v3, v0}, Landroid/support/percent/PercentRelativeLayout;->setTranslationY(F)V

    .line 1277
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPilotingCardLayout:Landroid/support/percent/PercentRelativeLayout;

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    const/4 v1, 0x4

    :cond_3
    invoke-virtual {v3, v1}, Landroid/support/percent/PercentRelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateDroneIcon(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 5
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1089
    sget-object v1, Lcom/parrot/freeflight/home/HomeUIController$33;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1107
    const v0, 0x7f020075

    .line 1110
    .local v0, "resId":I
    :goto_0
    iget v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneIconId:I

    if-eq v0, v1, :cond_0

    .line 1111
    iput v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneIconId:I

    .line 1112
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/BitmapCache;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1114
    :cond_0
    return-void

    .line 1091
    .end local v0    # "resId":I
    :pswitch_0
    const v1, 0x7f02007f

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->getSwingModelIcon(I)I

    move-result v0

    .line 1092
    .restart local v0    # "resId":I
    goto :goto_0

    .line 1094
    .end local v0    # "resId":I
    :pswitch_1
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->getDelos3AccessoryIcon()I

    move-result v0

    .line 1095
    .restart local v0    # "resId":I
    goto :goto_0

    .line 1097
    .end local v0    # "resId":I
    :pswitch_2
    const v1, 0x7f02007c

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->getDelosEvoModelIcon(I)I

    move-result v0

    .line 1098
    .restart local v0    # "resId":I
    goto :goto_0

    .line 1100
    .end local v0    # "resId":I
    :pswitch_3
    const v1, 0x7f020081

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->getDelosEvoModelIcon(I)I

    move-result v0

    .line 1101
    .restart local v0    # "resId":I
    goto :goto_0

    .line 1103
    .end local v0    # "resId":I
    :pswitch_4
    const v1, 0x7f020074

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->getDelosEvoModelIcon(I)I

    move-result v0

    .line 1104
    .restart local v0    # "resId":I
    goto :goto_0

    .line 1089
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

.method private updateDroneInfo()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 965
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v4, :cond_2

    .line 966
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    instance-of v4, v4, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v4, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DelosModel;->isCharging()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v5

    .line 967
    .local v1, "charging":Z
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/Model;->getBatteryLevel()I

    move-result v0

    .line 968
    .local v0, "batteryLevel":I
    iget v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBatteryLevel:I

    if-eq v4, v0, :cond_0

    .line 969
    iput v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBatteryLevel:I

    .line 970
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryTextView:Landroid/widget/TextView;

    const-string v7, "%d %%"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 972
    :cond_0
    iget-boolean v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mCharging:Z

    if-eq v1, v4, :cond_1

    .line 973
    iput-boolean v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mCharging:Z

    .line 974
    iget-boolean v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mCharging:Z

    if-eqz v4, :cond_4

    .line 975
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v10, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 976
    .local v2, "fadeIn":Landroid/view/animation/AlphaAnimation;
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 977
    .local v3, "fadeOut":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 978
    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 979
    invoke-virtual {v2, v11}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 980
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 981
    invoke-virtual {v3, v11}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 982
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 983
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneFullBatteryImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 984
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 985
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneFullBatteryImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 995
    .end local v2    # "fadeIn":Landroid/view/animation/AlphaAnimation;
    .end local v3    # "fadeOut":Landroid/view/animation/AlphaAnimation;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->showLastMediasTakenSnackbar()V

    .line 996
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updatePhotosCount()V

    .line 998
    .end local v0    # "batteryLevel":I
    .end local v1    # "charging":Z
    :cond_2
    return-void

    :cond_3
    move v1, v6

    .line 966
    goto :goto_0

    .line 987
    .restart local v0    # "batteryLevel":I
    .restart local v1    # "charging":Z
    :cond_4
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 988
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneFullBatteryImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 989
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 990
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 991
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneFullBatteryImageView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateFwCompatInfo()V
    .locals 3

    .prologue
    .line 1317
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    instance-of v2, v2, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v2, :cond_0

    .line 1318
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v1, Lcom/parrot/freeflight/core/model/DelosModel;

    .line 1319
    .local v1, "delosModel":Lcom/parrot/freeflight/core/model/DelosModel;
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    .line 1320
    .local v0, "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1321
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->startFwCompatInfoUpdate(Lcom/parrot/freeflight/core/model/DelosModel;)V

    .line 1326
    .end local v0    # "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .end local v1    # "delosModel":Lcom/parrot/freeflight/core/model/DelosModel;
    :cond_0
    :goto_0
    return-void

    .line 1323
    .restart local v0    # "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .restart local v1    # "delosModel":Lcom/parrot/freeflight/core/model/DelosModel;
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->stopFwCompatInfoUpdate()V

    goto :goto_0
.end method

.method private updateGamePadBar(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 4
    .param p1, "gamepad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 839
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 841
    .local v0, "state":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 850
    :goto_1
    :pswitch_0
    return-void

    .line 839
    .end local v0    # "state":I
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getState()I

    move-result v0

    goto :goto_0

    .line 843
    .restart local v0    # "state":I
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteStatusImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0066

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 847
    :pswitch_2
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteStatusImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v3, 0x7f0e006e

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 841
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updatePhotosCount()V
    .locals 6

    .prologue
    .line 1011
    const/16 v0, 0x8

    .line 1012
    .local v0, "newVisibility":I
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    instance-of v3, v3, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 1013
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v3, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DelosModel;->getPhotosCount()I

    move-result v1

    .line 1014
    .local v1, "photosCount":I
    iget v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPhotosCount:I

    if-eq v1, v3, :cond_0

    .line 1015
    iput v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPhotosCount:I

    .line 1016
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPhotosCount:I

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v5, 0x7f0806ae

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    :cond_0
    iget v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPhotosCount:I

    if-lez v3, :cond_2

    .line 1019
    iget v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPhotosCount:I

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-static {v4}, Lcom/parrot/freeflight/media/MediaCountCompat;->getReadMediaCount(Lcom/parrot/freeflight/core/model/Model;)I

    move-result v4

    sub-int v2, v3, v4

    .line 1020
    .local v2, "unreadCount":I
    if-lez v2, :cond_2

    .line 1021
    iget v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadCount:I

    if-eq v2, v3, :cond_1

    .line 1022
    iput v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadCount:I

    .line 1023
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadMediaTextView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    :cond_1
    const/4 v0, 0x0

    .line 1029
    .end local v1    # "photosCount":I
    .end local v2    # "unreadCount":I
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadMediaTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v0, v3, :cond_3

    .line 1030
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadMediaTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1032
    :cond_3
    return-void

    .line 1016
    .restart local v1    # "photosCount":I
    :cond_4
    iget v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPhotosCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private updatePhotosNbFwCompat()V
    .locals 2

    .prologue
    .line 1001
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    instance-of v1, v1, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v1, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v0, Lcom/parrot/freeflight/core/model/DelosModel;

    .line 1003
    .local v0, "delosModel":Lcom/parrot/freeflight/core/model/DelosModel;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->isMassStorageNbPhotosCmdSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1004
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updatePhotosCount()V

    .line 1008
    .end local v0    # "delosModel":Lcom/parrot/freeflight/core/model/DelosModel;
    :cond_0
    return-void
.end method

.method private updateProfileInfos()V
    .locals 4

    .prologue
    .line 644
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    move-result-object v1

    .line 645
    .local v1, "profile":Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationViewHeaderImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 646
    if-nez v1, :cond_0

    .line 647
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationViewHeader:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 656
    :goto_0
    return-void

    .line 649
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationViewHeader:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 650
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v0

    .line 651
    .local v0, "mProfileUser":Lcom/parrot/arsdk/aracademy/ARAcademyUser;
    if-eqz v0, :cond_1

    .line 652
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationViewHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->requestAvatar(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    goto :goto_0
.end method

.method private updateStatusBar(Lcom/parrot/freeflight/UserDrone;ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;)V
    .locals 11
    .param p1, "userDrone"    # Lcom/parrot/freeflight/UserDrone;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "state"    # I
    .param p3, "droneState"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 853
    const/4 v5, 0x0

    .line 854
    .local v5, "updateMandatory":Z
    const/4 v2, 0x0

    .line 856
    .local v2, "needUpdate":Z
    if-nez p1, :cond_3

    .line 857
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/view/UnclickableEditText;->setAlpha(F)V

    .line 858
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    const v7, 0x7f08012c

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/view/UnclickableEditText;->setText(I)V

    .line 859
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    invoke-virtual {v6}, Lcom/parrot/freeflight/view/UnclickableEditText;->cancelEdition()V

    .line 882
    :cond_0
    :goto_0
    const/4 v6, 0x4

    if-ne p2, v6, :cond_1

    if-eqz v5, :cond_8

    :cond_1
    const/4 v1, 0x1

    .line 883
    .local v1, "hideDroneInfo":Z
    :goto_1
    const/4 v6, 0x3

    if-ne p2, v6, :cond_9

    .line 884
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneStatusImageView:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 885
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneStatusLoadingImageView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 886
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneStatusLoadingImageView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v8, 0x7f050013

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 894
    :goto_2
    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryButtonView:Landroid/view/View;

    if-eqz v1, :cond_b

    const/16 v6, 0x8

    :goto_3
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 895
    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryFrameLayout:Landroid/view/View;

    if-eqz v1, :cond_c

    const/16 v6, 0x8

    :goto_4
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 896
    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    const/16 v6, 0x8

    :goto_5
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 897
    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemoryButtonView:Landroid/view/View;

    if-eqz v1, :cond_e

    const/16 v6, 0x8

    :goto_6
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 898
    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_f

    const/16 v6, 0x8

    :goto_7
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 899
    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    const/16 v6, 0x8

    :goto_8
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 900
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadMediaTextView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 901
    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDropDownImageButton:Landroid/widget/ImageButton;

    if-nez p1, :cond_11

    const/16 v6, 0x8

    :goto_9
    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 902
    if-nez v1, :cond_2

    .line 903
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateDroneInfo()V

    .line 906
    :cond_2
    if-eqz v5, :cond_12

    .line 907
    const v6, 0x7f080598

    const v7, 0x7f0e00c1

    const v8, 0x7f0201fa

    const v9, 0x7f0f0100

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/parrot/freeflight/home/HomeUIController;->changeUpdateButtonDisplay(IIII)V

    .line 942
    :goto_a
    return-void

    .line 861
    .end local v1    # "hideDroneInfo":Z
    :cond_3
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/16 v10, 0xd

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/view/UnclickableEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 862
    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    const/4 v6, 0x4

    if-eq p2, v6, :cond_6

    const/high16 v6, 0x3f000000    # 0.5f

    :goto_b
    invoke-virtual {v7, v6}, Lcom/parrot/freeflight/view/UnclickableEditText;->setAlpha(F)V

    .line 863
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    instance-of v6, v6, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v6, :cond_7

    .line 864
    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v6, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/model/DelosModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/parrot/freeflight/view/UnclickableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 868
    :goto_c
    const/4 v6, 0x4

    if-eq p2, v6, :cond_4

    .line 869
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    invoke-virtual {v6}, Lcom/parrot/freeflight/view/UnclickableEditText;->cancelEdition()V

    .line 871
    :cond_4
    invoke-virtual {p1}, Lcom/parrot/freeflight/UserDrone;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    .line 873
    .local v3, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v6, :cond_5

    const/4 v6, 0x4

    if-ne p2, v6, :cond_5

    .line 874
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/Model;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v3, v7}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->isProductUpdateMandatory(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v5

    .line 877
    :cond_5
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    if-ne p2, v6, :cond_0

    if-nez v5, :cond_0

    .line 878
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/Model;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v3, v7}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->shouldUpdateProduct(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_0

    .line 862
    .end local v3    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_6
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_b

    .line 866
    :cond_7
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    invoke-virtual {p1}, Lcom/parrot/freeflight/UserDrone;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/view/UnclickableEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 882
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 888
    .restart local v1    # "hideDroneInfo":Z
    :cond_9
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneStatusImageView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 889
    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneStatusImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v8, 0x7f0e006e

    invoke-static {v6, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    :goto_d
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 890
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneStatusLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->clearAnimation()V

    .line 891
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneStatusLoadingImageView:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 889
    :cond_a
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v8, 0x7f0e0066

    invoke-static {v6, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    goto :goto_d

    .line 894
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 895
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 896
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 897
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 898
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 899
    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 901
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 908
    :cond_12
    if-eqz v2, :cond_13

    .line 909
    const v6, 0x7f080598

    const v7, 0x7f0e0066

    const v8, 0x7f020181

    const v9, 0x7f0f00fa

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/parrot/freeflight/home/HomeUIController;->changeUpdateButtonDisplay(IIII)V

    goto/16 :goto_a

    .line 911
    :cond_13
    const/4 v6, 0x4

    if-eq p2, v6, :cond_15

    const/4 v6, 0x1

    if-eq p2, v6, :cond_15

    const/4 v4, 0x1

    .line 912
    .local v4, "showConnectionStatus":Z
    :goto_e
    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mConnectionStatusTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_16

    const/4 v6, 0x0

    :goto_f
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 913
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    invoke-virtual {v6}, Lcom/parrot/freeflight/view/UnclickableEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 914
    .local v0, "droneNameTextViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v4, :cond_19

    .line 915
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->isBluetoothOn()Z

    move-result v6

    if-nez v6, :cond_17

    .line 916
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mConnectionStatusTextView:Landroid/widget/TextView;

    const v7, 0x7f080582

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 934
    :cond_14
    :goto_10
    const/16 v6, 0x10

    const v7, 0x7f0f00cd

    invoke-virtual {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 938
    :goto_11
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateTextView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 939
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateImageView:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 940
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateButtonView:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 911
    .end local v0    # "droneNameTextViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "showConnectionStatus":Z
    :cond_15
    const/4 v4, 0x0

    goto :goto_e

    .line 912
    .restart local v4    # "showConnectionStatus":Z
    :cond_16
    const/16 v6, 0x8

    goto :goto_f

    .line 917
    .restart local v0    # "droneNameTextViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_17
    const/4 v6, 0x2

    if-ne p2, v6, :cond_18

    .line 918
    sget-object v6, Lcom/parrot/freeflight/home/HomeUIController$33;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_CONNECTION_STATE_ENUM:[I

    invoke-virtual {p3}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 928
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mConnectionStatusTextView:Landroid/widget/TextView;

    const v7, 0x7f0803d2

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_10

    .line 920
    :pswitch_0
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mConnectionStatusTextView:Landroid/widget/TextView;

    const v7, 0x7f080132

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_10

    .line 923
    :pswitch_1
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mConnectionStatusTextView:Landroid/widget/TextView;

    const v7, 0x7f080133

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_10

    .line 931
    :cond_18
    const/4 v6, 0x3

    if-ne p2, v6, :cond_14

    .line 932
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mConnectionStatusTextView:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 936
    :cond_19
    const/16 v6, 0x10

    const v7, 0x7f0f00f9

    invoke-virtual {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_11

    .line 918
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateView(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    .line 780
    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorState:I

    if-eq v0, p1, :cond_0

    .line 781
    if-ne p1, v1, :cond_1

    .line 782
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->showDiscoveringTiles()V

    .line 790
    :cond_0
    :goto_0
    iput p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorState:I

    .line 791
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->showLastMediasTakenSnackbar()V

    .line 792
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/home/HomeUIController;->updateStatusBar(Lcom/parrot/freeflight/UserDrone;ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;)V

    .line 793
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/home/HomeUIController;->updateGamePadBar(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 794
    return-void

    .line 784
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorState:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorState:I

    if-nez v0, :cond_0

    .line 786
    :cond_2
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->showPilotingTiles()V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/PermissionChecker;->closePermissionRequestDialog()V

    .line 738
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 739
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 740
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 741
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const v2, 0x800003

    const/4 v0, 0x1

    .line 744
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 751
    :goto_0
    return v0

    .line 747
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneListView:Lcom/parrot/freeflight/home/DroneListView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/home/DroneListView;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDropDownImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->callOnClick()Z

    goto :goto_0

    .line 751
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 766
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

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
    .line 771
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onJoystickEvent(FFFF)Z

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
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 756
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

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
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 761
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 641
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 776
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onTriggerEvent(FF)Z

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
    .locals 0

    .prologue
    .line 720
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updatePhotosNbFwCompat()V

    .line 717
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 704
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 705
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAndroidConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 706
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/DeviceConnector;->registerListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V

    .line 707
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/model/Model;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 710
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->registerListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V

    .line 711
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 712
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBlacklistUpdatedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.parrot.freeflight3.blacklist_updated"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 713
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBlacklistUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 724
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAndroidConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 725
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/Model;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/DeviceConnector;->unregisterListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V

    .line 729
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->unregisterListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V

    .line 730
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 731
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->clear()V

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->removeStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 733
    :cond_2
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->stopFwCompatInfoUpdate()V

    .line 734
    return-void
.end method
