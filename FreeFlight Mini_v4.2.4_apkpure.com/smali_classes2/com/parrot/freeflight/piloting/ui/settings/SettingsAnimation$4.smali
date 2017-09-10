.class final Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$4;
.super Ljava/lang/Object;
.source "SettingsAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation;->createCircularRevealCompat(Landroid/view/View;IIFF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$path:Landroid/graphics/Path;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Landroid/graphics/Path;IILandroid/view/View;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$4;->val$path:Landroid/graphics/Path;

    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$4;->val$x:I

    iput p3, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$4;->val$y:I

    iput-object p4, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$4;->val$path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 108
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$4;->val$path:Landroid/graphics/Path;

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$4;->val$x:I

    int-to-float v2, v0

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$4;->val$y:I

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$4;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 110
    return-void
.end method
