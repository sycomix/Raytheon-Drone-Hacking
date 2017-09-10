.class public Lcom/parrot/controller/video/ARStreamManager;
.super Ljava/lang/Object;
.source "ARStreamManager.java"

# interfaces
.implements Lcom/parrot/arsdk/arstream/ARStreamReaderListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final nbFramesInPool:I = 0x28


# instance fields
.field private ackBufferId:I

.field private ackThread:Ljava/lang/Thread;

.field private dataBufferId:I

.field private dataThread:Ljava/lang/Thread;

.field private fragmentSize:I

.field private framePool:Lcom/parrot/controller/stream/ARStreamPool;

.field private frameSaver:Lcom/parrot/controller/video/framesaving/FrameSaver;

.field private maxAckInterval:I

.field private netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

.field private oldFrame:Lcom/parrot/controller/stream/ARFrame;

.field private readyQueue:Lcom/parrot/controller/stream/ARStreamQueue;

.field private running:Z

.field private saveFrames:Z

.field private streamReader:Lcom/parrot/arsdk/arstream/ARStreamReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/parrot/controller/video/ARStreamManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/video/ARStreamManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/arnetwork/ARNetworkManager;IIII)V
    .locals 3
    .param p1, "networkManager"    # Lcom/parrot/arsdk/arnetwork/ARNetworkManager;
    .param p2, "dataBufferId"    # I
    .param p3, "ackBufferId"    # I
    .param p4, "fragmentSize"    # I
    .param p5, "maxAckInterval"    # I

    .prologue
    const/16 v2, 0x28

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->oldFrame:Lcom/parrot/controller/stream/ARFrame;

    .line 40
    new-instance v0, Lcom/parrot/controller/stream/ARStreamPool;

    invoke-direct {v0, v2}, Lcom/parrot/controller/stream/ARStreamPool;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->framePool:Lcom/parrot/controller/stream/ARStreamPool;

    .line 41
    new-instance v0, Lcom/parrot/controller/stream/ARStreamQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/parrot/controller/stream/ARStreamQueue;-><init>(IZ)V

    iput-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->readyQueue:Lcom/parrot/controller/stream/ARStreamQueue;

    .line 43
    iput-object p1, p0, Lcom/parrot/controller/video/ARStreamManager;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/video/ARStreamManager;->running:Z

    .line 45
    iput p2, p0, Lcom/parrot/controller/video/ARStreamManager;->dataBufferId:I

    .line 46
    iput p3, p0, Lcom/parrot/controller/video/ARStreamManager;->ackBufferId:I

    .line 47
    iput p4, p0, Lcom/parrot/controller/video/ARStreamManager;->fragmentSize:I

    .line 48
    iput p5, p0, Lcom/parrot/controller/video/ARStreamManager;->maxAckInterval:I

    .line 49
    return-void
.end method

.method private startSavingFrames()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/parrot/controller/video/framesaving/FrameSaver;

    invoke-direct {v0}, Lcom/parrot/controller/video/framesaving/FrameSaver;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->frameSaver:Lcom/parrot/controller/video/framesaving/FrameSaver;

    .line 88
    iget-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->frameSaver:Lcom/parrot/controller/video/framesaving/FrameSaver;

    invoke-virtual {v0}, Lcom/parrot/controller/video/framesaving/FrameSaver;->startSavingFrames()V

    .line 89
    return-void
.end method

