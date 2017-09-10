.class Lcom/csr/btsmart/BtSmartService$BluetoothReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BtSmartService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csr/btsmart/BtSmartService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csr/btsmart/BtSmartService;


# direct methods
.method private constructor <init>(Lcom/csr/btsmart/BtSmartService;)V
    .locals 0

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/csr/btsmart/BtSmartService$BluetoothReceiver;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/csr/btsmart/BtSmartService;Lcom/csr/btsmart/BtSmartService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/csr/btsmart/BtSmartService;
    .param p2, "x1"    # Lcom/csr/btsmart/BtSmartService$1;

    .prologue
    .line 1185
    invoke-direct {p0, p1}, Lcom/csr/btsmart/BtSmartService$BluetoothReceiver;-><init>(Lcom/csr/btsmart/BtSmartService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0xc

    const/4 v5, -0x1

    .line 1189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1190
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1192
    const-string v4, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1193
    .local v3, "prevBondState":I
    const-string v4, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1194
    .local v1, "bondState":I
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 1196
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$BluetoothReceiver;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v4}, Lcom/csr/btsmart/BtSmartService;->access$200(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1217
    .end local v1    # "bondState":I
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "prevBondState":I
    :cond_0
    :goto_0
    return-void

    .line 1200
    .restart local v1    # "bondState":I
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "prevBondState":I
    :cond_1
    if-ne v1, v6, :cond_2

    .line 1201
    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$BluetoothReceiver;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v5, p0, Lcom/csr/btsmart/BtSmartService$BluetoothReceiver;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v5}, Lcom/csr/btsmart/BtSmartService;->access$500(Lcom/csr/btsmart/BtSmartService;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x11

    invoke-static {v4, v5, v6}, Lcom/csr/btsmart/BtSmartService;->access$600(Lcom/csr/btsmart/BtSmartService;Landroid/os/Handler;I)V

    goto :goto_0

    .line 1203
    :cond_2
    const/16 v4, 0xb

    if-ne v1, v4, :cond_3

    .line 1204
    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$BluetoothReceiver;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v5, p0, Lcom/csr/btsmart/BtSmartService$BluetoothReceiver;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v5}, Lcom/csr/btsmart/BtSmartService;->access$500(Lcom/csr/btsmart/BtSmartService;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Lcom/csr/btsmart/BtSmartService;->access$600(Lcom/csr/btsmart/BtSmartService;Landroid/os/Handler;I)V

    goto :goto_0

    .line 1206
    :cond_3
    if-ne v3, v6, :cond_0

    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    .line 1207
    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$BluetoothReceiver;->this$0:Lcom/csr/btsmart/BtSmartService;

    iget-object v5, p0, Lcom/csr/btsmart/BtSmartService$BluetoothReceiver;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v5}, Lcom/csr/btsmart/BtSmartService;->access$500(Lcom/csr/btsmart/BtSmartService;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x12

    invoke-static {v4, v5, v6}, Lcom/csr/btsmart/BtSmartService;->access$600(Lcom/csr/btsmart/BtSmartService;Landroid/os/Handler;I)V

    goto :goto_0

    .line 1212
    .end local v1    # "bondState":I
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "prevBondState":I
    :cond_4
    const-string v4, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1213
    iget-object v4, p0, Lcom/csr/btsmart/BtSmartService$BluetoothReceiver;->this$0:Lcom/csr/btsmart/BtSmartService;

    invoke-static {v4}, Lcom/csr/btsmart/BtSmartService;->access$200(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 1214
    const-string v4, "BtSmartService"

    const-string v5, "PAIRING_REQUEST --> accept"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
