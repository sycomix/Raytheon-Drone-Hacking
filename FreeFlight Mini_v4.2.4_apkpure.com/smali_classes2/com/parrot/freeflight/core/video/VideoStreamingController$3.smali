.class Lcom/parrot/freeflight/core/video/VideoStreamingController$3;
.super Ljava/lang/Object;
.source "VideoStreamingController.java"

# interfaces
.implements Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/video/VideoStreamingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/video/VideoStreamingController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$3;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/media/MediaFormat;Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;JFFFF)V
    .locals 0
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "frame"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "frameTimestamp"    # J
    .param p6, "qW"    # F
    .param p7, "qX"    # F
    .param p8, "qY"    # F
    .param p9, "qZ"    # F

    .prologue
    .line 204
    return-void
.end method
