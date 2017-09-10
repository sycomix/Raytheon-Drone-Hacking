.class public abstract Lcom/parrot/controller/video/MediaCodecVideoRendererBase;
.super Lcom/parrot/controller/video/ARVideoViewControllerRenderer;
.source "MediaCodecVideoRendererBase.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/SurfaceView;",
        ">",
        "Lcom/parrot/controller/video/ARVideoViewControllerRenderer",
        "<TV;>;"
    }
.end annotation


# static fields
.field public static final MEDIA_FORMAT_CSD_0:Ljava/lang/String; = "csd-0"

.field public static final MEDIA_FORMAT_CSD_1:Ljava/lang/String; = "csd-1"

.field public static final VIDEO_HEIGHT:I = 0x170

.field protected static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field public static final VIDEO_WIDTH:I = 0x280


# instance fields
.field protected inputBuffers:[Ljava/nio/ByteBuffer;

.field protected final lock:Ljava/lang/Object;

.field protected mediaCodec:Landroid/media/MediaCodec;


# direct methods
.method protected constructor <init>(Landroid/view/SurfaceView;)V
    .locals 3
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parrot/controller/video/MediaCodecVideoRendererBase;, "Lcom/parrot/controller/video/MediaCodecVideoRendererBase<TV;>;"
    .local p1, "surface":Landroid/view/SurfaceView;, "TV;"
    const/4 v2, -0x1

    .line 34
    invoke-direct {p0, p1}, Lcom/parrot/controller/video/ARVideoViewControllerRenderer;-><init>(Landroid/view/SurfaceView;)V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/video/MediaCodecVideoRendererBase;->lock:Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/parrot/controller/video/MediaCodecVideoRendererBase;->surfaceView:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract configureMediaCodec(Landroid/media/MediaFormat;)V
    .param p1    # Landroid/media/MediaFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 95
    .local p0, "this":Lcom/parrot/controller/video/MediaCodecVideoRendererBase;, "Lcom/parrot/controller/video/MediaCodecVideoRendererBase<TV;>;"
    return-void
.end method

.method protected initMediaCodec(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pps"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    .local p0, "this":Lcom/parrot/controller/video/MediaCodecVideoRendererBase;, "Lcom/parrot/controller/video/MediaCodecVideoRendererBase<TV;>;"
    const-string v1, "video/avc"

    const/16 v2, 0x280

    const/16 v3, 0x170

    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 41
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v1, "csd-0"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 42
    const-string v1, "csd-1"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/parrot/controller/video/MediaCodecVideoRendererBase;->configureMediaCodec(Landroid/media/MediaFormat;)V

    .line 44
    iget-object v1, p0, Lcom/parrot/controller/video/MediaCodecVideoRendererBase;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 45
    iget-object v1, p0, Lcom/parrot/controller/video/MediaCodecVideoRendererBase;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/controller/video/MediaCodecVideoRendererBase;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 46
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 91
    .local p0, "this":Lcom/parrot/controller/video/MediaCodecVideoRendererBase;, "Lcom/parrot/controller/video/MediaCodecVideoRendererBase<TV;>;"
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 87
    .local p0, "this":Lcom/parrot/controller/video/MediaCodecVideoRendererBase;, "Lcom/parrot/controller/video/MediaCodecVideoRendererBase<TV;>;"
    return-void
.end method

.method protected startMediaCodec()V
    .locals 4

    .prologue
    .line 50
    .local p0, "this":Lcom/parrot/controller/video/MediaCodecVideoRendererBase;, "Lcom/parrot/controller/video/MediaCodecVideoRendererBase<TV;>;"
    iget-object v2, p0, Lcom/parrot/controller/video/MediaCodecVideoRendererBase;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 54
    :try_start_0
    const-string v1, "video/avc"

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/controller/video/MediaCodecVideoRendererBase;->mediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 63
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Video"

    const-string v3, "Failed creating video decoder of type [video/avc]:"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected stopMediaCodec()V
    .locals 4

    .prologue
    .line 67
    .local p0, "this":Lcom/parrot/controller/video/MediaCodecVideoRendererBase;, "Lcom/parrot/controller/video/MediaCodecVideoRendererBase<TV;>;"
    iget-object v2, p0, Lcom/parrot/controller/video/MediaCodecVideoRendererBase;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/video/MediaCodecVideoRendererBase;->mediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 72
    :try_start_1
    iget-object v1, p0, Lcom/parrot/controller/video/MediaCodecVideoRendererBase;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/parrot/controller/video/MediaCodecVideoRendererBase;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/controller/video/MediaCodecVideoRendererBase;->mediaCodec:Landroid/media/MediaCodec;

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/controller/video/MediaCodecVideoRendererBase;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 82
    :cond_0
    monitor-exit v2

    .line 83
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "Video"

    const-string v3, "Cannot stop mediaCodec, already in released state"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
