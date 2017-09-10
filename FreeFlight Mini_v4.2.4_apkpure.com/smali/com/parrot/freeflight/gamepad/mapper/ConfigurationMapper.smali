.class public Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;
.super Lcom/parrot/freeflight/gamepad/mapper/Mapper;
.source "ConfigurationMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;
    }
.end annotation


# static fields
.field public static final MAX_POSSIBLE_CONTROLS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ConfigurationMapper"


# instance fields
.field private mCommandToChange:Lcom/parrot/freeflight/gamepad/command/Command;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadPreferences:Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUsedJoystick:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            ">;"
        }
    .end annotation
.end field

.field private mUsedTrigger:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;)V
    .locals 1
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mapping"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "gamePadPreferences"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    .line 54
    iput-object p3, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadPreferences:Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mUsedJoystick:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mUsedTrigger:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 58
    return-void
.end method

.method private addAndRemoveDoublonIfNeeded(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;Ljava/util/List;)V
    .locals 7
    .param p1, "newAction"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 275
    .local v4, "size":I
    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 276
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .line 277
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    iget-object v3, p1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    .line 278
    .local v3, "newActionCommand":Lcom/parrot/freeflight/gamepad/command/Command;
    iget-object v1, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    .line 285
    .local v1, "actionCommand":Lcom/parrot/freeflight/gamepad/command/Command;
    instance-of v5, v3, Lcom/parrot/freeflight/gamepad/command/AccessoryCommand;

    if-eqz v5, :cond_0

    instance-of v5, v1, Lcom/parrot/freeflight/gamepad/command/AccessoryCommand;

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Lcom/parrot/freeflight/gamepad/command/AccessoryCommand;

    .line 286
    invoke-interface {v5}, Lcom/parrot/freeflight/gamepad/command/AccessoryCommand;->getAccessoryType()I

    move-result v6

    move-object v5, v1

    check-cast v5, Lcom/parrot/freeflight/gamepad/command/AccessoryCommand;

    invoke-interface {v5}, Lcom/parrot/freeflight/gamepad/command/AccessoryCommand;->getAccessoryType()I

    move-result v5

    if-ne v6, v5, :cond_1

    .line 287
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->isSameCombination(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 288
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 291
    :cond_1
    if-ne v3, v1, :cond_2

    .line 292
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 275
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 296
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v1    # "actionCommand":Lcom/parrot/freeflight/gamepad/command/Command;
    .end local v3    # "newActionCommand":Lcom/parrot/freeflight/gamepad/command/Command;
    :cond_3
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method private changeCommandAssociatedControls(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V
    .locals 10
    .param p1, "currentInput"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 200
    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mCommandToChange:Lcom/parrot/freeflight/gamepad/command/Command;

    if-nez v6, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->getInputCount(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)I

    move-result v2

    .line 205
    .local v2, "inputCount":I
    if-eqz v2, :cond_2

    if-le v2, v9, :cond_3

    .line 206
    :cond_2
    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mListener:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mListener:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;

    invoke-interface {v6}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;->onMappingUnsupported()V

    goto :goto_0

    .line 210
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v3, "inputs":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mUsedJoystick:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v6, v6, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->pressedInputs:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;

    .line 214
    .local v4, "pressableInput":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->createInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-result-object v1

    .line 215
    .local v1, "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    if-eqz v1, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 218
    .end local v1    # "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v4    # "pressableInput":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    :cond_5
    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->getLastAction()I

    move-result v6

    if-ne v6, v8, :cond_6

    .line 219
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->createInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_6
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 223
    .local v0, "firstInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v9, :cond_7

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-object v5, v6

    .line 224
    .local v5, "secondInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :goto_2
    invoke-virtual {p0, v0, v5}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->setInputsAndSaveMapping(Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;)V

    goto :goto_0

    .line 223
    .end local v5    # "secondInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :cond_7
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private createInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .locals 8
    .param p1, "pressable"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    .line 229
    if-nez p1, :cond_0

    .line 241
    :goto_0
    return-object v3

    .line 230
    :cond_0
    invoke-interface {p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->getControlType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move-object v0, p1

    .line 232
    check-cast v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    .line 233
    .local v0, "button":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;
    new-instance v3, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->getKeyCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/gamepad/GamePad;->getButtonName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->getKeyCode()I

    move-result v5

    invoke-direct {v3, v4, v7, v6, v5}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    goto :goto_0

    .end local v0    # "button":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;
    :pswitch_2
    move-object v2, p1

    .line 235
    check-cast v2, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    .line 236
    .local v2, "trigger":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    new-instance v3, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    goto :goto_0

    .end local v2    # "trigger":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    :pswitch_3
    move-object v1, p1

    .line 238
    check-cast v1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    .line 239
    .local v1, "dpadButton":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;
    new-instance v3, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v4, "DPAD"

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;->getDirection()I

    move-result v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isSameCombination(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;)Z
    .locals 4
    .param p1, "action1"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "action2"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 303
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->getInputCount()I

    move-result v2

    invoke-virtual {p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->getInputCount()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    .line 305
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->getInputCount()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 306
    iget-object v0, p1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v1, p2, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad$Input;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->getInputCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 308
    iget-object v2, p1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v3, p2, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/GamePad$Input;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v3, p2, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/GamePad$Input;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v3, p2, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 309
    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/GamePad$Input;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v3, p2, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/GamePad$Input;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 312
    goto :goto_0
.end method


# virtual methods
.method public getInputCount(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)I
    .locals 2
    .param p1, "currentInput"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->getPressedInputCount(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)I

    move-result v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mUsedJoystick:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mUsedTrigger:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onDpadEvent(I)Z
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    .line 114
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v3, v3, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->getDirection()I

    move-result v1

    .line 115
    .local v1, "lastDirection":I
    invoke-super {p0, p1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onDpadEvent(I)Z

    .line 116
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mCommandToChange:Lcom/parrot/freeflight/gamepad/command/Command;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 129
    :cond_0
    :goto_0
    return v2

    .line 119
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v3, v3, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 120
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v3, v3, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v3, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->getButton(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    move-result-object v0

    .line 126
    .local v0, "button":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;->getLastAction()I

    move-result v3

    if-eq v3, v2, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->getInputCount(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 127
    :cond_3
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->changeCommandAssociatedControls(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    goto :goto_0

    .line 122
    .end local v0    # "button":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;
    :cond_4
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v3, v3, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->getButton(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    move-result-object v0

    .restart local v0    # "button":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;
    goto :goto_1
.end method

.method public onJoystickEvent(FFFF)Z
    .locals 10
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v9, 0x6

    const/4 v8, 0x2

    const/4 v5, 0x0

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onJoystickEvent(FFFF)Z

    move-result v0

    .line 160
    .local v0, "consumed":Z
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mCommandToChange:Lcom/parrot/freeflight/gamepad/command/Command;

    if-nez v2, :cond_1

    move v0, v5

    .line 191
    .end local v0    # "consumed":Z
    :cond_0
    :goto_0
    return v0

    .line 162
    .restart local v0    # "consumed":Z
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v1, "usedJoystick":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v2, v2, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisX()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getReachedThresholdDirection()I

    move-result v2

    if-eq v2, v9, :cond_2

    .line 165
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePad;->getLeftJoystickName()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mCommandToChange:Lcom/parrot/freeflight/gamepad/command/Command;

    .line 166
    invoke-interface {v2}, Lcom/parrot/freeflight/gamepad/command/Command;->isAnalog()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_1
    invoke-direct {v6, v7, v8, v2, v5}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    .line 165
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v2, v2, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisY()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getReachedThresholdDirection()I

    move-result v2

    if-eq v2, v9, :cond_3

    .line 170
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePad;->getLeftJoystickName()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mCommandToChange:Lcom/parrot/freeflight/gamepad/command/Command;

    .line 171
    invoke-interface {v2}, Lcom/parrot/freeflight/gamepad/command/Command;->isAnalog()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v4

    :goto_2
    invoke-direct {v6, v7, v8, v2, v5}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    .line 170
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v2, v2, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisX()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getReachedThresholdDirection()I

    move-result v2

    if-eq v2, v9, :cond_4

    .line 175
    new-instance v2, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v6}, Lcom/parrot/freeflight/gamepad/GamePad;->getRightJoystickName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mCommandToChange:Lcom/parrot/freeflight/gamepad/command/Command;

    .line 176
    invoke-interface {v7}, Lcom/parrot/freeflight/gamepad/command/Command;->isAnalog()Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_3
    invoke-direct {v2, v6, v8, v3, v5}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    .line 175
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_4
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v2, v2, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisY()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getReachedThresholdDirection()I

    move-result v2

    if-eq v2, v9, :cond_5

    .line 180
    new-instance v2, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/GamePad;->getRightJoystickName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mCommandToChange:Lcom/parrot/freeflight/gamepad/command/Command;

    .line 181
    invoke-interface {v6}, Lcom/parrot/freeflight/gamepad/command/Command;->isAnalog()Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_4
    invoke-direct {v2, v3, v8, v4, v5}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    .line 180
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_5
    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mUsedJoystick:Ljava/util/List;

    .line 186
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 188
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->changeCommandAssociatedControls(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    goto/16 :goto_0

    .line 166
    :cond_6
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v2, v2, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisX()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getReachedThresholdDirection()I

    move-result v2

    goto/16 :goto_1

    .line 171
    :cond_7
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v2, v2, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisY()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getReachedThresholdDirection()I

    move-result v2

    goto :goto_2

    .line 176
    :cond_8
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v3, v3, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisX()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getReachedThresholdDirection()I

    move-result v3

    goto :goto_3

    .line 181
    :cond_9
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v4, v4, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisY()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getReachedThresholdDirection()I

    move-result v4

    goto :goto_4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 92
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mCommandToChange:Lcom/parrot/freeflight/gamepad/command/Command;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 98
    :goto_0
    return v1

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->buttonsState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;->get(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    move-result-object v0

    .line 95
    .local v0, "button":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->getInputCount(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 96
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->changeCommandAssociatedControls(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    .line 98
    :cond_1
    const/4 v1, 0x1

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
    .line 104
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mCommandToChange:Lcom/parrot/freeflight/gamepad/command/Command;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->buttonsState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;->get(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->changeCommandAssociatedControls(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    .line 108
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTriggerEvent(FF)Z
    .locals 3
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    const/4 v2, 0x1

    .line 136
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onTriggerEvent(FF)Z

    move-result v0

    .line 137
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mCommandToChange:Lcom/parrot/freeflight/gamepad/command/Command;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 153
    .end local v0    # "consumed":Z
    :cond_0
    :goto_0
    return v0

    .line 141
    .restart local v0    # "consumed":Z
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getLastAction()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 142
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->changeCommandAssociatedControls(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getLastAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 144
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->changeCommandAssociatedControls(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    goto :goto_0

    .line 145
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->getInputCount(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 146
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->changeCommandAssociatedControls(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    goto :goto_0

    .line 148
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->changeCommandAssociatedControls(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    goto :goto_0
.end method

.method public registerListener(Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mListener:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;

    .line 62
    return-void
.end method

.method public setCommandToChange(Lcom/parrot/freeflight/gamepad/command/Command;)V
    .locals 4
    .param p1, "command"    # Lcom/parrot/freeflight/gamepad/command/Command;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 72
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mCommandToChange:Lcom/parrot/freeflight/gamepad/command/Command;

    .line 74
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mCommandToChange:Lcom/parrot/freeflight/gamepad/command/Command;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->setMode(I)V

    .line 76
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    instance-of v1, v1, Lcom/parrot/freeflight/gamepad/GamePad$MappingEventFilter;

    if-eqz v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$MappingEventFilter;

    .line 78
    .local v0, "mappingEventFilter":Lcom/parrot/freeflight/gamepad/GamePad$MappingEventFilter;
    if-nez p1, :cond_2

    .line 79
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad$MappingEventFilter;->setEventFilter(I)V

    .line 85
    .end local v0    # "mappingEventFilter":Lcom/parrot/freeflight/gamepad/GamePad$MappingEventFilter;
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 74
    goto :goto_0

    .line 81
    .restart local v0    # "mappingEventFilter":Lcom/parrot/freeflight/gamepad/GamePad$MappingEventFilter;
    :cond_2
    invoke-interface {p1}, Lcom/parrot/freeflight/gamepad/command/Command;->isAnalog()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    :cond_3
    invoke-interface {v0, v2}, Lcom/parrot/freeflight/gamepad/GamePad$MappingEventFilter;->setEventFilter(I)V

    goto :goto_1
.end method

.method public setInputsAndSaveMapping(Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;)V
    .locals 4
    .param p1, "firstInput"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "secondInput"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 245
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mCommandToChange:Lcom/parrot/freeflight/gamepad/command/Command;

    if-nez v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mCommandToChange:Lcom/parrot/freeflight/gamepad/command/Command;

    invoke-direct {v0, v1, p1, p2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 253
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    iget v1, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 254
    const-string v1, "ConfigurationMapper"

    const-string v2, "action not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mListener:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mListener:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;

    invoke-interface {v1}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;->onMappingUnsupported()V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->addAndRemoveDoublonIfNeeded(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;Ljava/util/List;)V

    .line 260
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadPreferences:Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;->saveMapping(Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    .line 261
    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mCommandToChange:Lcom/parrot/freeflight/gamepad/command/Command;

    .line 263
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mListener:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mListener:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;->onMappingChange(Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    .line 265
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    instance-of v1, v1, Lcom/parrot/freeflight/gamepad/GamePad$MappingEventFilter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->clear()V

    .line 267
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mUsedJoystick:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 268
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mUsedTrigger:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public unregisterListener(Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mListener:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;

    if-ne v0, p1, :cond_0

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mListener:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;

    .line 68
    :cond_0
    return-void
.end method

.method public updateMapping(Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V
    .locals 0
    .param p1, "gamePadMapping"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 316
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->mMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    .line 317
    return-void
.end method
