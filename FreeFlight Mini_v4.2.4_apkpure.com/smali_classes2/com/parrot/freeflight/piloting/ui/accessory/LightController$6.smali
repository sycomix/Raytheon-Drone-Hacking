.class Lcom/parrot/freeflight/piloting/ui/accessory/LightController$6;
.super Ljava/lang/Object;
.source "LightController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->startScaleInAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$6;->val$view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 234
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 224
    return-void
.end method
