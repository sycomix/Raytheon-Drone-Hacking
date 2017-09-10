.class public Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;
.super Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;
.source "ARStream1MediaCodecVideoDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoRenderer"

.field protected static final VIDEO_DEQUEUE_TIMEOUT:I = 0x80e8


# instance fields
.field protected final mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

.field private mDeviceControllerVideoListener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 1
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;-><init>()V

    .line 114
    new-instance v0, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder$1;

    invoke-direct {v0, p0}, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder$1;-><init>(Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;)V

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;->mDeviceControllerVideoListener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;

    .line 23
    iput-object p1, p0, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;->listenEvent(Z)V

    .line 25
    return-void
.end method

.method private getSpsPps(Lcom/parrot/controller/stream/ARFrame;)[Ljava/nio/ByteBuffer;
    .locals 9
    .param p1, "frame"    # Lcom/parrot/controller/stream/ARFrame;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 74
    const/4 v4, 0x0

    .line 75
    .local v4, "sps":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 77
    .local v1, "pps":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->getByteData()[B

    move-result-object v0

    .line 78
    .local v0, "frameData":[B
    const/4 v5, -0x1

    .line 79
    .local v5, "spsSize":I
    const/4 v2, -0x1

    .line 83
    .local v2, "ppsSize":I
    const/4 v3, 0x4

    .local v3, "searchIndex":I
    :goto_0
    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->getDataSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    if-gt v3, v6, :cond_0

    .line 84
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

    .line 88
    move v5, v3

    .line 92
    :cond_0
    if-lez v5, :cond_2

    .line 93
    invoke-static {v0, v8, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 95
    add-int/lit8 v3, v5, 0x4

    :goto_1
    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->getDataSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    if-gt v3, v6, :cond_1

    .line 96
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

    .line 100
    move v2, v3

    .line 104
    :cond_1
    if-lez v2, :cond_2

    .line 105
    sub-int v6, v2, v5

    invoke-static {v0, v5, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 108
    :cond_2
    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    .line 109
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/nio/ByteBuffer;

    aput-object v4, v6, v8

    aput-object v1, v6, v7

    .line 111
    :goto_2
    return-object v6

    .line 83
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 111
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;->listenEvent(Z)V

    .line 34
    return-void
.end method

.method protected listenEvent(Z)V
    .locals 2
    .param p1, "listen"    # Z

    .prologue
    .line 28
    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;->mDeviceControllerVideoListener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->setVideoStreamListener(Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;)V

    .line 29
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFrameReceived(Lcom/parrot/controller/stream/ARFrame;)V
    .locals 12
    .param p1, "frame"    # Lcom/parrot/controller/stream/ARFrame;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    iget-object v11, p0, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 40
    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->isIFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0, p1}, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;->getSpsPps(Lcom/parrot/controller/stream/ARFrame;)[Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 42
    .local v10, "spsPps":[Ljava/nio/ByteBuffer;
    if-eqz v10, :cond_0

    .line 43
    const/4 v0, 0x0

    aget-object v0, v10, v0

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {p0, v0, v2}, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;->initMediaCodec(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 48
    .end local v10    # "spsPps":[Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 49
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/32 v2, 0x80e8

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 50
    .local v1, "index":I
    if-ltz v1, :cond_4

    .line 51
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v7, v0, v1

    .line 52
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 53
    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->getByteData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->getDataSize()I

    move-result v3

    invoke-virtual {v7, v0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 54
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->getDataSize()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 60
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 63
    .local v8, "info":Landroid/media/MediaCodec$BufferInfo;
    :cond_1
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v8, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v9

    .line 64
    .local v9, "outIndex":I
    if-ltz v9, :cond_2

    .line 65
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    invoke-virtual {v0, v9, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 67
    :cond_2
    if-gez v9, :cond_1

    .line 70
    .end local v1    # "index":I
    .end local v8    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v9    # "outIndex":I
    :cond_3
    monitor-exit v11

    .line 71
    return-void

    .line 56
    .restart local v1    # "index":I
    :cond_4
    const-string v0, "MediaCodecVideoRenderer"

    const-string v2, "MediaCodec: No more input buffer"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    .end local v1    # "index":I
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
