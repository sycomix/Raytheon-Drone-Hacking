.class public Lcom/parrot/controller/audio/AudioStreamSender;
.super Ljava/lang/Object;
.source "AudioStreamSender.java"


# static fields
.field private static final ARSTREAM_AUDIO_SENDER_QUEUE_SIZE:I = 0x18

.field private static final NB_FRAMES_IN_POOL:I = 0x28

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAckBufferId:I

.field private mAckThread:Ljava/lang/Thread;

.field private mDataBufferId:I

.field private mDataThread:Ljava/lang/Thread;

.field private mFilter:Lcom/parrot/arsdk/araudio/ARAudioRx;

.field private mFramePool:Lcom/parrot/controller/stream/ARStreamPool;

.field private mMaxFragmentSize:I

.field private mMaxNumFragments:I

.field private mNetworkManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

.field private mRunning:Z

.field private mSender:Lcom/parrot/arsdk/arstream/ARStreamSender;

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/parrot/controller/audio/AudioStreamSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/audio/AudioStreamSender;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/arnetwork/ARNetworkManager;IIII)V
    .locals 0
    .param p1, "networkManager"    # Lcom/parrot/arsdk/arnetwork/ARNetworkManager;
    .param p2, "dataBufferId"    # I
    .param p3, "ackBufferId"    # I
    .param p4, "maxFragmentSize"    # I
    .param p5, "maxNumFragments"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mNetworkManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    .line 53
    iput p2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mDataBufferId:I

    .line 54
    iput p3, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mAckBufferId:I

    .line 55
    iput p4, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mMaxFragmentSize:I

    .line 56
    iput p5, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mMaxNumFragments:I

    .line 57
    return-void
.end method


