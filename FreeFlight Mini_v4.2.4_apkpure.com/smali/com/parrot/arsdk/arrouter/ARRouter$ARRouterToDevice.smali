.class Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;
.super Ljava/lang/Object;
.source "ARRouter.java"

# interfaces
.implements Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;
.implements Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkHandler;
.implements Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterRunnableFilterHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/ARRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ARRouterToDevice"
.end annotation


# instance fields
.field private alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

.field private buffersThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;",
            ">;"
        }
    .end annotation
.end field

.field private commandsSenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;",
            ">;"
        }
    .end annotation
.end field

.field private netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

.field private networkRecvThread:Ljava/lang/Thread;

.field private networkSendThread:Ljava/lang/Thread;

.field private started:Z

.field final synthetic this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

.field private valid:Z

.field private videoBuffersThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;",
            ">;"
        }
    .end annotation
.end field

.field private videoSenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;",
            ">;"
        }
    .end annotation
.end field

.field private videoStarted:Z


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/arrouter/ARRouter;Ljava/lang/String;Ljava/util/List;Ljava/util/List;II)V
    .locals 9
    .param p2, "ip"    # Ljava/lang/String;
    .param p5, "routerToDevicePort"    # I
    .param p6, "deviceToRouterPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p3, "routerToDeviceParams":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;>;"
    .local p4, "deviceToRouterParams":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;>;"
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 1362
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    iput-boolean v8, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->valid:Z

    .line 1340
    iput-boolean v8, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->started:Z

    .line 1341
    iput-boolean v8, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->videoStarted:Z

    .line 1364
    sget-object v6, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 1365
    .local v6, "alErr":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    sget-object v7, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 1367
    .local v7, "netErr":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    iput-boolean v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->valid:Z

    .line 1370
    new-instance v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-direct {v0}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    .line 1371
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ->  Created ARNetworkAlManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->getCId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v0, p2, p5, p6, v3}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->initWifiNetwork(Ljava/lang/String;III)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v6

    .line 1373
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-eq v6, v0, :cond_0

    .line 1375
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkAL error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    iput-boolean v8, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->valid:Z

    .line 1378
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->updateBufferSizes()V

    .line 1380
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->valid:Z

    if-eqz v0, :cond_2

    .line 1382
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-direct {p0, p3}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->listToArray(Ljava/util/List;)[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v3

    invoke-direct {p0, p4}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->listToArray(Ljava/util/List;)[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v4

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter;Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkHandler;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    .line 1383
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ->  Created ARNetworkManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->getCId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->isCorrectlyInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1386
    :cond_1
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network init error"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iput-boolean v8, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->valid:Z

    .line 1395
    :cond_2
    :goto_0
    return-void

    .line 1391
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    iget-object v1, v1, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_sendingRunnable:Lcom/parrot/arsdk/arnetwork/SendingRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->networkSendThread:Ljava/lang/Thread;

    .line 1392
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    iget-object v1, v1, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_receivingRunnable:Lcom/parrot/arsdk/arnetwork/ReceivingRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->networkRecvThread:Ljava/lang/Thread;

    goto :goto_0
.end method

.method private listToArray(Ljava/util/List;)[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;)[",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;"
        }
    .end annotation

    .prologue
    .line 1357
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 1358
    .local v0, "ret":[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    return-object v1
.end method

.method private updateThreadsSenders()V
    .locals 3

    .prologue
    .line 1581
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->buffersThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;

    .line 1583
    .local v0, "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->commandsSenders:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->updateSenders(Ljava/util/List;)V

    goto :goto_0

    .line 1585
    .end local v0    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    :cond_0
    return-void
.end method

.method private updateVideoThreadsSenders()V
    .locals 3

    .prologue
    .line 1630
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->videoBuffersThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;

    .line 1632
    .local v0, "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->videoSenders:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->updateSenders(Ljava/util/List;)V

    goto :goto_0

    .line 1634
    .end local v0    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    :cond_0
    return-void
.end method


# virtual methods
.method public addCommandSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)Z
    .locals 3
    .param p1, "sender"    # Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;

    .prologue
    .line 1540
    const/4 v0, 0x0

    .line 1542
    .local v0, "res":Z
    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->started:Z

    if-eqz v1, :cond_0

    .line 1544
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->commandsSenders:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1546
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->commandsSenders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1548
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->commandsSenders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1549
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->updateThreadsSenders()V

    .line 1551
    const/4 v0, 0x1

    .line 1560
    :cond_0
    :goto_0
    return v0

    .line 1556
    :cond_1
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "commandsSenders is null"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addVideoSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)Z
    .locals 3
    .param p1, "sender"    # Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;

    .prologue
    .line 1589
    const/4 v0, 0x0

    .line 1591
    .local v0, "res":Z
    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->started:Z

    if-eqz v1, :cond_0

    .line 1593
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->videoSenders:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1595
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->videoSenders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1597
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->videoSenders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1598
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->updateVideoThreadsSenders()V

    .line 1600
    const/4 v0, 0x1

    .line 1609
    :cond_0
    :goto_0
    return v0

    .line 1605
    :cond_1
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "videoSenders is null"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public didDisconnect()V
    .locals 2

    .prologue
    .line 1652
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device did disconnect"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$800(Lcom/parrot/arsdk/arrouter/ARRouter;)V

    .line 1654
    return-void
.end method

.method public dispose()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1399
    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->started:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->videoStarted:Z

    if-eqz v1, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return v0

    .line 1401
    :cond_1
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    if-eqz v1, :cond_2

    .line 1403
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->dispose()V

    .line 1404
    iput-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    .line 1405
    iput-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->networkSendThread:Ljava/lang/Thread;

    .line 1406
    iput-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->networkRecvThread:Ljava/lang/Thread;

    .line 1408
    :cond_2
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    if-eqz v1, :cond_3

    .line 1410
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->closeWifiNetwork()Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 1411
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->dispose()V

    .line 1412
    iput-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    .line 1416
    :cond_3
    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->valid:Z

    .line 1418
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 1535
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->valid:Z

    return v0
.end method

.method public removeCommandSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)Z
    .locals 2
    .param p1, "sender"    # Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;

    .prologue
    .line 1565
    const/4 v0, 0x0

    .line 1567
    .local v0, "res":Z
    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->started:Z

    if-eqz v1, :cond_0

    .line 1569
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->commandsSenders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1571
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->updateThreadsSenders()V

    .line 1572
    const/4 v0, 0x1

    .line 1576
    :cond_0
    return v0
