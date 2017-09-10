.class public Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;
.super Lcom/parrot/controller/video/MediaCodecVideoRendererBase;
.source "ARStream1MediaCodecVideoRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/controller/video/MediaCodecVideoRendererBase",
        "<",
        "Landroid/view/SurfaceView;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VIDEO_DEQUEUE_TIMEOUT:I = 0x80e8


# instance fields
.field private final deviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

.field private mDeviceControllerVideoListener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/parrot/controller/video/MediaCodecVideoRendererBase;-><init>(Landroid/view/SurfaceView;)V

    .line 149
    new-instance v0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer$1;

    invoke-direct {v0, p0}, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer$1;-><init>(Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;)V

    iput-object v0, p0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->mDeviceControllerVideoListener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;

    .line 30
    iput-object p2, p0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->deviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 31
    return-void
.end method

.method private getSpsPps(Lcom/parrot/controller/stream/ARFrame;)[Ljava/nio/ByteBuffer;
    .locals 9
    .param p1, "frame"    # Lcom/parrot/controller/stream/ARFrame;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 102
    const/4 v4, 0x0

    .line 103
    .local v4, "sps":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 105
    .local v1, "pps":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->getByteData()[B

    move-result-object v0

    .line 106
    .local v0, "frameData":[B
    const/4 v5, -0x1

    .line 107
    .local v5, "spsSize":I
    const/4 v2, -0x1

    .line 111
    .local v2, "ppsSize":I
    const/4 v3, 0x4

    .local v3, "searchIndex":I
    :goto_0
    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->getDataSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    if-gt v3, v6, :cond_0

    .line 113
    aget-byte v6, v0, v3

    if-nez v6, :cond_3

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v0, v6

    if-nez v6, :cond_3

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v0, v6

    if-nez v6, :cond_3

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v0, v6

    if-ne v6, v7, :cond_3

    .line 118
    move v5, v3

    .line 122
    :cond_0
    if-lez v5, :cond_2

    .line 124
    invoke-static {v0, v8, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 126
    add-int/lit8 v3, v5, 0x4

    :goto_1
    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->getDataSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    if-gt v3, v6, :cond_1

    .line 128
    aget-byte v6, v0, v3

    if-nez v6, :cond_4

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v0, v6

    if-nez v6, :cond_4

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v0, v6

    if-nez v6, :cond_4

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v0, v6

    if-ne v6, v7, :cond_4

    .line 133
    move v2, v3

    .line 137
    :cond_1
    if-lez v2, :cond_2

    .line 139
    sub-int v6, v2, v5

    invoke-static {v0, v5, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 142
    :cond_2
    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    .line 144
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/nio/ByteBuffer;

    aput-object v4, v6, v8

    aput-object v1, v6, v7

    .line 146
    :goto_2
    return-object v6

    .line 111
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 146
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected configureMediaCodec(Landroid/media/MediaFormat;)V
    .locals 4
    .param p1, "format"    # Landroid/media/MediaFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 37
    return-void
.end method

.method public onReceiveFrame(Lcom/parrot/controller/stream/ARFrame;)V
    .locals 12
    .param p1, "frame"    # Lcom/parrot/controller/stream/ARFrame;

    .prologue
    .line 55
    iget-object v11, p0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->lock:Ljava/lang/Object;

    monitor-enter v11

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 60
    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->isIFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 62
    invoke-direct {p0, p1}, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->getSpsPps(Lcom/parrot/controller/stream/ARFrame;)[Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 63
    .local v10, "spsPps":[Ljava/nio/ByteBuffer;
    if-eqz v10, :cond_0

    .line 65
    const/4 v0, 0x0

    aget-object v0, v10, v0

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {p0, v0, v2}, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->initMediaCodec(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 70
    .end local v10    # "spsPps":[Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/32 v2, 0x80e8

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 73
    .local v1, "index":I
    if-ltz v1, :cond_4

    .line 75
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v7, v0, v1

    .line 76
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 77
    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->getByteData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->getDataSize()I

    move-result v3

    invoke-virtual {v7, v0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 78
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->getDataSize()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 85
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 89
    .local v8, "info":Landroid/media/MediaCodec$BufferInfo;
    :cond_1
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v8, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v9

    .line 90
    .local v9, "outIndex":I
    if-ltz v9, :cond_2

    .line 92
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    invoke-virtual {v0, v9, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 94
    :cond_2
    if-gez v9, :cond_1

    .line 97
    .end local v1    # "index":I
    .end local v8    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v9    # "outIndex":I
    :cond_3
    monitor-exit v11

    .line 98
    return-void

    .line 81
    .restart local v1    # "index":I
    :cond_4
    sget-object v0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->TAG:Ljava/lang/String;

    const-string v2, "MediaCodec: No more input buffer"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    .end local v1    # "index":I
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->startMediaCodec()V

    .line 43
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->deviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v1, p0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->mDeviceControllerVideoListener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->setVideoStreamListener(Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;)V

    .line 44
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->stopMediaCodec()V

    .line 50
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->deviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->setVideoStreamListener(Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;)V

    .line 51
    return-void
.end method
