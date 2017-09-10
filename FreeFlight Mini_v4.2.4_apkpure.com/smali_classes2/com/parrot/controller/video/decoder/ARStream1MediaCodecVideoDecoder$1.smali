.class Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder$1;
.super Ljava/lang/Object;
.source "ARStream1MediaCodecVideoDecoder.java"

# interfaces
.implements Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;


# direct methods
.method constructor <init>(Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveFrame(Lcom/parrot/controller/stream/ARFrame;)V
    .locals 1
    .param p1, "frame"    # Lcom/parrot/controller/stream/ARFrame;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/video/decoder/ARStream1MediaCodecVideoDecoder;->onFrameReceived(Lcom/parrot/controller/stream/ARFrame;)V

    .line 118
    return-void
.end method

.method public onVideoStopped()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method