.method private stopSavingFrames()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->frameSaver:Lcom/parrot/controller/video/framesaving/FrameSaver;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->frameSaver:Lcom/parrot/controller/video/framesaving/FrameSaver;

    invoke-virtual {v0}, Lcom/parrot/controller/video/framesaving/FrameSaver;->stopSavingFrames()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->frameSaver:Lcom/parrot/controller/video/framesaving/FrameSaver;

    .line 98
    :cond_0
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

    .line 162
    iget-object v1, p0, Lcom/parrot/controller/video/ARStreamManager;->framePool:Lcom/parrot/controller/stream/ARStreamPool;

    invoke-virtual {v1, p2}, Lcom/parrot/controller/stream/ARStreamPool;->getFrameFromData(Lcom/parrot/arsdk/arsal/ARNativeData;)Lcom/parrot/controller/stream/ARFrame;

    move-result-object v0

    .line 164
    .local v0, "frame":Lcom/parrot/controller/stream/ARFrame;
    if-eqz v0, :cond_3

    .line 166
    sget-object v1, Lcom/parrot/controller/video/ARStreamManager$1;->$SwitchMap$com$parrot$arsdk$arstream$ARSTREAM_READER_CAUSE_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 208
    :cond_0
    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    invoke-virtual {v0, p3}, Lcom/parrot/controller/stream/ARFrame;->setIFrame(Z)V

    .line 170
    iget-boolean v1, p0, Lcom/parrot/controller/video/ARStreamManager;->saveFrames:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/controller/video/ARStreamManager;->frameSaver:Lcom/parrot/controller/video/framesaving/FrameSaver;

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/parrot/controller/video/ARStreamManager;->frameSaver:Lcom/parrot/controller/video/framesaving/FrameSaver;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/video/framesaving/FrameSaver;->saveFrame(Lcom/parrot/controller/stream/ARFrame;)V

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/parrot/controller/video/ARStreamManager;->readyQueue:Lcom/parrot/controller/stream/ARStreamQueue;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/stream/ARStreamQueue;->push(Lcom/parrot/controller/stream/ARFrame;)V

    .line 175
    iget-object v1, p0, Lcom/parrot/controller/video/ARStreamManager;->framePool:Lcom/parrot/controller/stream/ARStreamPool;

    invoke-virtual {v1}, Lcom/parrot/controller/stream/ARStreamPool;->getNextFreeFrame()Lcom/parrot/controller/stream/ARFrame;

    move-result-object v0

    .line 176
    goto :goto_0

    .line 178
    :pswitch_1
    iput-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->oldFrame:Lcom/parrot/controller/stream/ARFrame;

    .line 179
    iget-object v1, p0, Lcom/parrot/controller/video/ARStreamManager;->framePool:Lcom/parrot/controller/stream/ARStreamPool;

    invoke-virtual {v1}, Lcom/parrot/controller/stream/ARStreamPool;->getNextFreeFrame()Lcom/parrot/controller/stream/ARFrame;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v0, p5}, Lcom/parrot/controller/stream/ARFrame;->ensureCapacityIsAtLeast(I)Z

    goto :goto_0

    .line 186
    :cond_2
    sget-object v1, Lcom/parrot/controller/video/ARStreamManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "there is no free frame"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :pswitch_2
    iget-object v1, p0, Lcom/parrot/controller/video/ARStreamManager;->oldFrame:Lcom/parrot/controller/stream/ARFrame;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/parrot/controller/video/ARStreamManager;->oldFrame:Lcom/parrot/controller/stream/ARFrame;

    invoke-virtual {v1, v3}, Lcom/parrot/controller/stream/ARFrame;->setAvailable(Z)V

    .line 193
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/controller/video/ARStreamManager;->oldFrame:Lcom/parrot/controller/stream/ARFrame;

    goto :goto_0

    .line 197
    :pswitch_3
    invoke-virtual {v0, v3}, Lcom/parrot/controller/stream/ARFrame;->setAvailable(Z)V

    goto :goto_0

    .line 205
    :cond_3
    sget-object v1, Lcom/parrot/controller/video/ARStreamManager;->TAG:Ljava/lang/String;

    const-string v2, "error current frame not found in the frame pool"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public disableFrameSaving()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/video/ARStreamManager;->saveFrames:Z

    .line 82
    invoke-direct {p0}, Lcom/parrot/controller/video/ARStreamManager;->stopSavingFrames()V

    .line 83
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->framePool:Lcom/parrot/controller/stream/ARStreamPool;

    invoke-virtual {v0}, Lcom/parrot/controller/stream/ARStreamPool;->dispose()V

    .line 134
    return-void
.end method

.method public enableFrameSaving()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/parrot/controller/video/ARStreamManager;->startSavingFrames()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/video/ARStreamManager;->saveFrames:Z

    .line 77
    return-void
.end method

.method public freeFrame(Lcom/parrot/controller/stream/ARFrame;)V
    .locals 1
    .param p1, "frame"    # Lcom/parrot/controller/stream/ARFrame;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/parrot/controller/stream/ARFrame;->setAvailable(Z)V

    .line 142
    :cond_0
    return-void
.end method

.method public getFrame()Lcom/parrot/controller/stream/ARFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->readyQueue:Lcom/parrot/controller/stream/ARStreamQueue;

    invoke-virtual {v0}, Lcom/parrot/controller/stream/ARStreamQueue;->pop()Lcom/parrot/controller/stream/ARFrame;

    move-result-object v0

    return-object v0
.end method