# virtual methods
.method public sendNewFrame(Lcom/parrot/arsdk/araudio/ARAudioFrame;)V
    .locals 6
    .param p1, "frame"    # Lcom/parrot/arsdk/araudio/ARAudioFrame;

    .prologue
    .line 131
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mSender:Lcom/parrot/arsdk/arstream/ARStreamSender;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mSender:Lcom/parrot/arsdk/arstream/ARStreamSender;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arstream/ARStreamSender;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mRunning:Z

    if-eqz v2, :cond_0

    .line 133
    iget-wide v2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mTimeStamp:J

    const-wide/16 v4, 0x100

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mTimeStamp:J

    .line 137
    iget-wide v2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mTimeStamp:J

    invoke-virtual {p1, v2, v3}, Lcom/parrot/arsdk/araudio/ARAudioFrame;->setTimestamp(J)V

    .line 139
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mFramePool:Lcom/parrot/controller/stream/ARStreamPool;

    invoke-virtual {v2}, Lcom/parrot/controller/stream/ARStreamPool;->getNextFreeFrame()Lcom/parrot/controller/stream/ARFrame;

    move-result-object v0

    .line 141
    .local v0, "data":Lcom/parrot/controller/stream/ARFrame;
    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p1}, Lcom/parrot/arsdk/araudio/ARAudioFrame;->getBuffer()[B

    move-result-object v2

    const/16 v3, 0x110

    invoke-virtual {v0, v2, v3}, Lcom/parrot/controller/stream/ARFrame;->copyByteData([BI)Z

    .line 145
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mSender:Lcom/parrot/arsdk/arstream/ARStreamSender;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/parrot/arsdk/arstream/ARStreamSender;->sendNewFrame(Lcom/parrot/arsdk/arsal/ARNativeData;Z)Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;

    move-result-object v1

    .line 146
    .local v1, "error":Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;
    sget-object v2, Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;->ARSTREAM_OK:Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;

    if-eq v1, v2, :cond_0

    .line 148
    sget-object v2, Lcom/parrot/controller/audio/AudioStreamSender;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNewFrame error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/parrot/controller/stream/ARFrame;->setAvailable(Z)V

    .line 158
    .end local v0    # "data":Lcom/parrot/controller/stream/ARFrame;
    .end local v1    # "error":Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;
    :cond_0
    :goto_0
    return-void

    .line 154
    .restart local v0    # "data":Lcom/parrot/controller/stream/ARFrame;
    :cond_1
    sget-object v2, Lcom/parrot/controller/audio/AudioStreamSender;->TAG:Ljava/lang/String;

    const-string v3, "sendNewFrame no more buffer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startStream()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 62
    new-instance v0, Lcom/parrot/controller/stream/ARStreamPool;

    const/16 v1, 0x28

    const/16 v2, 0x110

    invoke-direct {v0, v1, v2}, Lcom/parrot/controller/stream/ARStreamPool;-><init>(II)V

    iput-object v0, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mFramePool:Lcom/parrot/controller/stream/ARStreamPool;

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mTimeStamp:J

    .line 66
    new-instance v0, Lcom/parrot/arsdk/arstream/ARStreamSender;

    iget-object v1, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mNetworkManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    iget v2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mDataBufferId:I

    iget v3, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mAckBufferId:I

    new-instance v4, Lcom/parrot/controller/audio/AudioStreamSender$1;

    invoke-direct {v4, p0}, Lcom/parrot/controller/audio/AudioStreamSender$1;-><init>(Lcom/parrot/controller/audio/AudioStreamSender;)V

    const/16 v5, 0x18

    iget v6, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mMaxFragmentSize:I

    iget v7, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mMaxNumFragments:I

    invoke-direct/range {v0 .. v7}, Lcom/parrot/arsdk/arstream/ARStreamSender;-><init>(Lcom/parrot/arsdk/arnetwork/ARNetworkManager;IILcom/parrot/arsdk/arstream/ARStreamSenderListener;III)V

    iput-object v0, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mSender:Lcom/parrot/arsdk/arstream/ARStreamSender;

    .line 85
    new-instance v0, Lcom/parrot/arsdk/araudio/ARAudioRx;

    invoke-direct {v0}, Lcom/parrot/arsdk/araudio/ARAudioRx;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mFilter:Lcom/parrot/arsdk/araudio/ARAudioRx;

    .line 86
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mSender:Lcom/parrot/arsdk/arstream/ARStreamSender;

    iget-object v1, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mFilter:Lcom/parrot/arsdk/araudio/ARAudioRx;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arstream/ARStreamSender;->addFilter(Lcom/parrot/arsdk/arstream/ARStreamFilter;)Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;

    .line 88
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mSender:Lcom/parrot/arsdk/arstream/ARStreamSender;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arstream/ARStreamSender;->getDataRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mDataThread:Ljava/lang/Thread;

    .line 89
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mSender:Lcom/parrot/arsdk/arstream/ARStreamSender;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arstream/ARStreamSender;->getAckRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mAckThread:Ljava/lang/Thread;

    .line 91
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mDataThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mAckThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    iput-boolean v8, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mRunning:Z

    .line 96
    return v8
.end method

.method public stopStream()V
    .locals 4

    .prologue
    .line 101
    iget-boolean v2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mRunning:Z

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mSender:Lcom/parrot/arsdk/arstream/ARStreamSender;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arstream/ARStreamSender;->stop()V

    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mDataThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 108
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mAckThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mFilter:Lcom/parrot/arsdk/araudio/ARAudioRx;

    invoke-virtual {v2}, Lcom/parrot/arsdk/araudio/ARAudioRx;->dispose()V

    .line 116
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mFilter:Lcom/parrot/arsdk/araudio/ARAudioRx;

    .line 118
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mSender:Lcom/parrot/arsdk/arstream/ARStreamSender;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arstream/ARStreamSender;->dispose()Z

    move-result v1

    .line 119
    .local v1, "ok":Z
    if-nez v1, :cond_0

    .line 121
    sget-object v2, Lcom/parrot/controller/audio/AudioStreamSender;->TAG:Ljava/lang/String;

    const-string v3, "Error while closing ARStreamReader"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mRunning:Z

    .line 125
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioStreamSender;->mFramePool:Lcom/parrot/controller/stream/ARStreamPool;

    invoke-virtual {v2}, Lcom/parrot/controller/stream/ARStreamPool;->dispose()V

    .line 127
    .end local v1    # "ok":Z
    :cond_1
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
