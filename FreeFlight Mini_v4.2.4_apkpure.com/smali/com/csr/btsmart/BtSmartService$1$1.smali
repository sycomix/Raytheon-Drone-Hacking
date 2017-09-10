.class Lcom/csr/btsmart/BtSmartService$1$1;
.super Ljava/lang/Object;
.source "BtSmartService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csr/btsmart/BtSmartService$1;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/csr/btsmart/BtSmartService$1;


# direct methods
.method constructor <init>(Lcom/csr/btsmart/BtSmartService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/csr/btsmart/BtSmartService$1;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/csr/btsmart/BtSmartService$1$1;->this$1:Lcom/csr/btsmart/BtSmartService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService$1$1;->this$1:Lcom/csr/btsmart/BtSmartService$1;

    iget-object v0, v0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v0}, Lcom/csr/btsmart/BtSmartService;->access$100(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService$1$1;->this$1:Lcom/csr/btsmart/BtSmartService$1;

    iget-object v0, v0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v0}, Lcom/csr/btsmart/BtSmartService;->access$100(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 577
    :cond_0
    const-string v0, "BtSmartService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connected and calling discoverServices with delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1$1;->this$1:Lcom/csr/btsmart/BtSmartService$1;

    iget-object v2, v2, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v2}, Lcom/csr/btsmart/BtSmartService;->access$300(Lcom/csr/btsmart/BtSmartService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-void
.end method
