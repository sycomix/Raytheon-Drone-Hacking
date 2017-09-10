.class Lcom/parrot/freeflight3/update/McuUpdateManager$1;
.super Ljava/lang/Object;
.source "McuUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/update/McuUpdateManager;->refreshServiceCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/update/McuUpdateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$1;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$1;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    iget-object v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$1;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$400(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$1;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v2}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$200(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$1;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v4}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$300(Lcom/parrot/freeflight3/update/McuUpdateManager;)Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$102(Lcom/parrot/freeflight3/update/McuUpdateManager;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 120
    return-void
.end method
