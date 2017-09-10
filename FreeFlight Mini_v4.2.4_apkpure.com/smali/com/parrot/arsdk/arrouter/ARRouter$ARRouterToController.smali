.class Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;
.super Ljava/lang/Object;
.source "ARRouter.java"

# interfaces
.implements Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;
.implements Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/ARRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ARRouterToController"
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

.field private netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

.field private networkRecvThread:Ljava/lang/Thread;

.field private networkSendThread:Ljava/lang/Thread;

.field private senders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;",
            ">;"
        }
    .end annotation
.end field

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
    .param p5, "routerToControllerPort"    # I
    .param p6, "controllerToRouterPort"    # I
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
    .local p3, "routerToControllerParams":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;>;"
    .local p4, "controllerToRouterParams":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;>;"
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 1076
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    iput-boolean v8, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->valid:Z

    .line 1054
    iput-boolean v8, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->started:Z

    .line 1055
    iput-boolean v8, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->videoStarted:Z

    .line 1078
    sget-object v6, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 1079
    .local v6, "alErr":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    sget-object v7, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 1081
    .local v7, "netErr":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    iput-boolean v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->valid:Z

    .line 1083
    new-instance v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-direct {v0}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    .line 1084
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

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->getCId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v0, p2, p5, p6, v3}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->initWifiNetwork(Ljava/lang/String;III)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v6

    .line 1086
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-eq v6, v0, :cond_0

    .line 1088
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

    .line 1089
    iput-boolean v8, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->valid:Z

    .line 1091
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->updateBufferSizes()V

    .line 1093
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->valid:Z

    if-eqz v0, :cond_2

    .line 1095
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-direct {p0, p3}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->listToArray(Ljava/util/List;)[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v3

    invoke-direct {p0, p4}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->listToArray(Ljava/util/List;)[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v4

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter;Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkHandler;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    .line 1096
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

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->getCId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->isCorrectlyInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1099
    :cond_1
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network init error"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    iput-boolean v8, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->valid:Z

    .line 1109
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->registerARCommandsListener()V

    .line 1110
    return-void

    .line 1104
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    iget-object v1, v1, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_sendingRunnable:Lcom/parrot/arsdk/arnetwork/SendingRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->networkSendThread:Ljava/lang/Thread;

    .line 1105
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    iget-object v1, v1, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_receivingRunnable:Lcom/parrot/arsdk/arnetwork/ReceivingRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->networkRecvThread:Ljava/lang/Thread;

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
    .line 1071
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 1072
    .local v0, "ret":[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    return-object v1
.end method

.method private updateThreadsSenders()V
    .locals 3

    .prologue
    .line 1283
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->buffersThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;

    .line 1285
    .local v0, "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->senders:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->updateSenders(Ljava/util/List;)V

    goto :goto_0

    .line 1287
    .end local v0    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    :cond_0
    return-void
.end method

.method private updateVideoThreadsSenders()V
    .locals 3

    .prologue
    .line 1308
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->videoBuffersThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;

    .line 1310
    .local v0, "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->videoSenders:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->updateSenders(Ljava/util/List;)V

    goto :goto_0

    .line 1312
    .end local v0    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    :cond_0
    return-void
.end method


# virtual methods
.method public addCommandSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)V
    .locals 1
    .param p1, "sender"    # Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->senders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->senders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1269
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->updateThreadsSenders()V

    .line 1271
    :cond_0
    return-void
.end method

.method public addVideoSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)V
    .locals 1
    .param p1, "sender"    # Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->videoSenders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->videoSenders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1294
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->updateVideoThreadsSenders()V

    .line 1296
    :cond_0
    return-void
.end method

.method public didDisconnect()V
    .locals 2

    .prologue
    .line 1330
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Controller did disconnect"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$600(Lcom/parrot/arsdk/arrouter/ARRouter;)V

    .line 1332
    return-void
.end method

.method public dispose()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1114
    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->started:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->videoStarted:Z

    if-eqz v1, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return v0

    .line 1116
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->unregisterARCommandsListener()V

    .line 1118
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    if-eqz v1, :cond_2

    .line 1120
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->dispose()V

    .line 1121
    iput-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    .line 1122
    iput-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->networkSendThread:Ljava/lang/Thread;

    .line 1123
    iput-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->networkRecvThread:Ljava/lang/Thread;

    .line 1125
    :cond_2
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    if-eqz v1, :cond_3

    .line 1127
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->closeWifiNetwork()Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 1128
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->dispose()V

    .line 1129
    iput-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    .line 1132
    :cond_3
    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->valid:Z

    .line 1134
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 1260
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->valid:Z

    return v0
.end method

.method protected registerARCommandsListener()V
    .locals 0

    .prologue
    .line 1149
    return-void
.end method

.method public removeCommandSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)V
    .locals 1
    .param p1, "sender"    # Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->senders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->updateThreadsSenders()V

    .line 1279
    :cond_0
    return-void
.end method

.method public removeVideoSender(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;)V
    .locals 1
    .param p1, "sender"    # Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->videoSenders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->updateVideoThreadsSenders()V

    .line 1304
    :cond_0
    return-void
