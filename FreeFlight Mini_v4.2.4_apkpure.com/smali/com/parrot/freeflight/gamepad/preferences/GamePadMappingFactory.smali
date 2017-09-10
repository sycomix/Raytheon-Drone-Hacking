.class public Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;
.super Ljava/lang/Object;
.source "GamePadMappingFactory.java"


# static fields
.field public static final DEFAULT_PRODUCT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

.field private static final TAG:Ljava/lang/String; = "GamePadMappingFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_DELOS3:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->DEFAULT_PRODUCT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;III)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "mappingChoice"    # I
    .param p4, "commandType"    # I
    .param p5, "settingsFilter"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 34
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v8, v7

    move-object v9, v7

    invoke-static/range {v0 .. v9}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIIILcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/UIController;Landroid/view/inputmethod/BaseInputConnection;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIIILcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/UIController;Landroid/view/inputmethod/BaseInputConnection;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "mappingChoice"    # I
    .param p4, "commandType"    # I
    .param p5, "settingsFilter"    # I
    .param p6, "accessoryFilter"    # I
    .param p7, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "controller"    # Lcom/parrot/freeflight/piloting/ui/UIController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "inputConnection"    # Landroid/view/inputmethod/BaseInputConnection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 45
    if-eqz p2, :cond_0

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_1

    :cond_0
    sget-object p2, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->DEFAULT_PRODUCT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 46
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v3

    .line 47
    .local v3, "gamePadType":I
    new-instance v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;-><init>(Landroid/content/Context;ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ILcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    .line 50
    .local v1, "gamePadPreferences":Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;
    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;->getMapping()Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v4

    .line 53
    .local v4, "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    if-eqz p7, :cond_4

    invoke-virtual/range {p7 .. p7}, Lcom/parrot/freeflight/core/model/DelosModel;->getAccessoryType()I

    move-result v13

    .line 54
    .local v13, "accessoryType":I
    :goto_0
    const/4 v2, -0x1

    if-ne v13, v2, :cond_2

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_LIGHT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 55
    const/4 v13, 0x0

    .line 58
    :cond_2
    const-string v2, "GamePadMappingFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create: mapping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    if-nez v4, :cond_5

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 60
    invoke-static/range {v3 .. v10}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->getDefaultMapping(ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIILcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/UIController;Landroid/view/inputmethod/BaseInputConnection;)Ljava/util/List;

    .end local v4    # "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    move-result-object v15

    .line 63
    .local v15, "defaultGamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    const-string v2, "GamePadMappingFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mapping create: defaultGamePadActions "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v4, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-direct {v4, v15}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;-><init>(Ljava/util/List;)V

    .restart local v4    # "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    move/from16 v5, p4

    move/from16 v6, p5

    move v7, v3

    move/from16 v8, p6

    move v9, v13

    .line 65
    invoke-virtual/range {v4 .. v9}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->filter(IIIII)V

    .line 95
    .end local v15    # "defaultGamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    :cond_3
    :goto_1
    return-object v4

    .line 53
    .end local v13    # "accessoryType":I
    :cond_4
    const/4 v13, -0x1

    goto :goto_0

    .restart local v13    # "accessoryType":I
    :cond_5
    move/from16 v5, p4

    move/from16 v6, p5

    move v7, v3

    move/from16 v8, p6

    move v9, v13

    .line 69
    invoke-virtual/range {v4 .. v9}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->filter(IIIII)V

    .line 72
    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .line 73
    .local v14, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    iget-object v5, v14, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    instance-of v5, v5, Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    if-nez v5, :cond_7

    iget-object v5, v14, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    instance-of v5, v5, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    if-nez v5, :cond_7

    iget-object v5, v14, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    instance-of v5, v5, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    if-nez v5, :cond_7

    iget-object v5, v14, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    instance-of v5, v5, Lcom/parrot/freeflight/gamepad/command/AccessoryCommand;

    if-eqz v5, :cond_8

    .line 77
    :cond_7
    move-object/from16 v0, p7

    iput-object v0, v14, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->cmdParam:Ljava/lang/Object;

    goto :goto_2

    .line 78
    :cond_8
    iget-object v5, v14, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    instance-of v5, v5, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;

    if-eqz v5, :cond_9

    .line 79
    move-object/from16 v0, p8

    iput-object v0, v14, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->cmdParam:Ljava/lang/Object;

    goto :goto_2

    .line 80
    :cond_9
    iget-object v5, v14, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    instance-of v5, v5, Lcom/parrot/freeflight/gamepad/command/AppCommand;

    if-eqz v5, :cond_6

    .line 81
    move-object/from16 v0, p9

    iput-object v0, v14, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->cmdParam:Ljava/lang/Object;

    goto :goto_2

    .line 85
    .end local v14    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    :cond_a
    if-eqz p5, :cond_3

    .line 88
    const/4 v9, 0x1

    move v5, v3

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-static/range {v5 .. v12}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->getDefaultMapping(ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIILcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/UIController;Landroid/view/inputmethod/BaseInputConnection;)Ljava/util/List;

    move-result-object v15

    .line 91
    .restart local v15    # "defaultGamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method private static getDefaultMapping(ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIILcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/UIController;Landroid/view/inputmethod/BaseInputConnection;)Ljava/util/List;
    .locals 1
    .param p0, "gamePadType"    # I
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mappingChoice"    # I
    .param p3, "commandType"    # I
    .param p4, "settingsFilter"    # I
    .param p5, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "controller"    # Lcom/parrot/freeflight/piloting/ui/UIController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "inputConnection"    # Landroid/view/inputmethod/BaseInputConnection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    .line 107
    packed-switch p0, :pswitch_data_0

    .line 113
    invoke-static/range {p1 .. p7}, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;->create(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIILcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/UIController;Landroid/view/inputmethod/BaseInputConnection;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    .line 109
    :pswitch_0
    invoke-static/range {p1 .. p7}, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory;->create(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIILcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/UIController;Landroid/view/inputmethod/BaseInputConnection;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
