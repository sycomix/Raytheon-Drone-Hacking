.class Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$2;
.super Ljava/lang/Object;
.source "WingXAnimationController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->openAnimationListMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 106
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->access$400(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)V

    .line 107
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->access$300(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->access$300(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;->onStartAnimation(I)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->access$300(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->access$300(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;->onStartAnimation(I)V

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->access$300(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->access$300(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;->onStartAnimation(I)V

    goto :goto_0

    .line 101
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->access$300(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->access$300(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;->onStartAnimation(I)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f02bf
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
