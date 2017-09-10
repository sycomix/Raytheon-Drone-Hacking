.class Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$2;
.super Ljava/lang/Object;
.source "ARDiscoveryMdnsSdMinDiscovery.java"

# interfaces
.implements Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$2;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceAdded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "serviceType"    # Ljava/lang/String;
    .param p3, "ipAddress"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "txts"    # [Ljava/lang/String;

    .prologue
    .line 257
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceAdded : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " |type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " |ip : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " |port : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " |txts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v5, 0x0

    .line 259
    .local v5, "serialNumber":Ljava/lang/String;
    if-eqz p5, :cond_0

    array-length v1, p5

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 261
    const/4 v1, 0x0

    aget-object v5, p5, v1

    .line 263
    :cond_0
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 266
    .local v0, "deviceNetService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$2;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$400(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 267
    .local v7, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    if-eqz v7, :cond_1

    .line 269
    invoke-virtual {v7}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v1

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->nativeGetProductID(I)I

    move-result v8

    .line 270
    .local v8, "productID":I
    new-instance v6, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-direct {v6, p1, v0, v8}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 271
    .local v6, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$2;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v6}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$2;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$300(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$2;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->cancelSendQueries()V

    .line 277
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$2;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$300(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->broadcastDeviceServiceArrayUpdated()V

    .line 280
    .end local v6    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .end local v8    # "productID":I
    :cond_1
    return-void
.end method

.method public onServiceRemoved(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceRemoved : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " |type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$2;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 287
    .local v0, "deviceServiceRemoved":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$2;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$300(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->broadcastDeviceServiceArrayUpdated()V

    .line 291
    :cond_0
    return-void
.end method
