.class public Lcom/parrot/freeflight/piloting/model/DummyDelosModel;
.super Lcom/parrot/freeflight/core/model/DelosModel;
.source "DummyDelosModel.java"


# instance fields
.field private final mLightAccessoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/model/LightAccessory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/freeflight/core/connection/ConnectionManager;)V
    .locals 4
    .param p1, "localStorage"    # Lcom/parrot/freeflight/core/model/LocalStorage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "connectionManager"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 21
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_DELOS3:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-direct {p0, p1, v1, p2}, Lcom/parrot/freeflight/core/model/DelosModel;-><init>(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/DummyDelosModel;->mLightAccessoryMap:Ljava/util/Map;

    .line 23
    new-instance v0, Lcom/parrot/freeflight/core/model/LightAccessory;

    invoke-direct {v0, v3, v3, v3}, Lcom/parrot/freeflight/core/model/LightAccessory;-><init>(III)V

    .line 24
    .local v0, "lightAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/DummyDelosModel;->mLightAccessoryMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/DummyDelosModel;->mAccessoryState:Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->update(II)Z

    .line 26
    return-void
.end method


# virtual methods
.method public getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object v0
.end method

.method public getLightAccessories()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/model/LightAccessory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/DummyDelosModel;->mLightAccessoryMap:Ljava/util/Map;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x2

    return v0
.end method

.method public hasLightAccessories()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public listenEvents(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listen"    # Z

    .prologue
    .line 71
    return-void
.end method

.method public loadFromStore()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 38
    return-void
.end method

.method public saveToStore()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 32
    return-void
.end method

.method public setAccessory(I)V
    .locals 2
    .param p1, "accessory"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/DummyDelosModel;->mAccessoryState:Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->update(II)Z

    .line 65
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/DummyDelosModel;->notifyListener()V

    .line 66
    return-void
.end method
