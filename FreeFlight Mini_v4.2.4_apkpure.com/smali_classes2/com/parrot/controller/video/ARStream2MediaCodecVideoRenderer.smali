.class public abstract Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;
.super Lcom/parrot/controller/video/MediaCodecVideoRendererBase;
.source "ARStream2MediaCodecVideoRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/SurfaceView;",
        ">",
        "Lcom/parrot/controller/video/MediaCodecVideoRendererBase",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoRenderer"

.field protected static final VIDEO_DEQUEUE_TIMEOUT:I = 0x80e8


# instance fields
.field protected final deviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

.field protected started:Z

.field protected final videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

.field protected videoStreamAvailable:Z


# direct methods
.method protected constructor <init>(Landroid/view/SurfaceView;Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/parrot/controller/devicecontrollers/DeviceController;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;, "Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer<TV;>;"
    .local p1, "surface":Landroid/view/SurfaceView;, "TV;"
    invoke-direct {p0, p1}, Lcom/parrot/controller/video/MediaCodecVideoRendererBase;-><init>(Landroid/view/SurfaceView;)V

    .line 71
    new-instance v0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;

    invoke-direct {v0, p0}, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;-><init>(Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;)V

    iput-object v0, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    .line 33
    iput-object p2, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->deviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 34
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 56
    .local p0, "this":Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;, "Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer<TV;>;"
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->deviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->setVideoStream2Listener(Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;)V

    .line 57
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;, "Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer<TV;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->started:Z

    .line 40
    iget-boolean v0, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->videoStreamAvailable:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->startVideoStream()V

    .line 44
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;, "Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer<TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->started:Z

    .line 50
    invoke-virtual {p0}, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->stopVideoStream()V

    .line 51
    return-void
.end method

.method protected startVideoStream()V
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;, "Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer<TV;>;"
    invoke-virtual {p0}, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->startMediaCodec()V

    .line 62
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->deviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startVideoStream2Receiver()V

    .line 63
    return-void
.end method

.method protected stopVideoStream()V
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;, "Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer<TV;>;"
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->deviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoStream2Receiver()V

    .line 68
    invoke-virtual {p0}, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->stopMediaCodec()V

    .line 69
    return-void
.end method
