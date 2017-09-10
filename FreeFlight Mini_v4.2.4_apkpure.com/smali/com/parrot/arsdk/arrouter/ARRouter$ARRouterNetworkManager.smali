.class Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;
.super Lcom/parrot/arsdk/arnetwork/ARNetworkManager;
.source "ARRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/ARRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ARRouterNetworkManager"
.end annotation


# instance fields
.field private handler:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkHandler;

.field final synthetic this$0:Lcom/parrot/arsdk/arrouter/ARRouter;


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/arrouter/ARRouter;Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkHandler;)V
    .locals 1
    .param p2, "osSpecificManager"    # Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;
    .param p3, "inputParamArray"    # [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    .param p4, "outputParamArray"    # [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    .param p5, "netHandler"    # Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkHandler;

    .prologue
    .line 2329
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    .line 2330
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;-><init>(Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;I)V

    .line 2331
    iput-object p5, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;->handler:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkHandler;

    .line 2332
    return-void
.end method

.method static synthetic access$2700(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;)Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkHandler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;->handler:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkHandler;

    return-object v0
.end method


# virtual methods
.method public onCallback(ILcom/parrot/arsdk/arsal/ARNativeData;Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_STATUS_ENUM;Ljava/lang/Object;)Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .locals 1
    .param p1, "IoBufferId"    # I
    .param p2, "data"    # Lcom/parrot/arsdk/arsal/ARNativeData;
    .param p3, "status"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_STATUS_ENUM;
    .param p4, "customData"    # Ljava/lang/Object;

    .prologue
    .line 2336
    sget-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    return-object v0
.end method

.method public onDisconnect(Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;)V
    .locals 2
    .param p1, "alManager"    # Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    .prologue
    .line 2341
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager$1;

    invoke-direct {v1, p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager$1;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2349
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2350
    return-void
.end method
