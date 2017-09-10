.class Lcom/csr/uenergy/ota/model/OtaMessageHandler;
.super Ljava/lang/Object;
.source "OtaMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OtaMessageHandler"


# instance fields
.field private mSmHandler:Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 52
    .local v0, "looper":Landroid/os/Looper;
    invoke-direct {p0, v0}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->initStateMachine(Landroid/os/Looper;)Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;

    .line 53
    return-void
.end method

.method private initStateMachine(Landroid/os/Looper;)Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 40
    new-instance v0, Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;-><init>(Landroid/os/Looper;Lcom/csr/uenergy/ota/model/OtaMessageHandler$1;)V

    iput-object v0, p0, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->mSmHandler:Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;

    .line 41
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->mSmHandler:Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;

    return-object v0
.end method


# virtual methods
.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->mSmHandler:Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;

    return-object v0
.end method
