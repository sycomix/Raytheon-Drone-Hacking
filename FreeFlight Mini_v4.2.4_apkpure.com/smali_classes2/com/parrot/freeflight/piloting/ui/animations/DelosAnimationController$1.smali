.class Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;
.super Ljava/lang/Object;
.source "DelosAnimationController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 69
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$000(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$200(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$100(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$300(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$400(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$400(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;->onMenuClosing()V

    .line 80
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$200(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$600(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;Landroid/view/View;I)V

    .line 81
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$000(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$002(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;Z)Z

    .line 82
    return-void

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$200(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$102(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 75
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$200(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f020117

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 76
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$300(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$400(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$400(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;->onMenuOpening(I)V

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$500(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)V

    goto :goto_0
.end method
