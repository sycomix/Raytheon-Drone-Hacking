.class public Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
.super Lcom/parrot/freeflight/gamepad/mapper/Mapper;
.source "CommandMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandMapper"


# instance fields
.field private final mCurrentRepeatActionMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            "Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mapping"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mapping"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "joystickParams"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMainHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mCurrentRepeatActionMap:Ljava/util/Map;

    .line 46
    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    .line 47
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->sortMapping()V

    .line 49
    if-eqz p3, :cond_0

    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisX()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getFilterAtIndex(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilterFactory;->create(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->setFilter(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisY()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getFilterAtIndex(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilterFactory;->create(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->setFilter(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisX()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p3, v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getFilterAtIndex(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilterFactory;->create(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->setFilter(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisY()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getFilterAtIndex(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilterFactory;->create(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->setFilter(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    .line 56
    :cond_0
    return-void
.end method

.method private checkAnalogicWithJoyAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;)I
    .locals 7
    .param p1, "gamePadInputState"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "firstInput"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "joystick"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "joystickState"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x6

    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 774
    invoke-virtual {p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->getPressableInput(Lcom/parrot/freeflight/gamepad/GamePad$Input;)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;

    move-result-object v2

    .line 776
    .local v2, "firstPressable":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    iget-object v5, p1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->pressedInputs:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumedPressableInputs:Ljava/util/Set;

    .line 777
    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v1, v4

    .line 779
    .local v1, "containKey":Z
    :goto_0
    if-nez v1, :cond_3

    .line 801
    :cond_1
    :goto_1
    return v3

    .line 777
    .end local v1    # "containKey":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 782
    .restart local v1    # "containKey":Z
    :cond_3
    iget v5, p3, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    invoke-virtual {p4, v5}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxis(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    .line 786
    .local v0, "axis":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getConsumed()I

    move-result v5

    if-eq v5, v6, :cond_1

    .line 791
    invoke-interface {v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->getConsumed()I

    move-result v3

    if-eq v3, v6, :cond_4

    .line 792
    invoke-virtual {p4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->isHandle()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 793
    invoke-virtual {p1, v2, v6}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    .line 799
    :cond_4
    :goto_2
    invoke-virtual {p4, v4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->setConsumed(I)V

    .line 801
    iget v3, p3, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    goto :goto_1

    .line 795
    :cond_5
    invoke-virtual {p1, v2, v4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    goto :goto_2
.end method

.method private checkAnalogicWithTriggerAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;)Z
    .locals 7
    .param p1, "gamePadInputState"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;
    .param p2, "firstInput"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .param p3, "triggerState"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 807
    invoke-virtual {p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->getPressableInput(Lcom/parrot/freeflight/gamepad/GamePad$Input;)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;

    move-result-object v2

    .line 809
    .local v2, "firstPressable":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    iget-object v5, p1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->pressedInputs:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumedPressableInputs:Ljava/util/Set;

    .line 810
    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v1, v4

    .line 812
    .local v1, "containKey":Z
    :goto_0
    if-nez v1, :cond_3

    .line 837
    :cond_1
    :goto_1
    return v3

    .end local v1    # "containKey":Z
    :cond_2
    move v1, v3

    .line 810
    goto :goto_0

    .line 815
    .restart local v1    # "containKey":Z
    :cond_3
    invoke-virtual {p3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getAxis()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    .line 819
    .local v0, "axis":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getConsumed()I

    move-result v5

    if-eq v5, v6, :cond_1

    .line 824
    invoke-interface {v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->getConsumed()I

    move-result v3

    if-eq v3, v6, :cond_4

    .line 825
    invoke-virtual {p3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->isHandle()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 826
    invoke-virtual {p1, v2, v6}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    .line 833
    :cond_4
    :goto_2
    invoke-virtual {p3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getButton()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    move-result-object v3

    invoke-virtual {p1, v3, v6}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    .line 835
    invoke-virtual {p3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getAxis()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->setConsumed(I)V

    move v3, v4

    .line 837
    goto :goto_1

    .line 828
    :cond_5
    invoke-virtual {p1, v2, v4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    goto :goto_2
.end method

.method private checkForAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Ljava/util/List;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V
    .locals 19
    .param p1, "gamePadInputState"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "currentInput"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;",
            "Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 345
    .local p2, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    .line 346
    .local v14, "leftJoystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    .line 368
    .local v15, "rightJoystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .line 369
    .local v10, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    const/4 v11, 0x0

    .line 379
    .local v11, "actionExecuted":Z
    invoke-virtual {v10}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->getInputCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->getPressedInputCount(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_e

    .line 382
    iget v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->type:I

    packed-switch v4, :pswitch_data_0

    .line 614
    :cond_1
    :goto_1
    if-nez v11, :cond_0

    .line 615
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->stopRepeatingAction(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;)V

    goto :goto_0

    .line 384
    :pswitch_0
    iget-object v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v5, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->checkLogicAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 385
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->executeLogicAction(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;)V

    .line 386
    const/4 v11, 0x1

    goto :goto_1

    .line 392
    :pswitch_1
    iget-object v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v4, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 393
    iget-object v0, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-object/from16 v16, v0

    .line 394
    .local v16, "trigger":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    iget-object v7, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 402
    .local v7, "pressableInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :goto_2
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    const-string v5, "L2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 403
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    move-object/from16 v17, v0

    .line 411
    .local v17, "triggerState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->checkLogicWithTriggerAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;Lcom/parrot/freeflight/gamepad/GamePad$Input;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 412
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->executeLogicAction(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;)V

    .line 413
    const/4 v11, 0x1

    goto :goto_1

    .line 396
    .end local v7    # "pressableInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v16    # "trigger":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v17    # "triggerState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    :cond_2
    iget-object v0, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-object/from16 v16, v0

    .line 397
    .restart local v16    # "trigger":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    iget-object v7, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .restart local v7    # "pressableInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    goto :goto_2

    .line 404
    :cond_3
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    const-string v5, "R2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 405
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    move-object/from16 v17, v0

    .restart local v17    # "triggerState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    goto :goto_3

    .line 407
    .end local v17    # "triggerState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    :cond_4
    const/16 v17, 0x0

    .restart local v17    # "triggerState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    goto :goto_3

    .line 418
    .end local v7    # "pressableInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v16    # "trigger":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v17    # "triggerState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    :pswitch_2
    iget-object v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v4, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 419
    iget-object v8, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 420
    .local v8, "joystick":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    iget-object v7, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 428
    .restart local v7    # "pressableInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :goto_4
    const-string v4, "J1"

    iget-object v5, v8, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 429
    move-object v9, v14

    .line 438
    .local v9, "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    :goto_5
    if-eqz v9, :cond_1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-direct/range {v4 .. v9}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->checkLogicWithJoyAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 439
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->executeLogicAction(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;)V

    .line 440
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 422
    .end local v7    # "pressableInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v8    # "joystick":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    :cond_5
    iget-object v8, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 423
    .restart local v8    # "joystick":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    iget-object v7, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .restart local v7    # "pressableInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    goto :goto_4

    .line 430
    :cond_6
    const-string v4, "J2"

    iget-object v5, v8, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 431
    move-object v9, v15

    .restart local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    goto :goto_5

    .line 433
    .end local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    :cond_7
    const/4 v9, 0x0

    .restart local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    goto :goto_5

    .line 446
    .end local v7    # "pressableInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v8    # "joystick":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    :pswitch_3
    iget-object v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v4, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    .line 447
    iget-object v0, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-object/from16 v16, v0

    .line 448
    .restart local v16    # "trigger":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    iget-object v7, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 456
    .restart local v7    # "pressableInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :goto_6
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    const-string v5, "L2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 457
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    move-object/from16 v17, v0

    .line 465
    .restart local v17    # "triggerState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    :goto_7
    if-eqz v17, :cond_1

    .line 468
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v7, v2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->checkAnalogicWithTriggerAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 469
    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getAxis()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v12

    .line 471
    .local v12, "axis":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->executeAnalogicAction(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;)V

    .line 472
    const/4 v11, 0x1

    .line 473
    goto/16 :goto_1

    .line 450
    .end local v7    # "pressableInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v12    # "axis":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
    .end local v16    # "trigger":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v17    # "triggerState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    :cond_8
    iget-object v0, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-object/from16 v16, v0

    .line 451
    .restart local v16    # "trigger":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    iget-object v7, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .restart local v7    # "pressableInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    goto :goto_6

    .line 458
    :cond_9
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    const-string v5, "R2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 459
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    move-object/from16 v17, v0

    .restart local v17    # "triggerState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    goto :goto_7

    .line 461
    .end local v17    # "triggerState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    :cond_a
    const/16 v17, 0x0

    .restart local v17    # "triggerState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    goto :goto_7

    .line 479
    .end local v7    # "pressableInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v16    # "trigger":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v17    # "triggerState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    :pswitch_4
    iget-object v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v4, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    .line 480
    iget-object v8, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 481
    .restart local v8    # "joystick":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    iget-object v7, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 489
    .restart local v7    # "pressableInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :goto_8
    iget-object v4, v8, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    const-string v5, "J1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 490
    move-object v9, v14

    .line 498
    .restart local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    :goto_9
    if-eqz v9, :cond_1

    .line 502
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->checkAnalogicWithJoyAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;)I

    move-result v13

    .line 505
    .local v13, "direction":I
    invoke-virtual {v9, v13}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxis(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v12

    .line 507
    .restart local v12    # "axis":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
    if-eqz v12, :cond_1

    .line 508
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->executeAnalogicAction(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;)V

    .line 509
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 483
    .end local v7    # "pressableInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v8    # "joystick":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    .end local v12    # "axis":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
    .end local v13    # "direction":I
    :cond_b
    iget-object v8, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 484
    .restart local v8    # "joystick":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    iget-object v7, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .restart local v7    # "pressableInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    goto :goto_8

    .line 491
    :cond_c
    iget-object v4, v8, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    const-string v5, "J2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 492
    move-object v9, v15

    .restart local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    goto :goto_9

    .line 494
    .end local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    :cond_d
    const/4 v9, 0x0

    .restart local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    goto :goto_9

    .line 518
    .end local v7    # "pressableInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v8    # "joystick":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    :cond_e
    invoke-virtual {v10}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->getInputCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 521
    iget v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->type:I

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1

    .line 533
    :pswitch_5
    if-eqz p3, :cond_1

    .line 534
    invoke-interface/range {p3 .. p3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->getConsumed()I

    move-result v4

    if-nez v4, :cond_f

    invoke-interface/range {p3 .. p3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->getLastAction()I

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->match(Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 535
    :cond_f
    invoke-interface/range {p3 .. p3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->getConsumed()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    invoke-interface/range {p3 .. p3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->getLastAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->match(Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 536
    :cond_10
    const/4 v4, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    .line 537
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->executeLogicAction(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;)V

    .line 538
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 544
    :pswitch_6
    iget-object v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v4, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    const-string v5, "J1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 545
    move-object v9, v14

    .line 552
    .restart local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    :goto_a
    if-eqz v9, :cond_1

    .line 553
    iget-object v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v4, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    invoke-virtual {v9}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisX()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getReachedThresholdDirection()I

    move-result v5

    if-eq v4, v5, :cond_11

    iget-object v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v4, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    .line 554
    invoke-virtual {v9}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisY()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getReachedThresholdDirection()I

    move-result v5

    if-ne v4, v5, :cond_14

    .line 555
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->executeLogicAction(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;)V

    .line 556
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 546
    .end local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    :cond_12
    iget-object v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v4, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    const-string v5, "J2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 547
    move-object v9, v15

    .restart local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    goto :goto_a

    .line 549
    .end local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    :cond_13
    const/4 v9, 0x0

    .restart local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    goto :goto_a

    .line 557
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mCurrentRepeatActionMap:Ljava/util/Map;

    invoke-interface {v4, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v4, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    .line 558
    invoke-virtual {v9}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisX()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getCurrentDirection()I

    move-result v5

    if-eq v4, v5, :cond_15

    iget-object v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v4, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    .line 559
    invoke-virtual {v9}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisY()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getCurrentDirection()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 560
    :cond_15
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 566
    .end local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    :pswitch_7
    iget-object v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v4, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    const-string v5, "L2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 567
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    move-object/from16 v17, v0

    .line 574
    .restart local v17    # "triggerState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    :goto_b
    if-eqz v17, :cond_1

    .line 575
    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getAxis()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v12

    .line 578
    .restart local v12    # "axis":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
    invoke-virtual {v12}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getConsumed()I

    move-result v4

    if-nez v4, :cond_1

    .line 579
    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->setConsumed(I)V

    .line 580
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->executeAnalogicAction(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;)V

    .line 581
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->setConsumed(I)V

    .line 582
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 568
    .end local v12    # "axis":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
    .end local v17    # "triggerState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    :cond_16
    iget-object v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v4, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    const-string v5, "R2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 569
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    move-object/from16 v17, v0

    .restart local v17    # "triggerState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    goto :goto_b

    .line 571
    .end local v17    # "triggerState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    :cond_17
    const/16 v17, 0x0

    .restart local v17    # "triggerState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    goto :goto_b

    .line 590
    .end local v17    # "triggerState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    :pswitch_8
    iget-object v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v4, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    const-string v5, "J1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 591
    move-object v9, v14

    .line 598
    .restart local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    :goto_c
    if-eqz v9, :cond_1

    .line 600
    iget-object v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v4, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    invoke-virtual {v9, v4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxis(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v12

    .line 603
    .restart local v12    # "axis":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
    if-eqz v12, :cond_1

    .line 604
    invoke-virtual {v12}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getConsumed()I

    move-result v4

    if-nez v4, :cond_1

    .line 605
    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->setConsumed(I)V

    .line 606
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->executeAnalogicAction(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;)V

    .line 607
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 592
    .end local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    .end local v12    # "axis":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
    :cond_18
    iget-object v4, v10, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v4, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    const-string v5, "J2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 593
    move-object v9, v15

    .restart local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    goto :goto_c

    .line 595
    .end local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    :cond_19
    const/4 v9, 0x0

    .restart local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    goto :goto_c

    .line 619
    .end local v9    # "joystickState":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    .end local v10    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v11    # "actionExecuted":Z
    :cond_1a
    return-void

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 521
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private checkLogicAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;)Z
    .locals 6
    .param p1, "gamePadInputState"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "currentInput"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "firstInput"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "secondInput"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 663
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->getConsumed()I

    move-result v4

    if-ne v4, v5, :cond_1

    :cond_0
    move v2, v3

    .line 695
    :goto_0
    return v2

    .line 669
    :cond_1
    invoke-virtual {p1, p3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->getPressableInput(Lcom/parrot/freeflight/gamepad/GamePad$Input;)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;

    move-result-object v0

    .line 670
    .local v0, "firstPressable":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    invoke-virtual {p1, p4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->getPressableInput(Lcom/parrot/freeflight/gamepad/GamePad$Input;)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;

    move-result-object v1

    .line 672
    .local v1, "secondPressable":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    invoke-direct {p0, p3, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->match(Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 675
    iget-object v4, p1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->pressedInputs:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumedPressableInputs:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 677
    :cond_2
    invoke-virtual {p1, v1, v5}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    .line 678
    invoke-virtual {p1, p2, v5}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    goto :goto_0

    .line 681
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    .line 682
    invoke-virtual {p1, p2, v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    :cond_4
    :goto_1
    move v2, v3

    .line 695
    goto :goto_0

    .line 684
    :cond_5
    invoke-direct {p0, p4, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->match(Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 685
    iget-object v4, p1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->pressedInputs:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumedPressableInputs:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 687
    :cond_6
    invoke-virtual {p1, v0, v5}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    .line 688
    invoke-virtual {p1, p2, v5}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    goto :goto_0

    .line 691
    :cond_7
    invoke-virtual {p1, v0, v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    .line 692
    invoke-virtual {p1, p2, v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    goto :goto_1
.end method

.method private checkLogicWithJoyAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;)Z
    .locals 8
    .param p1, "gamePadInputState"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "currentInput"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "firstInput"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "joystick"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "joystickState"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 703
    invoke-virtual {p1, p3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->getPressableInput(Lcom/parrot/freeflight/gamepad/GamePad$Input;)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;

    move-result-object v1

    .line 705
    .local v1, "firstPressable":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    iget-object v5, p1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->pressedInputs:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumedPressableInputs:Ljava/util/Set;

    .line 706
    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    move v0, v4

    .line 709
    .local v0, "containKey":Z
    :goto_0
    iget v5, p4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    invoke-virtual {p5}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisX()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getReachedThresholdDirection()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual {p5}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisX()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getConsumed()I

    move-result v5

    if-ne v5, v7, :cond_2

    :cond_1
    iget v5, p4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    .line 710
    invoke-virtual {p5}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisY()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getReachedThresholdDirection()I

    move-result v6

    if-ne v5, v6, :cond_5

    invoke-virtual {p5}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisY()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getConsumed()I

    move-result v5

    if-eq v5, v7, :cond_5

    :cond_2
    move v2, v4

    .line 712
    .local v2, "joyInRightPosition":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 713
    if-eqz v2, :cond_6

    .line 714
    invoke-virtual {p1, v1, v7}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    .line 716
    invoke-virtual {p5, v7}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->setConsumed(I)V

    move v3, v4

    .line 725
    :cond_3
    :goto_2
    return v3

    .end local v0    # "containKey":Z
    .end local v2    # "joyInRightPosition":Z
    :cond_4
    move v0, v3

    .line 706
    goto :goto_0

    .restart local v0    # "containKey":Z
    :cond_5
    move v2, v3

    .line 710
    goto :goto_1

    .line 719
    .restart local v2    # "joyInRightPosition":Z
    :cond_6
    invoke-virtual {p1, v1, v4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    .line 721
    invoke-virtual {p5, v4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->setConsumed(I)V

    goto :goto_2
.end method

.method private checkLogicWithTriggerAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;Lcom/parrot/freeflight/gamepad/GamePad$Input;)Z
    .locals 5
    .param p1, "gamePadInputState"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "currentInput"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "triggerState"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "firstInput"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 732
    invoke-virtual {p1, p4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->getPressableInput(Lcom/parrot/freeflight/gamepad/GamePad$Input;)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;

    move-result-object v0

    .line 734
    .local v0, "firstPressable":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    if-nez v0, :cond_1

    .line 767
    .end local v0    # "firstPressable":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    :cond_0
    :goto_0
    return v1

    .line 736
    .restart local v0    # "firstPressable":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    :cond_1
    iget-object v3, p1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->pressedInputs:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumedPressableInputs:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 737
    :cond_2
    iget-object v3, p1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->pressedInputs:Ljava/util/Set;

    invoke-interface {v3, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumedPressableInputs:Ljava/util/Set;

    invoke-interface {v3, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 738
    :cond_3
    invoke-virtual {p3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getConsumed()I

    move-result v3

    if-eq v3, v4, :cond_5

    invoke-interface {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->getConsumed()I

    move-result v3

    if-eq v3, v4, :cond_5

    .line 739
    invoke-virtual {p1, p3, v4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    .line 740
    invoke-virtual {p3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getAxis()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->setConsumed(I)V

    .line 741
    invoke-virtual {p1, v0, v4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    .line 742
    instance-of v1, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    if-eqz v1, :cond_4

    .line 743
    check-cast v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    .end local v0    # "firstPressable":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getAxis()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->setConsumed(I)V

    :cond_4
    move v1, v2

    .line 745
    goto :goto_0

    .line 747
    .restart local v0    # "firstPressable":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    :cond_5
    invoke-virtual {p3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getAxis()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->setConsumed(I)V

    .line 748
    invoke-interface {v0, v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->setConsumed(I)V

    goto :goto_0

    .line 751
    :cond_6
    invoke-virtual {p3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getAxis()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->setConsumed(I)V

    .line 752
    invoke-interface {v0, v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->setConsumed(I)V

    .line 753
    instance-of v3, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    if-eqz v3, :cond_0

    .line 754
    check-cast v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    .end local v0    # "firstPressable":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getAxis()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->setConsumed(I)V

    goto :goto_0

    .line 758
    .restart local v0    # "firstPressable":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    :cond_7
    iget-object v3, p1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->pressedInputs:Ljava/util/Set;

    invoke-interface {v3, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumedPressableInputs:Ljava/util/Set;

    invoke-interface {v3, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 759
    :cond_8
    invoke-virtual {p3, v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->setConsumed(I)V

    .line 761
    :cond_9
    invoke-virtual {p1, v0, v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V

    .line 762
    instance-of v3, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    if-eqz v3, :cond_0

    .line 763
    check-cast v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    .end local v0    # "firstPressable":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getAxis()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->setConsumed(I)V

    goto/16 :goto_0
.end method

.method private consumeKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 159
    packed-switch p1, :pswitch_data_0

    .line 169
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 167
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private executeAnalogicAction(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;)V
    .locals 1
    .param p1, "action"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "axis"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 853
    iget-object v0, p1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    invoke-interface {v0}, Lcom/parrot/freeflight/gamepad/command/Command;->needRepetition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mCurrentRepeatActionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 855
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->startRepeatingAction(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;)V

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    invoke-virtual {p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getTransformedValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->execute(F)V

    goto :goto_0
.end method

.method private executeLogicAction(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;)V
    .locals 1
    .param p1, "action"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 842
    iget-object v0, p1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    invoke-interface {v0}, Lcom/parrot/freeflight/gamepad/command/Command;->needRepetition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mCurrentRepeatActionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 844
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->startRepeatingAction(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;)V

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->execute(F)V

    goto :goto_0
.end method

.method private match(Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)Z
    .locals 4
    .param p1, "gamepadInput"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "pressableInput"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 623
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 642
    .end local p2    # "pressableInput":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 624
    .restart local p2    # "pressableInput":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    :cond_1
    iget v2, p1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    invoke-interface {p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->getControlType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 631
    iget v2, p1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 633
    :pswitch_1
    iget v2, p1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    check-cast p2, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    .end local p2    # "pressableInput":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    invoke-virtual {p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->getKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 635
    .restart local p2    # "pressableInput":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    :pswitch_2
    iget-object v0, p1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    check-cast p2, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    .end local p2    # "pressableInput":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    invoke-virtual {p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 637
    .restart local p2    # "pressableInput":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    :pswitch_3
    iget v2, p1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    check-cast p2, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    .end local p2    # "pressableInput":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    invoke-virtual {p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;->getDirection()I

    move-result v3

    if-ne v2, v3, :cond_3

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 631
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private matchButton(Lcom/parrot/freeflight/gamepad/GamePad$Input;I)Z
    .locals 2
    .param p1, "gamepadInput"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 646
    if-nez p1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-nez v1, :cond_0

    iget v1, p1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    if-ne v1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private matchDpad(Lcom/parrot/freeflight/gamepad/GamePad$Input;I)Z
    .locals 3
    .param p1, "gamepadInput"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 651
    if-nez p1, :cond_0

    .line 652
    :goto_0
    return v1

    :cond_0
    iget v2, p1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-ne v2, v0, :cond_1

    iget v2, p1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    if-ne v2, p2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private matchTrigger(Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;)Z
    .locals 3
    .param p1, "gamepadInput"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "triggerState"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 656
    if-nez p1, :cond_1

    .line 657
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sortMapping()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$1;-><init>(Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 89
    return-void
.end method

.method private startRepeatingAction(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;)V
    .locals 6
    .param p1, "action"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "axis"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 864
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;

    iget-object v1, p1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    invoke-interface {v1}, Lcom/parrot/freeflight/gamepad/command/Command;->getRepeatingIntervalInMs()I

    move-result v1

    iget-object v2, p1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    .line 865
    invoke-interface {v2}, Lcom/parrot/freeflight/gamepad/command/Command;->shouldAccelerate()Z

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMainHandler:Landroid/os/Handler;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;-><init>(IZLandroid/os/Handler;Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;)V

    .line 866
    .local v0, "runnable":Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mCurrentRepeatActionMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 868
    return-void
.end method

.method private stopRepeatingAction(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;)V
    .locals 3
    .param p1, "action"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 871
    if-nez p1, :cond_1

    .line 873
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mCurrentRepeatActionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 876
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 878
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 879
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mCurrentRepeatActionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 337
    invoke-super {p0}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->clear()V

    .line 338
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->stopRepeatingAction(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;)V

    .line 340
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->checkForAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Ljava/util/List;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    .line 341
    return-void
.end method

.method public onDpadDown(I)V
    .locals 5
    .param p1, "direction"    # I

    .prologue
    .line 234
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v3, v3, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v3, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->getButton(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    move-result-object v1

    .line 236
    .local v1, "button":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v2, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .line 239
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    iget-object v4, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-direct {p0, v4, p1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->matchDpad(Lcom/parrot/freeflight/gamepad/GamePad$Input;I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-direct {p0, v4, p1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->matchDpad(Lcom/parrot/freeflight/gamepad/GamePad$Input;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 251
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->getPressedInputCount(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_3

    .line 252
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v4, v4, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v4, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->getButton(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    move-result-object v4

    invoke-direct {p0, v3, v2, v4}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->checkForAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Ljava/util/List;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    .line 255
    :cond_3
    return-void
.end method

.method public onDpadEvent(I)Z
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 220
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->getDirection()I

    move-result v0

    .line 221
    .local v0, "lastDirection":I
    invoke-super {p0, p1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onDpadEvent(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onDpadDown(I)V

    .line 229
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 225
    :cond_1
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onDpadUp(I)V

    goto :goto_0
.end method

.method public onDpadUp(I)V
    .locals 5
    .param p1, "direction"    # I

    .prologue
    .line 260
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v3, v3, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v3, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->getButton(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    move-result-object v1

    .line 262
    .local v1, "button":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;
    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;->getLastAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v2, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .line 267
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    iget-object v4, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-direct {p0, v4, p1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->matchDpad(Lcom/parrot/freeflight/gamepad/GamePad$Input;I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-direct {p0, v4, p1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->matchDpad(Lcom/parrot/freeflight/gamepad/GamePad$Input;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 268
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 274
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 276
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->getPressedInputCount(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    .line 278
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->checkForAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Ljava/util/List;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    goto :goto_0
.end method

.method public onJoystickEvent(FFFF)Z
    .locals 4
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F

    .prologue
    const/4 v0, 0x1

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onJoystickEvent(FFFF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->checkForAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Ljava/util/List;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->isHandle()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->isHandle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 94
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v4, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->isButtonPressed(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v3

    .line 97
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 99
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v4, v4, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->buttonsState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;

    invoke-virtual {v4, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;->get(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    move-result-object v1

    .line 101
    .local v1, "button":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v2, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .line 104
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    iget-object v5, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v5, v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    if-eq v5, p1, :cond_3

    iget-object v5, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v5, v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    if-ne v5, p1, :cond_2

    .line 105
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 115
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->consumeKey(I)Z

    move-result v3

    goto :goto_0

    .line 118
    :cond_5
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v4, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->getPressedInputCount(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_0

    .line 119
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-direct {p0, v4, v2, v1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->checkForAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Ljava/util/List;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 127
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 128
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v4, v4, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->buttonsState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;

    invoke-virtual {v4, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;->get(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    move-result-object v1

    .line 131
    .local v1, "button":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;
    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->getLastAction()I

    move-result v4

    if-eq v4, v3, :cond_1

    const/4 v3, 0x0

    .line 152
    :cond_0
    :goto_0
    return v3

    .line 133
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v2, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .line 137
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    iget-object v5, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v5, v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    if-eq v5, p1, :cond_3

    iget-object v5, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v5, v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    if-ne v5, p1, :cond_2

    .line 138
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 145
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->consumeKey(I)Z

    move-result v3

    goto :goto_0

    .line 148
    :cond_5
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v4, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->getPressedInputCount(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_0

    .line 150
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v4, v5, v1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->checkForAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Ljava/util/List;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    goto :goto_0
.end method

.method public onTriggerDown(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;)V
    .locals 5
    .param p1, "triggerState"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v1, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    const-string v2, "CommandMapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTriggerDown: mMapping.getGamePadActions() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v2, "CommandMapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTriggerDown: triggerState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .line 291
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    iget-object v3, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-direct {p0, v3, p1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->matchTrigger(Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-direct {p0, v3, p1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->matchTrigger(Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 301
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 303
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->getPressedInputCount(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_3

    .line 304
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->checkForAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Ljava/util/List;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    .line 307
    :cond_3
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 6
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 175
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v3, v3, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->isPressed()Z

    move-result v1

    .line 176
    .local v1, "leftTriggerPressed":Z
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v3, v3, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->isPressed()Z

    move-result v2

    .line 177
    .local v2, "rightTriggerPressed":Z
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onTriggerEvent(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "checked":Z
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v3, v3, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->isPressed()Z

    move-result v3

    if-eq v1, v3, :cond_0

    .line 180
    if-eqz v1, :cond_3

    .line 181
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v3, v3, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onTriggerUp(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;)V

    .line 185
    :goto_0
    const/4 v0, 0x1

    .line 187
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v3, v3, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->isPressed()Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 188
    if-eqz v2, :cond_4

    .line 189
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v3, v3, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onTriggerUp(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;)V

    .line 193
    :goto_1
    const/4 v0, 0x1

    .line 195
    :cond_1
    if-nez v0, :cond_2

    .line 197
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->checkForAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Ljava/util/List;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    .line 200
    .end local v0    # "checked":Z
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 183
    .restart local v0    # "checked":Z
    :cond_3
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v3, v3, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onTriggerDown(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;)V

    goto :goto_0

    .line 191
    :cond_4
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v3, v3, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onTriggerDown(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;)V

    goto :goto_1
.end method

.method public onTriggerUp(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;)V
    .locals 4
    .param p1, "triggerState"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 313
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getLastAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v1, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .line 319
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    iget-object v3, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-direct {p0, v3, p1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->matchTrigger(Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-direct {p0, v3, p1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->matchTrigger(Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 326
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->getPressedInputCount(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    .line 330
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->checkForAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Ljava/util/List;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    goto :goto_0
.end method

.method public resetCommand()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->stopRepeatingAction(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;)V

    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->resetFlags()V

    .line 74
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-direct {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;-><init>()V

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->checkForAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Ljava/util/List;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    .line 75
    return-void
.end method

.method public update(Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V
    .locals 3
    .param p1, "mapping"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    .line 61
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->sortMapping()V

    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->resetFlags()V

    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->checkForAction(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;Ljava/util/List;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    .line 66
    return-void
.end method
