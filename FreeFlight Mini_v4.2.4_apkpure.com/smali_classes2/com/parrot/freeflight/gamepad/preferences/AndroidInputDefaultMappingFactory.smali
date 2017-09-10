.class public Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory;
.super Ljava/lang/Object;
.source "AndroidInputDefaultMappingFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildDefaultAppCommand(IILandroid/view/inputmethod/BaseInputConnection;Ljava/util/List;)V
    .locals 11
    .param p0, "commandType"    # I
    .param p1, "settingsFilter"    # I
    .param p2, "inputConnection"    # Landroid/view/inputmethod/BaseInputConnection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/view/inputmethod/BaseInputConnection;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p3, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->values()[Lcom/parrot/freeflight/gamepad/command/AppCommand;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v2, v4, v3

    .line 83
    .local v2, "command":Lcom/parrot/freeflight/gamepad/command/AppCommand;
    const/4 v6, 0x0

    invoke-static {v2, p1, v6}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 84
    invoke-static {v2, p0}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterByCommandType(Lcom/parrot/freeflight/gamepad/command/Command;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 82
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    .line 88
    .local v0, "action1":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    const/4 v1, 0x0

    .line 89
    .local v1, "action2":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    sget-object v6, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 127
    :goto_2
    :pswitch_0
    if-eqz v0, :cond_2

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :pswitch_1
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action1":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "J1"

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v0, v2, v6, v7, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 98
    .restart local v0    # "action1":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v1    # "action2":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "DPAD"

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v1, v2, v6, v7, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 101
    .restart local v1    # "action2":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 103
    :pswitch_2
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action1":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "J1"

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v0, v2, v6, v7, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 106
    .restart local v0    # "action1":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v1    # "action2":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "DPAD"

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v1, v2, v6, v7, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 109
    .restart local v1    # "action2":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 111
    :pswitch_3
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action1":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "J1"

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v0, v2, v6, v7, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 114
    .restart local v0    # "action1":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v1    # "action2":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "DPAD"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v1, v2, v6, v7, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 117
    .restart local v1    # "action2":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 119
    :pswitch_4
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action1":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "J1"

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v0, v2, v6, v7, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 122
    .restart local v0    # "action1":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v1    # "action2":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "DPAD"

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v1, v2, v6, v7, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .restart local v1    # "action2":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 130
    .end local v0    # "action1":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v1    # "action2":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v2    # "command":Lcom/parrot/freeflight/gamepad/command/AppCommand;
    :cond_3
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static buildDefaultUiControllerCommand(IILcom/parrot/freeflight/piloting/ui/UIController;Ljava/util/List;)V
    .locals 10
    .param p0, "commandType"    # I
    .param p1, "settingsFilter"    # I
    .param p2, "controller"    # Lcom/parrot/freeflight/piloting/ui/UIController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/parrot/freeflight/piloting/ui/UIController;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    const/4 v3, 0x0

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->values()[Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    .line 59
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;
    invoke-static {v1, p1, v3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    invoke-static {v1, p0}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterByCommandType(Lcom/parrot/freeflight/gamepad/command/Command;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 58
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    .line 65
    sget-object v6, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$UiControllerCommand:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 72
    :goto_2
    if-eqz v0, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "X"

    const/4 v8, 0x7

    const/16 v9, 0x63

    invoke-direct {v6, v7, v3, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v0, v1, v6, v7, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 74
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;
    :cond_2
    return-void

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static buildMinidroneDefaultMapping(IILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V
    .locals 10
    .param p0, "commandType"    # I
    .param p1, "settingsFilter"    # I
    .param p2, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p3, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->values()[Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 139
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/DelosCommand;
    const/4 v5, 0x0

    invoke-static {v1, p1, v5}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    invoke-static {v1, p0}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterByCommandType(Lcom/parrot/freeflight/gamepad/command/Command;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 138
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x0

    .line 144
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    sget-object v5, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 213
    :goto_2
    :pswitch_0
    if-eqz v0, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :pswitch_1
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "A"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x60

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 149
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 153
    :pswitch_2
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "DPAD"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x13

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 156
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 158
    :pswitch_3
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "DPAD"

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/16 v9, 0x14

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 161
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 163
    :pswitch_4
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "DPAD"

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/16 v9, 0x15

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 166
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 168
    :pswitch_5
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "DPAD"

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/16 v9, 0x16

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 171
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 173
    :pswitch_6
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "R1"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x67

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 176
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 178
    :pswitch_7
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "X"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x63

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 181
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 183
    :pswitch_8
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "B"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x61

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 186
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 188
    :pswitch_9
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "Y"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x64

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 191
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 193
    :pswitch_a
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J1"

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 196
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 198
    :pswitch_b
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J1"

    const/4 v7, 0x2

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 201
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 203
    :pswitch_c
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J2"

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 206
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 208
    :pswitch_d
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J2"

    const/4 v7, 0x2

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 215
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/DelosCommand;
    :cond_2
    return-void

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static buildWingXDefaultMapping(IIILcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/UIController;Ljava/util/List;)V
    .locals 0
    .param p0, "mappingChoice"    # I
    .param p1, "commandType"    # I
    .param p2, "settingsFilter"    # I
    .param p3, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "controller"    # Lcom/parrot/freeflight/piloting/ui/UIController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Lcom/parrot/freeflight/piloting/ui/UIController;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p5, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    packed-switch p0, :pswitch_data_0

    .line 229
    invoke-static {p1, p2, p3, p5}, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory;->buildWingXQuadDefaultMapping(IILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V

    .line 232
    :goto_0
    return-void

    .line 225
    :pswitch_0
    invoke-static {p1, p2, p3, p5}, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory;->buildWingXPlaneDefaultMapping(IILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V

    .line 226
    invoke-static {p1, p2, p4, p5}, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory;->buildDefaultUiControllerCommand(IILcom/parrot/freeflight/piloting/ui/UIController;Ljava/util/List;)V

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static buildWingXPlaneDefaultMapping(IILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V
    .locals 10
    .param p0, "commandType"    # I
    .param p1, "settingsFilter"    # I
    .param p2, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p3, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->values()[Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 240
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;
    const/4 v5, 0x0

    invoke-static {v1, p1, v5}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 241
    invoke-static {v1, p0}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterByCommandType(Lcom/parrot/freeflight/gamepad/command/Command;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 239
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    :cond_1
    const/4 v0, 0x0

    .line 245
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    sget-object v5, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 287
    :goto_2
    if-eqz v0, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 247
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "A"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x60

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 250
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 252
    :pswitch_1
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "R1"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x67

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 255
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 257
    :pswitch_2
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J1"

    const/4 v7, 0x2

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 260
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 262
    :pswitch_3
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J1"

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 265
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 267
    :pswitch_4
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J2"

    const/4 v7, 0x2

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 270
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 272
    :pswitch_5
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J2"

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 275
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 277
    :pswitch_6
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "R2"

    const/4 v7, 0x3

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 280
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 282
    :pswitch_7
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "L2"

    const/4 v7, 0x3

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 289
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;
    :cond_2
    return-void

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static buildWingXQuadDefaultMapping(IILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V
    .locals 10
    .param p0, "commandType"    # I
    .param p1, "settingsFilter"    # I
    .param p2, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p3, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->values()[Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 298
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;
    const/4 v5, 0x0

    invoke-static {v1, p1, v5}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 299
    invoke-static {v1, p0}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterByCommandType(Lcom/parrot/freeflight/gamepad/command/Command;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 297
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_1
    const/4 v0, 0x0

    .line 303
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    sget-object v5, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 360
    :goto_2
    if-eqz v0, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 305
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "A"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x60

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 308
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 310
    :pswitch_1
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "R1"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x67

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 313
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 315
    :pswitch_2
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "DPAD"

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/16 v9, 0x15

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 318
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 320
    :pswitch_3
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "DPAD"

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/16 v9, 0x16

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 323
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 325
    :pswitch_4
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "DPAD"

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/16 v9, 0x14

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 328
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 330
    :pswitch_5
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J1"

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 333
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 335
    :pswitch_6
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J1"

    const/4 v7, 0x2

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 338
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 340
    :pswitch_7
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J2"

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 343
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 345
    :pswitch_8
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J2"

    const/4 v7, 0x2

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 348
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 350
    :pswitch_9
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "R2"

    const/4 v7, 0x3

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 353
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 355
    :pswitch_a
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "L2"

    const/4 v7, 0x3

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 362
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;
    :cond_2
    return-void

    .line 303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method static create(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIILcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/UIController;Landroid/view/inputmethod/BaseInputConnection;)Ljava/util/List;
    .locals 6
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mappingChoice"    # I
    .param p2, "commandType"    # I
    .param p3, "settingsFilter"    # I
    .param p4, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "controller"    # Lcom/parrot/freeflight/piloting/ui/UIController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "inputConnection"    # Landroid/view/inputmethod/BaseInputConnection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "III",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Lcom/parrot/freeflight/piloting/ui/UIController;",
            "Landroid/view/inputmethod/BaseInputConnection;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v5, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 46
    invoke-static {p2, p3, p4, v5}, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory;->buildMinidroneDefaultMapping(IILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V

    .line 49
    :goto_0
    invoke-static {p2, p3, p6, v5}, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory;->buildDefaultAppCommand(IILandroid/view/inputmethod/BaseInputConnection;Ljava/util/List;)V

    .line 50
    return-object v5

    :pswitch_0
    move v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 38
    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory;->buildWingXDefaultMapping(IIILcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/UIController;Ljava/util/List;)V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
