.class Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "ARSALBLEManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arsal/ARSALBLEManager;
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
    .line 572
    iput-object p1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 13
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v12, 0x0

    .line 710
    const/4 v1, 0x0

    .line 712
    .local v1, "foundNotification":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;
    iget-object v8, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v8}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$2300(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 713
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 715
    .local v2, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v9}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$2300(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;

    .line 717
    .local v5, "notification":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;
    iget-object v9, v5, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->characteristics:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 719
    .local v0, "characteristicItem":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 721
    move-object v1, v5

    .line 726
    .end local v0    # "characteristicItem":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_2
    if-eqz v1, :cond_0

    .line 732
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "notification":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;
    :cond_3
    if-eqz v1, :cond_4

    .line 734
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v7

    .line 735
    .local v7, "value":[B
    const/4 v4, 0x0

    .line 736
    .local v4, "newValue":[B
    if-eqz v7, :cond_5

    .line 738
    array-length v8, v7

    new-array v4, v8, [B

    .line 739
    array-length v8, v7

    invoke-static {v7, v12, v4, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    :goto_0
    new-instance v6, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;

    iget-object v8, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-direct {v6, v8, p2, v4}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;-><init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 746
    .local v6, "notificationData":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
    invoke-virtual {v1, v6}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->addNotification(Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;)V

    .line 747
    invoke-virtual {v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->signalNotification()V

    .line 749
    .end local v4    # "newValue":[B
    .end local v6    # "notificationData":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
    .end local v7    # "value":[B
    :cond_4
    return-void

    .line 743
    .restart local v4    # "newValue":[B
    .restart local v7    # "value":[B
    :cond_5
    new-array v4, v12, [B

    goto :goto_0
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 674
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 755
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1800(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 756
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 576
    invoke-static {}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChange : status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    if-nez p3, :cond_0

    .line 580
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$800(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$800(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1502(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Z)Z

    .line 583
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1600(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)V

    .line 592
    :cond_0
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 650
    invoke-static {}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :goto_1
    return-void

    .line 587
    :cond_1
    invoke-static {}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnection of another gatt"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_0

    .line 595
    :sswitch_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 597
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1900(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6$1;

    invoke-direct {v1, p0, p1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6$1;-><init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;Landroid/bluetooth/BluetoothGatt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 614
    :cond_2
    invoke-static {}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On connection state change: GATT_SUCCESS but newState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_NOT_CONNECTED:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$702(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 617
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1700(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .line 622
    :sswitch_1
    invoke-static {}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On connection state change: GATT_INTERNAL_ERROR (133 status) newState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_CONNECTION:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$702(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 625
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1700(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .line 630
    :sswitch_2
    invoke-static {}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On connection state change: GATT_INTERRUPT_ERROR (8 status) newState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_CONNECTION:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$702(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 632
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1700(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_1

    .line 636
    :sswitch_3
    invoke-static {}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On connection state change: GATT_FAILURE newState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1700(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_1

    .line 643
    :sswitch_4
    invoke-static {}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On connection state change: GATT_CONN_FAIL_ESTABLISH (62 status) newState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_CONNECTION:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$702(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 646
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1700(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_1

    .line 592
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_2
        0x3e -> :sswitch_4
        0x85 -> :sswitch_1
        0x101 -> :sswitch_3
    .end sparse-switch
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 680
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 686
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0, p1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$2000(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_CHARACTERISTIC_CONFIGURING:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$2102(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 692
    :cond_1
    invoke-static {}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Releasing configurationSem"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$2200(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 694
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 659
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0, p1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$2000(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 661
    :cond_0
    invoke-static {}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On services discovered state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_SERVICES_DISCOVERING:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1202(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1300(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 667
    return-void
.end method
