.class Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$3;
.super Ljava/lang/Object;
.source "ARDiscoveryBLEDiscoveryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->notificationBLEServiceDeviceUpDate(Ljava/util/HashMap;)V
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
    .line 573
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$3;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 577
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BLE scan timeout ! clear BLE devices"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$3;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$500(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 580
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$3;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$600(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->broadcastDeviceServiceArrayUpdated()V

    .line 581
    return-void
.end method
