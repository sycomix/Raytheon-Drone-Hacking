.class Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$3;
.super Ljava/lang/Object;
.source "DroneDiscoveringController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$3;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$3;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->access$100(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 247
    .local v1, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    .line 248
    .local v0, "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->getConnectionState()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    move-result-object v3

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;->ARDISCOVERY_CONNECTION_STATE_AVAILABLE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    if-ne v3, v4, :cond_0

    .line 249
    iget-object v3, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$3;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    invoke-static {v3}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->access$100(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    .end local v0    # "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    .end local v1    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$3;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->access$100(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 253
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$3;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    sget-object v3, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_DEVICE_FOUND:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->access$000(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;)V

    .line 255
    :cond_2
    return-void
.end method
