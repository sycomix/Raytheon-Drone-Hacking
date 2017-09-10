.class Lcom/parrot/freeflight3/RemoteController$2;
.super Ljava/lang/Object;
.source "RemoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/RemoteController;->refreshServiceCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/RemoteController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/RemoteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/parrot/freeflight3/RemoteController$2;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 382
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$2;->this$0:Lcom/parrot/freeflight3/RemoteController;

    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController$2;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v1}, Lcom/parrot/freeflight3/RemoteController;->access$2300(Lcom/parrot/freeflight3/RemoteController;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight3/RemoteController$2;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v2}, Lcom/parrot/freeflight3/RemoteController;->access$2100(Lcom/parrot/freeflight3/RemoteController;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/parrot/freeflight3/RemoteController$2;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v4}, Lcom/parrot/freeflight3/RemoteController;->access$2200(Lcom/parrot/freeflight3/RemoteController;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight3/RemoteController;->access$002(Lcom/parrot/freeflight3/RemoteController;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 383
    return-void
.end method
