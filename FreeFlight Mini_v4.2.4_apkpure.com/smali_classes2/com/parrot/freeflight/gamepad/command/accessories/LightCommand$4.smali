.class final enum Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand$4;
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
    .line 89
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
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    const-string v2, "LightCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getType()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 94
    invoke-static {p1}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->access$100(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/freeflight/core/model/LightAccessory;

    move-result-object v0

    .line 95
    .local v0, "currentAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/LightAccessory;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 126
    .end local v0    # "currentAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    :cond_0
    :goto_0
    return-void

    .line 98
    .restart local v0    # "currentAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    :pswitch_0
    invoke-virtual {v0, v5}, Lcom/parrot/freeflight/core/model/LightAccessory;->setIntensity(I)V

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-virtual {v0, v7}, Lcom/parrot/freeflight/core/model/LightAccessory;->setState(I)V

    goto :goto_0

    .line 104
    :pswitch_2
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/LightAccessory;->getIntensity()I

    move-result v2

    if-lez v2, :cond_1

    .line 105
    invoke-virtual {v0, v6}, Lcom/parrot/freeflight/core/model/LightAccessory;->setState(I)V

    goto :goto_0

    .line 107
    :cond_1
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/core/model/LightAccessory;->setIntensity(I)V

    goto :goto_0

    .line 113
    .end local v0    # "currentAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    :cond_2
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getDroneAnimationStates()Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;

    move-result-object v1

    .line 114
    .local v1, "droneAnimationState":Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;
    invoke-virtual {v1, v6}, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;->getAnimationState(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 115
    invoke-virtual {p1, v6}, Lcom/parrot/freeflight/core/model/DelosModel;->stopLightAnimation(I)V

    .line 116
    invoke-virtual {p1, v5}, Lcom/parrot/freeflight/core/model/DelosModel;->setLightsIntensity(I)V

    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {v1, v5}, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;->getAnimationState(I)I

    move-result v2

    if-nez v2, :cond_4

    .line 118
    invoke-virtual {p1, v5}, Lcom/parrot/freeflight/core/model/DelosModel;->stopLightAnimation(I)V

    .line 119
    invoke-virtual {p1, v6}, Lcom/parrot/freeflight/core/model/DelosModel;->startAnimation(I)V

    goto :goto_0

    .line 120
    :cond_4
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getLightIntensity()I

    move-result v2

    if-lez v2, :cond_5

    .line 121
    invoke-virtual {p1, v5}, Lcom/parrot/freeflight/core/model/DelosModel;->startAnimation(I)V

    goto :goto_0

    .line 123
    :cond_5
    const/16 v2, 0xff

    invoke-virtual {p1, v2}, Lcom/parrot/freeflight/core/model/DelosModel;->setLightsIntensity(I)V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic execute(Ljava/lang/Object;F)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    check-cast p1, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand$4;->execute(Lcom/parrot/freeflight/core/model/DelosModel;F)V

    return-void
.end method
