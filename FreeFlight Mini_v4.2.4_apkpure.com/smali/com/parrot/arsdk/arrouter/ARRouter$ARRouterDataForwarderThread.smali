.class Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;
.super Ljava/lang/Thread;
.source "ARRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/ARRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ARRouterDataForwarderThread"
.end annotation


# static fields
.field private static final arRouterMaxCommandSize:I = 0x20000


# instance fields
.field private callback:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterRunnableFilterHandler;

.field private dispatchFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

.field private id:I

.field private isVideo:Z

.field private netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

.field private processFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

.field private runnableFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

.field private running:Z

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

.field private sendersTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/arsdk/arrouter/ARRouter;


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/arrouter/ARRouter;ILcom/parrot/arsdk/arnetwork/ARNetworkManager;Ljava/util/List;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterRunnableFilterHandler;)V
    .locals 1
    .param p2, "id"    # I
    .param p3, "netManager"    # Lcom/parrot/arsdk/arnetwork/ARNetworkManager;
    .param p5, "dispatchFilter"    # Lcom/parrot/arsdk/arcommands/ARCommandsFilter;
    .param p6, "processFilter"    # Lcom/parrot/arsdk/arcommands/ARCommandsFilter;
    .param p7, "runnableFilter"    # Lcom/parrot/arsdk/arcommands/ARCommandsFilter;
    .param p8, "callback"    # Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterRunnableFilterHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkManager;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;",
            ">;",
            "Lcom/parrot/arsdk/arcommands/ARCommandsFilter;",
            "Lcom/parrot/arsdk/arcommands/ARCommandsFilter;",
            "Lcom/parrot/arsdk/arcommands/ARCommandsFilter;",
            "Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterRunnableFilterHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2376
    .local p4, "senders":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;>;"
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    .line 2377
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->running:Z

    .line 2360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->isVideo:Z

    .line 2378
    iput p2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->id:I

    .line 2379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->senders:Ljava/util/List;

    .line 2380
    iput-object p3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    .line 2381
    iput-object p5, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->dispatchFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    .line 2382
    iput-object p6, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->processFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    .line 2383
    iput-object p7, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->runnableFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    .line 2384
    iput-object p8, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->callback:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterRunnableFilterHandler;

    .line 2385
    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/arrouter/ARRouter;ILcom/parrot/arsdk/arnetwork/ARNetworkManager;Ljava/util/List;Z)V
    .locals 9
    .param p2, "id"    # I
    .param p3, "netManager"    # Lcom/parrot/arsdk/arnetwork/ARNetworkManager;
    .param p5, "isVideo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkManager;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p4, "senders":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;>;"
    const/4 v5, 0x0

    .line 2371
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter;ILcom/parrot/arsdk/arnetwork/ARNetworkManager;Ljava/util/List;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;Lcom/parrot/arsdk/arcommands/ARCommandsFilter;Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterRunnableFilterHandler;)V

    .line 2372
    iput-boolean p5, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->isVideo:Z

    .line 2373
    return-void
.end method

