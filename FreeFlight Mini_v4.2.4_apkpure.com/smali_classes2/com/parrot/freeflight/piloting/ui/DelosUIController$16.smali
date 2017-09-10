.class Lcom/parrot/freeflight/piloting/ui/DelosUIController$16;
.super Ljava/lang/Object;
.source "DelosUIController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/DelosUIController;->showAutoTakeOffButton(Z)V
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
    .line 1042
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$16;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$16;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$3400(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 1051
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1056
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$16;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$3400(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1046
    return-void
.end method
