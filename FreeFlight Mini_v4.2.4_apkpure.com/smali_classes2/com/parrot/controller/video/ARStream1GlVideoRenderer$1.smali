.class Lcom/parrot/controller/video/ARStream1GlVideoRenderer$1;
.super Ljava/lang/Object;
.source "ARStream1GlVideoRenderer.java"

# interfaces
.implements Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/video/ARStream1GlVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/video/ARStream1GlVideoRenderer;


# direct methods
.method constructor <init>(Lcom/parrot/controller/video/ARStream1GlVideoRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/video/ARStream1GlVideoRenderer;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream1GlVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveFrame(Lcom/parrot/controller/stream/ARFrame;)V
    .locals 1
    .param p1, "frame"    # Lcom/parrot/controller/stream/ARFrame;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/parrot/controller/video/ARStream1GlVideoRenderer$1;->this$0:Lcom/parrot/controller/video/ARStream1GlVideoRenderer;

    invoke-static {v0, p1}, Lcom/parrot/controller/video/ARStream1GlVideoRenderer;->access$000(Lcom/parrot/controller/video/ARStream1GlVideoRenderer;Lcom/parrot/controller/stream/ARFrame;)V

    .line 100
    return-void
.end method

.method public onVideoStopped()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method
