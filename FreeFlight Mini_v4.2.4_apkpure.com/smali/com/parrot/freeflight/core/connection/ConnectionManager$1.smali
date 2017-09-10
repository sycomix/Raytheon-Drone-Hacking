.class Lcom/parrot/freeflight/core/connection/ConnectionManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/connection/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .prologue
    .line 866
    iput-object p1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 869
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 870
    const/4 v0, 0x0

    .line 871
    .local v0, "deviceStarted":Ljava/lang/String;
    const-string v1, "INTENT_EXTRA_IS_SUBDEVICE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 872
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$000(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 873
    sget-boolean v1, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v1, :cond_0

    .line 874
    const-string v0, "Connection app: Drone started through NAP"

    .line 889
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v1, :cond_1

    .line 890
    invoke-static {v0}, Lcom/parrot/controller/utils/DisconnectionsLogger;->addLogInfo(Ljava/lang/String;)V

    .line 899
    .end local v0    # "deviceStarted":Ljava/lang/String;
    :cond_1
    sget-boolean v1, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v1, :cond_2

    .line 900
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$300(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/freeflight/core/connection/WifiLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$200(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/controller/devicecontrollers/DeviceController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/connection/WifiLogger;->logWifiInfo(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 902
    :cond_2
    return-void

    .line 877
    .restart local v0    # "deviceStarted":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$100(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/controller/devicecontrollers/DeviceController;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 878
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$000(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 879
    sget-boolean v1, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v1, :cond_0

    .line 880
    const-string v0, "Connection app: NAP started"

    goto :goto_0

    .line 883
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$000(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 884
    sget-boolean v1, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v1, :cond_0

    .line 885
    const-string v0, "Connection app: Drone started"

    goto :goto_0
.end method
