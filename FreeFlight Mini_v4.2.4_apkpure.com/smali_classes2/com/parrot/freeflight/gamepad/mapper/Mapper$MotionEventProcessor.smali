.class Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;
.super Ljava/lang/Object;
.source "Mapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/mapper/Mapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionEventProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/mapper/Mapper;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/gamepad/mapper/Mapper;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->this$0:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/gamepad/mapper/Mapper;Lcom/parrot/freeflight/gamepad/mapper/Mapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/gamepad/mapper/Mapper;
    .param p2, "x1"    # Lcom/parrot/freeflight/gamepad/mapper/Mapper$1;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;-><init>(Lcom/parrot/freeflight/gamepad/mapper/Mapper;)V

    return-void
.end method

.method private getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "device"    # Landroid/view/InputDevice;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "axis"    # I

    .prologue
    const/4 v3, 0x0

    .line 159
    if-nez p2, :cond_1

    move v2, v3

    .line 170
    :cond_0
    :goto_0
    return v2

    .line 160
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    invoke-virtual {p2, p3, v4}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    .line 162
    .local v1, "range":Landroid/view/InputDevice$MotionRange;
    if-eqz v1, :cond_2

    .line 163
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v0

    .line 164
    .local v0, "flat":F
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 166
    .local v2, "value":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v0

    if-gtz v4, :cond_0

    .end local v0    # "flat":F
    .end local v2    # "value":F
    :cond_2
    move v2, v3

    .line 170
    goto :goto_0
.end method

.method private processDirectionPadEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    .line 113
    const/4 v0, 0x6

    .line 115
    .local v0, "directionPressed":I
    const/16 v3, 0xf

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 116
    .local v1, "xAxis":F
    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 118
    .local v2, "yAxis":F
    invoke-static {v1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    .line 119
    const/4 v0, 0x1

    .line 128
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->this$0:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onDpadEvent(I)Z

    move-result v3

    return v3

    .line 120
    :cond_1
    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    .line 121
    const/4 v0, 0x2

    goto :goto_0

    .line 122
    :cond_2
    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_3

    .line 123
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    :cond_3
    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 125
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private processJoystickEvent(Landroid/view/MotionEvent;Landroid/view/InputDevice;)Z
    .locals 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "inputDevice"    # Landroid/view/InputDevice;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 134
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v0

    .line 135
    .local v0, "leftJoystickX":F
    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, v4}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v4

    neg-float v1, v4

    .line 136
    .local v1, "leftJoystickY":F
    const/16 v4, 0xb

    invoke-direct {p0, p1, p2, v4}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v2

    .line 137
    .local v2, "rightJoystickX":F
    const/16 v4, 0xe

    invoke-direct {p0, p1, p2, v4}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v4

    neg-float v3, v4

    .line 139
    .local v3, "rightJoystickY":F
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->this$0:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onJoystickEvent(FFFF)Z

    move-result v4

    return v4
.end method

.method private processTriggerEvent(Landroid/view/MotionEvent;Landroid/view/InputDevice;)Z
    .locals 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "inputDevice"    # Landroid/view/InputDevice;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 146
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-le v2, v3, :cond_0

    .line 147
    const/16 v2, 0x17

    invoke-direct {p0, p1, p2, v2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v0

    .line 148
    .local v0, "leftTriggerValue":F
    const/16 v2, 0x16

    invoke-direct {p0, p1, p2, v2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v1

    .line 154
    .local v1, "rightTriggerValue":F
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->this$0:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-virtual {v2, v0, v1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onTriggerEvent(FF)Z

    move-result v2

    return v2

    .line 150
    .end local v0    # "leftTriggerValue":F
    .end local v1    # "rightTriggerValue":F
    :cond_0
    const/16 v2, 0x11

    invoke-direct {p0, p1, p2, v2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v0

    .line 151
    .restart local v0    # "leftTriggerValue":F
    const/16 v2, 0x12

    invoke-direct {p0, p1, p2, v2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v1

    .restart local v1    # "rightTriggerValue":F
    goto :goto_0
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v4, 0x1000010

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    .line 91
    .local v1, "inputDevice":Landroid/view/InputDevice;
    const/4 v0, 0x0

    .line 93
    .local v0, "consumed":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit16 v2, v2, 0x201

    const/16 v3, 0x201

    if-eq v2, v3, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->processDirectionPadEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 99
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->processTriggerEvent(Landroid/view/MotionEvent;Landroid/view/InputDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    const/4 v0, 0x1

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    .line 105
    invoke-direct {p0, p1, v1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->processJoystickEvent(Landroid/view/MotionEvent;Landroid/view/InputDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    const/4 v0, 0x1

    .line 109
    :cond_2
    return v0
.end method
