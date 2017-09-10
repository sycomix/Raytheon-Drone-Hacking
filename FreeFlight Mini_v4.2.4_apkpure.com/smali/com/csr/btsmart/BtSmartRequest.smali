.class Lcom/csr/btsmart/BtSmartRequest;
.super Ljava/lang/Object;
.source "BtSmartRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csr/btsmart/BtSmartRequest$RequestType;
    }
.end annotation


# instance fields
.field public characteristicUuid:Ljava/util/UUID;

.field public descriptorUuid:Ljava/util/UUID;

.field public notifyHandler:Landroid/os/Handler;

.field public requestId:I

.field public serviceUuid:Ljava/util/UUID;

.field public type:Lcom/csr/btsmart/BtSmartRequest$RequestType;

.field public value:[B


# direct methods
.method public constructor <init>(Lcom/csr/btsmart/BtSmartRequest$RequestType;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V
    .locals 1
    .param p1, "type"    # Lcom/csr/btsmart/BtSmartRequest$RequestType;
    .param p2, "requestId"    # I
    .param p3, "service"    # Ljava/util/UUID;
    .param p4, "characteristic"    # Ljava/util/UUID;
    .param p5, "descriptor"    # Ljava/util/UUID;
    .param p6, "handler"    # Landroid/os/Handler;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/csr/btsmart/BtSmartRequest;->type:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    .line 42
    iput p2, p0, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    .line 43
    iput-object p3, p0, Lcom/csr/btsmart/BtSmartRequest;->serviceUuid:Ljava/util/UUID;

    .line 44
    iput-object p4, p0, Lcom/csr/btsmart/BtSmartRequest;->characteristicUuid:Ljava/util/UUID;

    .line 45
    iput-object p5, p0, Lcom/csr/btsmart/BtSmartRequest;->descriptorUuid:Ljava/util/UUID;

    .line 46
    iput-object p6, p0, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartRequest;->value:[B

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/csr/btsmart/BtSmartRequest$RequestType;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;[B)V
    .locals 0
    .param p1, "type"    # Lcom/csr/btsmart/BtSmartRequest$RequestType;
    .param p2, "requestId"    # I
    .param p3, "service"    # Ljava/util/UUID;
    .param p4, "characteristic"    # Ljava/util/UUID;
    .param p5, "descriptor"    # Ljava/util/UUID;
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "value"    # [B

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/csr/btsmart/BtSmartRequest;->type:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    .line 53
    iput p2, p0, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    .line 54
    iput-object p3, p0, Lcom/csr/btsmart/BtSmartRequest;->serviceUuid:Ljava/util/UUID;

    .line 55
    iput-object p4, p0, Lcom/csr/btsmart/BtSmartRequest;->characteristicUuid:Ljava/util/UUID;

    .line 56
    iput-object p5, p0, Lcom/csr/btsmart/BtSmartRequest;->descriptorUuid:Ljava/util/UUID;

    .line 57
    iput-object p6, p0, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    .line 58
    iput-object p7, p0, Lcom/csr/btsmart/BtSmartRequest;->value:[B

    .line 59
    return-void
.end method
