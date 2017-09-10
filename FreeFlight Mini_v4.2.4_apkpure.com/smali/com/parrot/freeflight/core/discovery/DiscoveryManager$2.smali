.class Lcom/parrot/freeflight/core/discovery/DiscoveryManager$2;
.super Landroid/content/BroadcastReceiver;
.source "DiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$2;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$2;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->access$100(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$2;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$2;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->access$100(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getDeviceServicesArray()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->access$202(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;Ljava/util/List;)Ljava/util/List;

    .line 359
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$2;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->access$300(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)V

    .line 361
    :cond_0
    return-void
.end method
