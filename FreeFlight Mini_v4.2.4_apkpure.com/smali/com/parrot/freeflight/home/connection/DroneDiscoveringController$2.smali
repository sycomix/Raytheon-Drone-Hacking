.class Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$2;
.super Landroid/content/BroadcastReceiver;
.source "DroneDiscoveringController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$2;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 233
    .local v1, "state":I
    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$2;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    sget-object v3, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_BLUETOOTH_ON:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->access$000(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;)V

    .line 239
    .end local v1    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 235
    .restart local v1    # "state":I
    :cond_1
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$2;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    sget-object v3, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_BLUETOOTH_OFF:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->access$000(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;)V

    goto :goto_0
.end method
