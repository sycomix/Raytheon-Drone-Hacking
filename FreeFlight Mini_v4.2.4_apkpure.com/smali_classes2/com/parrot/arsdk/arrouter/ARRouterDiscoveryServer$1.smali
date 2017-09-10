.class Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer$1;
.super Ljava/lang/Object;
.source "ARRouterDiscoveryServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;

.field final synthetic val$port:I


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer$1;->this$0:Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;

    iput p2, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer$1;->val$port:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 48
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start listening for devices on port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer$1;->val$port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer$1;->this$0:Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;

    iget v2, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer$1;->val$port:I

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->DeviceListeningLoop(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v0

    .line 50
    .local v0, "err":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    if-eq v0, v1, :cond_0

    .line 52
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while listening for devices : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "end loop ..."

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
