.class Lcom/parrot/freeflight/update/DroneModelWrapper;
.super Ljava/lang/Object;
.source "DroneModelWrapper.java"


# instance fields
.field private final mModel:Lcom/parrot/freeflight/core/model/Model;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 3
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    instance-of v0, p1, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 17
    iput-object p1, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    .line 21
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported in updater"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v0, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Lcom/parrot/freeflight/core/model/Model;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    return-object v0
.end method

.method public getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v0, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/Model;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reboot()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v0, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->reboot()V

    .line 45
    return-void
.end method