.end method

.method public removeVideoSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)Z
    .locals 2
    .param p1, "sender"    # Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;

    .prologue
    .line 1614
    const/4 v0, 0x0

    .line 1616
    .local v0, "res":Z
    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->started:Z

    if-eqz v1, :cond_0

    .line 1618
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->videoSenders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1620
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->updateVideoThreadsSenders()V

    .line 1621
    const/4 v0, 0x1

    .line 1625
    :cond_0
    return v0
.end method

.method public runARCommand(Lcom/parrot/arsdk/arcommands/ARCommand;)V
    .locals 2
    .param p1, "cmd"    # Lcom/parrot/arsdk/arcommands/ARCommand;

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$900(Lcom/parrot/arsdk/arrouter/ARRouter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1000(Lcom/parrot/arsdk/arrouter/ARRouter;)V

    .line 1662
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$902(Lcom/parrot/arsdk/arrouter/ARRouter;Z)Z

    .line 1664
    :cond_0
    return-void
.end method

.method public sendNativeDataToBuffer(Lcom/parrot/arsdk/arsal/ARNativeData;I)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    .locals 4
    .param p1, "data"    # Lcom/parrot/arsdk/arsal/ARNativeData;
    .param p2, "bufferid"    # I

    .prologue
    .line 1639
    sget-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 1641
    .local v0, "err":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    if-eqz v1, :cond_0

    .line 1643
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p2, p1, v2, v3}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->sendData(ILcom/parrot/arsdk/arsal/ARNativeData;Ljava/lang/Object;Z)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    move-result-object v0

    .line 1646
    :cond_0
    return-object v0
.end method

