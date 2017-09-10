.class public Lcom/parrot/freeflight/piloting/ui/JoystickController;
.super Ljava/lang/Object;
.source "JoystickController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;
.implements Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/JoystickController$DoubleTapListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;",
        "Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;"
    }
.end annotation


# static fields
.field public static final JOYSTICK_NEUTRAL_RATIO_DEFAULT:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "JoystickController"


# instance fields
.field protected alreadyLoaded:Z

.field protected doubleTapDetector:Landroid/view/GestureDetector;

.field protected joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

.field protected lastLeftDownTouchPoint:Landroid/graphics/Point;

.field protected lastRightDownTouchPoint:Landroid/graphics/Point;

.field private leftFrameCurrentTouchPointerId:I

.field protected leftHandedMode:Z

.field protected leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

.field protected leftJoystickBottomMargin:I

.field private leftJoystickEnabled:Z

.field protected leftJoystickLeftMargin:I

.field protected leftTouchFrame:Landroid/widget/FrameLayout;

.field private mBoundedJs:Lcom/parrot/freeflight/piloting/widget/Joystick;

.field private final mContext:Landroid/content/Context;

.field private mGamePadMode:Z

.field private final mHudView:Landroid/view/View;

.field private mIsJsFixed:Z

.field private final mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/ui/IJoystickHandler",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mLastLeftThumbOffset:Landroid/graphics/Point;

.field protected mLastRightThumbOffset:Landroid/graphics/Point;

.field private final mMotionManager:Lcom/parrot/freeflight/piloting/motion/MotionManager;

.field private final mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mTouchZone:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;

.field private rightFrameCurrentTouchPointerId:I

.field protected rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

.field protected rightJoystickBottomMargin:I

.field private rightJoystickEnabled:Z

.field protected rightJoystickRightMargin:I

.field protected rightTouchFrame:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "hudView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "joystickPreferences"    # Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "gamePadMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Lcom/parrot/freeflight/piloting/ui/IJoystickHandler",
            "<TT;>;",
            "Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    .local p3, "joystickHandler":Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;, "Lcom/parrot/freeflight/piloting/ui/IJoystickHandler<TT;>;"
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->alreadyLoaded:Z

    .line 43
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftHandedMode:Z

    .line 56
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickEnabled:Z

    .line 57
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickEnabled:Z

    .line 59
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftFrameCurrentTouchPointerId:I

    .line 60
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightFrameCurrentTouchPointerId:I

    .line 66
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mIsJsFixed:Z

    .line 68
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/JoystickController$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/JoystickController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/JoystickController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    .line 91
    iput-object p4, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    .line 92
    invoke-static {}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->getInstance()Lcom/parrot/freeflight/piloting/motion/MotionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mMotionManager:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    .line 93
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mWindowManager:Landroid/view/WindowManager;

    .line 94
    iput-boolean p5, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mGamePadMode:Z

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    const v1, 0x7f0f0218

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/widget/Joystick;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    const v1, 0x7f0f0219

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/widget/Joystick;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    const v1, 0x7f0f021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftTouchFrame:Landroid/widget/FrameLayout;

    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    const v1, 0x7f0f021c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightTouchFrame:Landroid/widget/FrameLayout;

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    const v1, 0x7f0f021a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mTouchZone:Landroid/view/View;

    .line 102
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mGamePadMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setVisibility(I)V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setup()V

    .line 106
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickEnabled:Z

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setLeftJoystickEnabled(Z)V

    .line 107
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickEnabled:Z

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setRightJoystickEnabled(Z)V

    .line 109
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;->setJoysticks(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/widget/Joystick;)V

    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setJoysticksListener(Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/JoystickController;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/JoystickController;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->onDoubleTap(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/JoystickController;)Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/JoystickController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/JoystickController;)Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/JoystickController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/ui/JoystickController;Landroid/view/View;IFF)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/JoystickController;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->onTouch(Landroid/view/View;IFF)V

    return-void
.end method

