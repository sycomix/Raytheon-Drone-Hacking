.class final enum Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$6;
.super Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;
.source "WingXPlaneCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 7
    .param p3, "id"    # I
    .param p4, "resId"    # I
    .param p5, "analog"    # Z

    .prologue
    .line 52
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;-><init>(Ljava/lang/String;IIIZLcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$1;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/parrot/freeflight/core/model/DelosModel;F)V
    .locals 6
    .param p1, "wingxModel"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # F

    .prologue
    .line 55
    const-string v3, "WingXPlaneCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execute "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getWingXPlaneGear()I

    move-result v1

    .line 57
    .local v1, "currentGear":I
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getWingXFlyingMode()I

    move-result v0

    .line 58
    .local v0, "currentFlyingMode":I
    invoke-static {v0, v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->access$100(II)I

    move-result v2

    .line 59
    .local v2, "currentSpeed":I
    add-int/lit8 v3, v2, -0x1

    invoke-static {v0, p1, v3}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->access$200(ILcom/parrot/freeflight/core/model/DelosModel;I)V

    .line 60
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;F)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    check-cast p1, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$6;->execute(Lcom/parrot/freeflight/core/model/DelosModel;F)V

    return-void
.end method
