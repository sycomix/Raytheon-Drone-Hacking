.class public abstract Lcom/parrot/freeflight/gamepad/mapper/Mapper;
.super Ljava/lang/Object;
.source "Mapper.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;
    }
.end annotation


# static fields
.field static final DEBUG_MAPPER:Z = false

.field private static final TAG:Ljava/lang/String; = "Mapper"


# instance fields
.field final mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMotionEventProcessor:Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;-><init>(Lcom/parrot/freeflight/gamepad/mapper/Mapper;Lcom/parrot/freeflight/gamepad/mapper/Mapper$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mMotionEventProcessor:Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;

    .line 28
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-direct {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    .line 29
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->clear()V

    .line 83
    return-void
.end method

.method public onDpadEvent(I)Z
    .locals 1
    .param p1, "direction"    # I
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->getDirection()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onDpadEvent(I)V

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mMotionEventProcessor:Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onJoystickEvent(FFFF)Z
    .locals 1
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisX()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    .line 56
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisY()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    .line 57
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisX()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    .line 58
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisY()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onJoystickEvent(FFFF)V

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_1
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
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getAxis()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    .line 45
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getAxis()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onTriggerEvent(FF)V

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
