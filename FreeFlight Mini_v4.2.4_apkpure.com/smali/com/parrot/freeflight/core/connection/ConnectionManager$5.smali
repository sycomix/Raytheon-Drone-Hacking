.class Lcom/parrot/freeflight/core/connection/ConnectionManager$5;
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
    .line 1044
    iput-object p1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$5;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1047
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1048
    .local v0, "connectionStateBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1049
    const-string v6, "SkyControllerDeviceControllerDeviceStateConnexionChangedNotificationDeviceNameKey"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1050
    .local v1, "deviceName":Ljava/lang/String;
    const-string v6, "SkyControllerDeviceControllerDeviceStateConnexionChangedNotificationDeviceProductIDKey"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result v2

    .line 1051
    .local v2, "deviceProductID":I
    const-string v6, "SkyControllerDeviceControllerDeviceStateConnexionChangedNotificationStatusKey"

    sget-object v7, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

    .line 1052
    invoke-virtual {v7}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;->getValue()I

    move-result v7

    .line 1051
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1054
    .local v5, "stateInt":I
    invoke-static {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;

    move-result-object v4

    .line 1056
    .local v4, "state":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;
    sget-object v6, Lcom/parrot/freeflight/core/connection/ConnectionManager$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM:[I

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1085
    const-string v6, "FFMini.Connect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not known"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v2    # "deviceProductID":I
    .end local v4    # "state":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;
    .end local v5    # "stateInt":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1059
    .restart local v1    # "deviceName":Ljava/lang/String;
    .restart local v2    # "deviceProductID":I
    .restart local v4    # "state":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;
    .restart local v5    # "stateInt":I
    :pswitch_1
    const-string v6, "FFMini.Connect"

    const-string v7, "SkyController connected to a Drone"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    sget-boolean v6, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v6, :cond_1

    .line 1062
    const-string v6, "Drone connected through SkyController"

    invoke-static {v6}, Lcom/parrot/controller/utils/DisconnectionsLogger;->addLogInfo(Ljava/lang/String;)V

    .line 1064
    :cond_1
    new-instance v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-direct {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;-><init>()V

    .line 1065
    .local v3, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    invoke-virtual {v3, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->setName(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v3, v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->setProductID(I)V

    .line 1067
    iget-object v6, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$5;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-static {v6, v3}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$402(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 1068
    iget-object v6, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$5;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    sget-object v7, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_CONNECTED_TO_DRONE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-static {v6, v7}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$000(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    goto :goto_0

    .line 1072
    .end local v3    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :pswitch_2
    const-string v6, "FFMini.Connect"

    const-string v7, "Drone disconnected from SkyController"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    sget-boolean v6, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v6, :cond_2

    .line 1075
    const-string v6, "Drone disconnected through SkyController"

    invoke-static {v6}, Lcom/parrot/controller/utils/DisconnectionsLogger;->addLogInfo(Ljava/lang/String;)V

    .line 1077
    :cond_2
    iget-object v6, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$5;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    sget-object v7, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_DRONE_DISCONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-static {v6, v7}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$000(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    goto :goto_0

    .line 1056
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
