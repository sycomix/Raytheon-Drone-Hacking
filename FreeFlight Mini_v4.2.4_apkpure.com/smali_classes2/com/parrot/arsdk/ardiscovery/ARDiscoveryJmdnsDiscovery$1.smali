.class Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$1;
.super Landroid/content/BroadcastReceiver;
.source "ARDiscoveryJmdnsDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;-><init>(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->access$000(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;)V

    .line 138
    :cond_0
    return-void
.end method
