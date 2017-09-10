.class public Lcom/parrot/controller/audio/AudioRecorder;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# static fields
.field private static final AUDIO_RECORDER_AUDIO_ENCODING:I = 0x2

.field private static final AUDIO_RECORDER_CHANNELS:I = 0x10

.field private static final AUDIO_RECORDER_SAMPLERATE:I = 0x1f40

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsRecording:Z

.field private final mRecorder:Landroid/media/AudioRecord;

.field private mReleased:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/parrot/controller/audio/AudioRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/audio/AudioRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/parrot/controller/audio/AudioStreamSender;)V
    .locals 8
    .param p1, "sender"    # Lcom/parrot/controller/audio/AudioStreamSender;

    .prologue
    const/16 v2, 0x1f40

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v7, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v7, p0, Lcom/parrot/controller/audio/AudioRecorder;->mIsRecording:Z

    .line 27
    iput-boolean v7, p0, Lcom/parrot/controller/audio/AudioRecorder;->mReleased:Z

    .line 32
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 34
    .local v5, "bufferSize":I
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/parrot/controller/audio/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    .line 38
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lcom/parrot/controller/audio/AudioRecorder;->TAG:Ljava/lang/String;

    const-string v1, "Failed to init micro"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 45
    iput-boolean v7, p0, Lcom/parrot/controller/audio/AudioRecorder;->mIsRecording:Z

    .line 46
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/parrot/controller/audio/AudioRecorder$1;

    invoke-direct {v0, p0, p1}, Lcom/parrot/controller/audio/AudioRecorder$1;-><init>(Lcom/parrot/controller/audio/AudioRecorder;Lcom/parrot/controller/audio/AudioStreamSender;)V

    const-string v1, "AudioRecorder Thread"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 86
    .local v6, "mRecordingThread":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/controller/audio/AudioRecorder;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/audio/AudioRecorder;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/parrot/controller/audio/AudioRecorder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/controller/audio/AudioRecorder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/audio/AudioRecorder;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/parrot/controller/audio/AudioRecorder;->mReleased:Z

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/controller/audio/AudioRecorder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/audio/AudioRecorder;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/parrot/controller/audio/AudioRecorder;->mIsRecording:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/parrot/controller/audio/AudioRecorder;->mIsRecording:Z

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/audio/AudioRecorder;->mReleased:Z

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 107
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/parrot/controller/audio/AudioRecorder;->mIsRecording:Z

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/audio/AudioRecorder;->mIsRecording:Z

    .line 100
    return-void
.end method
