.class Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;
.super Landroid/os/Handler;
.source "FrameSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/video/framesaving/FrameSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameSaverHandler"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private frameFileOutput:Ljava/io/FileOutputStream;

.field final synthetic this$0:Lcom/parrot/controller/video/framesaving/FrameSaver;

.field private timestampFileOutput:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Lcom/parrot/controller/video/framesaving/FrameSaver;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;->this$0:Lcom/parrot/controller/video/framesaving/FrameSaver;

    .line 83
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    const-class v0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;->TAG:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public createOutputStream()V
    .locals 4

    .prologue
    .line 90
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/parrot/controller/video/framesaving/FrameSaver;->access$000()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;->frameFileOutput:Ljava/io/FileOutputStream;

    .line 91
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/parrot/controller/video/framesaving/FrameSaver;->access$100()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;->timestampFileOutput:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public flushAndClose()V
    .locals 3

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;->frameFileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 124
    iget-object v1, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;->timestampFileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :try_start_1
    iget-object v1, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;->frameFileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 135
    iget-object v1, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;->timestampFileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 128
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :try_start_3
    iget-object v1, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;->frameFileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 135
    iget-object v1, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;->timestampFileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 137
    :catch_2
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 134
    :try_start_4
    iget-object v2, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;->frameFileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 135
    iget-object v2, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;->timestampFileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 140
    :goto_1
    throw v1

    .line 137
    :catch_3
    move-exception v0

    .line 139
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 102
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/parrot/controller/video/framesaving/FrameMessage;

    .line 104
    .local v1, "frameMessage":Lcom/parrot/controller/video/framesaving/FrameMessage;
    invoke-static {}, Lcom/parrot/controller/video/framesaving/FrameSaver;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;->frameFileOutput:Ljava/io/FileOutputStream;

    iget-object v3, v1, Lcom/parrot/controller/video/framesaving/FrameMessage;->mjpeg:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 110
    iget-object v2, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;->timestampFileOutput:Ljava/io/FileOutputStream;

    iget-object v3, v1, Lcom/parrot/controller/video/framesaving/FrameMessage;->timestamp:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
