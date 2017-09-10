.class public Lcom/parrot/controller/video/ARStream2MediaCodecVideoSurfaceViewRenderer;
.super Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;
.source "ARStream2MediaCodecVideoSurfaceViewRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer",
        "<",
        "Landroid/view/SurfaceView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;-><init>(Landroid/view/SurfaceView;Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 18
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoSurfaceViewRenderer;->deviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v1, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoSurfaceViewRenderer;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->setVideoStream2Listener(Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected configureMediaCodec(Landroid/media/MediaFormat;)V
    .locals 4
    .param p1, "format"    # Landroid/media/MediaFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoSurfaceViewRenderer;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoSurfaceViewRenderer;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 25
    return-void
.end method
