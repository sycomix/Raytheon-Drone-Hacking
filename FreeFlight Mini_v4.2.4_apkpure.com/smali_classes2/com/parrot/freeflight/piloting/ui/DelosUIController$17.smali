.class Lcom/parrot/freeflight/piloting/ui/DelosUIController$17;
.super Ljava/lang/Object;
.source "DelosUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/DelosUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$17;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentAnimationChange(I)V
    .locals 1
    .param p1, "flipDirection"    # I

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$17;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$000(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->setCurrentFlipDirection(I)V

    .line 1106
    return-void
.end method

.method public onMenuClosing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1095
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$17;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$3500(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$17;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$3502(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Z)Z

    .line 1097
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$17;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$3600(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1098
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$17;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$2200(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->shouldHideRecordButton(Z)V

    .line 1099
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$17;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$2200(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$17;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$3700(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->updateRecordButtonVisibility(Z)V

    .line 1101
    :cond_0
    return-void
.end method

.method public onMenuOpening(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    .line 1079
    packed-switch p1, :pswitch_data_0

    .line 1091
    :goto_0
    return-void

    .line 1081
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$17;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$3502(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Z)Z

    .line 1082
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$17;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$3600(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1083
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$17;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$2200(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->shouldHideRecordButton(Z)V

    .line 1084
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$17;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$2200(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$17;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$3700(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->updateRecordButtonVisibility(Z)V

    goto :goto_0

    .line 1079
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onStartAnimation(I)V
    .locals 1
    .param p1, "droneAnimation"    # I

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$17;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$000(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->startAnimation(I)V

    .line 1111
    return-void
.end method
