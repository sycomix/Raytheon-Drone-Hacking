.class public Lcom/parrot/freeflight/media/DroneMemoryInitializationInfoBuilder;
.super Ljava/lang/Object;
.source "DroneMemoryInitializationInfoBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;
    .locals 5
    .param p0, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "remoteCtrlModel"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 15
    instance-of v4, p0, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v4, :cond_0

    move-object v0, p0

    .line 16
    check-cast v0, Lcom/parrot/freeflight/core/model/DelosModel;

    .line 17
    .local v0, "delosModel":Lcom/parrot/freeflight/core/model/DelosModel;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v1

    .line 18
    .local v1, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getMassStorageName()Ljava/lang/String;

    move-result-object v2

    .line 19
    .local v2, "massStorageName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getMassStoragePath()Ljava/lang/String;

    move-result-object v3

    .line 20
    .local v3, "massStoragePath":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 21
    new-instance v4, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;

    invoke-direct {v4, v1, v2, v3}, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .end local v0    # "delosModel":Lcom/parrot/freeflight/core/model/DelosModel;
    .end local v1    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .end local v2    # "massStorageName":Ljava/lang/String;
    .end local v3    # "massStoragePath":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
