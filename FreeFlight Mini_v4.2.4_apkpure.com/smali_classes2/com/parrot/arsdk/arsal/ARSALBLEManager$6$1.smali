.class Lcom/parrot/arsdk/arsal/ARSALBLEManager$6$1;
.super Ljava/lang/Object;
.source "ARSALBLEManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6$1;->this$1:Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;

    iput-object p2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6$1;->this$1:Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;

    iget-object v0, v0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$802(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 601
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6$1;->this$1:Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;

    iget-object v0, v0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1502(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Z)Z

    .line 602
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6$1;->this$1:Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;

    iget-object v0, v0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$702(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 605
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6$1;->this$1:Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;

    iget-object v0, v0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1700(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 607
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6$1;->this$1:Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;

    iget-object v0, v0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1800(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 608
    return-void
.end method
