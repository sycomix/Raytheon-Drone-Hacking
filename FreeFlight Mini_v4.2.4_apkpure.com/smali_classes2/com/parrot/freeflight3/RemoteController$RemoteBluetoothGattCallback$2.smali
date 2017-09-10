.class Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$2;
.super Ljava/lang/Object;
.source "RemoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
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
    .line 122
    iput-object p1, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$2;->this$1:Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$2;->this$1:Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    invoke-static {v0}, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->access$600(Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;)V

    .line 127
    return-void
.end method
