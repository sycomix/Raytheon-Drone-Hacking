.class Lcom/parrot/freeflight/core/video/VideoStreamingController$2;
.super Ljava/lang/Object;
.source "VideoStreamingController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/video/VideoStreamingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/video/VideoStreamingController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$2;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 3
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
    .line 95
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$2;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$302(Lcom/parrot/freeflight/core/video/VideoStreamingController;Z)Z

    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$2;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v0, p3}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$600(Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$2;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$300(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$2;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$302(Lcom/parrot/freeflight/core/video/VideoStreamingController;Z)Z

    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$2;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$700(Lcom/parrot/freeflight/core/video/VideoStreamingController;)V

    goto :goto_0
.end method
