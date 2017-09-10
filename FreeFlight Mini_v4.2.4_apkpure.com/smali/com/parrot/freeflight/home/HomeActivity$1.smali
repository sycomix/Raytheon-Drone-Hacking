.class Lcom/parrot/freeflight/home/HomeActivity$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeActivity;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeActivity$1;->this$0:Lcom/parrot/freeflight/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 1
    .param p1, "newState"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "droneDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "droneDeviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "remoteCtrlDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "remoteCtrlDeviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 181
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity$1;->this$0:Lcom/parrot/freeflight/home/HomeActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeActivity;->access$000(Lcom/parrot/freeflight/home/HomeActivity;)Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v0

    if-eqz p4, :cond_0

    .end local p4    # "remoteCtrlDeviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :goto_0
    invoke-virtual {v0, p4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->startPudDownload(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 186
    :goto_1
    return-void

    .restart local p4    # "remoteCtrlDeviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :cond_0
    move-object p4, p2

    .line 182
    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity$1;->this$0:Lcom/parrot/freeflight/home/HomeActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeActivity;->access$000(Lcom/parrot/freeflight/home/HomeActivity;)Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->stopPudDownload()V

    goto :goto_1
.end method
