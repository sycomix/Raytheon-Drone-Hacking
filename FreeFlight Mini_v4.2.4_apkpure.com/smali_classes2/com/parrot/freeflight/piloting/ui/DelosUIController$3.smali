.class Lcom/parrot/freeflight/piloting/ui/DelosUIController$3;
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
    .line 300
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 304
    .local v0, "newSelectFlag":Z
    :goto_0
    const-string v1, "FFMini.Pilot.ui"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click on auto take off checkBox : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$000(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/core/model/DelosModel;->requestAutoTakeOff(Z)V

    .line 306
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 307
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/google/Analytic;->trackMainConnectedDroneThrowIt()V

    .line 308
    return-void

    .line 303
    .end local v0    # "newSelectFlag":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
