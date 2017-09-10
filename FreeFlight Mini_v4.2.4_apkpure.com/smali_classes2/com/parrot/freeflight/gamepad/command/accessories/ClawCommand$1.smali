.class final enum Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand$1;
.super Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;
.source "ClawCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;
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
    .line 16
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;-><init>(Ljava/lang/String;IIILcom/parrot/freeflight/gamepad/command/accessories/ClawCommand$1;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/parrot/freeflight/core/model/DelosModel;F)V
    .locals 6
    .param p1, "delosModel"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # F

    .prologue
    .line 19
    const-string v3, "ClawCommand"

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

    .line 20
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getClawAccessories()Ljava/util/Map;

    move-result-object v0

    .line 21
    .local v0, "clawAccessories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/freeflight/core/model/ClawAccessory;>;"
    const/4 v2, 0x0

    .line 22
    .local v2, "currentAccessory":Lcom/parrot/freeflight/core/model/ClawAccessory;
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/core/model/ClawAccessory;

    .line 23
    .local v1, "clawAccessory":Lcom/parrot/freeflight/core/model/ClawAccessory;
    if-eqz v1, :cond_0

    .line 24
    move-object v2, v1

    .line 28
    .end local v1    # "clawAccessory":Lcom/parrot/freeflight/core/model/ClawAccessory;
    :cond_1
    if-eqz v2, :cond_2

    .line 29
    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/ClawAccessory;->switchState()V

    .line 31
    :cond_2
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;F)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 16
    check-cast p1, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand$1;->execute(Lcom/parrot/freeflight/core/model/DelosModel;F)V

    return-void
.end method
