.class Lcom/parrot/freeflight/core/DeviceConnector$5;
.super Ljava/lang/Object;
.source "DeviceConnector.java"

# interfaces
.implements Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/DeviceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/DeviceConnector;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/DeviceConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/DeviceConnector;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/parrot/freeflight/core/DeviceConnector$5;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 4

    .prologue
    .line 492
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector$5;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector$5;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v3}, Lcom/parrot/freeflight/core/DeviceConnector;->access$900(Lcom/parrot/freeflight/core/DeviceConnector;)Lcom/parrot/freeflight/UserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/UserSettings;->getUserDrone()Lcom/parrot/freeflight/UserDrone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/core/DeviceConnector;->access$802(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/UserDrone;)Lcom/parrot/freeflight/UserDrone;

    .line 493
    const/4 v1, 0x0

    .line 494
    .local v1, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    const/4 v0, 0x0

    .line 495
    .local v0, "checkConnectedDeviceService":Z
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector$5;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v2}, Lcom/parrot/freeflight/core/DeviceConnector;->access$800(Lcom/parrot/freeflight/core/DeviceConnector;)Lcom/parrot/freeflight/UserDrone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 496
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector$5;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v2}, Lcom/parrot/freeflight/core/DeviceConnector;->access$1000(Lcom/parrot/freeflight/core/DeviceConnector;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v2

    if-nez v2, :cond_3

    .line 497
    const/4 v0, 0x1

    .line 502
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 503
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector$5;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v2}, Lcom/parrot/freeflight/core/DeviceConnector;->access$200(Lcom/parrot/freeflight/core/DeviceConnector;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector$5;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v2}, Lcom/parrot/freeflight/core/DeviceConnector;->access$800(Lcom/parrot/freeflight/core/DeviceConnector;)Lcom/parrot/freeflight/UserDrone;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector$5;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v3}, Lcom/parrot/freeflight/core/DeviceConnector;->access$200(Lcom/parrot/freeflight/core/DeviceConnector;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/UserDrone;->matchDeviceService(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 504
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector$5;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v2}, Lcom/parrot/freeflight/core/DeviceConnector;->access$200(Lcom/parrot/freeflight/core/DeviceConnector;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v1

    .line 508
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector$5;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v2, v1}, Lcom/parrot/freeflight/core/DeviceConnector;->access$1002(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 509
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector$5;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v2}, Lcom/parrot/freeflight/core/DeviceConnector;->access$1000(Lcom/parrot/freeflight/core/DeviceConnector;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 510
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector$5;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v2}, Lcom/parrot/freeflight/core/DeviceConnector;->access$1100(Lcom/parrot/freeflight/core/DeviceConnector;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector$5;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v3}, Lcom/parrot/freeflight/core/DeviceConnector;->access$1000(Lcom/parrot/freeflight/core/DeviceConnector;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 512
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector$5;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    sget-object v3, Lcom/parrot/freeflight/core/DeviceConnector$Event;->USER_DRONE_CHANGED:Lcom/parrot/freeflight/core/DeviceConnector$Event;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/core/DeviceConnector;->access$500(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/core/DeviceConnector$Event;)V

    .line 513
    return-void

    .line 498
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector$5;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v2}, Lcom/parrot/freeflight/core/DeviceConnector;->access$800(Lcom/parrot/freeflight/core/DeviceConnector;)Lcom/parrot/freeflight/UserDrone;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector$5;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v3}, Lcom/parrot/freeflight/core/DeviceConnector;->access$1000(Lcom/parrot/freeflight/core/DeviceConnector;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/UserDrone;->matchDeviceService(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 500
    const/4 v0, 0x1

    goto :goto_0
.end method
