.class Lcom/parrot/arsdk/arrouter/ARWifiHelper$1;
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
    .line 94
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$1;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$1;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$1;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-static {v2}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$100(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$002(Lcom/parrot/arsdk/arrouter/ARWifiHelper;Ljava/util/List;)Ljava/util/List;

    .line 100
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$1;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$200(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wifi list has changed"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$1;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$200(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;

    .line 105
    .local v0, "listener":Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$1;->this$0:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-static {v2}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->access$000(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;->onWifiListChanged(Ljava/util/List;)V

    goto :goto_0

    .line 108
    .end local v0    # "listener":Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;
    :cond_0
    return-void
.end method
