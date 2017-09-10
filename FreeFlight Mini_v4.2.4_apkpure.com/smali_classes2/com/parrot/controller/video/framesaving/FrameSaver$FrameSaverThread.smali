.class Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;
.super Landroid/os/HandlerThread;
.source "FrameSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/video/framesaving/FrameSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameSaverThread"
.end annotation


# instance fields
.field private frameSaverHandler:Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;

.field final synthetic this$0:Lcom/parrot/controller/video/framesaving/FrameSaver;


# direct methods
.method public constructor <init>(Lcom/parrot/controller/video/framesaving/FrameSaver;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;->this$0:Lcom/parrot/controller/video/framesaving/FrameSaver;

    .line 46
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getFrameSaverHandler()Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;->frameSaverHandler:Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;

    return-object v0
.end method

.method public onLooperPrepared()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;

    iget-object v1, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;->this$0:Lcom/parrot/controller/video/framesaving/FrameSaver;

    invoke-virtual {p0}, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;-><init>(Lcom/parrot/controller/video/framesaving/FrameSaver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;->frameSaverHandler:Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;

    .line 53
    iget-object v0, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;->frameSaverHandler:Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;

    invoke-virtual {v0}, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;->createOutputStream()V

    .line 54
    return-void
.end method

.method public quit()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;->this$0:Lcom/parrot/controller/video/framesaving/FrameSaver;

    invoke-virtual {v0}, Lcom/parrot/controller/video/framesaving/FrameSaver;->areFilesCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;->frameSaverHandler:Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;

    invoke-virtual {v0}, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;->flushAndClose()V

    .line 63
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;->frameSaverHandler:Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;

    .line 64
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method
