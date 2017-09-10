.class Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "ARDiscoveryBLEDiscoveryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;-><init>(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 95
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastReceiver onReceive"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_STATE_CHANGED"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 106
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 147
    .end local v0    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 109
    .restart local v0    # "state":I
    :pswitch_0
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$300(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)V

    .line 112
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$402(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 113
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$202(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$500(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 122
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$600(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$600(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->broadcastDeviceServiceArrayUpdated()V

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$400(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$202(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$700(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)V

    .line 135
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$500(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 138
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$600(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$600(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->broadcastDeviceServiceArrayUpdated()V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
