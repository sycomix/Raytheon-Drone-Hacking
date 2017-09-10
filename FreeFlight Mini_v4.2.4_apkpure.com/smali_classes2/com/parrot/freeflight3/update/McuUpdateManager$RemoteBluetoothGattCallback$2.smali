.class Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$2;
.super Ljava/lang/Object;
.source "McuUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$2;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$2;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    iget-object v0, v0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    iget-object v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$2;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    iget-object v1, v1, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$100(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    sget-object v2, Lcom/parrot/freeflight3/update/McuUpdateManager;->UPDATE_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$802(Lcom/parrot/freeflight3/update/McuUpdateManager;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattService;

    .line 229
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$2;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    iget-object v0, v0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$800(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$2;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    iget-object v0, v0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$900(Lcom/parrot/freeflight3/update/McuUpdateManager;)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$2;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    iget-object v0, v0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1000(Lcom/parrot/freeflight3/update/McuUpdateManager;)V

    goto :goto_0
.end method