.method private onDoubleTap(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 511
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 512
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 517
    .local v0, "joystickTapped":Lcom/parrot/freeflight/piloting/widget/Joystick;
    :goto_0
    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->onDoubleTap()V

    .line 520
    :cond_0
    return-void

    .line 514
    .end local v0    # "joystickTapped":Lcom/parrot/freeflight/piloting/widget/Joystick;
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .restart local v0    # "joystickTapped":Lcom/parrot/freeflight/piloting/widget/Joystick;
    goto :goto_0
.end method

.method private onTouch(Landroid/view/View;IFF)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 366
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    const/4 v11, 0x0

    .line 367
    .local v11, "touchedJoystick":Lcom/parrot/freeflight/piloting/widget/Joystick;
    const/4 v1, 0x0

    .line 368
    .local v1, "lastDownTouchPoint":Landroid/graphics/Point;
    const/4 v2, 0x0

    .line 370
    .local v2, "lastThumbOffset":Landroid/graphics/Point;
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftTouchFrame:Landroid/widget/FrameLayout;

    if-ne p1, v12, :cond_1

    .line 371
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 372
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->lastLeftDownTouchPoint:Landroid/graphics/Point;

    .line 373
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mLastLeftThumbOffset:Landroid/graphics/Point;

    .line 382
    :goto_0
    if-eqz v11, :cond_0

    iget-boolean v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mGamePadMode:Z

    if-nez v12, :cond_0

    .line 383
    packed-switch p2, :pswitch_data_0

    .line 458
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 374
    :cond_1
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightTouchFrame:Landroid/widget/FrameLayout;

    if-ne p1, v12, :cond_2

    .line 375
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 376
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->lastRightDownTouchPoint:Landroid/graphics/Point;

    .line 377
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mLastRightThumbOffset:Landroid/graphics/Point;

    goto :goto_0

    .line 379
    :cond_2
    const-string v12, "JoystickController"

    const-string v13, "Invalid touch !"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    :pswitch_1
    iget v12, v1, Landroid/graphics/Point;->x:I

    if-nez v12, :cond_0

    iget v12, v1, Landroid/graphics/Point;->y:I

    if-nez v12, :cond_0

    .line 387
    move/from16 v0, p3

    float-to-int v12, v0

    move/from16 v0, p4

    float-to-int v13, v0

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Point;->set(II)V

    .line 388
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne v11, v12, :cond_3

    .line 389
    iget v12, v1, Landroid/graphics/Point;->x:I

    iget-object v13, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    iput v12, v1, Landroid/graphics/Point;->x:I

    .line 393
    :cond_3
    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getThumbRelativePosition()Landroid/graphics/Point;

    move-result-object v10

    .line 394
    .local v10, "thumbOffset":Landroid/graphics/Point;
    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/widget/Joystick;->isResetOnRelease()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 395
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Point;->set(II)V

    .line 400
    :goto_2
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    iget v13, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v13

    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    iget v13, v10, Landroid/graphics/Point;->y:I

    add-int v3, v12, v13

    .line 401
    .local v3, "newMarginBottom":I
    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getHeight()I

    move-result v12

    neg-int v6, v12

    .line 403
    .local v6, "newMarginTop":I
    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 404
    .local v7, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne v11, v12, :cond_7

    .line 405
    iget v12, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    iget v13, v10, Landroid/graphics/Point;->x:I

    sub-int v4, v12, v13

    .line 406
    .local v4, "newMarginLeft":I
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mBoundedJs:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne v12, v11, :cond_4

    if-gez v4, :cond_4

    .line 407
    iget v12, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v4

    iput v12, v1, Landroid/graphics/Point;->x:I

    .line 408
    const/4 v4, 0x0

    .line 410
    :cond_4
    iget-boolean v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mIsJsFixed:Z

    if-nez v12, :cond_5

    .line 411
    const/16 v12, 0xc

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 412
    const/4 v12, 0x0

    invoke-virtual {v7, v4, v6, v12, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 427
    .end local v4    # "newMarginLeft":I
    :cond_5
    :goto_3
    iget-boolean v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mIsJsFixed:Z

    if-nez v12, :cond_0

    invoke-virtual {v11, v7}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 397
    .end local v3    # "newMarginBottom":I
    .end local v6    # "newMarginTop":I
    .end local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    iget v12, v10, Landroid/graphics/Point;->x:I

    iget v13, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Point;->set(II)V

    goto :goto_2

    .line 416
    .restart local v3    # "newMarginBottom":I
    .restart local v6    # "newMarginTop":I
    .restart local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    iget v13, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v13

    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    iget v13, v10, Landroid/graphics/Point;->x:I

    add-int v5, v12, v13

    .line 417
    .local v5, "newMarginRight":I
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mBoundedJs:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne v12, v11, :cond_8

    if-gez v5, :cond_8

    .line 418
    iget v12, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v12, v5

    iput v12, v1, Landroid/graphics/Point;->x:I

    .line 419
    const/4 v5, 0x0

    .line 421
    :cond_8
    iget-boolean v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mIsJsFixed:Z

    if-nez v12, :cond_5

    .line 422
    const/16 v12, 0xc

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 423
    const/4 v12, 0x0

    invoke-virtual {v7, v12, v6, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    .line 433
    .end local v3    # "newMarginBottom":I
    .end local v5    # "newMarginRight":I
    .end local v6    # "newMarginTop":I
    .end local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10    # "thumbOffset":Landroid/graphics/Point;
    :pswitch_2
    move/from16 v0, p4

    float-to-int v12, v0

    iget v13, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v13

    iget v13, v2, Landroid/graphics/Point;->y:I

    add-int v9, v12, v13

    .line 434
    .local v9, "relativeMoveY":I
    move/from16 v0, p3

    float-to-int v12, v0

    iget v13, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v13

    iget v13, v2, Landroid/graphics/Point;->x:I

    add-int v8, v12, v13

    .line 435
    .local v8, "relativeMoveX":I
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne v11, v12, :cond_9

    .line 436
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v8, v12

    .line 440
    :cond_9
    invoke-virtual {v11, v8, v9}, Lcom/parrot/freeflight/piloting/widget/Joystick;->updateThumb(II)V

    goto/16 :goto_1

    .line 447
    .end local v8    # "relativeMoveX":I
    .end local v9    # "relativeMoveY":I
    :pswitch_3
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Point;->set(II)V

    .line 448
    invoke-direct {p0, v11}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetJoystickMargins(Lcom/parrot/freeflight/piloting/widget/Joystick;)V

    .line 449
    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickControllerDidTouchUp()V

    goto/16 :goto_1

    .line 383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private resetJoystickMargins(Lcom/parrot/freeflight/piloting/widget/Joystick;)V
    .locals 7
    .param p1, "joystick"    # Lcom/parrot/freeflight/piloting/widget/Joystick;

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    const/16 v6, 0xf

    const/4 v5, 0x0

    .line 340
    if-eqz p1, :cond_0

    .line 341
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne p1, v3, :cond_1

    .line 342
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 343
    .local v0, "leftJoystickParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 344
    .local v1, "newParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickLeftMargin:I

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickBottomMargin:I

    invoke-virtual {v1, v3, v5, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 345
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 346
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 347
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    .end local v0    # "leftJoystickParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "newParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne p1, v3, :cond_2

    .line 349
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 350
    .local v2, "rightJoystickParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 351
    .restart local v1    # "newParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickRightMargin:I

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickBottomMargin:I

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 352
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 353
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 354
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 356
    .end local v1    # "newParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "rightJoystickParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const-string v3, "JoystickController"

    const-string v4, "The considered joystick is not part of this joystick controller"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetJoysticksMargins()V
    .locals 1

    .prologue
    .line 332
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetJoystickMargins(Lcom/parrot/freeflight/piloting/widget/Joystick;)V

    .line 333
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetJoystickMargins(Lcom/parrot/freeflight/piloting/widget/Joystick;)V

    .line 334
    return-void
.end method

.method private resetListener(Z)V
    .locals 5
    .param p1, "start"    # Z

    .prologue
    .line 172
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v3}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 173
    .local v1, "preferences":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_3

    .line 174
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 175
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;->start()V

    .line 181
    :goto_0
    if-eqz p1, :cond_0

    .line 182
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;->updatePilotingControllerType(Landroid/content/SharedPreferences;)V

    .line 183
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->updateLeftHandedMode(Landroid/content/SharedPreferences;)V

    .line 187
    :cond_0
    invoke-static {}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->getInstance()Lcom/parrot/freeflight/piloting/motion/MotionManager;

    move-result-object v0

    .line 188
    .local v0, "motionManager":Lcom/parrot/freeflight/piloting/motion/MotionManager;
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->stop()V

    .line 189
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->start(Landroid/content/Context;Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;)V

    .line 190
    :cond_2
    return-void

    .line 177
    .end local v0    # "motionManager":Lcom/parrot/freeflight/piloting/motion/MotionManager;
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 178
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;->stop()V

    goto :goto_0
.end method

.method private setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 193
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mTouchZone:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    return-void
.end method


# virtual methods
.method public fixJoystick(Z)V
    .locals 0
    .param p1, "isFixed"    # Z

    .prologue
    .line 465
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mIsJsFixed:Z

    .line 466
    return-void
.end method

.method public getLeftJoystick()Lcom/parrot/freeflight/piloting/widget/Joystick;
    .locals 1

    .prologue
    .line 278
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    return-object v0
.end method

.method public getRightJoystick()Lcom/parrot/freeflight/piloting/widget/Joystick;
    .locals 1

    .prologue
    .line 285
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    return-object v0
.end method

.method protected getValueWithNeutralRatio(FF)F
    .locals 4
    .param p1, "ratio"    # F
    .param p2, "value"    # F

    .prologue
    .line 241
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    const/4 v1, 0x1

    .line 242
    .local v1, "negative":Z
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 243
    .local v0, "effectiveValue":F
    cmpg-float v2, v0, p1

    if-gez v2, :cond_2

    .line 244
    const/4 v0, 0x0

    .line 249
    :goto_1
    if-eqz v1, :cond_0

    .line 250
    neg-float v0, v0

    .line 253
    :cond_0
    return v0

    .line 241
    .end local v0    # "effectiveValue":F
    .end local v1    # "negative":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 246
    .restart local v0    # "effectiveValue":F
    .restart local v1    # "negative":Z
    :cond_2
    sub-float v2, v0, p1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    div-float v0, v2, v3

    goto :goto_1
.end method

.method public onOneFingerDoubleTap(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 524
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->onDoubleTap(Landroid/view/MotionEvent;)V

    .line 525
    return-void
.end method

.method public onOneFingerTouch(Landroid/view/View;ILandroid/view/MotionEvent;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "pointerId"    # I
    .param p3, "m"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    const/4 v5, -0x1

    .line 470
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 486
    :cond_0
    :goto_0
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftFrameCurrentTouchPointerId:I

    if-ne v1, p2, :cond_4

    .line 487
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftTouchFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->onTouch(Landroid/view/View;IFF)V

    .line 492
    :cond_1
    :goto_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 503
    :cond_2
    :goto_2
    return-void

    .line 473
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 476
    .local v0, "width2":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightFrameCurrentTouchPointerId:I

    if-eq p2, v1, :cond_3

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftFrameCurrentTouchPointerId:I

    if-ne v1, v5, :cond_3

    .line 477
    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftFrameCurrentTouchPointerId:I

    goto :goto_0

    .line 480
    :cond_3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftFrameCurrentTouchPointerId:I

    if-eq p2, v1, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightFrameCurrentTouchPointerId:I

    if-ne v1, v5, :cond_0

    .line 481
    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightFrameCurrentTouchPointerId:I

    goto :goto_0

    .line 488
    .end local v0    # "width2":I
    :cond_4
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightFrameCurrentTouchPointerId:I

    if-ne v1, p2, :cond_1

    .line 489
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightTouchFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->onTouch(Landroid/view/View;IFF)V

    goto :goto_1

    .line 495
    :sswitch_1
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftFrameCurrentTouchPointerId:I

    if-ne p2, v1, :cond_5

    .line 496
    iput v5, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftFrameCurrentTouchPointerId:I

    .line 498
    :cond_5
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightFrameCurrentTouchPointerId:I

    if-ne p2, v1, :cond_2

    .line 499
    iput v5, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightFrameCurrentTouchPointerId:I

    goto :goto_2

    .line 470
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 492
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;->pause()Z

    .line 135
    return-void
.end method

.method public sendCurrentRotation()V
    .locals 3

    .prologue
    .line 123
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 124
    .local v0, "display":Landroid/view/Display;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mMotionManager:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->onDisplayRotationChange(I)V

    .line 125
    return-void
.end method

.method public setBoundedJoystick(Lcom/parrot/freeflight/piloting/widget/Joystick;)V
    .locals 0
    .param p1, "js"    # Lcom/parrot/freeflight/piloting/widget/Joystick;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 461
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mBoundedJs:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 462
    return-void
.end method

.method public setGamePadMode(ZZ)V
    .locals 2
    .param p1, "isGamePadMode"    # Z
    .param p2, "showUI"    # Z

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    const/4 v1, 0x0

    .line 142
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mGamePadMode:Z

    if-eq v0, p1, :cond_1

    .line 143
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mGamePadMode:Z

    .line 144
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mGamePadMode:Z

    if-eqz v0, :cond_2

    .line 145
    if-eqz p2, :cond_0

    .line 146
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->resetThumbPosition()V

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->resetThumbPosition()V

    .line 150
    :cond_0
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetListener(Z)V

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setVisibility(I)V

    .line 153
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetListener(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->sendCurrentRotation()V

    goto :goto_0
.end method

.method public setJoysticksListener(Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    .prologue
    .line 267
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    .line 269
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setJoystickListener(Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;)V

    .line 270
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setJoystickListener(Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;)V

    .line 271
    return-void
.end method

.method public setLeftHandedMode(Z)V
    .locals 1
    .param p1, "leftHanded"    # Z

    .prologue
    .line 315
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftHandedMode:Z

    if-eq v0, p1, :cond_0

    .line 316
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftHandedMode:Z

    .line 317
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->swapJoysticks()V

    .line 319
    :cond_0
    return-void
.end method

.method public setLeftJoystickEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 289
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickEnabled:Z

    .line 290
    const-string v0, "JoystickController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLeftJoystickEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->alreadyLoaded:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftTouchFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 295
    :cond_0
    return-void
.end method

.method public setLeftJoystickVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 569
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setVisibility(Z)V

    .line 572
    :cond_0
    return-void
.end method

.method public setOnlineMode(Z)V
    .locals 1
    .param p1, "isConnected"    # Z

    .prologue
    .line 119
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;->setOnlineMode(Z)V

    .line 120
    return-void
.end method

.method public setRightJoystickEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 298
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickEnabled:Z

    .line 299
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->alreadyLoaded:Z

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setEnabled(Z)V

    .line 301
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightTouchFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 303
    :cond_0
    return-void
.end method

.method public setRightJoystickVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 578
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setVisibility(Z)V

    .line 581
    :cond_0
    return-void
.end method

.method protected setup()V
    .locals 6
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->lastLeftDownTouchPoint:Landroid/graphics/Point;

    .line 204
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->lastRightDownTouchPoint:Landroid/graphics/Point;

    .line 205
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mLastLeftThumbOffset:Landroid/graphics/Point;

    .line 206
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mLastRightThumbOffset:Landroid/graphics/Point;

    .line 208
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/parrot/freeflight/piloting/ui/JoystickController$DoubleTapListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/parrot/freeflight/piloting/ui/JoystickController$DoubleTapListener;-><init>(Lcom/parrot/freeflight/piloting/ui/JoystickController;Lcom/parrot/freeflight/piloting/ui/JoystickController$1;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->doubleTapDetector:Landroid/view/GestureDetector;

    .line 210
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftTouchFrame:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/parrot/freeflight/piloting/ui/JoystickController$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/piloting/ui/JoystickController$2;-><init>(Lcom/parrot/freeflight/piloting/ui/JoystickController;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightTouchFrame:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/parrot/freeflight/piloting/ui/JoystickController$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/piloting/ui/JoystickController$3;-><init>(Lcom/parrot/freeflight/piloting/ui/JoystickController;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 228
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 229
    .local v0, "leftParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickLeftMargin:I

    .line 230
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickBottomMargin:I

    .line 232
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 233
    .local v1, "rightParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickRightMargin:I

    .line 234
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickBottomMargin:I

    .line 236
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->alreadyLoaded:Z

    .line 237
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetJoysticksMargins()V

    .line 238
    return-void
.end method

.method public shouldChangeVisibility(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    const/4 v0, 0x1

    .line 160
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mTouchZone:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 161
    :cond_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mGamePadMode:Z

    if-nez v1, :cond_2

    .line 163
    :cond_1
    :goto_0
    return v0

    .line 161
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mGamePadMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetListener(Z)V

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->sendCurrentRotation()V

    .line 131
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 138
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mGamePadMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetListener(Z)V

    .line 139
    :cond_0
    return-void
.end method

.method protected swapJoysticks()V
    .locals 5

    .prologue
    .line 539
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 540
    .local v0, "temporaryLeftJoystick":Lcom/parrot/freeflight/piloting/widget/Joystick;
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 541
    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 544
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickBottomMargin:I

    .line 545
    .local v1, "temporaryLeftJoystickBottomMargin":I
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickBottomMargin:I

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickBottomMargin:I

    .line 546
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickBottomMargin:I

    .line 549
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickLeftMargin:I

    .line 550
    .local v2, "temporaryLeftJoystickLeftMargin":I
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickRightMargin:I

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickLeftMargin:I

    .line 551
    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickRightMargin:I

    .line 554
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetJoysticksMargins()V

    .line 557
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->isEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftTouchFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 558
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftTouchFrame:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 560
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->isEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightTouchFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v4

    if-eq v3, v4, :cond_1

    .line 561
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightTouchFrame:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 563
    :cond_1
    return-void
.end method

.method protected updateLeftHandedMode(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 306
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getLeftHandnessPreferenceKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    .line 307
    invoke-interface {v2}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getDefaultLeftHandness()Z

    move-result v2

    .line 306
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 308
    .local v0, "leftHanded":Z
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setLeftHandedMode(Z)V

    .line 309
    return-void
.end method

.method public updateModel(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;->updateModel(Ljava/lang/Object;)V

    .line 116
    return-void
.end method
