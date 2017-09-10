.class public Lcom/parrot/freeflight/core/video/VideoStreamingController;
.super Ljava/lang/Object;
.source "VideoStreamingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "debug_stream"


# instance fields
.field private final mCodecType:Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDroneConnected:Z

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnFrameAvailableListener:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;

.field private mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVideoListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mVideoView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mWantVideo:Z


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V
    .locals 2
    .param p1, "connectionManager"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;->ARCODECS_TYPE_VIDEO_H264_FFMPEG:Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mCodecType:Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;

    .line 51
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mDroneConnected:Z

    .line 53
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mWantVideo:Z

    .line 57
    new-instance v0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;-><init>(Lcom/parrot/freeflight/core/video/VideoStreamingController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;

    .line 89
    new-instance v0, Lcom/parrot/freeflight/core/video/VideoStreamingController$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController$2;-><init>(Lcom/parrot/freeflight/core/video/VideoStreamingController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    .line 200
    new-instance v0, Lcom/parrot/freeflight/core/video/VideoStreamingController$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController$3;-><init>(Lcom/parrot/freeflight/core/video/VideoStreamingController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mOnFrameAvailableListener:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;

    .line 107
    iput-object p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .line 108
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/video/VideoStreamingController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->linkViewAndDecoder()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mWantVideo:Z

    return v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/core/video/VideoStreamingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mWantVideo:Z

    return p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mDroneConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/core/video/VideoStreamingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mDroneConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Lcom/parrot/controller/devicecontrollers/DeviceController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/controller/devicecontrollers/DeviceController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
    .param p1, "x1"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
    .param p2, "x2"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->enableVideoStreaming(Lcom/parrot/controller/devicecontrollers/DeviceController;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
    .param p1, "x1"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->onDroneConnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/core/video/VideoStreamingController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->onDroneDisconnected()V

    return-void
.end method

.method private createVideoDecoder(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/video/decoder/VideoDecoder;
    .locals 3
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 209
    sget-object v0, Lcom/parrot/freeflight/core/video/VideoStreamingController$4;->$SwitchMap$com$parrot$arsdk$arcodecs$ARCODECS_TYPE_ENUM:[I

    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mCodecType:Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 224
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoStreamingController.Unknown codec "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mCodecType:Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 211
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->useARStream2(Lcom/parrot/controller/devicecontrollers/DeviceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "debug_stream"

    const-string v1, "VideoStreamingController.ARStream2MediaCodecVideoDecoder instantiated."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;

    iget-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mOnFrameAvailableListener:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;

    invoke-direct {v0, p1, v1, v2}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;)V

    goto :goto_1

    .line 215
    :cond_0
    const-string v0, "debug_stream"

    const-string v1, "VideoStreamingController.ARStream1 is not supported anymore."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :pswitch_1
    const-string v0, "debug_stream"

    const-string v1, "VideoStreamingController.ARCODECS_TYPE_VIDEO_MJPEG_LIBJPEGTURBO codec is not supported anymore."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private enableVideoStreaming(Lcom/parrot/controller/devicecontrollers/DeviceController;Z)V
    .locals 1
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "enable"    # Z

    .prologue
    .line 231
    instance-of v0, p1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_1

    .line 232
    check-cast p1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    .end local p1    # "deviceController":Lcom/parrot/controller/devicecontrollers/DeviceController;
    invoke-virtual {p1, p2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->enableVideoStreaming(Z)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    .restart local p1    # "deviceController":Lcom/parrot/controller/devicecontrollers/DeviceController;
    :cond_1
    instance-of v0, p1, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 234
    check-cast p1, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    .end local p1    # "deviceController":Lcom/parrot/controller/devicecontrollers/DeviceController;
    invoke-virtual {p1, p2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->enableVideoStreaming(Z)V

    goto :goto_0
.end method

.method private linkViewAndDecoder()V
    .locals 3

    .prologue
    .line 160
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkViewAndDecoder() mVideoView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVideoDecoder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mViewAndDecoderLinker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    invoke-static {v0, v1}, Lcom/parrot/controller/video/renderer/ViewAndDecoderLinkerFactory;->create(Landroid/view/View;Lcom/parrot/controller/video/decoder/VideoDecoder;)Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    invoke-virtual {v0}, Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;->link()V

    .line 167
    :cond_0
    return-void
.end method

.method private notifyListeners()V
    .locals 4

    .prologue
    .line 193
    iget-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 194
    .local v1, "ready":Z
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;

    .line 195
    .local v0, "listener":Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;
    invoke-interface {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;->onDecoderStateChange(Z)V

    goto :goto_1

    .line 193
    .end local v0    # "listener":Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;
    .end local v1    # "ready":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 197
    .restart local v1    # "ready":Z
    :cond_1
    return-void
.end method

.method private onDroneConnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 3
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 170
    const-string v0, "debug_stream"

    const-string v1, "onDroneConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iput-object p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 172
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->createVideoDecoder(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/video/decoder/VideoDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->notifyListeners()V

    .line 175
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mWantVideo:Z

    .line 176
    invoke-direct {p0, p1, v2}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->enableVideoStreaming(Lcom/parrot/controller/devicecontrollers/DeviceController;Z)V

    .line 178
    :cond_0
    return-void
.end method

.method private onDroneDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    const-string v0, "debug_stream"

    const-string v1, "onDroneDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v0, :cond_0

    .line 183
    iput-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    invoke-virtual {v0}, Lcom/parrot/controller/video/decoder/VideoDecoder;->destroy()V

    .line 187
    iput-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    .line 188
    invoke-direct {p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->notifyListeners()V

    .line 190
    :cond_1
    return-void
.end method

.method private useARStream2(Lcom/parrot/controller/devicecontrollers/DeviceController;)Z
    .locals 1
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceDiscoveryInfo()Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->usesARStream2()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addListener(Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;->onDecoderStateChange(Z)V

    .line 123
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDecoderReady()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerView(Landroid/view/View;)V
    .locals 3
    .param p1, "videoView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 130
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerView() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    if-eq p1, v0, :cond_1

    .line 132
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first unregister view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->unregisterView(Landroid/view/View;)V

    .line 136
    :cond_0
    iput-object p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    .line 137
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "then linkViewAndDecoder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->linkViewAndDecoder()V

    .line 140
    :cond_1
    return-void
.end method

.method public removeListener(Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->registerListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 113
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->unregisterListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 117
    invoke-direct {p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->onDroneDisconnected()V

    .line 118
    return-void
.end method

.method public unregisterView(Landroid/view/View;)V
    .locals 3
    .param p1, "videoView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 143
    const-string v0, "debug_stream"

    const-string/jumbo v1, "unregisterView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    invoke-virtual {v0}, Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;->unlink()V

    .line 147
    iput-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 150
    iput-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    .line 153
    :cond_1
    return-void
.end method
