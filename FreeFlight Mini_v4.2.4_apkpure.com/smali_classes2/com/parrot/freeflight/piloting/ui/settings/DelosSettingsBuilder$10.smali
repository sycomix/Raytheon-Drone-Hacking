.class Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$10;
.super Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;
.source "DelosSettingsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;->buildPositionSettings(Lcom/parrot/freeflight/core/model/DelosModel;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/core/model/DelosModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;

.field final synthetic val$model:Lcom/parrot/freeflight/core/model/DelosModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;Lcom/parrot/freeflight/core/model/DelosModel;)V
    .locals 8
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "unit"    # Ljava/lang/String;
    .param p4, "step"    # D
    .param p6, "interpretedTexts"    # [Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$10;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;

    iput-object p7, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$10;->val$model:Lcom/parrot/freeflight/core/model/DelosModel;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readValue(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "settingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getHydrofoilSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic readValue(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 301
    check-cast p1, Lcom/parrot/freeflight/core/model/DelosModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$10;->readValue(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    return-object v0
.end method

.method public sendValue(Ljava/lang/Double;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/Double;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 320
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$10;->val$model:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/core/model/DelosModel;->setMaxVerticalSpeed(D)V

    .line 321
    return-void
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 301
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$10;->sendValue(Ljava/lang/Double;)V

    return-void
.end method

.method protected updateVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 310
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$10;->val$model:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosModel;->getAccessoryState()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->getCurrentAccessory()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 311
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$10;->setVisibility(Z)V

    .line 316
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$10;->setVisibility(Z)V

    .line 314
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$10;->val$model:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/freeflight/utils/ProductsUtils;->isMinidroneV3(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$10;->val$model:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder$10;->setEditable(Z)V

    goto :goto_0
.end method
