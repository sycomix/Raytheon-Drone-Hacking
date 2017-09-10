.class Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;
.super Ljava/lang/Object;
.source "ARStream2MediaCodecVideoRenderer.java"

# interfaces
.implements Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;


# direct methods
.method constructor <init>(Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;

    .prologue
    .line 72
    .local p0, "this":Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;, "Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;"
    iput-object p1, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFreeBuffer()I
    .locals 6

    .prologue
    .line 111
    .local p0, "this":Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;, "Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;"
    iget-object v1, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;

    iget-object v2, v1, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;

    iget-object v1, v1, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/32 v4, 0x80e8

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 121
    :goto_0
    return v1

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "MediaCodecVideoRenderer"

    const-string v3, "exception in mediaCodec.dequeueInputBuffer"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    const/4 v1, -0x1

    monitor-exit v2

    goto :goto_0

    .line 122
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onBufferReady(IJIJJJLcom/parrot/arsdk/arstream2/ARSTREAM2_STREAM_RECEIVER_AU_SYNC_TYPE_ENUM;)V
    .locals 10
    .param p1, "bufferIdx"    # I
    .param p2, "metadata"    # J
    .param p4, "metadataSize"    # I
    .param p5, "auTimestamp"    # J
    .param p7, "auTimestampRaw"    # J
    .param p9, "auTimestampLocal"    # J
    .param p11, "auSyncType"    # Lcom/parrot/arsdk/arstream2/ARSTREAM2_STREAM_RECEIVER_AU_SYNC_TYPE_ENUM;

    .prologue
    .line 128
    .local p0, "this":Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;, "Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;"
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;

    iget-object v9, v0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;

    iget-object v0, v0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;

    iget-object v1, v1, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 132
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 137
    .local v7, "info":Landroid/media/MediaCodec$BufferInfo;
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;

    iget-object v0, v0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v7, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v8

    .line 138
    .local v8, "outIndex":I
    if-ltz v8, :cond_1

    .line 140
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;

    iget-object v0, v0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x1

    invoke-virtual {v0, v8, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 143
    :cond_1
    if-gez v8, :cond_0

    .line 144
    monitor-exit v9

    .line 145
    return-void

    .line 144
    .end local v7    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v8    # "outIndex":I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSpsPpsReady(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 93
    .local p0, "this":Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;, "Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;"
    iget-object v1, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;

    iget-object v2, v1, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->initMediaCodec(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 98
    iget-object v1, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;

    iget-object v1, v1, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v2

    .line 104
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "MediaCodecVideoRenderer"

    const-string v3, "exception in initMediaCodec"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 105
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onVideoAvailable()V
    .locals 2

    .prologue
    .line 76
    .local p0, "this":Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;, "Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;"
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->videoStreamAvailable:Z

    .line 77
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;

    iget-boolean v0, v0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->started:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;

    invoke-virtual {v0}, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->startVideoStream()V

    .line 81
    :cond_0
    return-void
.end method

.method public onVideoStopped()V
    .locals 2

    .prologue
    .line 86
    .local p0, "this":Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;, "Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;"
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->videoStreamAvailable:Z

    .line 87
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;

    invoke-virtual {v0}, Lcom/parrot/controller/video/ARStream2MediaCodecVideoRenderer;->stopMediaCodec()V

    .line 88
    return-void
.end method
