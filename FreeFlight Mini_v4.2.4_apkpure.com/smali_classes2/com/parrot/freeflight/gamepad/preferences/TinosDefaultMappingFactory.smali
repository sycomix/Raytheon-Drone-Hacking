.class public Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;
.super Ljava/lang/Object;
.source "TinosDefaultMappingFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildDefaultAppCommand(IILandroid/view/inputmethod/BaseInputConnection;Ljava/util/List;)V
    .locals 10
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
    .line 133
    .local p3, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->values()[Lcom/parrot/freeflight/gamepad/command/AppCommand;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 134
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/AppCommand;
    const/4 v5, 0x1

    invoke-static {v1, p1, v5}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    invoke-static {v1, p0}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterByCommandType(Lcom/parrot/freeflight/gamepad/command/Command;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 133
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    .line 139
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    sget-object v5, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 170
    :goto_2
    if-eqz v0, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 141
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "3"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xbe

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 144
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 146
    :pswitch_1
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "4"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xbf

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 149
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 151
    :pswitch_2
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J1"

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 154
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 156
    :pswitch_3
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J1"

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 159
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 161
    :pswitch_4
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J1"

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 164
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 166
    :pswitch_5
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J1"

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 172
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/AppCommand;
    :cond_2
    return-void

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static buildDefaultClawAccessoryCommand(IILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V
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
    .local p3, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    const/4 v3, 0x0

    .line 67
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;->values()[Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    .line 68
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;
    const/4 v6, 0x1

    invoke-static {v1, p1, v6}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 69
    invoke-static {v1, p0}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterByCommandType(Lcom/parrot/freeflight/gamepad/command/Command;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 67
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    .line 73
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    sget-object v6, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$accessories$ClawCommand:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 80
    :goto_2
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "L1"

    const/4 v8, 0x7

    const/16 v9, 0x66

    invoke-direct {v6, v7, v3, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v0, v1, v6, v7, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 82
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;
    :cond_2
    return-void

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static buildDefaultGunAccessoryCommand(IILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V
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
    .local p3, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    const/4 v3, 0x0

    .line 89
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/accessories/GunCommand;->values()[Lcom/parrot/freeflight/gamepad/command/accessories/GunCommand;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    .line 90
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/accessories/GunCommand;
    const/4 v6, 0x1

    invoke-static {v1, p1, v6}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    invoke-static {v1, p0}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterByCommandType(Lcom/parrot/freeflight/gamepad/command/Command;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 89
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x0

    .line 95
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    sget-object v6, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$accessories$GunCommand:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/accessories/GunCommand;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 102
    :goto_2
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "L1"

    const/4 v8, 0x7

    const/16 v9, 0x66

    invoke-direct {v6, v7, v3, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v0, v1, v6, v7, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 104
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/accessories/GunCommand;
    :cond_2
    return-void

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static buildDefaultLightAccessoryCommand(IILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V
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
    .local p3, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    const/4 v3, 0x0

    .line 111
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->values()[Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    .line 112
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;
    const/4 v6, 0x1

    invoke-static {v1, p1, v6}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    invoke-static {v1, p0}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterByCommandType(Lcom/parrot/freeflight/gamepad/command/Command;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 111
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, 0x0

    .line 117
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    sget-object v6, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$accessories$LightCommand:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 124
    :goto_2
    if-eqz v0, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "L1"

    const/4 v8, 0x7

    const/16 v9, 0x66

    invoke-direct {v6, v7, v3, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v0, v1, v6, v7, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 126
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;
    :cond_2
    return-void

    .line 117
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
    .line 180
    .local p3, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->values()[Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 181
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/DelosCommand;
    const/4 v5, 0x1

    invoke-static {v1, p1, v5}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 182
    invoke-static {v1, p0}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterByCommandType(Lcom/parrot/freeflight/gamepad/command/Command;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 180
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_1
    const/4 v0, 0x0

    .line 186
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    sget-object v5, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 252
    :goto_2
    :pswitch_0
    if-eqz v0, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 188
    :pswitch_1
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "5"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xc0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 191
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 195
    :pswitch_2
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "2"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xbd

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 198
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 200
    :pswitch_3
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "3"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xbe

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 203
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 205
    :pswitch_4
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "1"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xbc

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 208
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 210
    :pswitch_5
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "4"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xbf

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 213
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 215
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

    .line 218
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 220
    :pswitch_7
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "L2"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x68

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 223
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 225
    :pswitch_8
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "R2"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x69

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 228
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 232
    :pswitch_9
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

    .line 235
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 237
    :pswitch_a
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

    .line 240
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 242
    :pswitch_b
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

    .line 245
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 247
    :pswitch_c
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

    .line 254
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/DelosCommand;
    :cond_2
    return-void

    .line 186
    nop

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
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static buildWingXDefaultMapping(IIILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V
    .locals 0
    .param p0, "mappingChoice"    # I
    .param p1, "commandType"    # I
    .param p2, "settingsFilter"    # I
    .param p3, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p4, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    packed-switch p0, :pswitch_data_0

    .line 266
    invoke-static {p1, p2, p3, p4}, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;->buildWingXQuadDefaultMapping(IILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V

    .line 269
    :goto_0
    return-void

    .line 263
    :pswitch_0
    invoke-static {p1, p2, p3, p4}, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;->buildWingXPlaneDefaultMapping(IILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V

    goto :goto_0

    .line 261
    nop

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
    .line 276
    .local p3, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->values()[Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 277
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;
    const/4 v5, 0x1

    invoke-static {v1, p1, v5}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    invoke-static {v1, p0}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterByCommandType(Lcom/parrot/freeflight/gamepad/command/Command;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 276
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    :cond_1
    const/4 v0, 0x0

    .line 282
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    sget-object v5, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 349
    :goto_2
    if-eqz v0, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 284
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "5"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xc0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 287
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 289
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

    .line 292
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 294
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

    .line 297
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 299
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

    .line 302
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 304
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

    .line 307
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 309
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

    .line 312
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 314
    :pswitch_6
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "R2"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x69

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 317
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 319
    :pswitch_7
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "L2"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x68

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 322
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 324
    :pswitch_8
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "L1"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x66

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 327
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 329
    :pswitch_9
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "4"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xbf

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 332
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 334
    :pswitch_a
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "3"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xbe

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 337
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 339
    :pswitch_b
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "1"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xbc

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 342
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 344
    :pswitch_c
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "2"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xbd

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 351
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;
    :cond_2
    return-void

    .line 282
    nop

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
        :pswitch_b
        :pswitch_c
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
    .line 359
    .local p3, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->values()[Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 360
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;
    const/4 v5, 0x1

    invoke-static {v1, p1, v5}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 361
    invoke-static {v1, p0}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterByCommandType(Lcom/parrot/freeflight/gamepad/command/Command;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 359
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    :cond_1
    const/4 v0, 0x0

    .line 365
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    sget-object v5, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 427
    :goto_2
    if-eqz v0, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 367
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "5"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xc0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 370
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 372
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

    .line 375
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 377
    :pswitch_2
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "2"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xbd

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 380
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 382
    :pswitch_3
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "3"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xbe

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 385
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 387
    :pswitch_4
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "1"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xbc

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 390
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 392
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

    .line 395
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 397
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

    .line 400
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 402
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

    .line 405
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 407
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

    .line 410
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 412
    :pswitch_9
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "R2"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x69

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 415
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 417
    :pswitch_a
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "L2"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x68

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 420
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 422
    :pswitch_b
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "L1"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x66

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 429
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;
    :cond_2
    return-void

    .line 365
    nop

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
        :pswitch_b
    .end packed-switch
.end method

.method static create(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIILcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/UIController;Landroid/view/inputmethod/BaseInputConnection;)Ljava/util/List;
    .locals 3
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
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    sget-object v1, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 55
    invoke-static {p2, p3, p4, v0}, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;->buildMinidroneDefaultMapping(IILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V

    .line 58
    :goto_0
    invoke-static {p2, p3, p6, v0}, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;->buildDefaultAppCommand(IILandroid/view/inputmethod/BaseInputConnection;Ljava/util/List;)V

    .line 59
    return-object v0

    .line 39
    :pswitch_0
    invoke-static {p1, p2, p3, p4, v0}, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;->buildWingXDefaultMapping(IIILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V

    goto :goto_0

    .line 42
    :pswitch_1
    invoke-static {p2, p3, p4, v0}, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;->buildMinidroneDefaultMapping(IILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V

    .line 43
    invoke-static {p2, p3, p4, v0}, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;->buildDefaultLightAccessoryCommand(IILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V

    goto :goto_0

    .line 46
    :pswitch_2
    invoke-static {p2, p3, p4, v0}, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;->buildMinidroneDefaultMapping(IILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V

    .line 47
    invoke-static {p2, p3, p4, v0}, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;->buildDefaultLightAccessoryCommand(IILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V

    .line 48
    invoke-static {p2, p3, p4, v0}, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;->buildDefaultGunAccessoryCommand(IILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V

    .line 49
    invoke-static {p2, p3, p4, v0}, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;->buildDefaultClawAccessoryCommand(IILcom/parrot/freeflight/core/model/DelosModel;Ljava/util/List;)V

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
