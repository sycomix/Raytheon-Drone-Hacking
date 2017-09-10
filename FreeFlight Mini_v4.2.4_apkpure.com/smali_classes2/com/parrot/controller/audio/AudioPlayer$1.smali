.class Lcom/parrot/controller/audio/AudioPlayer$1;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Lcom/parrot/controller/audio/AudioStreamReceiver$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/controller/audio/AudioPlayer;-><init>(Lcom/parrot/controller/audio/AudioStreamReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/audio/AudioPlayer;


# direct methods
.method constructor <init>(Lcom/parrot/controller/audio/AudioPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/audio/AudioPlayer;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/parrot/controller/audio/AudioPlayer$1;->this$0:Lcom/parrot/controller/audio/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lcom/parrot/arsdk/arsal/ARNativeData;)V
    .locals 8
    .param p1, "currentFrame"    # Lcom/parrot/arsdk/arsal/ARNativeData;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer$1;->this$0:Lcom/parrot/controller/audio/AudioPlayer;

    invoke-static {v0}, Lcom/parrot/controller/audio/AudioPlayer;->access$000(Lcom/parrot/controller/audio/AudioPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer$1;->this$0:Lcom/parrot/controller/audio/AudioPlayer;

    invoke-static {v0}, Lcom/parrot/controller/audio/AudioPlayer;->access$100(Lcom/parrot/controller/audio/AudioPlayer;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->getByteData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/arsdk/araudio/ARAudioFrame;->getSampleRate([B)I

    move-result v2

    .line 49
    .local v2, "sampleRate":I
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer$1;->this$0:Lcom/parrot/controller/audio/AudioPlayer;

    invoke-static {v0}, Lcom/parrot/controller/audio/AudioPlayer;->access$200(Lcom/parrot/controller/audio/AudioPlayer;)I

    move-result v0

    if-eq v2, v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer$1;->this$0:Lcom/parrot/controller/audio/AudioPlayer;

    invoke-static {v0, v2}, Lcom/parrot/controller/audio/AudioPlayer;->access$202(Lcom/parrot/controller/audio/AudioPlayer;I)I

    .line 53
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer$1;->this$0:Lcom/parrot/controller/audio/AudioPlayer;

    invoke-static {v0}, Lcom/parrot/controller/audio/AudioPlayer;->access$100(Lcom/parrot/controller/audio/AudioPlayer;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 54
    iget-object v1, p0, Lcom/parrot/controller/audio/AudioPlayer$1;->this$0:Lcom/parrot/controller/audio/AudioPlayer;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer$1;->this$0:Lcom/parrot/controller/audio/AudioPlayer;

    invoke-static {v0}, Lcom/parrot/controller/audio/AudioPlayer;->access$100(Lcom/parrot/controller/audio/AudioPlayer;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 57
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer$1;->this$0:Lcom/parrot/controller/audio/AudioPlayer;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/parrot/controller/audio/AudioPlayer;->access$102(Lcom/parrot/controller/audio/AudioPlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    .line 58
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object v7, p0, Lcom/parrot/controller/audio/AudioPlayer$1;->this$0:Lcom/parrot/controller/audio/AudioPlayer;

    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v5, 0x1000

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    invoke-static {v7, v0}, Lcom/parrot/controller/audio/AudioPlayer;->access$102(Lcom/parrot/controller/audio/AudioPlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    .line 60
    iget-object v1, p0, Lcom/parrot/controller/audio/AudioPlayer$1;->this$0:Lcom/parrot/controller/audio/AudioPlayer;

    monitor-enter v1

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer$1;->this$0:Lcom/parrot/controller/audio/AudioPlayer;

    invoke-static {v0}, Lcom/parrot/controller/audio/AudioPlayer;->access$000(Lcom/parrot/controller/audio/AudioPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer$1;->this$0:Lcom/parrot/controller/audio/AudioPlayer;

    invoke-static {v0}, Lcom/parrot/controller/audio/AudioPlayer;->access$100(Lcom/parrot/controller/audio/AudioPlayer;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 66
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/parrot/controller/audio/AudioPlayer$1;->this$0:Lcom/parrot/controller/audio/AudioPlayer;

    invoke-static {v0}, Lcom/parrot/controller/audio/AudioPlayer;->access$100(Lcom/parrot/controller/audio/AudioPlayer;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->getByteData()[B

    move-result-object v1

    const/16 v3, 0x10

    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->getDataSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x10

    invoke-virtual {v0, v1, v3, v4}, Landroid/media/AudioTrack;->write([BII)I

    .line 71
    .end local v2    # "sampleRate":I
    :cond_2
    return-void

    .line 58
    .restart local v2    # "sampleRate":I
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 66
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
