.class Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$1;
.super Ljava/lang/Object;
.source "WingXAnimationController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;-><init>(Landroid/content/Context;Landroid/view/View;)V
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
    .line 64
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->access$000(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->access$100(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->access$200(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)V

    goto :goto_0
.end method
