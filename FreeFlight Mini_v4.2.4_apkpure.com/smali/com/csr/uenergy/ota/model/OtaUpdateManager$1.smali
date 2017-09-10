.class Lcom/csr/uenergy/ota/model/OtaUpdateManager$1;
.super Ljava/lang/Object;
.source "OtaUpdateManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csr/uenergy/ota/model/OtaUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csr/uenergy/ota/model/OtaUpdateManager;


# direct methods
.method constructor <init>(Lcom/csr/uenergy/ota/model/OtaUpdateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager$1;->this$0:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "rawBinder"    # Landroid/os/IBinder;

    .prologue
    .line 152
    const-string v0, "OtaUpdateManager"

    const-string v1, "onServiceConnected: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager$1;->this$0:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-object v0, p2

    check-cast v0, Lcom/csr/btsmart/BtSmartService$LocalBinder;

    invoke-virtual {v0}, Lcom/csr/btsmart/BtSmartService$LocalBinder;->getService()Lcom/csr/btsmart/BtSmartService;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->access$002(Lcom/csr/uenergy/ota/model/OtaUpdateManager;Lcom/csr/btsmart/BtSmartService;)Lcom/csr/btsmart/BtSmartService;

    .line 154
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager$1;->this$0:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-static {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->access$100(Lcom/csr/uenergy/ota/model/OtaUpdateManager;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager$1;->this$0:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-static {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->access$100(Lcom/csr/uenergy/ota/model/OtaUpdateManager;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 157
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "classname"    # Landroid/content/ComponentName;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager$1;->this$0:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-static {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->access$100(Lcom/csr/uenergy/ota/model/OtaUpdateManager;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager$1;->this$0:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-static {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->access$100(Lcom/csr/uenergy/ota/model/OtaUpdateManager;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager$1;->this$0:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->access$002(Lcom/csr/uenergy/ota/model/OtaUpdateManager;Lcom/csr/btsmart/BtSmartService;)Lcom/csr/btsmart/BtSmartService;

    .line 164
    return-void
.end method
