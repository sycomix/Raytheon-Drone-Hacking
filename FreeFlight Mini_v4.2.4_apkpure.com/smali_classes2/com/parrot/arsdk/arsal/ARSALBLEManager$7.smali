.class Lcom/parrot/arsdk/arsal/ARSALBLEManager$7;
.super Ljava/lang/Object;
.source "ARSALBLEManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arsal/ARSALBLEManager;->closeGatt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$7;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$7;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$800(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$7;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$800(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 1056
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$7;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$802(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 1058
    :cond_0
    return-void
.end method
