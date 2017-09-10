.class Lcom/csr/uenergy/ota/model/OtaUpdateManager$2;
.super Ljava/lang/Object;
.source "OtaUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csr/uenergy/ota/model/OtaUpdateManager;->connect(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

.field final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/csr/uenergy/ota/model/OtaUpdateManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager$2;->this$0:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    iput-boolean p2, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager$2;->val$refresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager$2;->this$0:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-static {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->access$000(Lcom/csr/uenergy/ota/model/OtaUpdateManager;)Lcom/csr/btsmart/BtSmartService;

    move-result-object v0

    iget-object v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager$2;->this$0:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-static {v1}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->access$200(Lcom/csr/uenergy/ota/model/OtaUpdateManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager$2;->this$0:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-static {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->access$300(Lcom/csr/uenergy/ota/model/OtaUpdateManager;)Lcom/csr/uenergy/ota/model/ConnectionHandler;

    move-result-object v2

    iget-boolean v3, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager$2;->val$refresh:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/csr/btsmart/BtSmartService;->connectAsClient(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;Z)V

    .line 276
    return-void
.end method
