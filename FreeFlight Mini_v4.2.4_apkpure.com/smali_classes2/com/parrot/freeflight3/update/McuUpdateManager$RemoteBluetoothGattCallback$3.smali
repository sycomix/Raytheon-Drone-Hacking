.class Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$3;
.super Ljava/lang/Object;
.source "McuUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
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
    .line 278
    iput-object p1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$3;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$3;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    iget-object v0, v0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$500(Lcom/parrot/freeflight3/update/McuUpdateManager;)Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->DELAY_SEND_LENGTH_CRC:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$3;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    iget-object v0, v0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    sget-object v1, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->SEND_LENGTH_CRC:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    invoke-static {v0, v1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$502(Lcom/parrot/freeflight3/update/McuUpdateManager;Lcom/parrot/freeflight3/update/McuUpdateManager$State;)Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 283
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$3;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    iget-object v0, v0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1000(Lcom/parrot/freeflight3/update/McuUpdateManager;)V

    .line 285
    :cond_0
    return-void
.end method
