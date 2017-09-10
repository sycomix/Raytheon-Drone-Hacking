.class public Lcom/parrot/controller/audio/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# static fields
.field private static final AUDIO_BUFFER_SIZE:I = 0x1000

.field private static final AUDIO_CHANNELS:I = 0x4

.field private static final AUDIO_ENCODING:I = 0x2

.field private static final AUDIO_SAMPLERATE:I = 0x1f40

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mCurrentSampleRate:I

.field private mPlaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/parrot/controller/audio/AudioPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/audio/AudioPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/parrot/controller/audio/AudioStreamReceiver;)V
    .locals 7
    .param p1, "audioStreamReceiver"    # Lcom/parrot/controller/audio/AudioStreamReceiver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v2, 0x1f40

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/audio/AudioPlayer;->mPlaying:Z

    .line 37
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v5, 0x1000

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 38
    iput v2, p0, Lcom/parrot/controller/audio/AudioPlayer;->mCurrentSampleRate:I

    .line 40
    new-instance v0, Lcom/parrot/controller/audio/AudioPlayer$1;

    invoke-direct {v0, p0}, Lcom/parrot/controller/audio/AudioPlayer$1;-><init>(Lcom/parrot/controller/audio/AudioPlayer;)V

    invoke-virtual {p1, v0}, Lcom/parrot/controller/audio/AudioStreamReceiver;->setListener(Lcom/parrot/controller/audio/AudioStreamReceiver$IListener;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/controller/audio/AudioPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/audio/AudioPlayer;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/parrot/controller/audio/AudioPlayer;->mPlaying:Z

    return v0
.end method

.method static synthetic access$100(Lcom/parrot/controller/audio/AudioPlayer;)Landroid/media/AudioTrack;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/audio/AudioPlayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/controller/audio/AudioPlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/audio/AudioPlayer;
    .param p1, "x1"    # Landroid/media/AudioTrack;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/parrot/controller/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parrot/controller/audio/AudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/audio/AudioPlayer;

    .prologue
    .line 17
    iget v0, p0, Lcom/parrot/controller/audio/AudioPlayer;->mCurrentSampleRate:I

    return v0
.end method

.method static synthetic access$202(Lcom/parrot/controller/audio/AudioPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/audio/AudioPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/parrot/controller/audio/AudioPlayer;->mCurrentSampleRate:I

    return p1
.end method


# virtual methods
.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/parrot/controller/audio/AudioPlayer;->mPlaying:Z

    .line 103
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 104
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/controller/audio/AudioPlayer;->mPlaying:Z

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/audio/AudioPlayer;->mPlaying:Z

    .line 80
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/controller/audio/AudioPlayer;->mPlaying:Z

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/audio/AudioPlayer;->mPlaying:Z

    .line 92
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 95
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
