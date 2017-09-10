.class Lcom/csr/btsmart/BtSmartService$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BtSmartService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csr/btsmart/BtSmartService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csr/btsmart/BtSmartService;


# direct methods
.method constructor <init>(Lcom/csr/btsmart/BtSmartService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/csr/btsmart/BtSmartService;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 645
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    .line 646
    invoke-static {v3}, Lcom/csr/btsmart/BtSmartService;->access$800(Lcom/csr/btsmart/BtSmartService;)Lcom/csr/btsmart/CharacteristicHandlersContainer;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/csr/btsmart/CharacteristicHandlersContainer;->getHandler(Ljava/util/UUID;Ljava/util/UUID;)Landroid/os/Handler;

    move-result-object v2

    .line 647
    .local v2, "notificationHandler":Landroid/os/Handler;
    if-eqz v2, :cond_0

    .line 648
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 649
    .local v0, "messageBundle":Landroid/os/Bundle;
    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 650
    .local v1, "msg":Landroid/os/Message;
    const-string v3, "CVALUE"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 651
    const-string v3, "SERVUUID"

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 652
    const-string v3, "CHARUUID"

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 653
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 654
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 656
    .end local v0    # "messageBundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    const/16 v5, 0x89

    .line 778
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v3}, Lcom/csr/btsmart/BtSmartService;->access$1500(Lcom/csr/btsmart/BtSmartService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/csr/btsmart/BtSmartService;->access$1402(Lcom/csr/btsmart/BtSmartService;I)I

    .line 779
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v2, p3}, Lcom/csr/btsmart/BtSmartService;->access$1502(Lcom/csr/btsmart/BtSmartService;I)I

    .line 789
    if-eqz p3, :cond_0

    .line 790
    const-string v2, "BtSmartService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCharacteristicRead: mPreGattStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v4}, Lcom/csr/btsmart/BtSmartService;->access$1400(Lcom/csr/btsmart/BtSmartService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentGattStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v4}, Lcom/csr/btsmart/BtSmartService;->access$1500(Lcom/csr/btsmart/BtSmartService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_0
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v2}, Lcom/csr/btsmart/BtSmartService;->access$1400(Lcom/csr/btsmart/BtSmartService;)I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v2}, Lcom/csr/btsmart/BtSmartService;->access$1500(Lcom/csr/btsmart/BtSmartService;)I

    move-result v2

    const/16 v3, 0x85

    if-eq v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    .line 793
    invoke-static {v2}, Lcom/csr/btsmart/BtSmartService;->access$1400(Lcom/csr/btsmart/BtSmartService;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v2}, Lcom/csr/btsmart/BtSmartService;->access$1500(Lcom/csr/btsmart/BtSmartService;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 795
    :cond_2
    const-string v2, "BtSmartService"

    const-string v3, "encryption done, restart discovery ..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v2}, Lcom/csr/btsmart/BtSmartService;->access$100(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 797
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    .line 798
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v2, v2, Lcom/csr/btsmart/BtSmartService;->requestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 799
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v2}, Lcom/csr/btsmart/BtSmartService;->access$100(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 826
    :cond_3
    :goto_0
    return-void

    .line 806
    :cond_4
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v2, v2, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v2, v2, Lcom/csr/btsmart/BtSmartRequest;->type:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    sget-object v3, Lcom/csr/btsmart/BtSmartRequest$RequestType;->READ_CHARACTERISTIC:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    if-ne v2, v3, :cond_3

    .line 807
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v2, v2, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v2, v2, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    if-eqz v2, :cond_5

    .line 808
    if-nez p3, :cond_6

    .line 809
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 810
    .local v0, "messageBundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v2, v2, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v2, v2, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 811
    .local v1, "msg":Landroid/os/Message;
    const-string v2, "CVALUE"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 812
    const-string v2, "SERVUUID"

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    .line 813
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 812
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 814
    const-string v2, "CHARUUID"

    new-instance v3, Landroid/os/ParcelUuid;

    .line 815
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 816
    const-string v2, "CLIENTREQUESTID"

    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v3, v3, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 817
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 818
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 824
    .end local v0    # "messageBundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v2}, Lcom/csr/btsmart/BtSmartService;->access$1300(Lcom/csr/btsmart/BtSmartService;)V

    goto :goto_0

    .line 821
    :cond_6
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v4, v4, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    const/4 v5, 0x5

    invoke-static {v2, v3, v4, v5}, Lcom/csr/btsmart/BtSmartService;->access$900(Lcom/csr/btsmart/BtSmartService;Landroid/os/Handler;II)V

    goto :goto_1
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 830
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v2, v2, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    if-nez v2, :cond_1

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v2, v2, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v2, v2, Lcom/csr/btsmart/BtSmartRequest;->type:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    sget-object v3, Lcom/csr/btsmart/BtSmartRequest$RequestType;->WRITE_CHARACTERISTIC:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    if-ne v2, v3, :cond_0

    .line 833
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v2, v2, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v2, v2, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 834
    if-nez p3, :cond_3

    .line 835
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 836
    .local v0, "messageBundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v2, v2, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v2, v2, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 837
    .local v1, "msg":Landroid/os/Message;
    const-string v2, "CVALUE"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 838
    const-string v2, "SERVUUID"

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    .line 839
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 838
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 840
    const-string v2, "CHARUUID"

    new-instance v3, Landroid/os/ParcelUuid;

    .line 841
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 842
    const-string v2, "CLIENTREQUESTID"

    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v3, v3, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 843
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 844
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 852
    .end local v0    # "messageBundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v2}, Lcom/csr/btsmart/BtSmartService;->access$1300(Lcom/csr/btsmart/BtSmartService;)V

    goto :goto_0

    .line 845
    :cond_3
    const/4 v2, 0x6

    if-ne p3, v2, :cond_4

    .line 846
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v4, v4, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    const/16 v5, 0x13

    invoke-static {v2, v3, v4, v5}, Lcom/csr/btsmart/BtSmartService;->access$900(Lcom/csr/btsmart/BtSmartService;Landroid/os/Handler;II)V

    goto :goto_1

    .line 849
    :cond_4
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v4, v4, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    const/4 v5, 0x5

    invoke-static {v2, v3, v4, v5}, Lcom/csr/btsmart/BtSmartService;->access$900(Lcom/csr/btsmart/BtSmartService;Landroid/os/Handler;II)V

    goto :goto_1
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 563
    if-nez p2, :cond_2

    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    iget-object v1, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v1}, Lcom/csr/btsmart/BtSmartService;->access$100(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 567
    const-string v1, "BtSmartService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected: Device name is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v3}, Lcom/csr/btsmart/BtSmartService;->access$200(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v1, "BtSmartService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected: Build info: MODEL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,MANUFACTURER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 570
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v1}, Lcom/csr/btsmart/BtSmartService;->access$300(Lcom/csr/btsmart/BtSmartService;)I

    move-result v1

    if-lez v1, :cond_1

    .line 572
    new-instance v1, Lcom/csr/btsmart/BtSmartService$1$1;

    invoke-direct {v1, p0}, Lcom/csr/btsmart/BtSmartService$1$1;-><init>(Lcom/csr/btsmart/BtSmartService$1;)V

    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    .line 579
    invoke-static {v2}, Lcom/csr/btsmart/BtSmartService;->access$300(Lcom/csr/btsmart/BtSmartService;)I

    move-result v2

    int-to-long v2, v2

    .line 572
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 592
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 582
    .restart local v0    # "handler":Landroid/os/Handler;
    :cond_1
    const-string v1, "BtSmartService"

    const-string v2, "connected and calling discoverServices"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v1, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v1}, Lcom/csr/btsmart/BtSmartService;->access$100(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_0

    .line 586
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_2
    if-nez p3, :cond_0

    .line 587
    iget-object v1, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v1, v1, Lcom/csr/btsmart/BtSmartService;->requestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 588
    iget-object v1, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    .line 589
    iget-object v1, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/csr/btsmart/BtSmartService;->access$402(Lcom/csr/btsmart/BtSmartService;Z)Z

    .line 590
    iget-object v1, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v2}, Lcom/csr/btsmart/BtSmartService;->access$500(Lcom/csr/btsmart/BtSmartService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcom/csr/btsmart/BtSmartService;->access$600(Lcom/csr/btsmart/BtSmartService;Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 9
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x5

    .line 664
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    if-nez v3, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 666
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartRequest;->type:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    sget-object v4, Lcom/csr/btsmart/BtSmartRequest$RequestType;->CHARACTERISTIC_NOTIFICATION:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    if-ne v3, v4, :cond_3

    .line 668
    if-eqz p3, :cond_2

    .line 669
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v5, v5, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v5, v5, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    invoke-static {v3, v4, v5, v7}, Lcom/csr/btsmart/BtSmartService;->access$900(Lcom/csr/btsmart/BtSmartService;Landroid/os/Handler;II)V

    .line 670
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v3}, Lcom/csr/btsmart/BtSmartService;->access$800(Lcom/csr/btsmart/BtSmartService;)Lcom/csr/btsmart/CharacteristicHandlersContainer;

    move-result-object v3

    .line 671
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/csr/btsmart/CharacteristicHandlersContainer;->removeHandler(Ljava/util/UUID;Ljava/util/UUID;)V

    .line 673
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v4}, Lcom/csr/btsmart/BtSmartService;->access$1000(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v3

    if-nez v3, :cond_0

    .line 674
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v4}, Lcom/csr/btsmart/BtSmartService;->access$1000(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v3

    if-nez v3, :cond_0

    .line 675
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v3}, Lcom/csr/btsmart/BtSmartService;->access$800(Lcom/csr/btsmart/BtSmartService;)Lcom/csr/btsmart/CharacteristicHandlersContainer;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    iget-object v6, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v6, v6, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v6, v6, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v6}, Lcom/csr/btsmart/CharacteristicHandlersContainer;->addHandler(Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    .line 677
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v3, v8, v0}, Lcom/csr/btsmart/BtSmartService;->access$1100(Lcom/csr/btsmart/BtSmartService;ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 678
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v5, v5, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v5, v5, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    invoke-static {v3, v4, v5, v7}, Lcom/csr/btsmart/BtSmartService;->access$900(Lcom/csr/btsmart/BtSmartService;Landroid/os/Handler;II)V

    .line 679
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v3}, Lcom/csr/btsmart/BtSmartService;->access$800(Lcom/csr/btsmart/BtSmartService;)Lcom/csr/btsmart/CharacteristicHandlersContainer;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    .line 680
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    .line 679
    invoke-virtual {v3, v4, v5}, Lcom/csr/btsmart/CharacteristicHandlersContainer;->removeHandler(Ljava/util/UUID;Ljava/util/UUID;)V

    goto/16 :goto_0

    .line 686
    :cond_3
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartRequest;->type:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    sget-object v4, Lcom/csr/btsmart/BtSmartRequest$RequestType;->CHARACTERISTIC_INDICATION:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    if-ne v3, v4, :cond_5

    .line 687
    if-eqz p3, :cond_4

    .line 688
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v5, v5, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v5, v5, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    invoke-static {v3, v4, v5, v7}, Lcom/csr/btsmart/BtSmartService;->access$900(Lcom/csr/btsmart/BtSmartService;Landroid/os/Handler;II)V

    .line 689
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v3}, Lcom/csr/btsmart/BtSmartService;->access$800(Lcom/csr/btsmart/BtSmartService;)Lcom/csr/btsmart/CharacteristicHandlersContainer;

    move-result-object v3

    .line 690
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/csr/btsmart/CharacteristicHandlersContainer;->removeHandler(Ljava/util/UUID;Ljava/util/UUID;)V

    .line 692
    :cond_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v4}, Lcom/csr/btsmart/BtSmartService;->access$1000(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v3

    if-nez v3, :cond_0

    .line 693
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v4}, Lcom/csr/btsmart/BtSmartService;->access$1000(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v3

    if-nez v3, :cond_0

    .line 694
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v3}, Lcom/csr/btsmart/BtSmartService;->access$800(Lcom/csr/btsmart/BtSmartService;)Lcom/csr/btsmart/CharacteristicHandlersContainer;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    iget-object v6, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v6, v6, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v6, v6, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v6}, Lcom/csr/btsmart/CharacteristicHandlersContainer;->addHandler(Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    .line 696
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v3, v8, v0}, Lcom/csr/btsmart/BtSmartService;->access$1200(Lcom/csr/btsmart/BtSmartService;ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 697
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v5, v5, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v5, v5, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    invoke-static {v3, v4, v5, v7}, Lcom/csr/btsmart/BtSmartService;->access$900(Lcom/csr/btsmart/BtSmartService;Landroid/os/Handler;II)V

    .line 698
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v3}, Lcom/csr/btsmart/BtSmartService;->access$800(Lcom/csr/btsmart/BtSmartService;)Lcom/csr/btsmart/CharacteristicHandlersContainer;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    .line 699
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    .line 698
    invoke-virtual {v3, v4, v5}, Lcom/csr/btsmart/CharacteristicHandlersContainer;->removeHandler(Ljava/util/UUID;Ljava/util/UUID;)V

    goto/16 :goto_0

    .line 705
    :cond_5
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartRequest;->type:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    sget-object v4, Lcom/csr/btsmart/BtSmartRequest$RequestType;->READ_DESCRIPTOR:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    if-ne v3, v4, :cond_0

    .line 707
    if-nez p3, :cond_6

    .line 708
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 709
    .local v1, "messageBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 710
    .local v2, "msg":Landroid/os/Message;
    const-string v3, "CVALUE"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 711
    const-string v3, "SERVUUID"

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v5

    .line 712
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 711
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 713
    const-string v3, "CHARUUID"

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 714
    const-string v3, "DESCUUID"

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 715
    const-string v3, "CLIENTREQUESTID"

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v4, v4, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 716
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 717
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 718
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v3}, Lcom/csr/btsmart/BtSmartService;->access$1300(Lcom/csr/btsmart/BtSmartService;)V

    goto/16 :goto_0

    .line 721
    .end local v1    # "messageBundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_6
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v5, v5, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v5, v5, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    invoke-static {v3, v4, v5, v7}, Lcom/csr/btsmart/BtSmartService;->access$900(Lcom/csr/btsmart/BtSmartService;Landroid/os/Handler;II)V

    goto/16 :goto_0
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    const/4 v6, 0x5

    .line 733
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    if-nez v3, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 735
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartRequest;->type:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    sget-object v4, Lcom/csr/btsmart/BtSmartRequest$RequestType;->CHARACTERISTIC_NOTIFICATION:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    if-ne v3, v4, :cond_3

    .line 736
    if-eqz p3, :cond_2

    .line 737
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v5, v5, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v5, v5, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    invoke-static {v3, v4, v5, v6}, Lcom/csr/btsmart/BtSmartService;->access$900(Lcom/csr/btsmart/BtSmartService;Landroid/os/Handler;II)V

    .line 738
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v3}, Lcom/csr/btsmart/BtSmartService;->access$800(Lcom/csr/btsmart/BtSmartService;)Lcom/csr/btsmart/CharacteristicHandlersContainer;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/csr/btsmart/CharacteristicHandlersContainer;->removeHandler(Ljava/util/UUID;Ljava/util/UUID;)V

    .line 751
    :goto_1
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v3}, Lcom/csr/btsmart/BtSmartService;->access$1300(Lcom/csr/btsmart/BtSmartService;)V

    goto :goto_0

    .line 741
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 742
    .local v1, "messageBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    const/16 v4, 0xd

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 743
    .local v2, "msg":Landroid/os/Message;
    const-string v3, "SERVUUID"

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v5

    .line 744
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 743
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 745
    const-string v3, "CHARUUID"

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 746
    const-string v3, "DESCUUID"

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 747
    const-string v3, "CLIENTREQUESTID"

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v4, v4, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 748
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 749
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 753
    .end local v1    # "messageBundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartRequest;->type:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    sget-object v4, Lcom/csr/btsmart/BtSmartRequest$RequestType;->CHARACTERISTIC_INDICATION:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    if-ne v3, v4, :cond_5

    .line 754
    if-eqz p3, :cond_4

    .line 755
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v5, v5, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v5, v5, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    invoke-static {v3, v4, v5, v6}, Lcom/csr/btsmart/BtSmartService;->access$900(Lcom/csr/btsmart/BtSmartService;Landroid/os/Handler;II)V

    .line 756
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v3}, Lcom/csr/btsmart/BtSmartService;->access$800(Lcom/csr/btsmart/BtSmartService;)Lcom/csr/btsmart/CharacteristicHandlersContainer;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/csr/btsmart/CharacteristicHandlersContainer;->removeHandler(Ljava/util/UUID;Ljava/util/UUID;)V

    .line 769
    :goto_2
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v3}, Lcom/csr/btsmart/BtSmartService;->access$1300(Lcom/csr/btsmart/BtSmartService;)V

    goto/16 :goto_0

    .line 759
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 760
    .restart local v1    # "messageBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 761
    .restart local v2    # "msg":Landroid/os/Message;
    const-string v3, "SERVUUID"

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v5

    .line 762
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 761
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 763
    const-string v3, "CHARUUID"

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 764
    const-string v3, "DESCUUID"

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 765
    const-string v3, "CLIENTREQUESTID"

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v4, v4, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v4, v4, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 766
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 767
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 771
    .end local v1    # "messageBundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_5
    iget-object v3, p0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v3, v3, Lcom/csr/btsmart/BtSmartRequest;->type:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    sget-object v4, Lcom/csr/btsmart/BtSmartRequest$RequestType;->WRITE_DESCRIPTOR:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    if-ne v3, v4, :cond_0

    goto/16 :goto_0
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 18
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 596
    if-nez p2, :cond_5

    .line 597
    const-string v13, "BtSmartService"

    const-string v14, "onServicesDiscovered"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v13}, Lcom/csr/btsmart/BtSmartService;->access$500(Lcom/csr/btsmart/BtSmartService;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    .line 601
    .local v8, "msg":Landroid/os/Message;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 602
    .local v7, "messageBundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v13}, Lcom/csr/btsmart/BtSmartService;->access$100(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v13

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    new-array v11, v13, [Landroid/os/ParcelUuid;

    .line 604
    .local v11, "serviceUuidArray":[Landroid/os/ParcelUuid;
    const/4 v3, 0x0

    .line 605
    .local v3, "i":I
    const/4 v10, 0x0

    .line 607
    .local v10, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v13}, Lcom/csr/btsmart/BtSmartService;->access$100(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 608
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v13}, Lcom/csr/btsmart/BtSmartService;->access$100(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v13

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v10

    .line 609
    :cond_0
    if-eqz v10, :cond_5

    .line 610
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothGattService;

    .line 611
    .local v9, "service":Landroid/bluetooth/BluetoothGattService;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    new-instance v14, Landroid/os/ParcelUuid;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    aput-object v14, v11, v3

    .line 612
    const-string v14, "BtSmartService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Service UUID start: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v14

    sget-object v15, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v15}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v14

    if-eqz v14, :cond_1

    .line 614
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v14

    sget-object v15, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v15}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v14

    if-nez v14, :cond_3

    .line 615
    :cond_1
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    .line 616
    .local v2, "charaList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    new-array v12, v14, [Landroid/os/ParcelUuid;

    .line 617
    .local v12, "uuidArray":[Landroid/os/ParcelUuid;
    const/4 v5, 0x0

    .line 618
    .local v5, "j":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 619
    .local v1, "chara":Landroid/bluetooth/BluetoothGattCharacteristic;
    const-string v15, "BtSmartService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Characteristic UUID: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .local v6, "j":I
    new-instance v15, Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    aput-object v15, v12, v5

    move v5, v6

    .line 621
    .end local v6    # "j":I
    .restart local v5    # "j":I
    goto :goto_1

    .line 624
    .end local v1    # "chara":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_3

    if-lez v5, :cond_3

    .line 626
    const-string v14, "CHARAUUID_ARRAY"

    invoke-virtual {v7, v14, v12}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 628
    .end local v2    # "charaList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    .end local v5    # "j":I
    .end local v12    # "uuidArray":[Landroid/os/ParcelUuid;
    :cond_3
    const-string v14, "BtSmartService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Service UUID end: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 629
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 631
    .end local v9    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_4
    const-string v13, "SERVUUID_ARRAY"

    invoke-virtual {v7, v13, v11}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 632
    const-string v13, "REFRESH_ATTRIBUTE"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v14}, Lcom/csr/btsmart/BtSmartService;->access$700(Lcom/csr/btsmart/BtSmartService;)Z

    move-result v14

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 633
    const-string v13, "REFRESH_ATTRIBUTE_DONE"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csr/btsmart/BtSmartService$1;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v14}, Lcom/csr/btsmart/BtSmartService;->access$400(Lcom/csr/btsmart/BtSmartService;)Z

    move-result v14

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 634
    invoke-virtual {v8, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 635
    const-string v13, "BtSmartService"

    const-string v14, "onServicesDiscovered: sendToTarget"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 639
    .end local v3    # "i":I
    .end local v7    # "messageBundle":Landroid/os/Bundle;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v10    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .end local v11    # "serviceUuidArray":[Landroid/os/ParcelUuid;
    :cond_5
    return-void
.end method
