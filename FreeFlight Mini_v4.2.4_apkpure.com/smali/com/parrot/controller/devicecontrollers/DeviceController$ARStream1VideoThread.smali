.class public Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;
.super Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ARStream1VideoThread"
.end annotation


# instance fields
.field private streamManager:Lcom/parrot/controller/video/ARStreamManager;

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 6
    .param p1, "this$0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 2183
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 2184
    new-instance v0, Lcom/parrot/controller/video/ARStreamManager;

    invoke-static {p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$1400(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    move-result-object v1

    invoke-static {p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$900(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getVideoDataIOBuffer()I

    move-result v2

    invoke-static {p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$900(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getVideoAckIOBuffer()I

    move-result v3

    .line 2185
    invoke-static {p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getVideoFragmentSize()I

    move-result v4

    invoke-static {p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getVideoMaxAckInterval()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/parrot/controller/video/ARStreamManager;-><init>(Lcom/parrot/arsdk/arnetwork/ARNetworkManager;IIII)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;->streamManager:Lcom/parrot/controller/video/ARStreamManager;

    .line 2186
    return-void
.end method


# virtual methods
.method public getStreamManager()Lcom/parrot/controller/video/ARStreamManager;
    .locals 1

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;->streamManager:Lcom/parrot/controller/video/ARStreamManager;

    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 2191
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->onStart()V

    .line 2193
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;->streamManager:Lcom/parrot/controller/video/ARStreamManager;

    invoke-virtual {v0}, Lcom/parrot/controller/video/ARStreamManager;->startStream()V

    .line 2195
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 2216
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$1500(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;

    move-result-object v0

    .line 2217
    .local v0, "listener":Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;
    if-eqz v0, :cond_0

    .line 2219
    invoke-interface {v0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;->onVideoStopped()V

    .line 2221
    :cond_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;->streamManager:Lcom/parrot/controller/video/ARStreamManager;

    invoke-virtual {v1}, Lcom/parrot/controller/video/ARStreamManager;->stopStream()V

    .line 2222
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;->streamManager:Lcom/parrot/controller/video/ARStreamManager;

    invoke-virtual {v1}, Lcom/parrot/controller/video/ARStreamManager;->dispose()V

    .line 2224
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->onStop()V

    .line 2225
    return-void
.end method

.method public onloop()V
    .locals 6

    .prologue
    .line 2200
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;->streamManager:Lcom/parrot/controller/video/ARStreamManager;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Lcom/parrot/controller/video/ARStreamManager;->getFrameWithTimeout(J)Lcom/parrot/controller/stream/ARFrame;

    move-result-object v0

    .line 2202
    .local v0, "frame":Lcom/parrot/controller/stream/ARFrame;
    if-eqz v0, :cond_1

    .line 2204
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$1500(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;

    move-result-object v1

    .line 2205
    .local v1, "listener":Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;
    if-eqz v1, :cond_0

    .line 2207
    invoke-interface {v1, v0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;->onReceiveFrame(Lcom/parrot/controller/stream/ARFrame;)V

    .line 2209
    :cond_0
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARStream1VideoThread;->streamManager:Lcom/parrot/controller/video/ARStreamManager;

    invoke-virtual {v2, v0}, Lcom/parrot/controller/video/ARStreamManager;->freeFrame(Lcom/parrot/controller/stream/ARFrame;)V

    .line 2211
    .end local v1    # "listener":Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamListener;
    :cond_1
    return-void
.end method
