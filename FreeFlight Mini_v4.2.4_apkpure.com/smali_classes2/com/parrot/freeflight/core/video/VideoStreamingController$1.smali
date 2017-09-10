.class Lcom/parrot/freeflight/core/video/VideoStreamingController$1;
.super Ljava/lang/Object;
.source "VideoStreamingController.java"

# interfaces
.implements Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;


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
    .line 58
    iput-object p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public videoDecodingStarted()V
    .locals 4

    .prologue
    .line 61
    const-string v1, "debug_stream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoDecodingStarted() mVideoView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v3}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$000(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController$1$1;-><init>(Lcom/parrot/freeflight/core/video/VideoStreamingController$1;)V

    .line 70
    .local v0, "linkRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$000(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$000(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$000(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$000(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public videoDecodingStopped()V
    .locals 3

    .prologue
    .line 79
    const-string v0, "debug_stream"

    const-string v1, "videoDecodingStopped()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$200(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$300(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$400(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Lcom/parrot/controller/devicecontrollers/DeviceController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$202(Lcom/parrot/freeflight/core/video/VideoStreamingController;Z)Z

    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$400(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Lcom/parrot/controller/devicecontrollers/DeviceController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$500(Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/controller/devicecontrollers/DeviceController;Z)V

    .line 86
    :cond_0
    return-void
.end method
