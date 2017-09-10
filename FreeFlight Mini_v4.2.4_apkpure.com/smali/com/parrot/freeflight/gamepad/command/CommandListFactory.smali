.class public Lcom/parrot/freeflight/gamepad/command/CommandListFactory;
.super Ljava/lang/Object;
.source "CommandListFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;III)Ljava/util/List;
    .locals 7
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mappingChoice"    # I
    .param p2, "settingsFilter"    # I
    .param p3, "gamePadType"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "III)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/command/Command;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 23
    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne p0, v3, :cond_0

    sget-object p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->DEFAULT_PRODUCT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 25
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v1, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/command/Command;>;"
    sget-object v3, Lcom/parrot/freeflight/gamepad/command/CommandListFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 71
    :cond_1
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->values()[Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_11

    aget-object v0, v4, v3

    .line 72
    .local v0, "command":Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "command":Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;
    :pswitch_0
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->values()[Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    .line 29
    .local v0, "command":Lcom/parrot/freeflight/gamepad/command/DelosCommand;
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 31
    .end local v0    # "command":Lcom/parrot/freeflight/gamepad/command/DelosCommand;
    :cond_4
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->values()[Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_6

    aget-object v0, v4, v3

    .line 32
    .local v0, "command":Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 34
    .end local v0    # "command":Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;
    :cond_6
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/accessories/GunCommand;->values()[Lcom/parrot/freeflight/gamepad/command/accessories/GunCommand;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_3
    if-ge v3, v5, :cond_8

    aget-object v0, v4, v3

    .line 35
    .local v0, "command":Lcom/parrot/freeflight/gamepad/command/accessories/GunCommand;
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 37
    .end local v0    # "command":Lcom/parrot/freeflight/gamepad/command/accessories/GunCommand;
    :cond_8
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;->values()[Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_4
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 38
    .local v0, "command":Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 42
    .end local v0    # "command":Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;
    :pswitch_1
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->values()[Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_5
    if-ge v3, v5, :cond_b

    aget-object v0, v4, v3

    .line 43
    .local v0, "command":Lcom/parrot/freeflight/gamepad/command/DelosCommand;
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 45
    .end local v0    # "command":Lcom/parrot/freeflight/gamepad/command/DelosCommand;
    :cond_b
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->values()[Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_6
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 46
    .local v0, "command":Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 52
    .end local v0    # "command":Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;
    :pswitch_2
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->values()[Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_7
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 53
    .local v0, "command":Lcom/parrot/freeflight/gamepad/command/DelosCommand;
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 57
    .end local v0    # "command":Lcom/parrot/freeflight/gamepad/command/DelosCommand;
    :pswitch_3
    const/4 v3, 0x1

    if-ne p1, v3, :cond_f

    .line 58
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->values()[Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_8
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 59
    .local v0, "command":Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 60
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 63
    .end local v0    # "command":Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;
    :cond_f
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->values()[Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_9
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 64
    .local v0, "command":Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 65
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 74
    .end local v0    # "command":Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;
    :cond_11
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->values()[Lcom/parrot/freeflight/gamepad/command/AppCommand;

    move-result-object v3

    array-length v4, v3

    :goto_a
    if-ge v2, v4, :cond_13

    aget-object v0, v3, v2

    .line 75
    .local v0, "command":Lcom/parrot/freeflight/gamepad/command/AppCommand;
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 78
    .end local v0    # "command":Lcom/parrot/freeflight/gamepad/command/AppCommand;
    :cond_13
    return-object v1

    .line 26
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
