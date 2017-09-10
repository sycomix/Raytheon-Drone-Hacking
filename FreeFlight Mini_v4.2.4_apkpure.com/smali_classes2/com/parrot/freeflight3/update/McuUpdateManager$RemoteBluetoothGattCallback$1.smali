.class Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$1;
.super Ljava/lang/Object;
.source "McuUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic val$newState:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$1;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    iput-object p2, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iput p3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$1;->val$newState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 195
    iget-object v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$1;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    iget-object v1, v1, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$100(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    if-eq v1, v2, :cond_1

    .line 196
    const-string v1, "McuUpdateManager"

    const-string v2, "onConnectionStateChange: bad gatt"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$1;->val$newState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 201
    const-string v1, "McuUpdateManager"

    const-string v2, "Connected to GATT server."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$1;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    iget-object v1, v1, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    sget-object v2, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->START_OTA:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    invoke-static {v1, v2}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$502(Lcom/parrot/freeflight3/update/McuUpdateManager;Lcom/parrot/freeflight3/update/McuUpdateManager$State;)Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 204
    iget-object v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$1;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    iget-object v1, v1, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$100(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v0

    .line 205
    .local v0, "started":Z
    const-string v1, "McuUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to start service mDiscovery:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v1, "McuUpdateManager"

    const-string v2, "onConnectionStateChange STATE_CONNECTED "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    .end local v0    # "started":Z
    :cond_2
    iget v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$1;->val$newState:I

    if-nez v1, :cond_0

    .line 209
    const-string v1, "McuUpdateManager"

    const-string v2, "onConnectionStateChange STATE_DISCONNECTED "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$1;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    iget-object v1, v1, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$500(Lcom/parrot/freeflight3/update/McuUpdateManager;)Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    move-result-object v1

    sget-object v2, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->CHECK_MSB_CRC:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$1;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    iget-object v1, v1, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$500(Lcom/parrot/freeflight3/update/McuUpdateManager;)Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    move-result-object v1

    sget-object v2, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->START_OTA:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    if-eq v1, v2, :cond_0

    .line 212
    iget-object v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$1;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    iget-object v1, v1, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    sget-object v2, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-static {v1, v2}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$600(Lcom/parrot/freeflight3/update/McuUpdateManager;Lcom/parrot/freeflight3/update/UpdateState;)V

    goto :goto_0
.end method
