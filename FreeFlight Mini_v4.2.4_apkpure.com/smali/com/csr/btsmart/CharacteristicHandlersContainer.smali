.class public Lcom/csr/btsmart/CharacteristicHandlersContainer;
.super Ljava/lang/Object;
.source "CharacteristicHandlersContainer.java"


# instance fields
.field private mHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/csr/btsmart/CharacteristicHandlersContainer;->mHandlers:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addHandler(Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V
    .locals 2
    .param p1, "service"    # Ljava/util/UUID;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "notifyHandler"    # Landroid/os/Handler;

    .prologue
    .line 45
    iget-object v1, p0, Lcom/csr/btsmart/CharacteristicHandlersContainer;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 46
    .local v0, "subMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/util/UUID;Landroid/os/Handler;>;"
    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "subMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/util/UUID;Landroid/os/Handler;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    .restart local v0    # "subMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/util/UUID;Landroid/os/Handler;>;"
    iget-object v1, p0, Lcom/csr/btsmart/CharacteristicHandlersContainer;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public getHandler(Ljava/util/UUID;Ljava/util/UUID;)Landroid/os/Handler;
    .locals 2
    .param p1, "service"    # Ljava/util/UUID;
    .param p2, "characteristic"    # Ljava/util/UUID;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/csr/btsmart/CharacteristicHandlersContainer;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 79
    .local v0, "subMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/util/UUID;Landroid/os/Handler;>;"
    if-nez v0, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 82
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    goto :goto_0
.end method

.method public removeHandler(Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 2
    .param p1, "service"    # Ljava/util/UUID;
    .param p2, "characteristic"    # Ljava/util/UUID;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/csr/btsmart/CharacteristicHandlersContainer;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 63
    .local v0, "subMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/util/UUID;Landroid/os/Handler;>;"
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    return-void
.end method
