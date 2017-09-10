.class Lcom/parrot/arsdk/arrouter/ARWifiHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "ARWifiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arrouter/ARWifiHelper;->initBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$2;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    iget-object v6, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$2;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-static {v6}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$100(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 118
    .local v2, "connectionInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "SSID":Ljava/lang/String;
    iget-object v6, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$2;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-static {v6}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$200(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v0, :cond_5

    .line 122
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    .line 123
    .local v3, "currentState":Landroid/net/wifi/SupplicantState;
    sget-object v6, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-ne v3, v6, :cond_2

    iget-object v6, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$2;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    .line 124
    invoke-static {v6}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$400(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Landroid/net/wifi/SupplicantState;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-ne v6, v7, :cond_2

    .line 127
    iget-object v6, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$2;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-static {v6}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$500(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v6, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$2;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-static {v6}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$200(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;

    .line 131
    .local v4, "listener":Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;
    invoke-interface {v4, v0}, Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;->onConnectionFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    .end local v4    # "listener":Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;
    :cond_0
    iget-object v6, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$2;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-static {v6}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$100(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, "configuredWifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_2

    .line 137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 139
    .local v5, "wifiConf":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 141
    iget-object v7, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$2;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-static {v7}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$100(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    iget v8, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_1

    .line 147
    .end local v1    # "configuredWifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v5    # "wifiConf":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    iget-object v6, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$2;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-static {v6, v3}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$402(Lcom/parrot/arsdk/arrouter/ARWifiHelper;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;

    .line 149
    sget-object v6, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v3, v6, :cond_4

    .line 152
    iget-object v6, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$2;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-static {v6}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$500(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 154
    iget-object v6, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$2;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-static {v6}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$100(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 155
    .restart local v1    # "configuredWifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_4

    .line 157
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 159
    .restart local v5    # "wifiConf":Landroid/net/wifi/WifiConfiguration;
    iget v7, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 161
    iget-object v7, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$2;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-static {v7}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$100(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    iget v8, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_2

    .line 167
    .end local v1    # "configuredWifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v5    # "wifiConf":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    iget-object v6, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$2;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-static {v6}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$200(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;

    .line 169
    .restart local v4    # "listener":Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;
    iget-object v7, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$2;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-virtual {v7, v0}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->getCleanedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;->onWifiChanged(Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto :goto_3

    .line 174
    .end local v3    # "currentState":Landroid/net/wifi/SupplicantState;
    .end local v4    # "listener":Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;
    :cond_5
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Can\'t call onWifiChanged because SSID is null, or no listener"

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_6
    return-void
.end method
