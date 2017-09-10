.class Lcom/parrot/freeflight/core/connection/WifiLogger$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/connection/WifiLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/connection/WifiLogger;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/connection/WifiLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/connection/WifiLogger;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/parrot/freeflight/core/connection/WifiLogger$1;->this$0:Lcom/parrot/freeflight/core/connection/WifiLogger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 90
    .local v1, "info":Landroid/net/NetworkInfo;
    const-string v4, "wifiInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiInfo;

    .line 91
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 92
    .local v0, "detailedState":Landroid/net/NetworkInfo$DetailedState;
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v4, :cond_1

    if-eqz v3, :cond_1

    .line 93
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    if-ltz v4, :cond_1

    .line 94
    iget-object v4, p0, Lcom/parrot/freeflight/core/connection/WifiLogger$1;->this$0:Lcom/parrot/freeflight/core/connection/WifiLogger;

    invoke-static {v4, v3}, Lcom/parrot/freeflight/core/connection/WifiLogger;->access$000(Lcom/parrot/freeflight/core/connection/WifiLogger;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "interfaceName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is connected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/parrot/controller/utils/DisconnectionsLogger;->addLogInfo(Ljava/lang/String;)V

    .line 100
    .end local v2    # "interfaceName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    if-gez v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/parrot/freeflight/core/connection/WifiLogger$1;->this$0:Lcom/parrot/freeflight/core/connection/WifiLogger;

    invoke-static {v4, v3}, Lcom/parrot/freeflight/core/connection/WifiLogger;->access$000(Lcom/parrot/freeflight/core/connection/WifiLogger;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .restart local v2    # "interfaceName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is disconnected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/parrot/controller/utils/DisconnectionsLogger;->addLogInfo(Ljava/lang/String;)V

    goto :goto_0
.end method
