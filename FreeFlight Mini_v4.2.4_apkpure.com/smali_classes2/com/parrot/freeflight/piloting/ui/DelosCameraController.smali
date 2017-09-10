.class public Lcom/parrot/freeflight/piloting/ui/DelosCameraController;
.super Ljava/lang/Object;
.source "DelosCameraController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DelosCameraController"

.field private static sPreviousTaskFuture:Ljava/util/concurrent/Future;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static sWorkExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private mCameraController:Lcom/parrot/freeflight/camera/CameraController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCameraRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentState:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mExpectedOperationFlag:Z

.field private mExpectedState:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIsAutoRecordActive:Z

.field private mIsCameraPreviewEnabled:Z

.field private mIsFlying:Z

.field private mIsHydroAccessory:Z

.field private mIsHydroDrone:Z

.field private mIsJoypadMode:Z

.field private mIsUserOperation:Z

.field private final mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mNeedShutDownExecutor:Z

.field private final mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPermissionGranted:Z

.field private final mPermissionLock:Ljava/lang/Object;

.field private final mPreview:Landroid/view/TextureView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRecordButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mShouldHideRecordButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/util/PermissionChecker;Landroid/view/TextureView;Landroid/widget/ImageButton;Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/preference/JoystickState;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "permissionChecker"    # Lcom/parrot/freeflight/util/PermissionChecker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "preview"    # Landroid/view/TextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "recordBtn"    # Landroid/widget/ImageButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "delosModel"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "joystickState"    # Lcom/parrot/freeflight/piloting/preference/JoystickState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v1, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->RELEASE:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mCurrentState:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    .line 79
    sget-object v1, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->RELEASE:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mExpectedState:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    .line 85
    iput-boolean v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsUserOperation:Z

    .line 89
    iput-boolean v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mExpectedOperationFlag:Z

    .line 101
    iput-boolean v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mNeedShutDownExecutor:Z

    .line 118
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mPermissionLock:Ljava/lang/Object;

    .line 390
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mCameraRunnable:Ljava/lang/Runnable;

    .line 121
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    .line 123
    new-instance v4, Lcom/parrot/freeflight/camera/CameraController;

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-direct {v4, v5, v1}, Lcom/parrot/freeflight/camera/CameraController;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mCameraController:Lcom/parrot/freeflight/camera/CameraController;

    .line 125
    iput-object p5, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    .line 126
    iput-object p6, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    .line 127
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mPreview:Landroid/view/TextureView;

    .line 128
    iput-object p4, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mRecordButton:Landroid/widget/ImageButton;

    .line 130
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->isWingX()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->hasWingXAnimations()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 132
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x10

    const v4, 0x7f0f014d

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 133
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a007f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 134
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mRecordButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$1;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mPreview:Landroid/view/TextureView;

    new-instance v4, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$2;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$2;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)V

    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 171
    invoke-virtual {p6}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->isAutoRecordEnable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsAutoRecordActive:Z

    .line 172
    invoke-virtual {p6}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->isCameraPreviewEnable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsCameraPreviewEnabled:Z

    .line 173
    invoke-virtual {p6}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->getControllerType()I

    move-result v1

    if-ne v1, v7, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsJoypadMode:Z

    .line 174
    invoke-virtual {p5}, Lcom/parrot/freeflight/core/model/DelosModel;->isHydrofoil()Z

    move-result v1

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsHydroDrone:Z

    .line 175
    invoke-virtual {p5}, Lcom/parrot/freeflight/core/model/DelosModel;->getAccessoryState()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->getCurrentAccessory()I

    move-result v1

    if-ne v1, v7, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsHydroAccessory:Z

    .line 176
    invoke-virtual {p5}, Lcom/parrot/freeflight/core/model/DelosModel;->getFlyingState()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->isFlyingState(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsFlying:Z

    .line 178
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->updateRecordButtonVisibility(Z)V

    .line 179
    return-void

    :cond_1
    move v1, v3

    .line 173
    goto :goto_0

    :cond_2
    move v2, v3

    .line 175
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->recordVideo()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mCurrentState:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mExpectedOperationFlag:Z

    return v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;)Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mCurrentState:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->setRecordingInProgress(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->setPreviewVisibility(I)V

    return-void
.end method

.method static synthetic access$1302(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsUserOperation:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->updateState(Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->generateVideoDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->generateVideoFilePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;
    .param p2, "x2"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->requestUpdateCamera(Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mPreview:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$302(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0
    .param p0, "x0"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 54
    sput-object p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->onAutoRecordConditionsChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mPermissionLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mPermissionGranted:Z

    return v0
.end method

.method static synthetic access$602(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mPermissionGranted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mRecordButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/camera/CameraController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mCameraController:Lcom/parrot/freeflight/camera/CameraController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mExpectedState:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    return-object v0
.end method

.method private generateVideoDate()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 385
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 386
    .local v0, "currentDate":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 387
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private generateVideoFilePath(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "date"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 367
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DelosModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    invoke-static {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "productName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 371
    .local v0, "fileDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 372
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 373
    const-string v3, "DelosCameraController"

    const-string v4, "failed to create directory"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 378
    :cond_0
    const-string v3, " "

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 379
    const-string v3, "%s_%s.mp4"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v3
.end method

.method private isFlyingState(IZ)Z
    .locals 0
    .param p1, "flyingState"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 291
    packed-switch p1, :pswitch_data_0

    .line 301
    .end local p2    # "defaultValue":Z
    :goto_0
    :pswitch_0
    return p2

    .line 295
    .restart local p2    # "defaultValue":Z
    :pswitch_1
    const/4 p2, 0x1

    goto :goto_0

    .line 299
    :pswitch_2
    const/4 p2, 0x0

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private onAutoRecordConditionsChanged()V
    .locals 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsJoypadMode:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsCameraPreviewEnabled:Z

    if-eqz v0, :cond_6

    .line 225
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsAutoRecordActive:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsHydroDrone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsHydroAccessory:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsFlying:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mCurrentState:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    sget-object v1, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->PREVIEW:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsUserOperation:Z

    if-nez v0, :cond_4

    .line 229
    :cond_2
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->RECORDING:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->requestUpdateCamera(Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;)V

    .line 236
    :cond_3
    :goto_0
    return-void

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mCurrentState:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    sget-object v1, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->RECORDING:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsUserOperation:Z

    if-nez v0, :cond_3

    .line 231
    :cond_5
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->PREVIEW:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->requestUpdateCamera(Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;)V

    goto :goto_0

    .line 234
    :cond_6
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->RELEASE:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->requestUpdateCamera(Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;)V

    goto :goto_0
.end method

.method private recordVideo()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 356
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsJoypadMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsCameraPreviewEnabled:Z

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mCameraController:Lcom/parrot/freeflight/camera/CameraController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/camera/CameraController;->videoRecordReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->PREVIEW:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->requestUpdateCamera(Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;Z)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->RECORDING:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->requestUpdateCamera(Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;Z)V

    goto :goto_0
.end method

.method private requestUpdateCamera(Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;)V
    .locals 1
    .param p1, "newCameraStatus"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->requestUpdateCamera(Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;Z)V

    .line 257
    return-void
.end method

.method private requestUpdateCamera(Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;Z)V
    .locals 5
    .param p1, "newCameraStatus"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isUserOperation"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 260
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mExpectedState:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    .line 261
    iput-boolean p2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mExpectedOperationFlag:Z

    .line 262
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mCurrentState:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mExpectedState:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    if-eq v0, v1, :cond_1

    .line 263
    const-string v0, "DelosCameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestUpdateCamera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mExpectedState:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    .line 265
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->sPreviousTaskFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->sPreviousTaskFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 266
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mCameraRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->sPreviousTaskFuture:Ljava/util/concurrent/Future;

    .line 267
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mExpectedState:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    sget-object v1, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->RELEASE:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    if-eq v0, v1, :cond_1

    .line 268
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    const v3, 0x7f0803b6

    new-instance v4, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$3;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$3;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/util/PermissionChecker;->checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/PermissionChecker$Listener;)V

    .line 288
    :cond_1
    :goto_0
    return-void

    .line 285
    :cond_2
    const-string v0, "DelosCameraController"

    const-string v1, "Oops, sWorkExecutor has been shutdown !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    nop

    :array_0
    .array-data 4
        0x7f0803c0
        0x7f0803bd
    .end array-data
.end method

.method private setPreviewVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mPreview:Landroid/view/TextureView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$5;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    .line 348
    :cond_0
    return-void
.end method

.method private setRecordingInProgress(Z)V
    .locals 2
    .param p1, "recordingInProgress"    # Z

    .prologue
    .line 315
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 334
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mRecordButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$4;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$4;-><init>(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateState(Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;)V
    .locals 3
    .param p1, "newState"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 351
    const-string v0, "DelosCameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mCurrentState:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mCurrentState:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    .line 353
    return-void
.end method


# virtual methods
.method public getPreview()Landroid/view/TextureView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mPreview:Landroid/view/TextureView;

    return-object v0
.end method

.method public getRecordButton()Landroid/widget/ImageButton;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mRecordButton:Landroid/widget/ImageButton;

    return-object v0
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
    .line 306
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/util/PermissionChecker;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 307
    return-void
.end method

.method public readyToStopExecutor()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mNeedShutDownExecutor:Z

    .line 480
    return-void
.end method

.method public shouldHideRecordButton(Z)V
    .locals 0
    .param p1, "shouldHideRecordButton"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mShouldHideRecordButton:Z

    .line 205
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsJoypadMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsCameraPreviewEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mPreview:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->onAutoRecordConditionsChanged()V

    .line 241
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->RELEASE:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->requestUpdateCamera(Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;)V

    .line 245
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mNeedShutDownExecutor:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 248
    sput-object v1, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->sWorkExecutor:Ljava/util/concurrent/ExecutorService;

    .line 249
    sput-object v1, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->sPreviousTaskFuture:Ljava/util/concurrent/Future;

    .line 250
    const-string v0, "DelosCameraController"

    const-string v1, "shutdown executor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/PermissionChecker;->closePermissionRequestDialog()V

    .line 253
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->isAutoRecordEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsAutoRecordActive:Z

    .line 193
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->isCameraPreviewEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsCameraPreviewEnabled:Z

    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->getControllerType()I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsJoypadMode:Z

    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->isHydrofoil()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsHydroDrone:Z

    .line 197
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getAccessoryState()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->getCurrentAccessory()I

    move-result v0

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsHydroAccessory:Z

    .line 198
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getFlyingState()I

    move-result v0

    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsFlying:Z

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->isFlyingState(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsFlying:Z

    .line 200
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->onAutoRecordConditionsChanged()V

    .line 201
    return-void

    :cond_0
    move v0, v2

    .line 194
    goto :goto_0

    :cond_1
    move v1, v2

    .line 197
    goto :goto_1
.end method

.method public updateRecordButtonVisibility(Z)V
    .locals 4
    .param p1, "hideUI"    # Z

    .prologue
    const/4 v1, 0x0

    .line 209
    if-nez p1, :cond_3

    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsJoypadMode:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mIsCameraPreviewEnabled:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mShouldHideRecordButton:Z

    if-nez v2, :cond_3

    move v0, v1

    .line 210
    .local v0, "visible":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 212
    :cond_0
    if-nez v0, :cond_4

    .line 213
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mCurrentState:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    sget-object v3, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->RECORDING:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_1

    .line 214
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->setRecordingInProgress(Z)V

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mCurrentState:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    sget-object v3, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->PREVIEW:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 216
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->setRecordingInProgress(Z)V

    .line 221
    :cond_2
    :goto_1
    return-void

    .line 209
    .end local v0    # "visible":I
    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    .line 217
    .restart local v0    # "visible":I
    :cond_4
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 219
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_1
.end method
