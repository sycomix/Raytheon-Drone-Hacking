.class Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$1;
.super Ljava/lang/Object;
.source "RemoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

.field final synthetic val$newState:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$1;->this$1:Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    iput p2, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$1;->val$newState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 93
    iget v1, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$1;->val$newState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 94
    const-string v1, "RemoteController"

    const-string v2, "Connected to GATT server."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$1;->this$1:Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    iget-object v1, v1, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v1}, Lcom/parrot/freeflight3/RemoteController;->access$000(Lcom/parrot/freeflight3/RemoteController;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v0

    .line 96
    .local v0, "started":Z
    const-string v1, "RemoteController"

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

    .line 112
    .end local v0    # "started":Z
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget v1, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$1;->val$newState:I

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$1;->this$1:Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    iget-object v1, v1, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v1}, Lcom/parrot/freeflight3/RemoteController;->access$100(Lcom/parrot/freeflight3/RemoteController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    const-string v1, "RemoteController"

    const-string v2, "onConnectionStateChange STATE_CONNECTING "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$1;->this$1:Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    iget-object v1, v1, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    sget-object v2, Lcom/parrot/freeflight3/RemoteController$ConnectionState;->STATE_CONNECTING:Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    invoke-static {v1, v2}, Lcom/parrot/freeflight3/RemoteController;->access$202(Lcom/parrot/freeflight3/RemoteController;Lcom/parrot/freeflight3/RemoteController$ConnectionState;)Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    .line 110
    :goto_1
    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$1;->this$1:Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    iget-object v1, v1, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v1}, Lcom/parrot/freeflight3/RemoteController;->access$300(Lcom/parrot/freeflight3/RemoteController;)V

    goto :goto_0

    .line 106
    :cond_2
    const-string v1, "RemoteController"

    const-string v2, "onConnectionStateChange STATE_DISCONNECTED "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$1;->this$1:Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    iget-object v1, v1, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    sget-object v2, Lcom/parrot/freeflight3/RemoteController$ConnectionState;->STATE_DISCONNECTED:Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    invoke-static {v1, v2}, Lcom/parrot/freeflight3/RemoteController;->access$202(Lcom/parrot/freeflight3/RemoteController;Lcom/parrot/freeflight3/RemoteController$ConnectionState;)Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    goto :goto_1
.end method
