.class Lcom/parrot/arsdk/arsal/ARSALBLEManager$3;
.super Ljava/lang/Object;
.source "ARSALBLEManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arsal/ARSALBLEManager;->disconnectGatt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$3;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 413
    const/4 v1, 0x1

    .line 414
    .local v1, "manualDisconnectGatt":Z
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$3;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v2}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1000(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 416
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$3;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v2}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$800(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 417
    .local v0, "gatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$3;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v2}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1000(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 419
    const/4 v1, 0x0

    .line 420
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 423
    .end local v0    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :cond_0
    if-eqz v1, :cond_1

    .line 424
    invoke-static {}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect gatt manually "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$3;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v4}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1000(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$3;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v4}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$800(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$3;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v2}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1100(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 427
    :cond_1
    return-void
.end method
