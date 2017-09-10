.class Lcom/parrot/freeflight/core/connection/WifiReconnection$1;
.super Landroid/os/Handler;
.source "WifiReconnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/connection/WifiReconnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/connection/WifiReconnection;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/connection/WifiReconnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/connection/WifiReconnection;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$1;->this$0:Lcom/parrot/freeflight/core/connection/WifiReconnection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$1;->this$0:Lcom/parrot/freeflight/core/connection/WifiReconnection;

    invoke-static {v0}, Lcom/parrot/freeflight/core/connection/WifiReconnection;->access$000(Lcom/parrot/freeflight/core/connection/WifiReconnection;)Lcom/parrot/freeflight/core/connection/WifiReconnection$IListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-interface {v1, v0}, Lcom/parrot/freeflight/core/connection/WifiReconnection$IListener;->onWifiReconnected(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 83
    return-void
.end method
