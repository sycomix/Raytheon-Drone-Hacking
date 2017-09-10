.class Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "McuUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/update/McuUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteBluetoothGattCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight3/update/McuUpdateManager;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight3/update/McuUpdateManager;Lcom/parrot/freeflight3/update/McuUpdateManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;
    .param p2, "x1"    # Lcom/parrot/freeflight3/update/McuUpdateManager$1;

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;-><init>(Lcom/parrot/freeflight3/update/McuUpdateManager;)V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 8
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v5, 0x0

    .line 272
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-static {}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1300()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    sget-object v3, Lcom/parrot/freeflight3/update/McuUpdateManager$4;->$SwitchMap$com$parrot$freeflight3$update$McuUpdateManager$State:[I

    iget-object v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v4}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$500(Lcom/parrot/freeflight3/update/McuUpdateManager;)Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 318
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 276
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 277
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    aget-byte v3, v3, v0

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_1

    .line 278
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v3}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$700(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$3;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$3;-><init>(Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    sget-object v4, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->DELAY_SEND_LENGTH_CRC:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    invoke-static {v3, v4}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$502(Lcom/parrot/freeflight3/update/McuUpdateManager;Lcom/parrot/freeflight3/update/McuUpdateManager$State;)Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 276
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 293
    .end local v0    # "i":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_0

    .line 294
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    aget-byte v4, v4, v5

    invoke-static {v3, v4}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1402(Lcom/parrot/freeflight3/update/McuUpdateManager;B)B

    .line 295
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    sget-object v4, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->CHECK_MSB_CRC:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    invoke-static {v3, v4}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$502(Lcom/parrot/freeflight3/update/McuUpdateManager;Lcom/parrot/freeflight3/update/McuUpdateManager$State;)Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    goto :goto_0

    .line 300
    :pswitch_3
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_0

    .line 301
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    aget-byte v2, v3, v5

    .line 303
    .local v2, "remoteMsbCrc":B
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v3}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1400(Lcom/parrot/freeflight3/update/McuUpdateManager;)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v2, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int v1, v3, v4

    .line 304
    .local v1, "remoteCrc":I
    const-string v3, "McuUpdateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCharacteristicChanged: remoteCrc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v3, "McuUpdateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCharacteristicChanged: mCrc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v5}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1500(Lcom/parrot/freeflight3/update/McuUpdateManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v3}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1500(Lcom/parrot/freeflight3/update/McuUpdateManager;)I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 309
    const-string v3, "McuUpdateManager"

    const-string v4, "succes"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    sget-object v4, Lcom/parrot/freeflight3/update/UpdateState;->FINISH:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-static {v3, v4}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$600(Lcom/parrot/freeflight3/update/McuUpdateManager;Lcom/parrot/freeflight3/update/UpdateState;)V

    goto/16 :goto_0

    .line 312
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    sget-object v4, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-static {v3, v4}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$600(Lcom/parrot/freeflight3/update/McuUpdateManager;Lcom/parrot/freeflight3/update/UpdateState;)V

    goto/16 :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 241
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 245
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-static {}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1100()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager$4;->$SwitchMap$com$parrot$freeflight3$update$McuUpdateManager$State:[I

    iget-object v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$500(Lcom/parrot/freeflight3/update/McuUpdateManager;)Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 248
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    sget-object v1, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->MAGIC_CODE:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    invoke-static {v0, v1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$502(Lcom/parrot/freeflight3/update/McuUpdateManager;Lcom/parrot/freeflight3/update/McuUpdateManager$State;)Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 249
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$700(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1200(Lcom/parrot/freeflight3/update/McuUpdateManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 256
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    sget-object v1, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->UPLOAD_FIRMWARE:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    invoke-static {v0, v1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$502(Lcom/parrot/freeflight3/update/McuUpdateManager;Lcom/parrot/freeflight3/update/McuUpdateManager$State;)Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 257
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1000(Lcom/parrot/freeflight3/update/McuUpdateManager;)V

    goto :goto_0

    .line 261
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1000(Lcom/parrot/freeflight3/update/McuUpdateManager;)V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 186
    const-string v0, "McuUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChange() called with: gatt = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], status = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], newState = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v0, "McuUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChange() mBluetoothGatt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v2}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$100(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$700(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$1;-><init>(Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;Landroid/bluetooth/BluetoothGatt;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 322
    const-string v0, "McuUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDescriptorRead() called with: gatt = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], descriptor = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], status = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 327
    const-string v0, "McuUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDescriptorWrite() called with: gatt = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], descriptor = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], status = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v0, "McuUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicWrite: characteristic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-static {}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1600()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    sget-object v1, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->NOTIFICATION_ENABLED:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    invoke-static {v0, v1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$502(Lcom/parrot/freeflight3/update/McuUpdateManager;Lcom/parrot/freeflight3/update/McuUpdateManager$State;)Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 332
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1000(Lcom/parrot/freeflight3/update/McuUpdateManager;)V

    .line 334
    :cond_0
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    .line 343
    const-string v0, "McuUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReadRemoteRssi() called with: gatt = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], rssi = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], status = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 338
    const-string v0, "McuUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReliableWriteCompleted() called with: gatt = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], status = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 222
    const-string v0, "McuUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServicesDiscovered() called with: gatt = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], status = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-nez p2, :cond_0

    .line 224
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$700(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback$2;-><init>(Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    :cond_0
    return-void
.end method
