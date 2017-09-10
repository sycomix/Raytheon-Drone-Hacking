.class Lcom/parrot/freeflight3/update/CsrUpdateManager$2$3;
.super Ljava/lang/Object;
.source "CsrUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->onOtauStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight3/update/CsrUpdateManager$2;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/update/CsrUpdateManager$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight3/update/CsrUpdateManager$2;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2$3;->this$1:Lcom/parrot/freeflight3/update/CsrUpdateManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 516
    const-string v0, "CsrUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run: mCurrentApplicationOnChip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2$3;->this$1:Lcom/parrot/freeflight3/update/CsrUpdateManager$2;

    iget-object v2, v2, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v2}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$1500(Lcom/parrot/freeflight3/update/CsrUpdateManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2$3;->this$1:Lcom/parrot/freeflight3/update/CsrUpdateManager$2;

    iget-object v0, v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$1500(Lcom/parrot/freeflight3/update/CsrUpdateManager;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 519
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->setApplicationOnChip(I)V

    .line 524
    :goto_0
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->setTransferControlInProgress()V

    .line 525
    return-void

    .line 521
    :cond_0
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->setApplicationOnChip(I)V

    goto :goto_0
.end method
