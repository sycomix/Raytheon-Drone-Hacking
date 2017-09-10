.class Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;
.super Ljava/lang/Object;
.source "DelosAnimationController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->openFlipListMenu()V
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
    .line 97
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$200(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$400(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$400(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;->onCurrentAnimationChange(I)V

    .line 121
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$002(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;Z)Z

    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$300(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$200(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$600(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;Landroid/view/View;I)V

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$700(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)V

    .line 125
    return-void

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$200(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020144

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$400(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$400(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;->onCurrentAnimationChange(I)V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$200(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020143

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$400(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$400(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;->onCurrentAnimationChange(I)V

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$200(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020145

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$400(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$400(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;->onCurrentAnimationChange(I)V

    goto :goto_0

    .line 114
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$200(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020147

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$400(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->access$400(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;->onCurrentAnimationChange(I)V

    goto/16 :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0201
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
