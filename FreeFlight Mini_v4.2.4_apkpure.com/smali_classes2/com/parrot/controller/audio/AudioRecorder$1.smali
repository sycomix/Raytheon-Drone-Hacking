.class Lcom/parrot/controller/audio/AudioRecorder$1;
.super Ljava/lang/Object;
.source "AudioRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/controller/audio/AudioRecorder;-><init>(Lcom/parrot/controller/audio/AudioStreamSender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/audio/AudioRecorder;

.field final synthetic val$sender:Lcom/parrot/controller/audio/AudioStreamSender;


# direct methods
.method constructor <init>(Lcom/parrot/controller/audio/AudioRecorder;Lcom/parrot/controller/audio/AudioStreamSender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/audio/AudioRecorder;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/parrot/controller/audio/AudioRecorder$1;->this$0:Lcom/parrot/controller/audio/AudioRecorder;

    iput-object p2, p0, Lcom/parrot/controller/audio/AudioRecorder$1;->val$sender:Lcom/parrot/controller/audio/AudioStreamSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    .line 50
    new-instance v0, Lcom/parrot/arsdk/araudio/ARAudioFrame;

    invoke-direct {v0}, Lcom/parrot/arsdk/araudio/ARAudioFrame;-><init>()V

    .line 51
    .local v0, "buffer":Lcom/parrot/arsdk/araudio/ARAudioFrame;
    const/4 v1, 0x0

    .line 52
    .local v1, "noiseSuppressor":Landroid/media/audiofx/NoiseSuppressor;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_0

    .line 54
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioRecorder$1;->this$0:Lcom/parrot/controller/audio/AudioRecorder;

    invoke-static {v2}, Lcom/parrot/controller/audio/AudioRecorder;->access$000(Lcom/parrot/controller/audio/AudioRecorder;)Landroid/media/AudioRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v2

    invoke-static {v2}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v1

    .line 55
    invoke-static {}, Lcom/parrot/controller/audio/AudioRecorder;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoiseSuppressor.isAvailable() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioRecorder$1;->this$0:Lcom/parrot/controller/audio/AudioRecorder;

    invoke-static {v2}, Lcom/parrot/controller/audio/AudioRecorder;->access$200(Lcom/parrot/controller/audio/AudioRecorder;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 60
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioRecorder$1;->this$0:Lcom/parrot/controller/audio/AudioRecorder;

    invoke-static {v2}, Lcom/parrot/controller/audio/AudioRecorder;->access$300(Lcom/parrot/controller/audio/AudioRecorder;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioRecorder$1;->this$0:Lcom/parrot/controller/audio/AudioRecorder;

    invoke-static {v2}, Lcom/parrot/controller/audio/AudioRecorder;->access$000(Lcom/parrot/controller/audio/AudioRecorder;)Landroid/media/AudioRecord;

    move-result-object v2

    invoke-virtual {v0}, Lcom/parrot/arsdk/araudio/ARAudioFrame;->getBuffer()[B

    move-result-object v3

    const/16 v4, 0x100

    invoke-virtual {v2, v3, v5, v4}, Landroid/media/AudioRecord;->read([BII)I

    .line 64
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioRecorder$1;->val$sender:Lcom/parrot/controller/audio/AudioStreamSender;

    invoke-virtual {v2, v0}, Lcom/parrot/controller/audio/AudioStreamSender;->sendNewFrame(Lcom/parrot/arsdk/araudio/ARAudioFrame;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v3, p0, Lcom/parrot/controller/audio/AudioRecorder$1;->this$0:Lcom/parrot/controller/audio/AudioRecorder;

    monitor-enter v3

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/parrot/controller/audio/AudioRecorder$1;->this$0:Lcom/parrot/controller/audio/AudioRecorder;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_1
    :try_start_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 80
    :cond_2
    if-eqz v1, :cond_3

    .line 82
    invoke-virtual {v1}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 84
    :cond_3
    return-void

    .line 74
    :catch_0
    move-exception v2

    goto :goto_1
.end method
