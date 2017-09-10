.class Lcom/parrot/freeflight/home/DroneConnectionActivity$3;
.super Ljava/lang/Object;
.source "DroneConnectionActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/DroneConnectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/DroneConnectionActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/DroneConnectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/DroneConnectionActivity;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity$3;->this$0:Lcom/parrot/freeflight/home/DroneConnectionActivity;

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
    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity$3;->this$0:Lcom/parrot/freeflight/home/DroneConnectionActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->access$100(Lcom/parrot/freeflight/home/DroneConnectionActivity;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity$3;->this$0:Lcom/parrot/freeflight/home/DroneConnectionActivity;

    invoke-static {v0, p2}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->access$102(Lcom/parrot/freeflight/home/DroneConnectionActivity;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity$3;->this$0:Lcom/parrot/freeflight/home/DroneConnectionActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->access$100(Lcom/parrot/freeflight/home/DroneConnectionActivity;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 244
    iget-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity$3;->this$0:Lcom/parrot/freeflight/home/DroneConnectionActivity;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->access$202(Lcom/parrot/freeflight/home/DroneConnectionActivity;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 245
    iget-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity$3;->this$0:Lcom/parrot/freeflight/home/DroneConnectionActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->access$300(Lcom/parrot/freeflight/home/DroneConnectionActivity;)V

    .line 247
    :cond_1
    return-void
.end method
