.class final Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SettingsAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation;->createCircularRevealCompat(Landroid/view/View;IIFF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$5;->val$view:Landroid/view/View;

    check-cast v0, Lcom/parrot/freeflight/util/ui/ICircularRevealable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/util/ui/ICircularRevealable;->clipView(Z)V

    .line 116
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$5;->val$view:Landroid/view/View;

    check-cast v0, Lcom/parrot/freeflight/util/ui/ICircularRevealable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/util/ui/ICircularRevealable;->clipView(Z)V

    .line 121
    return-void
.end method
