.class public Lcom/parrot/freeflight/util/AlertSound;
.super Ljava/lang/Object;
.source "AlertSound.java"


# static fields
.field private static final SOUND_DELAY_MS:I = 0x1388


# instance fields
.field private mBatterySoundId:I

.field private mPlaySound:Z

.field private final mSoundHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSoundPool:Landroid/media/SoundPool;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSoundRunnable:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v3, p0, Lcom/parrot/freeflight/util/AlertSound;->mPlaySound:Z

    .line 36
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mSoundPool:Landroid/media/SoundPool;

    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v1, 0x7f070000

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mBatterySoundId:I

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mSoundHandler:Landroid/os/Handler;

    .line 39
    new-instance v0, Lcom/parrot/freeflight/util/AlertSound$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/util/AlertSound$1;-><init>(Lcom/parrot/freeflight/util/AlertSound;)V

    iput-object v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mSoundRunnable:Ljava/lang/Runnable;

    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mSoundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/util/AlertSound;->mSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/util/AlertSound;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/util/AlertSound;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mPlaySound:Z

    return v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/util/AlertSound;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/util/AlertSound;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mSoundHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public playAlertSound()V
    .locals 7

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/parrot/freeflight/util/AlertSound;->mBatterySoundId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 58
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mSoundPool:Landroid/media/SoundPool;

    .line 84
    :cond_0
    return-void
.end method

.method public startRepeatSound()V
    .locals 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mPlaySound:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mPlaySound:Z

    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mSoundHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mSoundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/util/AlertSound;->mSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    :cond_0
    return-void
.end method

.method public stopRepeatSound()V
    .locals 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mPlaySound:Z

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mPlaySound:Z

    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/util/AlertSound;->mSoundHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 77
    :cond_0
    return-void
.end method
