.class public abstract Lcom/parrot/freeflight/gamepad/GamePad;
.super Ljava/lang/Object;
.source "GamePad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/GamePad$MappingEventFilter;,
        Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;,
        Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;,
        Lcom/parrot/freeflight/gamepad/GamePad$RemotePreferencesOwner;,
        Lcom/parrot/freeflight/gamepad/GamePad$Input;,
        Lcom/parrot/freeflight/gamepad/GamePad$TriggerState;,
        Lcom/parrot/freeflight/gamepad/GamePad$Directions;,
        Lcom/parrot/freeflight/gamepad/GamePad$ControlType;,
        Lcom/parrot/freeflight/gamepad/GamePad$TriggerType;,
        Lcom/parrot/freeflight/gamepad/GamePad$JoystickType;,
        Lcom/parrot/freeflight/gamepad/GamePad$State;,
        Lcom/parrot/freeflight/gamepad/GamePad$Mode;,
        Lcom/parrot/freeflight/gamepad/GamePad$ConnectivityType;,
        Lcom/parrot/freeflight/gamepad/GamePad$Type;,
        Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;,
        Lcom/parrot/freeflight/gamepad/GamePad$EventListener;,
        Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
    }
.end annotation


# static fields
.field public static final ANDROID_INPUT_DEVICE:I = 0x0

.field public static final BLE:I = 0x0

.field public static final BUTTON:I = 0x0

.field public static final DIRECTION_CENTER:I = 0x6

.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x4

.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_MAX:I = 0x7

.field public static final DIRECTION_RIGHT:I = 0x2

.field public static final DIRECTION_UP:I = 0x0

.field public static final DIRECTION_VERTICAL:I = 0x5

.field public static final DPAD:I = 0x1

.field public static final JOYSTICK:I = 0x2

.field public static final JOYSTICK_LEFT:I = 0x0

.field public static final JOYSTICK_RIGHT:I = 0x1

.field public static final MODE_LOCKED:I = 0x4

.field public static final MODE_MAPPING:I = 0x3

.field public static final MODE_NAVIGATION:I = 0x1

.field public static final MODE_NAVIGATION_SETTINGS:I = 0x2

.field public static final MODE_PILOTING:I = 0x0

.field public static final PRESSED:I = 0x1

.field public static final PUSHED_MIN_VALUE:F = 0.8f

.field public static final RELEASED:I = 0x0

.field public static final SKYCONTROLLER:I = 0x2

.field public static final SKYCONTROLLER_2:I = 0x3

.field public static final STATE_CONNECTED:I = 0x4

.field public static final STATE_CONNECTING:I = 0x3

.field public static final STATE_DISCONNECTED:I = 0x1

.field public static final STATE_DISCONNECTING:I = 0x2

.field public static final STATE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GamePad"

.field public static final TINOS:I = 0x1

.field public static final TRIGGER:I = 0x3

.field public static final TRIGGER_LEFT:I = 0x0

.field public static final TRIGGER_RIGHT:I = 0x1

.field public static final UNKNOWN:I = 0x4

.field public static final USB:I = 0x1

.field public static final WIFI:I = 0x2


# instance fields
.field protected final KEYCODE:Ljava/lang/String;

.field protected final MEDIA:Ljava/lang/String;

.field protected final UNKNOW:Ljava/lang/String;

.field protected final VOLUME:Ljava/lang/String;

.field protected mBatteryLevel:I

.field private final mConnectivityType:I

.field private final mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mGamePadLocked:Z

.field protected mMode:I

.field private mModeBeforeLock:I

.field private mSelected:Z

.field private final mSelectedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mState:I

.field private final mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "connectivityType"    # I

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "UNKNOW"

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->UNKNOW:Ljava/lang/String;

    .line 44
    const-string v0, "KEYCODE_"

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->KEYCODE:Ljava/lang/String;

    .line 45
    const-string v0, "MEDIA"

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->MEDIA:Ljava/lang/String;

    .line 46
    const-string v0, "VOLUME"

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->VOLUME:Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 175
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 176
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mSelectedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 177
    iput p1, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mType:I

    .line 178
    iput p2, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mConnectivityType:I

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mState:I

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mMode:I

    .line 181
    return-void
