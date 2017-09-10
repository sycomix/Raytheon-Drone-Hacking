.class public abstract Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;
.super Lcom/parrot/controller/video/decoder/VideoDecoder;
.source "MediaCodecVideoDecoder.java"


# static fields
.field private static final MEDIA_FORMAT_CSD_0:Ljava/lang/String; = "csd-0"

.field private static final MEDIA_FORMAT_CSD_1:Ljava/lang/String; = "csd-1"

.field private static final TAG:Ljava/lang/String; = "debug_stream"

.field public static final VIDEO_HEIGHT:I = 0x170

.field private static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field public static final VIDEO_WIDTH:I = 0x280


# instance fields
.field protected mInputBuffers:[Ljava/nio/ByteBuffer;

.field protected final mLock:Ljava/lang/Object;

.field protected mMediaCodec:Landroid/media/MediaCodec;

.field protected mMediaFormat:Landroid/media/MediaFormat;

.field protected mOutputBuffers:[Ljava/nio/ByteBuffer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mUseSurface:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/controller/video/decoder/VideoDecoder;-><init>(Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;)V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mLock:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mUseSurface:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;)V
    .locals 1
    .param p1, "videoListener"    # Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/parrot/controller/video/decoder/VideoDecoder;-><init>(Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;)V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mLock:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mUseSurface:Z

    .line 35
    return-void
.end method


# virtual methods
.method protected initMediaCodec(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pps"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 60
    const-string v0, "debug_stream"

    const-string v1, "initMediaCodec()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v0, "video/avc"

    const/16 v1, 0x280

    const/16 v2, 0x170

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    .line 62
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string v1, "csd-0"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 63
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string v1, "csd-1"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 64
    iget-boolean v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mUseSurface:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    iget-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 70
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 71
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto :goto_0
.end method

.method protected instantiateMediaCodec()V
    .locals 4

    .prologue
    .line 48
    iget-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 50
    :try_start_0
    const-string v1, "debug_stream"

    const-string v3, "instantiateMediaCodec()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v1, "video/avc"

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 57
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected releaseMediaCodec()V
    .locals 6

    .prologue
    .line 74
    iget-object v3, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 75
    :try_start_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 76
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    const-string v2, "debug_stream"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseMediaCodec() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 80
    :try_start_1
    iget-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :goto_0
    :try_start_2
    const-string v2, "debug_stream"

    const-string v4, "releaseMediaCodec"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 87
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 88
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 89
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 91
    :cond_0
    monitor-exit v3

    .line 92
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setUseSurface(Z)V
    .locals 1
    .param p1, "useSurface"    # Z

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mUseSurface:Z

    if-eq v0, p1, :cond_0

    .line 39
    iput-boolean p1, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mUseSurface:Z

    .line 40
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->releaseMediaCodec()V

    .line 42
    invoke-virtual {p0}, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->instantiateMediaCodec()V

    .line 45
    :cond_0
    return-void
.end method
