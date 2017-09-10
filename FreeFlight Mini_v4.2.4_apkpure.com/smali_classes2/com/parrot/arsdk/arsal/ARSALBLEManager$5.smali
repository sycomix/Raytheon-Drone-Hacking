.class Lcom/parrot/arsdk/arsal/ARSALBLEManager$5;
.super Ljava/lang/Object;
.source "ARSALBLEManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getServices()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

.field final synthetic val$lock:Lcom/parrot/arsdk/arsal/ARSALBLEManager$RequestLock;

.field final synthetic val$serviceList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Ljava/util/List;Lcom/parrot/arsdk/arsal/ARSALBLEManager$RequestLock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$5;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    iput-object p2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$5;->val$serviceList:Ljava/util/List;

    iput-object p3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$5;->val$lock:Lcom/parrot/arsdk/arsal/ARSALBLEManager$RequestLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 539
    invoke-static {}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "running getServices request"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$5;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$800(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$5;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-static {v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->access$800(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    .line 543
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$5;->val$serviceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 545
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_0
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$5;->val$lock:Lcom/parrot/arsdk/arsal/ARSALBLEManager$RequestLock;

    monitor-enter v2

    .line 547
    :try_start_0
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$5;->val$lock:Lcom/parrot/arsdk/arsal/ARSALBLEManager$RequestLock;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/parrot/arsdk/arsal/ARSALBLEManager$RequestLock;->finished:Z

    .line 548
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$5;->val$lock:Lcom/parrot/arsdk/arsal/ARSALBLEManager$RequestLock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 549
    monitor-exit v2

    .line 550
    return-void

    .line 549
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
