.class Lcom/parrot/freeflight/home/connection/DirectPairingActivity$4;
.super Ljava/lang/Object;
.source "DirectPairingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->access$100(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->access$000(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    .line 102
    invoke-static {v0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->access$100(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    .line 103
    invoke-static {v0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->access$100(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    .line 104
    invoke-static {v0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->access$000(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->access$200(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->access$000(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->unselectGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->access$300(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->access$100(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->onBackPressed(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method
