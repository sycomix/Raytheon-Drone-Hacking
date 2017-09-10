.class public Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;
.super Ljava/lang/Object;
.source "DelosSettingsBuilder.java"

# interfaces
.implements Lcom/parrot/freeflight/settings/ISettingsBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/settings/ISettingsBuilder",
        "<",
        "Lcom/parrot/freeflight/core/model/DelosModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPositionInterpretedValues:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSpeedInterpretedValues:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    .line 48
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f080412

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "lowString":Ljava/lang/String;
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f08042c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "normalString":Ljava/lang/String;
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f080409

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "highString":Ljava/lang/String;
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f08044a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, "verySlowString":Ljava/lang/String;
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f080442

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "slowString":Ljava/lang/String;
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0803f9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "fastString":Ljava/lang/String;
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f080447

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "veryFastString":Ljava/lang/String;
    new-array v7, v12, [Ljava/lang/String;

    aput-object v2, v7, v9

    aput-object v3, v7, v10

    aput-object v1, v7, v11

    iput-object v7, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mPositionInterpretedValues:[Ljava/lang/String;

    .line 58
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    aput-object v6, v7, v9

    aput-object v4, v7, v10

    aput-object v3, v7, v11

    aput-object v0, v7, v12

    const/4 v8, 0x4

    aput-object v5, v7, v8

    iput-object v7, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mSpeedInterpretedValues:[Ljava/lang/String;

    .line 60
    return-void
.end method

.method private buildInfosSettings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 364
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 365
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$13;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f08052e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$13;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$14;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f08027f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$14;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$15;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0803e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$15;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    return-object v0
.end method

.method private buildNetworkSettings(Lcom/parrot/freeflight/core/model/DelosModel;)Ljava/util/List;
    .locals 4
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 348
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$12;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f08041e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$12;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/core/model/DelosModel;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    return-object v0
.end method

.method private buildPilotingSettings(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/util/List;
    .locals 17
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v15, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$1;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f080430

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DelosModel;->isWingX()Z

    move-result v7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v3, v1, v7}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$1;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Z)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getType()I

    move-result v16

    .line 99
    .local v16, "type":I
    const/4 v2, 0x3

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0803df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "settingEntryName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 103
    .local v5, "settingEntryLeftStateName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 105
    .local v6, "settingEntryRightStateName":Ljava/lang/String;
    packed-switch v16, :pswitch_data_0

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/freeflight/utils/ProductsUtils;->isMinidroneV3(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const/4 v8, 0x1

    .line 115
    .local v8, "editable":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f080286

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f08039e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0805eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 121
    :goto_1
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$2;

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$2;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/core/model/DelosModel;Z)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v4    # "settingEntryName":Ljava/lang/String;
    .end local v5    # "settingEntryLeftStateName":Ljava/lang/String;
    .end local v6    # "settingEntryRightStateName":Ljava/lang/String;
    .end local v8    # "editable":Z
    :cond_1
    new-instance v9, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$3;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0803f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0803e2

    .line 141
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0803f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v10, p0

    move-object/from16 v14, p1

    invoke-direct/range {v9 .. v14}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$3;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/core/model/DelosModel;)V

    .line 140
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    return-object v15

    .line 107
    .restart local v4    # "settingEntryName":Ljava/lang/String;
    .restart local v5    # "settingEntryLeftStateName":Ljava/lang/String;
    .restart local v6    # "settingEntryRightStateName":Ljava/lang/String;
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v8

    .line 108
    .restart local v8    # "editable":Z
    goto :goto_1

    .line 110
    .end local v8    # "editable":Z
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/freeflight/utils/ProductsUtils;->isMinidroneV3(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v8, 0x1

    .line 111
    .restart local v8    # "editable":Z
    :goto_2
    goto :goto_1

    .line 110
    .end local v8    # "editable":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 114
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private buildPositionSettings(Lcom/parrot/freeflight/core/model/DelosModel;)Ljava/util/List;
    .locals 23
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v18, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$4;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080405

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0803fa

    .line 164
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$4;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/core/model/DelosModel;)V

    .line 163
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$5;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080413

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/parrot/freeflight/util/ui/Unit;->METER:Lcom/parrot/freeflight/util/ui/Unit;

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mPositionInterpretedValues:[Ljava/lang/String;

    const/4 v9, 0x1

    move-object/from16 v3, p0

    move-object/from16 v10, p1

    invoke-direct/range {v2 .. v10}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$5;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/util/ui/Unit;D[Ljava/lang/String;ZLcom/parrot/freeflight/core/model/DelosModel;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$6;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080419

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/parrot/freeflight/util/ui/Unit;->DEGREE:Lcom/parrot/freeflight/util/ui/Unit;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mPositionInterpretedValues:[Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$6;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/util/ui/Unit;D[Ljava/lang/String;Lcom/parrot/freeflight/core/model/DelosModel;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$7;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f08041a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/parrot/freeflight/util/ui/Unit;->METER_PER_SECOND:Lcom/parrot/freeflight/util/ui/Unit;

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mSpeedInterpretedValues:[Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$7;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/util/ui/Unit;D[Ljava/lang/String;Lcom/parrot/freeflight/core/model/DelosModel;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$8;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080418

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/parrot/freeflight/util/ui/Unit;->DEGREE_PER_SECOND:Lcom/parrot/freeflight/util/ui/Unit;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mSpeedInterpretedValues:[Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$8;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/util/ui/Unit;D[Ljava/lang/String;Lcom/parrot/freeflight/core/model/DelosModel;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DelosModel;->isHydrofoil()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0806aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 270
    .local v22, "poolSize8x4":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0806a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 271
    .local v19, "poolSize10x5":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0806a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 272
    .local v20, "poolSize15":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0806a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 274
    .local v21, "poolSize20":Ljava/lang/String;
    const/4 v2, 0x4

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v22, v8, v2

    const/4 v2, 0x1

    aput-object v19, v8, v2

    const/4 v2, 0x2

    aput-object v20, v8, v2

    const/4 v2, 0x3

    aput-object v21, v8, v2

    .line 276
    .local v8, "mPoolSizeInterpretatedValue":[Ljava/lang/String;
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$9;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f08040b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$9;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;Lcom/parrot/freeflight/core/model/DelosModel;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DelosModel;->hasHydrofoilGasJoystick()Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    new-instance v10, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$10;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f08040c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    const-wide v14, 0x3fb999999999999aL    # 0.1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mSpeedInterpretedValues:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v11, p0

    move-object/from16 v17, p1

    invoke-direct/range {v10 .. v17}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$10;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;Lcom/parrot/freeflight/core/model/DelosModel;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v8    # "mPoolSizeInterpretatedValue":[Ljava/lang/String;
    .end local v19    # "poolSize10x5":Ljava/lang/String;
    .end local v20    # "poolSize15":Ljava/lang/String;
    .end local v21    # "poolSize20":Ljava/lang/String;
    .end local v22    # "poolSize8x4":Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$11;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0800d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f080397

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0805ea

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$11;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/core/model/DelosModel;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    return-object v18
.end method


# virtual methods
.method public buildCategories(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "model3"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            "Lcom/parrot/freeflight/core/model/Model;",
            "Lcom/parrot/freeflight/piloting/RelativePositionController;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsCategory",
            "<",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsCategory<Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    const v1, 0x7f020209

    const v2, 0x7f020208

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0803c9

    .line 76
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0803de

    .line 77
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, p3}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->buildPilotingSettings(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/model/SettingsCategory;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 75
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    const v1, 0x7f02020f

    const v2, 0x7f02020e

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080437

    .line 79
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f080439

    .line 80
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->buildPositionSettings(Lcom/parrot/freeflight/core/model/DelosModel;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/model/SettingsCategory;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 78
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-object v6
.end method

.method public bridge synthetic buildCategories(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;)Ljava/util/List;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 36
    move-object v2, p2

    check-cast v2, Lcom/parrot/freeflight/core/model/DelosModel;

    move-object v3, p3

    check-cast v3, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->buildCategories(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isFpvEnabled(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "model2"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "model3"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isFpvEnabled(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    check-cast p2, Lcom/parrot/freeflight/core/model/DelosModel;

    check-cast p3, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->isFpvEnabled(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;)Z

    move-result v0

    return v0
.end method