.end method

.method public static getDirectionPadControl(Landroid/view/MotionEvent;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .locals 5
    .param p0, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "gamepad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 436
    const/4 v2, 0x0

    .line 437
    .local v2, "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    if-eqz p1, :cond_0

    .line 438
    invoke-static {p0}, Lcom/parrot/freeflight/gamepad/GamePad;->getDirectionPressed(Landroid/view/InputEvent;)I

    move-result v1

    .line 439
    .local v1, "directionPressed":I
    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    .line 440
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getDpadName()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "directionPadName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 442
    new-instance v2, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .end local v2    # "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    .line 446
    .end local v0    # "directionPadName":Ljava/lang/String;
    .end local v1    # "directionPressed":I
    .restart local v2    # "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :cond_0
    return-object v2
.end method

.method public static getDirectionPressed(Landroid/view/InputEvent;)I
    .locals 7
    .param p0, "event"    # Landroid/view/InputEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    .line 413
    const/4 v0, 0x7

    .line 415
    .local v0, "directionPressed":I
    instance-of v4, p0, Landroid/view/MotionEvent;

    if-eqz v4, :cond_0

    move-object v1, p0

    .line 416
    check-cast v1, Landroid/view/MotionEvent;

    .line 417
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 418
    .local v2, "xAxis":F
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    .line 420
    .local v3, "yAxis":F
    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_1

    .line 421
    const/4 v0, 0x1

    .line 431
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    .end local v2    # "xAxis":F
    .end local v3    # "yAxis":F
    :cond_0
    :goto_0
    return v0

    .line 422
    .restart local v1    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v2    # "xAxis":F
    .restart local v3    # "yAxis":F
    :cond_1
    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_2

    .line 423
    const/4 v0, 0x2

    goto :goto_0

    .line 424
    :cond_2
    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_3

    .line 425
    const/4 v0, 0x0

    goto :goto_0

    .line 426
    :cond_3
    invoke-static {v3, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_0

    .line 427
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getJoystickControl(IILcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .locals 4
    .param p0, "joystickType"    # I
    .param p1, "directionPressed"    # I
    .param p2, "gamepad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    if-eqz p2, :cond_0

    .line 357
    const/4 v2, 0x7

    if-eq p1, v2, :cond_0

    .line 359
    if-nez p0, :cond_1

    .line 360
    invoke-virtual {p2}, Lcom/parrot/freeflight/gamepad/GamePad;->getLeftJoystickName()Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "joystickName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 365
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .end local v0    # "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    .line 369
    .end local v1    # "joystickName":Ljava/lang/String;
    .restart local v0    # "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :cond_0
    return-object v0

    .line 362
    :cond_1
    invoke-virtual {p2}, Lcom/parrot/freeflight/gamepad/GamePad;->getRightJoystickName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "joystickName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getJoystickState(FF)I
    .locals 3
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    const v2, 0x3f4ccccd    # 0.8f

    const v1, -0x40b33333    # -0.8f

    .line 339
    cmpl-float v0, p0, v2

    if-ltz v0, :cond_0

    .line 340
    const/4 v0, 0x2

    .line 348
    :goto_0
    return v0

    .line 341
    :cond_0
    cmpg-float v0, p0, v1

    if-gtz v0, :cond_1

    .line 342
    const/4 v0, 0x1

    goto :goto_0

    .line 343
    :cond_1
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_2

    .line 344
    const/4 v0, 0x3

    goto :goto_0

    .line 345
    :cond_2
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_3

    .line 346
    const/4 v0, 0x0

    goto :goto_0

    .line 348
    :cond_3
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static getTriggerControl(IILcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .locals 5
    .param p0, "triggerType"    # I
    .param p1, "triggerState"    # I
    .param p2, "gamepad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    if-eqz p2, :cond_0

    .line 391
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 393
    if-nez p0, :cond_1

    .line 394
    invoke-virtual {p2}, Lcom/parrot/freeflight/gamepad/GamePad;->getLeftTriggerName()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "triggerName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 399
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .end local v0    # "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    const/4 v2, 0x3

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    .line 403
    .end local v1    # "triggerName":Ljava/lang/String;
    .restart local v0    # "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :cond_0
    return-object v0

    .line 396
    :cond_1
    invoke-virtual {p2}, Lcom/parrot/freeflight/gamepad/GamePad;->getRightTriggerName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "triggerName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getTriggerState(F)I
    .locals 1
    .param p0, "triggerValue"    # F

    .prologue
    .line 378
    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    .line 379
    const/4 v0, 0x1

    .line 381
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final addEventListener(Lcom/parrot/freeflight/gamepad/GamePad$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePad$EventListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 273
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method public final addSelectedListener(Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 236
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mSelectedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method public final addStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 257
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 258
    invoke-interface {p1, p0}, Lcom/parrot/freeflight/gamepad/GamePad$StateListener;->onChange(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 259
    return-void
.end method

.method public close()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 253
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 254
    return-void
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mBatteryLevel:I

    return v0
.end method

.method public abstract getButtonName(I)Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getConnectivityType()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mConnectivityType:I

    return v0
.end method

.method public abstract getDpadName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getLeftJoystickName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getLeftTriggerName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getMappingImageId()I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getRightJoystickName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getRightTriggerName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mState:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mType:I

    return v0
.end method

.method public abstract getUid()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract hasBatteryLevel()Z
.end method

.method public final isASkyController()Z
    .locals 2

    .prologue
    .line 226
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isConnected()Z
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mSelected:Z

    return v0
.end method

.method public lockGamePadMode()V
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mGamePadLocked:Z

    if-nez v0, :cond_0

    .line 212
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mMode:I

    iput v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mModeBeforeLock:I

    .line 213
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePad;->setMode(I)V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mGamePadLocked:Z

    .line 216
    :cond_0
    return-void
.end method

.method protected final notifyJoystickEvent(FFFF)Z
    .locals 3
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F

    .prologue
    .line 300
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$EventListener;

    .line 301
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/GamePad$EventListener;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/parrot/freeflight/gamepad/GamePad$EventListener;->onJoystickEvent(FFFF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    const/4 v1, 0x1

    .line 305
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/GamePad$EventListener;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final notifyKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 282
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$EventListener;

    .line 283
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/GamePad$EventListener;
    invoke-interface {v0, p1}, Lcom/parrot/freeflight/gamepad/GamePad$EventListener;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    const/4 v1, 0x1

    .line 287
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/GamePad$EventListener;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final notifySelectedChange()V
    .locals 3

    .prologue
    .line 244
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mSelectedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;

    .line 245
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;
    iget-boolean v2, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mSelected:Z

    invoke-interface {v0, p0, v2}, Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;->onSelectedChange(Lcom/parrot/freeflight/gamepad/GamePad;Z)V

    goto :goto_0

    .line 247
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;
    :cond_0
    return-void
.end method

.method protected final notifyStateChange()V
    .locals 4

    .prologue
    .line 266
    const-string v1, "GamePad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyStateChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    .line 268
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
    invoke-interface {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePad$StateListener;->onChange(Lcom/parrot/freeflight/gamepad/GamePad;)V

    goto :goto_0

    .line 270
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
    :cond_0
    return-void
.end method

.method protected final notifyTriggerEvent(FF)Z
    .locals 3
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 291
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$EventListener;

    .line 292
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/GamePad$EventListener;
    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/GamePad$EventListener;->onTriggerEvent(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    const/4 v1, 0x1

    .line 296
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/GamePad$EventListener;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final removeEventListener(Lcom/parrot/freeflight/gamepad/GamePad$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePad$EventListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 277
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public final removeSelectedListener(Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mSelectedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public final removeStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 262
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 208
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mSelected:Z

    .line 232
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/GamePad;->notifySelectedChange()V

    .line 233
    return-void
.end method

.method public unlockGamePadMode()V
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mGamePadLocked:Z

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mGamePadLocked:Z

    .line 221
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mModeBeforeLock:I

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePad;->setMode(I)V

    .line 223
    :cond_0
    return-void
.end method
