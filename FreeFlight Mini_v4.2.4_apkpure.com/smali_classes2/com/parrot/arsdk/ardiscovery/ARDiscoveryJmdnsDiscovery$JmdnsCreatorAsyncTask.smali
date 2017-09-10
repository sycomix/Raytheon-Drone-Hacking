.class Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;
.super Landroid/os/AsyncTask;
.source "ARDiscoveryJmdnsDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JmdnsCreatorAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;


# direct methods
.method private constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;
    .param p2, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$1;

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;)V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 497
    invoke-virtual {p0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 497
    invoke-virtual {p0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 497
    invoke-virtual {p0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 505
    :try_start_0
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;)Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$300()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2}, Ljavax/jmdns/JmDNS;->create(Ljava/net/InetAddress;)Ljavax/jmdns/JmDNS;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$402(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;Ljavax/jmdns/JmDNS;)Ljavax/jmdns/JmDNS;

    .line 514
    :goto_0
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JmDNS.createed"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    new-instance v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask$1;

    invoke-direct {v2, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask$1;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;)V

    invoke-static {v1, v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$602(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;Ljavax/jmdns/ServiceListener;)Ljavax/jmdns/ServiceListener;

    .line 557
    :goto_1
    const/4 v1, 0x0

    return-object v1

    .line 511
    :cond_0
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    invoke-static {}, Ljavax/jmdns/JmDNS;->create()Ljavax/jmdns/JmDNS;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$402(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;Ljavax/jmdns/JmDNS;)Ljavax/jmdns/JmDNS;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mDNSManager creation failed."

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 551
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$1002(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 594
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$1400(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 596
    .local v0, "devicesService":Ljava/lang/String;
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addServiceListener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$400(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;)Ljavax/jmdns/JmDNS;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 600
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$400(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;)Ljavax/jmdns/JmDNS;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    invoke-static {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$600(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;)Ljavax/jmdns/ServiceListener;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    goto :goto_0

    .line 604
    :cond_0
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mDNSManager is null"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 607
    .end local v0    # "devicesService":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 4
    .param p1, "progress"    # [Ljava/lang/Object;

    .prologue
    .line 562
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onProgressUpdate"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Landroid/util/Pair;

    .line 566
    .local v0, "dataProgress":Landroid/util/Pair;, "Landroid/util/Pair<Ljavax/jmdns/ServiceEvent;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;>;"
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$2;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS:[I

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 585
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error service event status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not known"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :goto_0
    return-void

    .line 570
    :pswitch_0
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ARDISCOVERY_SERVICE_EVENT_STATUS_ADD"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljavax/jmdns/ServiceEvent;

    invoke-static {v2, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$1100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;Ljavax/jmdns/ServiceEvent;)V

    goto :goto_0

    .line 575
    :pswitch_1
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ARDISCOVERY_SERVICE_EVENT_STATUS_RESOLVED"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljavax/jmdns/ServiceEvent;

    invoke-static {v2, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$1200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;Ljavax/jmdns/ServiceEvent;)V

    goto :goto_0

    .line 580
    :pswitch_2
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ARDISCOVERY_SERVICE_EVENT_STATUS_REMOVED"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljavax/jmdns/ServiceEvent;

    invoke-static {v2, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$1300(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;Ljavax/jmdns/ServiceEvent;)V

    goto :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