.method public startThreads(Ljava/util/List;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;)Z
    .locals 12
    .param p2, "dispatchFilter"    # Lcom/parrot/arsdk/arcommands/ARCommandsFilter;
    .param p3, "processFilter"    # Lcom/parrot/arsdk/arcommands/ARCommandsFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/parrot/arsdk/arcommands/ARCommandsFilter;",
            "Lcom/parrot/arsdk/arcommands/ARCommandsFilter;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "buffersIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v10, 0x1

    .line 1433
    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->valid:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1449
    :goto_0
    return v1

    .line 1435
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->buffersThreads:Ljava/util/List;

    .line 1437
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->commandsSenders:Ljava/util/List;

    .line 1438
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1440
    .local v9, "i":Ljava/lang/Integer;
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->commandsSenders:Ljava/util/List;

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v5}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$700(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    move-result-object v7

    move-object v5, p2

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter;ILcom/parrot/arsdk/arnetwork/ARNetworkManager;Ljava/util/List;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterRunnableFilterHandler;)V

    .line 1441
    .local v0, "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->buffersThreads:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1442
    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->start()V

    goto :goto_1

    .line 1445
    .end local v0    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    .end local v9    # "i":Ljava/lang/Integer;
    :cond_1
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->networkSendThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1446
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->networkRecvThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1448
    iput-boolean v10, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->started:Z

    move v1, v10

    .line 1449
    goto :goto_0
.end method

.method public startVideoThreads(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "buffersIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    .line 1454
    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->valid:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->started:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v5, 0x0

    .line 1467
    :goto_0
    return v5

    .line 1456
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->videoBuffersThreads:Ljava/util/List;

    .line 1458
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->videoSenders:Ljava/util/List;

    .line 1459
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1461
    .local v6, "i":Ljava/lang/Integer;
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->videoSenders:Ljava/util/List;

    invoke-direct/range {v0 .. v5}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter;ILcom/parrot/arsdk/arnetwork/ARNetworkManager;Ljava/util/List;Z)V

    .line 1462
    .local v0, "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->videoBuffersThreads:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1463
    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->start()V

    goto :goto_1

    .line 1466
    .end local v0    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    .end local v6    # "i":Ljava/lang/Integer;
    :cond_2
    iput-boolean v5, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->videoStarted:Z

    goto :goto_0
.end method

.method public stopThreads()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1492
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->stopVideoThreads()V

    .line 1493
    iget-boolean v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->started:Z

    if-nez v2, :cond_0

    .line 1531
    :goto_0
    return-void

    .line 1495
    :cond_0
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->buffersThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;

    .line 1497
    .local v1, "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->stopThread()V

    goto :goto_1

    .line 1499
    .end local v1    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    :cond_1
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->stop()V

    .line 1500
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->unlock()Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 1503
    :try_start_0
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->buffersThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;

    .line 1505
    .restart local v1    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1508
    .end local v1    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    :catch_0
    move-exception v0

    .line 1510
    .local v0, "ie":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1512
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->buffersThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1516
    :try_start_1
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->networkSendThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 1517
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->networkRecvThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1524
    :goto_3
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->dispose()V

    .line 1525
    iput-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    .line 1526
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->closeWifiNetwork()Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 1527
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->dispose()V

    .line 1528
    iput-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    .line 1530
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->started:Z

    goto :goto_0

    .line 1519
    :catch_1
    move-exception v0

    .line 1521
    .restart local v0    # "ie":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method public stopVideoThreads()V
    .locals 4

    .prologue
    .line 1472
    iget-boolean v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->videoStarted:Z

    if-nez v2, :cond_1

    .line 1488
    :cond_0
    :goto_0
    return-void

    .line 1473
    :cond_1
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->videoBuffersThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;

    .line 1475
    .local v1, "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->stopThread()V

    goto :goto_1

    .line 1479
    .end local v1    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->videoBuffersThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;

    .line 1481
    .restart local v1    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1484
    .end local v1    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    :catch_0
    move-exception v0

    .line 1486
    .local v0, "ie":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateBufferSizes()V
    .locals 3

    .prologue
    .line 1423
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->valid:Z

    if-nez v0, :cond_0

    .line 1429
    :goto_0
    return-void

    .line 1426
    :cond_0
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --> Buffer sizes : SEND="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v2}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$500(Lcom/parrot/arsdk/arrouter/ARRouter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RECV="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v2}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$400(Lcom/parrot/arsdk/arrouter/ARRouter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$500(Lcom/parrot/arsdk/arrouter/ARRouter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->setSendBufferSize(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 1428
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToDevice;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$400(Lcom/parrot/arsdk/arrouter/ARRouter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->setRecvBufferSize(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    goto :goto_0
.end method
