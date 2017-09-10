.class Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery$1;
.super Ljava/lang/Object;
.source "ARDiscoveryUsbDiscovery.java"

# interfaces
.implements Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    new-instance v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    new-instance v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    invoke-direct {v2, p3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p1, v2, p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->access$002(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 87
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->access$100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->access$100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->broadcastDeviceServiceArrayUpdated()V

    .line 90
    :cond_0
    return-void
.end method

.method public onDeviceRemoved()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->access$002(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 95
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->access$100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->access$100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->broadcastDeviceServiceArrayUpdated()V

    .line 98
    :cond_0
    return-void
.end method
