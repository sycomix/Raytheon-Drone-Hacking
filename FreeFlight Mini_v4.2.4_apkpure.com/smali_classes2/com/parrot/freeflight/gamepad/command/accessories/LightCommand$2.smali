.class final enum Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand$2;
.super Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;
.source "LightCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 6
    .param p3, "id"    # I
    .param p4, "resId"    # I

    .prologue
    .line 41
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;-><init>(Ljava/lang/String;IIILcom/parrot/freeflight/gamepad/command/accessories/LightCommand$1;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/parrot/freeflight/core/model/DelosModel;F)V
    .locals 8
    .param p1, "delosModel"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 44
    const-string v3, "LightCommand"

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

    .line 45
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 46
    invoke-static {p1}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->access$100(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/freeflight/core/model/LightAccessory;

    move-result-object v1

    .line 47
    .local v1, "currentAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/LightAccessory;->getState()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 49
    invoke-virtual {v1, v6}, Lcom/parrot/freeflight/core/model/LightAccessory;->setState(I)V

    .line 63
    .end local v1    # "currentAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v1    # "currentAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    :cond_1
    invoke-virtual {v1, v7}, Lcom/parrot/freeflight/core/model/LightAccessory;->setState(I)V

    goto :goto_0

    .line 55
    .end local v1    # "currentAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    :cond_2
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getDroneAnimationStates()Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;

    move-result-object v2

    .line 56
    .local v2, "droneAnimationState":Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;
    invoke-virtual {v2, v6}, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;->getAnimationState(I)I

    move-result v0

    .line 57
    .local v0, "animationState":I
    if-nez v0, :cond_3

    .line 58
    invoke-virtual {p1, v6}, Lcom/parrot/freeflight/core/model/DelosModel;->stopLightAnimation(I)V

    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p1, v6}, Lcom/parrot/freeflight/core/model/DelosModel;->startAnimation(I)V

    goto :goto_0
.end method

.method public bridge synthetic execute(Ljava/lang/Object;F)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    check-cast p1, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand$2;->execute(Lcom/parrot/freeflight/core/model/DelosModel;F)V

    return-void
.end method
