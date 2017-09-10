.class Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection$1;
.super Ljava/lang/Object;
.source "ARRouterDiscoveryConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection$1;->this$0:Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 40
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected ..."

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection$1;->this$0:Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;

    check-cast p2, Lcom/parrot/arsdk/arrouter/ARRouter$ARBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/parrot/arsdk/arrouter/ARRouter$ARBinder;->getService()Lcom/parrot/arsdk/arrouter/ARRouter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->access$102(Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter;

    .line 43
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection$1;->this$0:Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->access$200(Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 44
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 35
    return-void
.end method