.end method

.method public sendNativeDataToBuffer(Lcom/parrot/arsdk/arsal/ARNativeData;I)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    .locals 4
    .param p1, "data"    # Lcom/parrot/arsdk/arsal/ARNativeData;
    .param p2, "bufferid"    # I

    .prologue
    .line 1317
    sget-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 1319
    .local v0, "err":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    if-eqz v1, :cond_0

    .line 1321
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p2, p1, v2, v3}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->sendData(ILcom/parrot/arsdk/arsal/ARNativeData;Ljava/lang/Object;Z)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    move-result-object v0

    .line 1324
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
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 1157
    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->valid:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1172
    :goto_0
    return v1

    .line 1159
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->buffersThreads:Ljava/util/List;

    .line 1160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->senders:Ljava/util/List;

    .line 1161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1163
    .local v9, "i":Ljava/lang/Integer;
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->senders:Ljava/util/List;

    move-object v5, p2

    move-object v6, p3

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter;ILcom/parrot/arsdk/arnetwork/ARNetworkManager;Ljava/util/List;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterRunnableFilterHandler;)V

    .line 1164
    .local v0, "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->buffersThreads:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->start()V

    goto :goto_1

    .line 1168
    .end local v0    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    .end local v9    # "i":Ljava/lang/Integer;
    :cond_1
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->networkSendThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1169
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->networkRecvThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1171
    iput-boolean v10, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->started:Z

    move v1, v10

    .line 1172
    goto :goto_0
.end method

.method public startVideoThreads(Ljava/util/List;)Z
    .locals 9
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
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1177
    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->valid:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->started:Z

    if-nez v1, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return v5

    .line 1179
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->videoBuffersThreads:Ljava/util/List;

    .line 1180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->videoSenders:Ljava/util/List;

    .line 1181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1183
    .local v6, "i":Ljava/lang/Integer;
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->videoSenders:Ljava/util/List;

    invoke-direct/range {v0 .. v5}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter;ILcom/parrot/arsdk/arnetwork/ARNetworkManager;Ljava/util/List;Z)V

    .line 1184
    .local v0, "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->videoBuffersThreads:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1185
    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->start()V

    goto :goto_1

    .line 1188
    .end local v0    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    .end local v6    # "i":Ljava/lang/Integer;
    :cond_2
    iput-boolean v7, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->videoStarted:Z

    move v5, v7

    .line 1189
    goto :goto_0
.end method

.method public stopThreads()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1217
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->stopVideoThreads()V

    .line 1218
    iget-boolean v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->started:Z

    if-nez v2, :cond_0

    .line 1256
    :goto_0
    return-void

    .line 1220
    :cond_0
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->buffersThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;

    .line 1222
    .local v1, "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->stopThread()V

    goto :goto_1

    .line 1224
    .end local v1    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    :cond_1
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->stop()V

    .line 1225
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->unlock()Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 1228
    :try_start_0
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->buffersThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;

    .line 1230
    .restart local v1    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1233
    .end local v1    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    :catch_0
    move-exception v0

    .line 1235
    .local v0, "ie":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1237
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->buffersThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1241
    :try_start_1
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->networkSendThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 1242
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->networkRecvThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1249
    :goto_3
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->dispose()V

    .line 1250
    iput-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    .line 1251
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->closeWifiNetwork()Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 1252
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->dispose()V

    .line 1253
    iput-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    .line 1255
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->started:Z

    goto :goto_0

    .line 1244
    :catch_1
    move-exception v0

    .line 1246
    .restart local v0    # "ie":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method public stopVideoThreads()V
    .locals 4

    .prologue
    .line 1194
    iget-boolean v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->videoStarted:Z

    if-nez v2, :cond_0

    .line 1213
    :goto_0
    return-void

    .line 1196
    :cond_0
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->videoBuffersThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;

    .line 1198
    .local v1, "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->stopThread()V

    goto :goto_1

    .line 1202
    .end local v1    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->videoBuffersThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;

    .line 1204
    .restart local v1    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1207
    .end local v1    # "t":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
    :catch_0
    move-exception v0

    .line 1209
    .local v0, "ie":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1212
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->videoStarted:Z

    goto :goto_0
.end method

.method protected unregisterARCommandsListener()V
    .locals 0

    .prologue
    .line 1153
    return-void
.end method

.method public updateBufferSizes()V
    .locals 3

    .prologue
    .line 1139
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->valid:Z

    if-nez v0, :cond_0

    .line 1145
    :goto_0
    return-void

    .line 1142
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

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v2}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$400(Lcom/parrot/arsdk/arrouter/ARRouter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RECV="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v2}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$500(Lcom/parrot/arsdk/arrouter/ARRouter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$400(Lcom/parrot/arsdk/arrouter/ARRouter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->setSendBufferSize(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 1144
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$500(Lcom/parrot/arsdk/arrouter/ARRouter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->setRecvBufferSize(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    goto :goto_0
.end method
