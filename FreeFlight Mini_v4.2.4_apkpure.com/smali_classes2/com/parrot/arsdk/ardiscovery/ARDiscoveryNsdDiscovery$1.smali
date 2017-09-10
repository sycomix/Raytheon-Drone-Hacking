.class Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery$1;
.super Ljava/lang/Object;
.source "ARDiscoveryNsdDiscovery.java"

# interfaces
.implements Landroid/net/nsd/NsdManager$DiscoveryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->initializeDiscoveryListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscoveryStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "regType"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service discovery started"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public onDiscoveryStopped(Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discovery stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 4
    .param p1, "service"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 185
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service discovery success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->access$100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 187
    .local v0, "validType":Z
    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->access$300(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;)Landroid/net/nsd/NsdManager;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->access$200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;)Landroid/net/nsd/NsdManager$ResolveListener;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/net/nsd/NsdManager;->resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V

    .line 191
    :cond_0
    return-void
.end method

.method public onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 4
    .param p1, "service"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 198
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service lost"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->access$400(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 203
    .local v0, "deviceServiceRemoved":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->access$500(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->broadcastDeviceServiceArrayUpdated()V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not known"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartDiscoveryFailed(Ljava/lang/String;I)V
    .locals 3
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 223
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartDiscoveryFailed ... Discovery failed: Error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public onStopDiscoveryFailed(Ljava/lang/String;I)V
    .locals 3
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 229
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopDiscoveryFailed ... Discovery failed: Error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method
