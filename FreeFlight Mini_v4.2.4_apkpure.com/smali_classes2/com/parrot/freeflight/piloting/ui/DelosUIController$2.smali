.class Lcom/parrot/freeflight/piloting/ui/DelosUIController$2;
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
    .line 289
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$000(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$100(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 294
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$000(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->takePicture()V

    .line 295
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/google/Analytic;->trackMainConnedDroneCamera()V

    .line 297
    :cond_0
    return-void
.end method
