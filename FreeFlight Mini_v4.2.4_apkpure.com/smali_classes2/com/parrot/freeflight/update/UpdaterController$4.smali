.class Lcom/parrot/freeflight/update/UpdaterController$4;
.super Ljava/lang/Object;
.source "UpdaterController.java"

# interfaces
.implements Lcom/parrot/freeflight/update/task/UploaderTask$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/UpdaterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/UpdaterController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdaterController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 757
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController$4;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Z)V
    .locals 2
    .param p1, "succeeded"    # Z

    .prologue
    .line 769
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController$4;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_UPLOADING_SUCCEEDED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    :goto_0
    invoke-static {v1, v0}, Lcom/parrot/freeflight/update/UpdaterController;->access$100(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 770
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController$4;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/UpdaterController;->access$1002(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/task/UploaderTask;)Lcom/parrot/freeflight/update/task/UploaderTask;

    .line 771
    return-void

    .line 769
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_UPLOADING_FAILED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    goto :goto_0
.end method

.method public onProgressChange(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 760
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController$4;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_UPLOADING_PROGRESS:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/UpdaterController;->access$100(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 761
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController$4;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterController;->access$700(Lcom/parrot/freeflight/update/UpdaterController;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController$4;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/update/UpdaterController;->access$702(Lcom/parrot/freeflight/update/UpdaterController;F)F

    .line 763
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController$4;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterController;->access$800(Lcom/parrot/freeflight/update/UpdaterController;)V

    .line 765
    :cond_0
    return-void
.end method
