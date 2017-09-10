.class Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3$1;
.super Ljava/lang/Object;
.source "BleGamePadDiscovery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3$1;->this$1:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;

    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3$1;->this$1:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;->this$0:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->access$200(Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3$1;->this$1:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;->this$0:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->access$100(Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;)Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3$1;->this$1:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;

    iget-object v3, v3, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;->this$0:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    invoke-static {v3}, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->access$300(Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->add(Lcom/parrot/freeflight/gamepad/GamePad;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3$1;->this$1:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;->this$0:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->notifyListChange()V

    .line 128
    :cond_0
    return-void
.end method
