.class Lcom/parrot/arsdk/arsal/ARSALBLEManager$4;
.super Ljava/lang/Object;
.source "ARSALBLEManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arsal/ARSALBLEManager;->discoverBLENetworkServices()Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
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
    .line 475
    iput-object p1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$4;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "discoveryRes":Z
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$4;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$800(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$4;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$800(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v0

    .line 484
    :cond_0
    if-nez v0, :cond_1

    .line 486
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$4;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1202(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 487
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$4;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$1300(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 489
    :cond_1
    return-void
.end method
