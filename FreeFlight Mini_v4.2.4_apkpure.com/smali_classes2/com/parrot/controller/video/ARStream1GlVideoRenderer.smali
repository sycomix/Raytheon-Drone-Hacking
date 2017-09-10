.class public Lcom/parrot/controller/video/ARStream1GlVideoRenderer;
.super Lcom/parrot/controller/video/ARVideoViewControllerRenderer;
.source "ARStream1GlVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/controller/video/ARVideoViewControllerRenderer",
        "<",
        "Lcom/parrot/controller/video/openGL/GLView;",
        ">;"
    }
.end annotation


# instance fields
.field private final arDecoder:Lcom/parrot/controller/video/ARDecoder;

.field private final deviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

.field private mDeviceControllerVideoListener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;

.field private final texture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;


# direct methods
.method public constructor <init>(Lcom/parrot/controller/video/openGL/GLView;Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 3
    .param p1, "glView"    # Lcom/parrot/controller/video/openGL/GLView;
    .param p2, "codecsType"    # Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;
    .param p3, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    const/4 v2, -0x1

    .line 25
    invoke-direct {p0, p1}, Lcom/parrot/controller/video/ARVideoViewControllerRenderer;-><init>(Landroid/view/SurfaceView;)V

    .line 94
    new-instance v0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer$1;

    invoke-direct {v0, p0}, Lcom/parrot/controller/video/ARStream1GlVideoRenderer$1;-><init>(Lcom/parrot/controller/video/ARStream1GlVideoRenderer;)V

    iput-object v0, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->mDeviceControllerVideoListener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;

    .line 26
    new-instance v0, Lcom/parrot/controller/video/ARDecoder;

    invoke-direct {v0, p2}, Lcom/parrot/controller/video/ARDecoder;-><init>(Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;)V

    iput-object v0, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->arDecoder:Lcom/parrot/controller/video/ARDecoder;

    .line 27
    iput-object p3, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->deviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 28
    new-instance v0, Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-direct {v0}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->texture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    .line 29
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->surfaceView:Landroid/view/SurfaceView;

    check-cast v0, Lcom/parrot/controller/video/openGL/GLView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/parrot/controller/video/openGL/GLView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->surfaceView:Landroid/view/SurfaceView;

    check-cast v0, Lcom/parrot/controller/video/openGL/GLView;

    sget-object v1, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;->SCALE_MODE_ASPECT_FILL:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/video/openGL/GLView;->setTextureScaleMode(Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/controller/video/ARStream1GlVideoRenderer;Lcom/parrot/controller/stream/ARFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/video/ARStream1GlVideoRenderer;
    .param p1, "x1"    # Lcom/parrot/controller/stream/ARFrame;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->onReceiveFrame(Lcom/parrot/controller/stream/ARFrame;)V

    return-void
.end method

.method private onReceiveFrame(Lcom/parrot/controller/stream/ARFrame;)V
    .locals 4
    .param p1, "frame"    # Lcom/parrot/controller/stream/ARFrame;

    .prologue
    .line 74
    iget-object v2, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->arDecoder:Lcom/parrot/controller/video/ARDecoder;

    invoke-virtual {v1, p1}, Lcom/parrot/controller/video/ARDecoder;->decodeFrame(Lcom/parrot/controller/stream/ARFrame;)Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;

    move-result-object v0

    .line 77
    .local v0, "decodedFrame":Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->getComponentArray()[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->texture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-virtual {v1}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getImageSize()Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->setHeight(F)V

    .line 80
    iget-object v1, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->texture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-virtual {v1}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getImageSize()Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->setWidth(F)V

    .line 82
    iget-object v1, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->texture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-virtual {v1}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getTextureSize()Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->setHeight(F)V

    .line 83
    iget-object v1, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->texture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-virtual {v1}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getTextureSize()Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->setWidth(F)V

    .line 85
    iget-object v1, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->texture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->getComponentArray()[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->setComponentArray([Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;)V

    .line 87
    iget-object v1, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->texture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-virtual {v1}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->incrementNumPictureDecoded()V

    .line 89
    iget-object v1, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->surfaceView:Landroid/view/SurfaceView;

    check-cast v1, Lcom/parrot/controller/video/openGL/GLView;

    iget-object v3, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->texture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-virtual {v1, v3}, Lcom/parrot/controller/video/openGL/GLView;->setTexture(Lcom/parrot/controller/video/openGL/AROpenGLTexture;)V

    .line 91
    :cond_0
    monitor-exit v2

    .line 92
    return-void

    .line 91
    .end local v0    # "decodedFrame":Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->arDecoder:Lcom/parrot/controller/video/ARDecoder;

    invoke-virtual {v0}, Lcom/parrot/controller/video/ARDecoder;->close()V

    .line 57
    monitor-exit v1

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->surfaceView:Landroid/view/SurfaceView;

    check-cast v0, Lcom/parrot/controller/video/openGL/GLView;

    invoke-virtual {v0}, Lcom/parrot/controller/video/openGL/GLView;->onPause()V

    .line 64
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->surfaceView:Landroid/view/SurfaceView;

    check-cast v0, Lcom/parrot/controller/video/openGL/GLView;

    invoke-virtual {v0}, Lcom/parrot/controller/video/openGL/GLView;->onResume()V

    .line 70
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 36
    iget-object v1, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->deviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v2, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->mDeviceControllerVideoListener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;

    invoke-virtual {v0, v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->setVideoStreamListener(Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;)V

    .line 39
    monitor-exit v1

    .line 40
    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 45
    iget-object v1, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->deviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->setVideoStreamListener(Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;)V

    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
