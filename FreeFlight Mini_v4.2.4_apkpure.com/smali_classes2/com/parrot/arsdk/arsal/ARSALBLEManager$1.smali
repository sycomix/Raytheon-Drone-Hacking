.class Lcom/parrot/arsdk/arsal/ARSALBLEManager$1;
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
    .line 332
    iput-object p1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$1;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 335
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$1;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$1;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$500(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$1;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v2}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$300(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$1;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v4}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$400(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$202(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 336
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$1;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$200(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-nez v0, :cond_0

    .line 338
    invoke-static {}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect (connectionGatt == null)"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$1;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_NOT_CONNECTED:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$702(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 342
    :cond_0
    return-void
.end method
