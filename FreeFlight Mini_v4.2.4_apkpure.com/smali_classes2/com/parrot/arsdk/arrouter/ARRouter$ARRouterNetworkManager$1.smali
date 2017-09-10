.class Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager$1;
.super Ljava/lang/Object;
.source "ARRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;->onDisconnect(Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;

    .prologue
    .line 2342
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager$1;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2346
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager$1;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;->access$2700(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkManager;)Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterNetworkHandler;->didDisconnect()V

    .line 2347
    return-void
.end method
