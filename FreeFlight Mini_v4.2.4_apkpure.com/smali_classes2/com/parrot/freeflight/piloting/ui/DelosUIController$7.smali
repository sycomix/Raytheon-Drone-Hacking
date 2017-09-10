.class Lcom/parrot/freeflight/piloting/ui/DelosUIController$7;
.super Ljava/lang/Object;
.source "DelosUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/settings/SettingsView$OnBackButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/DelosUIController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Landroid/view/Window;Landroid/os/Bundle;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/DelosUIController$OnDroneNotInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackButtonClick()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$500(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->removeGamePadListener()V

    .line 355
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->onBackPressed()Z

    .line 356
    return-void
.end method
