.class Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$3;
.super Ljava/lang/Object;
.source "RemoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$3;->this$1:Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 153
    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$3;->this$1:Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    iget-object v1, v1, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v1}, Lcom/parrot/freeflight3/RemoteController;->access$1000(Lcom/parrot/freeflight3/RemoteController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight3/OnRemoteInfosListener;

    .line 154
    .local v0, "listener":Lcom/parrot/freeflight3/OnRemoteInfosListener;
    iget-object v2, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$3;->this$1:Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    iget-object v2, v2, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v2}, Lcom/parrot/freeflight3/RemoteController;->access$700(Lcom/parrot/freeflight3/RemoteController;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$3;->this$1:Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    iget-object v3, v3, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v3}, Lcom/parrot/freeflight3/RemoteController;->access$800(Lcom/parrot/freeflight3/RemoteController;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$3;->this$1:Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    iget-object v4, v4, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v4}, Lcom/parrot/freeflight3/RemoteController;->access$900(Lcom/parrot/freeflight3/RemoteController;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/parrot/freeflight3/OnRemoteInfosListener;->onInfosRecovered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    .end local v0    # "listener":Lcom/parrot/freeflight3/OnRemoteInfosListener;
    :cond_0
    return-void
.end method
