.class Lcom/parrot/freeflight/settings/SettingsViewController$4;
.super Ljava/lang/Object;
.source "SettingsViewController.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/settings/SettingsViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/SettingsViewController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/SettingsViewController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 140
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController$4;, "Lcom/parrot/freeflight/settings/SettingsViewController$4;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/SettingsViewController$4;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 2
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 143
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController$4;, "Lcom/parrot/freeflight/settings/SettingsViewController$4;"
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 144
    .local v0, "isGamePadSelected":Z
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController$4;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$400(Lcom/parrot/freeflight/settings/SettingsViewController;)Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->updateGamePadSelection(Z)V

    .line 145
    return-void

    .line 143
    .end local v0    # "isGamePadSelected":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
