.class Lcom/parrot/freeflight/home/HomeUIController$31;
.super Landroid/content/BroadcastReceiver;
.source "HomeUIController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/HomeUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$31;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1293
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1295
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1296
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1297
    .local v1, "state":I
    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 1298
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$31;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController$31;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iget v3, v3, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorState:I

    invoke-static {v2, v3}, Lcom/parrot/freeflight/home/HomeUIController;->access$3600(Lcom/parrot/freeflight/home/HomeUIController;I)V

    .line 1304
    .end local v1    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 1299
    .restart local v1    # "state":I
    :cond_1
    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1300
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$31;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController$31;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iget v3, v3, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorState:I

    invoke-static {v2, v3}, Lcom/parrot/freeflight/home/HomeUIController;->access$3600(Lcom/parrot/freeflight/home/HomeUIController;I)V

    .line 1301
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$31;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$1900(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/DroneListView;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/home/DroneListView;->update(Ljava/util/List;)V

    goto :goto_0
.end method
