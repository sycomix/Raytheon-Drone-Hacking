.class Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$4;
.super Ljava/lang/Object;
.source "RemoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$4;->this$1:Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    iput-object p2, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$4;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$4;->this$1:Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    iget-object v0, v0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v0}, Lcom/parrot/freeflight3/RemoteController;->access$1600(Lcom/parrot/freeflight3/RemoteController;)Lcom/parrot/freeflight3/FrameResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$4;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/FrameResolver;->onFrameReceived([B)V

    .line 196
    return-void
.end method
