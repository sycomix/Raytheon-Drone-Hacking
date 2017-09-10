.class Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$1;
.super Ljava/lang/Object;
.source "ARRouter.java"

# interfaces
.implements Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter;Ljava/lang/String;Ljava/util/List;Ljava/util/List;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

.field final synthetic val$this$0:Lcom/parrot/arsdk/arrouter/ARRouter;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;Lcom/parrot/arsdk/arrouter/ARRouter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    .prologue
    .line 1708
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$1;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iput-object p2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$1;->val$this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 1742
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectionFailed SSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1745
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ERROR:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;

    invoke-virtual {v0, p1, v1}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerWifiStateConnexionChanged(Ljava/lang/String;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1746
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$1;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v1, v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v1, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    .line 1747
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1749
    return-void
.end method

.method public onWifiChanged(Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 5
    .param p1, "SSID"    # Ljava/lang/String;
    .param p2, "state"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 1716
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWifiChanged SSID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    const/4 v1, 0x0

    .line 1719
    .local v1, "wifiState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;
    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne p2, v2, :cond_2

    .line 1721
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_CONNECTED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;

    .line 1729
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1731
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1732
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p1, v1}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerWifiStateConnexionChanged(Ljava/lang/String;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1733
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$1;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v2, v2, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v2, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    .line 1734
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1738
    .end local v0    # "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    :cond_1
    return-void

    .line 1723
    :cond_2
    sget-object v2, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-ne p2, v2, :cond_0

    .line 1725
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_DISCONNECTED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;

    goto :goto_0
.end method

.method public onWifiListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1712
    .local p1, "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    return-void
.end method
