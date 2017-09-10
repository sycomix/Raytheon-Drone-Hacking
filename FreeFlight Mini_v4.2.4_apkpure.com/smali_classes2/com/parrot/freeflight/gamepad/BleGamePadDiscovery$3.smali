.class Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;
.super Ljava/lang/Object;
.source "BleGamePadDiscovery.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->createScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;->this$0:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 118
    const-string v0, "BleGamePadDiscovery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeScan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;->this$0:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->access$400(Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3$1;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3$1;-><init>(Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method
