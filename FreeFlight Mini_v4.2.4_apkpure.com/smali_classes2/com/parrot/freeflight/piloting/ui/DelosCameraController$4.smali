.class Lcom/parrot/freeflight/piloting/ui/DelosCameraController$4;
.super Ljava/lang/Object;
.source "DelosCameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->setRecordingInProgress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

.field final synthetic val$recordingInProgress:Z


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    iput-boolean p2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$4;->val$recordingInProgress:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 319
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$700(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 320
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$4;->val$recordingInProgress:Z

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$700(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 323
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 324
    .local v0, "a":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 325
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 326
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 328
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$700(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 332
    .end local v0    # "a":Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$700(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0
.end method
