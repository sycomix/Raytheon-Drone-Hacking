.class Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask$1;
.super Ljava/lang/Object;
.source "ARDiscoveryJmdnsDiscovery.java"

# interfaces
.implements Ljavax/jmdns/ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask$1;->this$1:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 4
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 522
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service Added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;->ARDISCOVERY_SERVICE_EVENT_STATUS_ADD:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 525
    .local v0, "dataProgress":Landroid/util/Pair;, "Landroid/util/Pair<Ljavax/jmdns/ServiceEvent;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;>;"
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask$1;->this$1:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->access$700(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;[Ljava/lang/Object;)V

    .line 526
    return-void
.end method

.method public serviceRemoved(Ljavax/jmdns/ServiceEvent;)V
    .locals 4
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 531
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;->ARDISCOVERY_SERVICE_EVENT_STATUS_REMOVED:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 534
    .local v0, "dataProgress":Landroid/util/Pair;, "Landroid/util/Pair<Ljavax/jmdns/ServiceEvent;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;>;"
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask$1;->this$1:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->access$800(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;[Ljava/lang/Object;)V

    .line 535
    return-void
.end method

.method public serviceResolved(Ljavax/jmdns/ServiceEvent;)V
    .locals 4
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 540
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service resolved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;->ARDISCOVERY_SERVICE_EVENT_STATUS_RESOLVED:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 543
    .local v0, "dataProgress":Landroid/util/Pair;, "Landroid/util/Pair<Ljavax/jmdns/ServiceEvent;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;>;"
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask$1;->this$1:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->access$900(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;[Ljava/lang/Object;)V

    .line 544
    return-void
.end method
