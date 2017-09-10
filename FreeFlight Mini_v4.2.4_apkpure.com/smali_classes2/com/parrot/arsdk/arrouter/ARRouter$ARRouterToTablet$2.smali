.class Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$2;
.super Ljava/lang/Object;
.source "ARRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyControllerWifiRequestWifiListUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

.field final synthetic val$h:Landroid/os/Handler;

.field final synthetic val$scanResults:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;Ljava/util/List;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    .prologue
    .line 1881
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$2;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iput-object p2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$2;->val$scanResults:Ljava/util/List;

    iput-object p3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$2;->val$h:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1885
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1886
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$2;->val$scanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 1887
    .local v8, "nbresults":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_3

    .line 1889
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$2;->val$scanResults:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    .line 1890
    .local v9, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v1, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v2, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v9}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->isSecuredNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v10

    :goto_1
    int-to-byte v3, v3

    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$2;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v4, v4, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v4}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1100(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    move-result-object v4

    iget-object v5, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->isSavedNetwork(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v10

    :goto_2
    int-to-byte v4, v4

    iget v5, v9, Landroid/net/wifi/ScanResult;->level:I

    iget v6, v9, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerWifiStateWifiList(Ljava/lang/String;Ljava/lang/String;BBII)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1892
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$2;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v1, v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v1, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1894
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$2;->val$scanResults:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1887
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move v3, v11

    .line 1890
    goto :goto_1

    :cond_2
    move v4, v11

    goto :goto_2

    .line 1898
    .end local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_3
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$2;->val$scanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1900
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$2;->val$h:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1901
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t send wifi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$2;->val$scanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    :cond_4
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1905
    return-void
.end method
