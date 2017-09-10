.class public Lcom/parrot/controller/audio/AudioStreamReceiver;
.super Ljava/lang/Object;
.source "AudioStreamReceiver.java"

# interfaces
.implements Lcom/parrot/arsdk/arstream/ARStreamReaderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/controller/audio/AudioStreamReceiver$IListener;
    }
.end annotation


# static fields
.field private static final NB_FRAMES_IN_POOL:I = 0x28

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ackBufferId:I

.field private ackThread:Ljava/lang/Thread;

.field private dataBufferId:I

.field private dataThread:Ljava/lang/Thread;

.field private fragmentSize:I

.field private framePool:Lcom/parrot/controller/stream/ARStreamPool;

.field private listener:Lcom/parrot/controller/audio/AudioStreamReceiver$IListener;

.field private mFilter:Lcom/parrot/arsdk/araudio/ARAudioTx;

.field private maxAckInterval:I

.field private netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

.field private oldFrame:Lcom/parrot/controller/stream/ARFrame;

.field private readyQueue:Lcom/parrot/controller/stream/ARStreamQueue;

.field private running:Z

.field private streamReader:Lcom/parrot/arsdk/arstream/ARStreamReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/parrot/controller/audio/AudioStreamReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/audio/AudioStreamReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/arnetwork/ARNetworkManager;IIII)V
    .locals 1
    .param p1, "networkManager"    # Lcom/parrot/arsdk/arnetwork/ARNetworkManager;
    .param p2, "dataBufferId"    # I
    .param p3, "ackBufferId"    # I
    .param p4, "fragmentSize"    # I
    .param p5, "maxAckInterval"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->running:Z

    .line 52
    iput p2, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->dataBufferId:I

    .line 53
    iput p3, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->ackBufferId:I

    .line 54
    iput p4, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->fragmentSize:I

    .line 55
    iput p5, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->maxAckInterval:I

    .line 56
    return-void
.end method


