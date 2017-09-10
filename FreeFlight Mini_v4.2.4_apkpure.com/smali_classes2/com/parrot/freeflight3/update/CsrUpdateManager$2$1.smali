.class Lcom/parrot/freeflight3/update/CsrUpdateManager$2$1;
.super Ljava/lang/Object;
.source "CsrUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->onCsrOtaVersionUpdate(Ljava/lang/String;)V
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
    .line 218
    iput-object p1, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2$1;->this$1:Lcom/parrot/freeflight3/update/CsrUpdateManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readNextCsBlock()V

    .line 222
    return-void
.end method
