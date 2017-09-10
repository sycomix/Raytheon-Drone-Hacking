.class final Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$2;
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
.field final synthetic val$settingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$2;->val$settingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$2;->val$settingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->hide()V

    .line 67
    return-void
.end method
