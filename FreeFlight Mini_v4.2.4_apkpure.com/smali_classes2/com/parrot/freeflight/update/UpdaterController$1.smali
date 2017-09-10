.class Lcom/parrot/freeflight/update/UpdaterController$1;
.super Landroid/content/BroadcastReceiver;
.source "UpdaterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/UpdaterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/UpdaterController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdaterController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController$1;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0xa

    .line 664
    const-string v2, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 665
    .local v0, "currentState":I
    const-string v2, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 668
    .local v1, "previousState":I
    const-string v2, "FFMini.Updater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bluetooth pair state changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    if-ne v1, v5, :cond_1

    if-ne v0, v6, :cond_1

    .line 673
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$1;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    sget-object v3, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_PAIRING:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/update/UpdaterController;->access$100(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    if-ne v1, v6, :cond_0

    if-eq v0, v5, :cond_2

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    .line 676
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$1;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    sget-object v3, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_PAIRED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/update/UpdaterController;->access$100(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 677
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$1;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v2}, Lcom/parrot/freeflight/update/UpdaterController;->access$200(Lcom/parrot/freeflight/update/UpdaterController;)V

    goto :goto_0
.end method
