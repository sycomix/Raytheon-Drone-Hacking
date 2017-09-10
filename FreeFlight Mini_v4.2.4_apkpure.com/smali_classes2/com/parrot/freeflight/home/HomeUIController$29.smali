.class Lcom/parrot/freeflight/home/HomeUIController$29;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/DeviceConnector$IDeviceListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/HomeUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceListChanged(Ljava/util/List;)V
    .locals 2
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
    .line 1223
    .local p1, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$3700(Lcom/parrot/freeflight/home/HomeUIController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1900(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/DroneListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/home/DroneListView;->update(Ljava/util/List;)V

    .line 1228
    :goto_0
    return-void

    .line 1226
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1900(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/DroneListView;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/home/DroneListView;->update(Ljava/util/List;)V

    goto :goto_0
.end method