.method public getFrameWithTimeout(J)Lcom/parrot/controller/stream/ARFrame;
    .locals 1
    .param p1, "timeoutMs"    # J

    .prologue
    .line 151
    iget-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->readyQueue:Lcom/parrot/controller/stream/ARStreamQueue;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/controller/stream/ARStreamQueue;->popWithTimeout(J)Lcom/parrot/controller/stream/ARFrame;

    move-result-object v0

    return-object v0
.end method

.method public startStream()V
    .locals 8

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/parrot/controller/video/ARStreamManager;->running:Z

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->framePool:Lcom/parrot/controller/stream/ARStreamPool;

    invoke-virtual {v0}, Lcom/parrot/controller/stream/ARStreamPool;->getNextFreeFrame()Lcom/parrot/controller/stream/ARFrame;

    move-result-object v4

    .line 56
    .local v4, "firstFrame":Lcom/parrot/controller/stream/ARFrame;
    new-instance v0, Lcom/parrot/arsdk/arstream/ARStreamReader;

    iget-object v1, p0, Lcom/parrot/controller/video/ARStreamManager;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    iget v2, p0, Lcom/parrot/controller/video/ARStreamManager;->dataBufferId:I

    iget v3, p0, Lcom/parrot/controller/video/ARStreamManager;->ackBufferId:I

    iget v6, p0, Lcom/parrot/controller/video/ARStreamManager;->fragmentSize:I

    iget v7, p0, Lcom/parrot/controller/video/ARStreamManager;->maxAckInterval:I

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/arsdk/arstream/ARStreamReader;-><init>(Lcom/parrot/arsdk/arnetwork/ARNetworkManager;IILcom/parrot/arsdk/arsal/ARNativeData;Lcom/parrot/arsdk/arstream/ARStreamReaderListener;II)V

    iput-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->streamReader:Lcom/parrot/arsdk/arstream/ARStreamReader;

    .line 58
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/parrot/controller/video/ARStreamManager;->streamReader:Lcom/parrot/arsdk/arstream/ARStreamReader;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arstream/ARStreamReader;->getDataRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->dataThread:Ljava/lang/Thread;

    .line 59
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/parrot/controller/video/ARStreamManager;->streamReader:Lcom/parrot/arsdk/arstream/ARStreamReader;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arstream/ARStreamReader;->getAckRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->ackThread:Ljava/lang/Thread;

    .line 61
    iget-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->dataThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 62
    iget-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->ackThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 64
    iget-boolean v0, p0, Lcom/parrot/controller/video/ARStreamManager;->saveFrames:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/parrot/controller/video/ARStreamManager;->startSavingFrames()V

    .line 69
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/video/ARStreamManager;->running:Z

    .line 71
    .end local v4    # "firstFrame":Lcom/parrot/controller/stream/ARFrame;
    :cond_1
    return-void
.end method

.method public stopStream()V
    .locals 4

    .prologue
    .line 102
    iget-boolean v2, p0, Lcom/parrot/controller/video/ARStreamManager;->running:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 104
    iget-object v2, p0, Lcom/parrot/controller/video/ARStreamManager;->streamReader:Lcom/parrot/arsdk/arstream/ARStreamReader;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arstream/ARStreamReader;->stop()V

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/parrot/controller/video/ARStreamManager;->dataThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 109
    iget-object v2, p0, Lcom/parrot/controller/video/ARStreamManager;->ackThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    iget-object v2, p0, Lcom/parrot/controller/video/ARStreamManager;->streamReader:Lcom/parrot/arsdk/arstream/ARStreamReader;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arstream/ARStreamReader;->dispose()Z

    move-result v1

    .line 117
    .local v1, "ok":Z
    if-nez v1, :cond_0

    .line 119
    sget-object v2, Lcom/parrot/controller/video/ARStreamManager;->TAG:Ljava/lang/String;

    const-string v3, "Error while closing ARStreamReader"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    iget-boolean v2, p0, Lcom/parrot/controller/video/ARStreamManager;->saveFrames:Z

    if-eqz v2, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/parrot/controller/video/ARStreamManager;->stopSavingFrames()V

    .line 127
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/controller/video/ARStreamManager;->running:Z

    .line 129
    .end local v1    # "ok":Z
    :cond_2
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public tryGetFrame()Lcom/parrot/controller/stream/ARFrame;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/parrot/controller/video/ARStreamManager;->readyQueue:Lcom/parrot/controller/stream/ARStreamQueue;

    invoke-virtual {v0}, Lcom/parrot/controller/stream/ARStreamQueue;->tryPop()Lcom/parrot/controller/stream/ARFrame;

    move-result-object v0

    return-object v0
.end method