.method private processRunnableFilter(Lcom/parrot/arsdk/arcommands/ARCommand;)V
    .locals 2
    .param p1, "cmd"    # Lcom/parrot/arsdk/arcommands/ARCommand;

    .prologue
    .line 2389
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->runnableFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->callback:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterRunnableFilterHandler;

    if-eqz v1, :cond_0

    .line 2391
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->runnableFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    invoke-virtual {v1, p1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->filterCommand(Lcom/parrot/arsdk/arcommands/ARCommand;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    move-result-object v0

    .line 2392
    .local v0, "val":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ARCOMMANDS_FILTER_STATUS_ALLOWED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    if-ne v0, v1, :cond_0

    .line 2394
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->callback:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterRunnableFilterHandler;

    invoke-interface {v1, p1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterRunnableFilterHandler;->runARCommand(Lcom/parrot/arsdk/arcommands/ARCommand;)V

    .line 2397
    .end local v0    # "val":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;
    :cond_0
    return-void
.end method

.method private shouldDispatchCommand(Lcom/parrot/arsdk/arcommands/ARCommand;)Z
    .locals 4
    .param p1, "cmd"    # Lcom/parrot/arsdk/arcommands/ARCommand;

    .prologue
    .line 2401
    const/4 v0, 0x1

    .line 2402
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->dispatchFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    if-eqz v2, :cond_0

    .line 2404
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->dispatchFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    invoke-virtual {v2, p1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->filterCommand(Lcom/parrot/arsdk/arcommands/ARCommand;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    move-result-object v1

    .line 2405
    .local v1, "val":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;
    sget-object v2, Lcom/parrot/arsdk/arrouter/ARRouter$3;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_FILTER_STATUS_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2414
    const/4 v0, 0x0

    .line 2418
    .end local v1    # "val":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;
    :cond_0
    :goto_0
    return v0

    .line 2409
    .restart local v1    # "val":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;
    :pswitch_0
    const/4 v0, 0x1

    .line 2410
    goto :goto_0

    .line 2405
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private shouldProcessCommand(Lcom/parrot/arsdk/arcommands/ARCommand;)Z
    .locals 4
    .param p1, "cmd"    # Lcom/parrot/arsdk/arcommands/ARCommand;

    .prologue
    .line 2423
    const/4 v0, 0x0

    .line 2424
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->processFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    if-eqz v2, :cond_0

    .line 2426
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->processFilter:Lcom/parrot/arsdk/arcommands/ARCommandsFilter;

    invoke-virtual {v2, p1}, Lcom/parrot/arsdk/arcommands/ARCommandsFilter;->filterCommand(Lcom/parrot/arsdk/arcommands/ARCommand;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;

    move-result-object v1

    .line 2427
    .local v1, "val":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;
    sget-object v2, Lcom/parrot/arsdk/arrouter/ARRouter$3;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_FILTER_STATUS_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2436
    const/4 v0, 0x0

    .line 2440
    .end local v1    # "val":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;
    :cond_0
    :goto_0
    return v0

    .line 2430
    .restart local v1    # "val":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FILTER_STATUS_ENUM;
    :pswitch_0
    const/4 v0, 0x1

    .line 2431
    goto :goto_0

    .line 2427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2451
    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 2452
    .local v2, "netError":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    const/high16 v5, 0x20000

    invoke-direct {v0, v5}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>(I)V

    .line 2453
    .local v0, "data":Lcom/parrot/arsdk/arcommands/ARCommand;
    :cond_0
    iget-boolean v5, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->running:Z

    if-eqz v5, :cond_5

    .line 2455
    iget-object v5, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    iget v6, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->id:I

    const/16 v7, 0x3e8

    invoke-virtual {v5, v6, v0, v7}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->readDataWithTimeout(ILcom/parrot/arsdk/arsal/ARNativeData;I)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    move-result-object v2

    .line 2457
    sget-object v5, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    if-ne v2, v5, :cond_0

    .line 2459
    iget-object v5, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->sendersTemp:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 2461
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->sendersTemp:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->senders:Ljava/util/List;

    .line 2462
    iput-object v9, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->sendersTemp:Ljava/util/List;

    .line 2465
    :cond_1
    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->processRunnableFilter(Lcom/parrot/arsdk/arcommands/ARCommand;)V

    .line 2467
    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->shouldProcessCommand(Lcom/parrot/arsdk/arcommands/ARCommand;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2469
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->decode()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DECODER_ERROR_ENUM;

    .line 2472
    :cond_2
    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->shouldDispatchCommand(Lcom/parrot/arsdk/arcommands/ARCommand;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2474
    iget-object v5, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->senders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;

    .line 2476
    .local v4, "sender":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;
    iget v6, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->id:I

    invoke-interface {v4, v0, v6}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;->sendNativeDataToBuffer(Lcom/parrot/arsdk/arsal/ARNativeData;I)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    move-result-object v1

    .line 2477
    .local v1, "err":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    sget-object v6, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    if-eq v1, v6, :cond_3

    .line 2479
    sget-object v6, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_ID_UNKNOWN:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    if-ne v1, v6, :cond_4

    .line 2481
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not send cmd :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bufferid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " err:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2482
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "remove the current sender of the sender list"

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->senders:Ljava/util/List;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2484
    .local v3, "newSenders":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;>;"
    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2485
    invoke-virtual {p0, v3}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->updateSenders(Ljava/util/List;)V

    goto :goto_0

    .line 2489
    .end local v3    # "newSenders":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;>;"
    :cond_4
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not send cmd :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bufferid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " err:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | sending to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2497
    .end local v1    # "err":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    .end local v4    # "sender":Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;
    :cond_5
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2498
    iput-object v9, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->senders:Ljava/util/List;

    .line 2499
    iput-object v9, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    .line 2500
    return-void
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 2504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->running:Z

    .line 2505
    return-void
.end method

.method public updateSenders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2445
    .local p1, "senders":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterCommandsSender;>;"
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterDataForwarderThread;->sendersTemp:Ljava/util/List;

    .line 2446
    return-void
.end method
