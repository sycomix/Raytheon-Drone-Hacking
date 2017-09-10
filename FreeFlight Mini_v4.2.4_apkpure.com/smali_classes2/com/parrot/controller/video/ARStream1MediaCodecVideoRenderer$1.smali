.class Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer$1;
.super Ljava/lang/Object;
.source "ARStream1MediaCodecVideoRenderer.java"

# interfaces
.implements Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;


# direct methods
.method constructor <init>(Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveFrame(Lcom/parrot/controller/stream/ARFrame;)V
    .locals 1
    .param p1, "frame"    # Lcom/parrot/controller/stream/ARFrame;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/video/ARStream1MediaCodecVideoRenderer;->onReceiveFrame(Lcom/parrot/controller/stream/ARFrame;)V

    .line 155
    return-void
.end method

.method public onVideoStopped()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method
