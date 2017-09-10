.class final Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SettingsAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation;->hideSettings(Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$endAction:Ljava/lang/Runnable;

.field final synthetic val$settingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$3;->val$settingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$3;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$3;->val$settingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->hide()V

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$3;->val$endAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$3;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 91
    :cond_0
    return-void
.end method
