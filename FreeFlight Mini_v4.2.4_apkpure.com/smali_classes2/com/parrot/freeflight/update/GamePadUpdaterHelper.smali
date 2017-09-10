.class public Lcom/parrot/freeflight/update/GamePadUpdaterHelper;
.super Ljava/lang/Object;
.source "GamePadUpdaterHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addGamePadToConnectedProductList(Ljava/util/List;Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 0
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            ">;",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "connectedProductList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    return-void
.end method

.method public static addGamePadToDeviceVersionList(Ljava/util/List;Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 0
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/update/task/DeviceVersion;",
            ">;",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "deviceVersionList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/update/task/DeviceVersion;>;"
    return-void
.end method