# virtual methods
.method public didUpdateFrameStatus(Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;Lcom/parrot/arsdk/arsal/ARNativeData;ZII)Lcom/parrot/arsdk/arsal/ARNativeData;
    .locals 4
    .param p1, "cause"    # Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;
    .param p2, "currentFrame"    # Lcom/parrot/arsdk/arsal/ARNativeData;
    .param p3, "isFlushFrame"    # Z
    .param p4, "nbSkippedFrames"    # I
    .param p5, "newBufferCapacity"    # I

    .prologue
    const/4 v3, 0x1

    .line 119
    iget-object v1, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->framePool:Lcom/parrot/controller/stream/ARStreamPool;

    invoke-virtual {v1, p2}, Lcom/parrot/controller/stream/ARStreamPool;->getFrameFromData(Lcom/parrot/arsdk/arsal/ARNativeData;)Lcom/parrot/controller/stream/ARFrame;

    move-result-object v0

    .line 121
    .local v0, "frame":Lcom/parrot/controller/stream/ARFrame;
    if-eqz v0, :cond_1

    .line 123
    sget-object v1, Lcom/parrot/controller/audio/AudioStreamReceiver$1;->$SwitchMap$com$parrot$arsdk$arstream$ARSTREAM_READER_CAUSE_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 126
    :pswitch_0
    invoke-virtual {v0, p3}, Lcom/parrot/controller/stream/ARFrame;->setIFrame(Z)V

    .line 127
    iget-object v1, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->readyQueue:Lcom/parrot/controller/stream/ARStreamQueue;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/stream/ARStreamQueue;->push(Lcom/parrot/controller/stream/ARFrame;)V

    .line 128
    iget-object v1, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->framePool:Lcom/parrot/controller/stream/ARStreamPool;

    invoke-virtual {v1, p5}, Lcom/parrot/controller/stream/ARStreamPool;->getNextFreeFrame(I)Lcom/parrot/controller/stream/ARFrame;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->listener:Lcom/parrot/controller/audio/AudioStreamReceiver$IListener;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->listener:Lcom/parrot/controller/audio/AudioStreamReceiver$IListener;

    invoke-interface {v1, p2}, Lcom/parrot/controller/audio/AudioStreamReceiver$IListener;->onDataReceived(Lcom/parrot/arsdk/arsal/ARNativeData;)V

    goto :goto_0

    .line 136
    :pswitch_1
    iput-object v0, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->oldFrame:Lcom/parrot/controller/stream/ARFrame;

    .line 137
    iget-object v1, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->framePool:Lcom/parrot/controller/stream/ARStreamPool;

    invoke-virtual {v1, p5}, Lcom/parrot/controller/stream/ARStreamPool;->getNextFreeFrame(I)Lcom/parrot/controller/stream/ARFrame;

    move-result-object v0

    .line 138
    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v1, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->oldFrame:Lcom/parrot/controller/stream/ARFrame;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->oldFrame:Lcom/parrot/controller/stream/ARFrame;

    invoke-virtual {v1, v3}, Lcom/parrot/controller/stream/ARFrame;->setAvailable(Z)V

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->oldFrame:Lcom/parrot/controller/stream/ARFrame;

    goto :goto_0

    .line 147
    :pswitch_3
    invoke-virtual {v0, v3}, Lcom/parrot/controller/stream/ARFrame;->setAvailable(Z)V

    goto :goto_0

    .line 154
    :cond_1
    sget-object v1, Lcom/parrot/controller/audio/AudioStreamReceiver;->TAG:Ljava/lang/String;

    const-string v2, "error current frame not found in the frame pool"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setListener(Lcom/parrot/controller/audio/AudioStreamReceiver$IListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/controller/audio/AudioStreamReceiver$IListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->listener:Lcom/parrot/controller/audio/AudioStreamReceiver$IListener;

    .line 61
    return-void
.end method

.method public startStream()V
    .locals 9

    .prologue
    const/16 v2, 0x28

    const/4 v8, 0x1

    .line 65
    iget-boolean v0, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->running:Z

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/parrot/controller/stream/ARStreamPool;

    const/16 v1, 0x110

    invoke-direct {v0, v2, v1}, Lcom/parrot/controller/stream/ARStreamPool;-><init>(II)V

    iput-object v0, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->framePool:Lcom/parrot/controller/stream/ARStreamPool;

    .line 68
    new-instance v0, Lcom/parrot/controller/stream/ARStreamQueue;

    invoke-direct {v0, v2, v8}, Lcom/parrot/controller/stream/ARStreamQueue;-><init>(IZ)V

    iput-object v0, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->readyQueue:Lcom/parrot/controller/stream/ARStreamQueue;

    .line 70
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->framePool:Lcom/parrot/controller/stream/ARStreamPool;

    invoke-virtual {v0}, Lcom/parrot/controller/stream/ARStreamPool;->getNextFreeFrame()Lcom/parrot/controller/stream/ARFrame;

    move-result-object v4

    .line 71
    .local v4, "firstFrame":Lcom/parrot/controller/stream/ARFrame;
    new-instance v0, Lcom/parrot/arsdk/arstream/ARStreamReader;

    iget-object v1, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    iget v2, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->dataBufferId:I

    iget v3, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->ackBufferId:I

    iget v6, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->fragmentSize:I

    iget v7, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->maxAckInterval:I

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/arsdk/arstream/ARStreamReader;-><init>(Lcom/parrot/arsdk/arnetwork/ARNetworkManager;IILcom/parrot/arsdk/arsal/ARNativeData;Lcom/parrot/arsdk/arstream/ARStreamReaderListener;II)V

    iput-object v0, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->streamReader:Lcom/parrot/arsdk/arstream/ARStreamReader;

    .line 73
    new-instance v0, Lcom/parrot/arsdk/araudio/ARAudioTx;

    invoke-direct {v0}, Lcom/parrot/arsdk/araudio/ARAudioTx;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->mFilter:Lcom/parrot/arsdk/araudio/ARAudioTx;

    .line 74
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->streamReader:Lcom/parrot/arsdk/arstream/ARStreamReader;

    iget-object v1, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->mFilter:Lcom/parrot/arsdk/araudio/ARAudioTx;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arstream/ARStreamReader;->addFilter(Lcom/parrot/arsdk/arstream/ARStreamFilter;)Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;

    .line 76
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->streamReader:Lcom/parrot/arsdk/arstream/ARStreamReader;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arstream/ARStreamReader;->getDataRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->dataThread:Ljava/lang/Thread;

    .line 77
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->streamReader:Lcom/parrot/arsdk/arstream/ARStreamReader;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arstream/ARStreamReader;->getAckRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->ackThread:Ljava/lang/Thread;

    .line 79
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->dataThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->ackThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    iput-boolean v8, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->running:Z

    .line 84
    .end local v4    # "firstFrame":Lcom/parrot/controller/stream/ARFrame;
    :cond_0
    return-void
.end method

.method public stopStream()V
    .locals 4

    .prologue
    .line 88
    iget-boolean v2, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->running:Z

    if-eqz v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->streamReader:Lcom/parrot/arsdk/arstream/ARStreamReader;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arstream/ARStreamReader;->stop()V

    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->dataThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 95
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->ackThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->mFilter:Lcom/parrot/arsdk/araudio/ARAudioTx;

    invoke-virtual {v2}, Lcom/parrot/arsdk/araudio/ARAudioTx;->dispose()V

    .line 103
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->mFilter:Lcom/parrot/arsdk/araudio/ARAudioTx;

    .line 105
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->streamReader:Lcom/parrot/arsdk/arstream/ARStreamReader;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arstream/ARStreamReader;->dispose()Z

    move-result v1

    .line 106
    .local v1, "ok":Z
    if-nez v1, :cond_0

    .line 108
    sget-object v2, Lcom/parrot/controller/audio/AudioStreamReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Error while closing ARStreamReader"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->running:Z

    .line 112
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioStreamReceiver;->framePool:Lcom/parrot/controller/stream/ARStreamPool;

    invoke-virtual {v2}, Lcom/parrot/controller/stream/ARStreamPool;->dispose()V

    .line 114
    .end local v1    # "ok":Z
    :cond_1
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
