.class Lcom/parrot/freeflight/piloting/ui/DelosUIController$4;
.super Ljava/lang/Object;
.source "DelosUIController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 311
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 314
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$200(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$300(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$300(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$000(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DelosModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 329
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$400(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 318
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$000(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->getFlyingState()I

    move-result v0

    .line 319
    .local v0, "flyingState":I
    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_2

    .line 322
    :cond_1
    const-string v1, "FFMini.Pilot.ui"

    const-string v2, "click on take off button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$000(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->takeOff()V

    goto :goto_0

    .line 325
    :cond_2
    const-string v1, "FFMini.Pilot.ui"

    const-string v2, "click on landing button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$000(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->land()V

    goto :goto_0
.end method
