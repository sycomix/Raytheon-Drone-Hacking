.class Lcom/parrot/freeflight/piloting/ui/DelosUIController$8;
.super Ljava/lang/Object;
.source "DelosUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


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
    .line 381
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$8;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$8;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$600(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$8;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$600(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;->update()V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$8;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$700(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    .line 386
    return-void
.end method
