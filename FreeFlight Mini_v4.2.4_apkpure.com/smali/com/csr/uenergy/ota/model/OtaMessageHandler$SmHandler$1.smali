.class Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler$1;
.super Ljava/lang/Object;
.source "OtaMessageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;

.field final synthetic val$manager:Lcom/csr/uenergy/ota/model/OtaUpdateManager;


# direct methods
.method constructor <init>(Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;Lcom/csr/uenergy/ota/model/OtaUpdateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler$1;->this$0:Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;

    iput-object p2, p0, Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler$1;->val$manager:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler$1;->val$manager:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "OtaMessagehandler"

    const-string v1, "REQUEST_GET_APPLCATION_ONCHIP timeout, disconnect!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler$1;->val$manager:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->disconnect()V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    const-string v0, "OtaMessagehandler"

    const-string v1, "OtaManagerweakRef is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
