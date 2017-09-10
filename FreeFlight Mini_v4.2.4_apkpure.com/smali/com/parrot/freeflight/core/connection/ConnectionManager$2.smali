.class Lcom/parrot/freeflight/core/connection/ConnectionManager$2;
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
    .line 905
    iput-object p1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$2;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 908
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 909
    const/4 v0, 0x0

    .line 910
    .local v0, "deviceStopped":Ljava/lang/String;
    const-string v2, "INTENT_EXTRA_IS_SUBDEVICE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 911
    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$2;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    sget-object v3, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_DRONE_STOPPED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$000(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 912
    sget-boolean v2, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v2, :cond_0

    .line 913
    const-string v0, "Disconnection app: Drone stopped through NAP"

    .line 929
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v2, :cond_2

    .line 930
    const-string v2, "INTENT_EXTRA_ERROR"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 931
    .local v1, "i":I
    if-eq v1, v4, :cond_1

    .line 932
    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$6;->$SwitchMap$com$parrot$controller$devicecontrollers$DeviceController$DEVICE_CONTROLLER_ERROR_ENUM:[I

    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->values()[Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 947
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/parrot/controller/utils/DisconnectionsLogger;->addLogInfo(Ljava/lang/String;)V

    .line 950
    .end local v0    # "deviceStopped":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 916
    .restart local v0    # "deviceStopped":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$2;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$100(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/controller/devicecontrollers/DeviceController;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 917
    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$2;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    sget-object v3, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_STOPPED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$000(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 918
    sget-boolean v2, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v2, :cond_0

    .line 919
    const-string v0, "Disconnection app: NAP stopped"

    goto :goto_0

    .line 922
    :cond_4
    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$2;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    sget-object v3, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_DRONE_STOPPED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$000(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 923
    sget-boolean v2, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v2, :cond_0

    .line 924
    const-string v0, "Disconnection app: Drone stopped"

    goto :goto_0

    .line 934
    .restart local v1    # "i":I
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": The controller started successfully"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 935
    goto :goto_1

    .line 937
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": The controller failed to start because an error occurred"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 938
    goto :goto_1

    .line 940
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": The controller start was cancelled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 941
    goto :goto_1

    .line 943
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": The controller failed to start because the device and the discovery Service don\'t match"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 932
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
