.class public Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;
.super Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;
.source "ARStream2MediaCodecVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "debug_stream"

.field private static final VIDEO_DEQUEUE_TIMEOUT:I = 0x80e8


# instance fields
.field private final mBufferInfo:Landroid/media/MediaCodec$BufferInfo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOnFrameAvailableListener:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;

.field private final mVideoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected started:Z


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;)V
    .locals 3
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "videoListener"    # Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "onFrameAvailableListener"    # Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0, p2}, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;-><init>(Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;)V

    .line 66
    new-instance v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;

    invoke-direct {v0, p0}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;-><init>(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)V

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mVideoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    .line 36
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 37
    iput-object p1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 38
    iput-object p3, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mOnFrameAvailableListener:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;

    .line 39
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mVideoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->setVideoStream2Listener(Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;)V

    .line 40
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARStream2MediaCodecVideoDecoder() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->isStream2StartRequested()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->isStream2StartRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startVideoStreaming()V

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)Landroid/media/MediaCodec$BufferInfo;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->setVideoStream2Listener(Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;)V

    .line 64
    return-void
.end method

.method public setUseSurface(Z)V
    .locals 3
    .param p1, "useSurface"    # Z

    .prologue
    .line 48
    iget-object v2, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "needRestart":Z
    :try_start_0
    iget-boolean v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mUseSurface:Z

    if-eq v1, p1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->pauseVideoStream2Receiver()V

    .line 52
    const/4 v0, 0x1

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->setUseSurface(Z)V

    .line 55
    if-eqz v0, :cond_1

    .line 56
    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->restartVideoStream2Receiver()V

    .line 58
    :cond_1
    monitor-exit v2

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
