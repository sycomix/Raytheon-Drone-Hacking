.class final enum Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand$1;
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
    .line 19
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
    .locals 5
    .param p1, "delosModel"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # F

    .prologue
    const/4 v4, 0x0

    .line 22
    const-string v1, "LightCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 24
    invoke-static {p1}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->access$100(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/freeflight/core/model/LightAccessory;

    move-result-object v0

    .line 25
    .local v0, "currentAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/LightAccessory;->getIntensity()I

    move-result v1

    if-lez v1, :cond_1

    .line 27
    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/core/model/LightAccessory;->setIntensity(I)V

    .line 39
    .end local v0    # "currentAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    :cond_0
    :goto_0
    return-void

    .line 29
    .restart local v0    # "currentAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    :cond_1
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/LightAccessory;->setIntensity(I)V

    goto :goto_0

    .line 33
    .end local v0    # "currentAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    :cond_2
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getLightIntensity()I

    move-result v1

    if-lez v1, :cond_3

    .line 34
    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/core/model/DelosModel;->setLightsIntensity(I)V

    goto :goto_0

    .line 36
    :cond_3
    const/16 v1, 0xff

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->setLightsIntensity(I)V

    goto :goto_0
.end method

.method public bridge synthetic execute(Ljava/lang/Object;F)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    check-cast p1, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand$1;->execute(Lcom/parrot/freeflight/core/model/DelosModel;F)V

    return-void
.end method
