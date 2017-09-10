.class Lcom/parrot/arsdk/arsal/ARSALBLEManager$2;
.super Ljava/lang/Object;
.source "ARSALBLEManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arsal/ARSALBLEManager;->connect(Landroid/bluetooth/BluetoothDevice;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
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
    .line 382
    iput-object p1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$2;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$2;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$800(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$2;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$202(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$2;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$200(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$2;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$900(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)V

    .line 396
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$2;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$200(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 397
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$2;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$202(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    goto :goto_0
.end method
