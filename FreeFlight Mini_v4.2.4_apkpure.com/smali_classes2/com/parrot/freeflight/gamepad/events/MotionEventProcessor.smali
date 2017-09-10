.class public Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;
.super Ljava/lang/Object;
.source "MotionEventProcessor.java"


# instance fields
.field private final mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

.field private mLastLeftJoystickState:I

.field private mLastLeftTriggerState:I

.field private mLastRightJoystickState:I

.field private mLastRightTriggerState:I


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;)V
    .locals 2
    .param p1, "adapterCallbacksInterface"    # Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x6

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mLastLeftTriggerState:I

    .line 14
    iput v0, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mLastRightTriggerState:I

    .line 16
    iput v1, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mLastLeftJoystickState:I

    .line 17
    iput v1, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mLastRightJoystickState:I

    .line 20
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    .line 21
    return-void
.end method

.method private getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "device"    # Landroid/view/InputDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "axis"    # I
    .param p4, "historyPos"    # I

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    .line 28
    .local v1, "range":Landroid/view/InputDevice$MotionRange;
    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v0

    .line 30
    .local v0, "flat":F
    if-gez p4, :cond_0

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 32
    .local v2, "value":F
    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_1

    .line 36
    .end local v0    # "flat":F
    .end local v2    # "value":F
    :goto_1
    return v2

    .line 30
    .restart local v0    # "flat":F
    :cond_0
    invoke-virtual {p1, p3, p4}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v2

    goto :goto_0

    .line 36
    .end local v0    # "flat":F
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private processJoystickEvent(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)V
    .locals 11
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "inputDevice"    # Landroid/view/InputDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "historyPos"    # I

    .prologue
    .line 42
    const/4 v9, 0x0

    invoke-direct {p0, p1, p2, v9, p3}, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v3

    .line 43
    .local v3, "leftJoystickX":F
    const/4 v9, 0x1

    invoke-direct {p0, p1, p2, v9, p3}, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v4

    .line 44
    .local v4, "leftJoystickY":F
    const/16 v9, 0xb

    invoke-direct {p0, p1, p2, v9, p3}, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v7

    .line 45
    .local v7, "rightJoystickX":F
    const/16 v9, 0xe

    invoke-direct {p0, p1, p2, v9, p3}, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v8

    .line 47
    .local v8, "rightJoystickY":F
    invoke-static {v3, v4}, Lcom/parrot/freeflight/gamepad/GamePad;->getJoystickState(FF)I

    move-result v1

    .line 48
    .local v1, "leftJoystickState":I
    invoke-static {v7, v8}, Lcom/parrot/freeflight/gamepad/GamePad;->getJoystickState(FF)I

    move-result v5

    .line 50
    .local v5, "rightJoystickState":I
    iget-object v9, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v9}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->getCommandToChange()Lcom/parrot/freeflight/gamepad/command/Command;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 51
    iget v9, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mLastLeftJoystickState:I

    if-eq v1, v9, :cond_4

    const/4 v2, 0x1

    .line 52
    .local v2, "leftJoystickStateHasChanged":Z
    :goto_0
    iget v9, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mLastRightJoystickState:I

    if-eq v5, v9, :cond_5

    const/4 v6, 0x1

    .line 53
    .local v6, "rightJoystickStateHasChanged":Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v6, :cond_3

    .line 54
    :cond_0
    if-eqz v2, :cond_1

    iget v9, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mLastLeftJoystickState:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_2

    :cond_1
    if-eqz v6, :cond_6

    iget v9, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mLastRightJoystickState:I

    const/4 v10, 0x6

    if-eq v9, v10, :cond_6

    .line 56
    :cond_2
    iget-object v9, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v9}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->remoteControlHasBeenReleased()V

    .line 70
    .end local v2    # "leftJoystickStateHasChanged":Z
    .end local v6    # "rightJoystickStateHasChanged":Z
    :cond_3
    :goto_2
    iput v1, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mLastLeftJoystickState:I

    .line 71
    iput v5, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mLastRightJoystickState:I

    .line 72
    return-void

    .line 51
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 52
    .restart local v2    # "leftJoystickStateHasChanged":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 57
    .restart local v6    # "rightJoystickStateHasChanged":Z
    :cond_6
    iget-object v9, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v9}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    if-eqz v2, :cond_7

    .line 60
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v10}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v10

    invoke-static {v9, v1, v10}, Lcom/parrot/freeflight/gamepad/GamePad;->getJoystickControl(IILcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-result-object v0

    .line 64
    :goto_3
    if-eqz v0, :cond_3

    .line 65
    iget-object v9, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v9, v0}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->saveRemoteControl(Lcom/parrot/freeflight/gamepad/GamePad$Input;)V

    goto :goto_2

    .line 62
    :cond_7
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v10}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v10

    invoke-static {v9, v5, v10}, Lcom/parrot/freeflight/gamepad/GamePad;->getJoystickControl(IILcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-result-object v0

    goto :goto_3
.end method

.method private processTriggerEvent(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)V
    .locals 11
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "inputDevice"    # Landroid/view/InputDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "historyPos"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "leftTriggerState":I
    const/4 v4, 0x0

    .line 82
    .local v4, "righTriggerState":I
    iget-object v9, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v9}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->getCommandToChange()Lcom/parrot/freeflight/gamepad/command/Command;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 83
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-le v9, v10, :cond_4

    .line 84
    const/16 v9, 0x17

    invoke-direct {p0, p1, p2, v9, p3}, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v3

    .line 85
    .local v3, "leftTriggerValue":F
    const/16 v9, 0x16

    invoke-direct {p0, p1, p2, v9, p3}, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v6

    .line 91
    .local v6, "rightTriggerValue":F
    :goto_0
    invoke-static {v3}, Lcom/parrot/freeflight/gamepad/GamePad;->getTriggerState(F)I

    move-result v1

    .line 92
    invoke-static {v6}, Lcom/parrot/freeflight/gamepad/GamePad;->getTriggerState(F)I

    move-result v4

    .line 95
    iget v9, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mLastLeftTriggerState:I

    if-eq v1, v9, :cond_5

    move v2, v7

    .line 96
    .local v2, "leftTriggerStateHasChanged":Z
    :goto_1
    iget v9, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mLastRightTriggerState:I

    if-eq v4, v9, :cond_6

    move v5, v7

    .line 98
    .local v5, "rightTriggerStateHasChanged":Z
    :goto_2
    if-nez v2, :cond_0

    if-eqz v5, :cond_3

    .line 99
    :cond_0
    if-eqz v2, :cond_1

    iget v9, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mLastLeftTriggerState:I

    if-nez v9, :cond_2

    :cond_1
    if-eqz v5, :cond_7

    iget v9, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mLastRightTriggerState:I

    if-eqz v9, :cond_7

    .line 101
    :cond_2
    iget-object v7, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v7}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->remoteControlHasBeenReleased()V

    .line 114
    .end local v2    # "leftTriggerStateHasChanged":Z
    .end local v3    # "leftTriggerValue":F
    .end local v5    # "rightTriggerStateHasChanged":Z
    .end local v6    # "rightTriggerValue":F
    :cond_3
    :goto_3
    iput v1, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mLastLeftTriggerState:I

    .line 115
    iput v4, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mLastRightTriggerState:I

    .line 116
    return-void

    .line 87
    :cond_4
    const/16 v9, 0x11

    invoke-direct {p0, p1, p2, v9, p3}, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v3

    .line 88
    .restart local v3    # "leftTriggerValue":F
    const/16 v9, 0x12

    invoke-direct {p0, p1, p2, v9, p3}, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v6

    .restart local v6    # "rightTriggerValue":F
    goto :goto_0

    :cond_5
    move v2, v8

    .line 95
    goto :goto_1

    .restart local v2    # "leftTriggerStateHasChanged":Z
    :cond_6
    move v5, v8

    .line 96
    goto :goto_2

    .line 102
    .restart local v5    # "rightTriggerStateHasChanged":Z
    :cond_7
    iget-object v9, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v9}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 103
    if-eqz v2, :cond_8

    .line 104
    iget-object v7, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v7}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v7

    invoke-static {v8, v1, v7}, Lcom/parrot/freeflight/gamepad/GamePad;->getTriggerControl(IILcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-result-object v0

    .line 108
    .local v0, "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :goto_4
    if-eqz v0, :cond_3

    .line 109
    iget-object v7, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v7, v0}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->saveRemoteControl(Lcom/parrot/freeflight/gamepad/GamePad$Input;)V

    goto :goto_3

    .line 106
    .end local v0    # "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :cond_8
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v8}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v8

    invoke-static {v7, v4, v8}, Lcom/parrot/freeflight/gamepad/GamePad;->getTriggerControl(IILcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-result-object v0

    .restart local v0    # "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    goto :goto_4
.end method


# virtual methods
.method public processMotionEvent(Landroid/view/MotionEvent;I)Z
    .locals 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "historyPos"    # I

    .prologue
    const v4, 0x1000010

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    .line 122
    .local v1, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit16 v2, v2, 0x201

    const/16 v3, 0x201

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v2}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v2}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/parrot/freeflight/gamepad/GamePad;->getDirectionPadControl(Landroid/view/MotionEvent;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-result-object v0

    .line 124
    .local v0, "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    if-eqz v0, :cond_0

    .line 125
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v2, v0}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->saveRemoteControl(Lcom/parrot/freeflight/gamepad/GamePad$Input;)V

    .line 130
    .end local v0    # "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    .line 131
    invoke-direct {p0, p1, v1, p2}, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->processJoystickEvent(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)V

    .line 135
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->processTriggerEvent(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)V

    .line 137
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/events/MotionEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v2}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->getCommandToChange()Lcom/parrot/freeflight/gamepad/command/Command;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
