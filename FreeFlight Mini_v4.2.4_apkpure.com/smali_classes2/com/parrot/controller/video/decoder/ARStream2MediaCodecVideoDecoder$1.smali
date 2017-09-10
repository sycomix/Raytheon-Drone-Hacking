.class Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;
.super Ljava/lang/Object;
.source "ARStream2MediaCodecVideoDecoder.java"

# interfaces
.implements Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;


# direct methods
.method constructor <init>(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFreeBuffer()I
    .locals 6

    .prologue
    .line 102
    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v2, v1, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v1, v1, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/32 v4, 0x80e8

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 108
    :goto_0
    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "debug_stream"

    const-string v3, "exception in mMediaCodec.dequeueInputBuffer"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    const/4 v1, -0x1

    monitor-exit v2

    goto :goto_0

    .line 109
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onBufferReady(IJIJJJLcom/parrot/arsdk/arstream2/ARSTREAM2_STREAM_RECEIVER_AU_SYNC_TYPE_ENUM;)V
    .locals 13
    .param p1, "bufferIdx"    # I
    .param p2, "metadata"    # J
    .param p4, "metadataSize"    # I
    .param p5, "auTimestamp"    # J
    .param p7, "auTimestampRaw"    # J
    .param p9, "auTimestampLocal"    # J
    .param p11, "auSyncType"    # Lcom/parrot/arsdk/arstream2/ARSTREAM2_STREAM_RECEIVER_AU_SYNC_TYPE_ENUM;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v12, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v1, v1, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 117
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-boolean v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mUseSurface:Z

    if-eqz v0, :cond_2

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    invoke-static {v1}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->access$000(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v10

    .line 123
    .local v10, "outIndex":I
    if-ltz v10, :cond_1

    .line 124
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x1

    invoke-virtual {v0, v10, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 127
    :cond_1
    if-gez v10, :cond_0

    .line 172
    :goto_0
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    return-void

    .line 130
    .end local v10    # "outIndex":I
    :cond_2
    const/4 v10, -0x1

    .line 134
    .restart local v10    # "outIndex":I
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    invoke-static {v1}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->access$000(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v10

    .line 135
    packed-switch v10, :pswitch_data_0

    .line 150
    :goto_1
    :pswitch_0
    if-ltz v10, :cond_4

    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 152
    const/4 v11, 0x0

    .line 153
    .local v11, "packed":Z
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v7, v0, v10

    .line 155
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v9

    .line 159
    .local v9, "mediaFormat":Landroid/media/MediaFormat;
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 170
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "mediaFormat":Landroid/media/MediaFormat;
    .end local v11    # "packed":Z
    :cond_4
    :goto_2
    if-gez v10, :cond_3

    goto :goto_0

    .line 137
    :pswitch_1
    const-string v0, "Decoder"

    const-string v1, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v1, v1, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 162
    :catch_0
    move-exception v8

    .line 163
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXCEPTION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    if-ltz v10, :cond_4

    .line 166
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x1

    invoke-virtual {v0, v10, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_2

    .line 172
    .end local v8    # "ex":Ljava/lang/Exception;
    .end local v10    # "outIndex":I
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 141
    .restart local v10    # "outIndex":I
    :pswitch_2
    :try_start_3
    const-string v0, "Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v2, v2, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onSpsPpsReady(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v2, v1, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 90
    :try_start_0
    const-string v1, "debug_stream"

    const-string v3, "onSpsPpsReady()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->initMediaCodec(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 92
    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v1, v1, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mInputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v2

    .line 96
    :goto_0
    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "debug_stream"

    const-string v3, "exception in initMediaCodec"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 97
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
    .line 70
    const-string v0, "debug_stream"

    const-string v1, "onVideoAvailable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    invoke-virtual {v0}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->instantiateMediaCodec()V

    .line 72
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;

    invoke-interface {v0}, Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;->videoDecodingStarted()V

    .line 75
    :cond_0
    return-void
.end method

.method public onVideoStopped()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "debug_stream"

    const-string v1, "onVideoStopped()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    invoke-virtual {v0}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->releaseMediaCodec()V

    .line 81
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;

    invoke-interface {v0}, Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;->videoDecodingStopped()V

    .line 84
    :cond_0
    return-void
.end method
