.class Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;
.super Ljava/lang/Object;
.source "ARNetworkALBLENetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataPop"
.end annotation


# instance fields
.field data:[B

.field id:I

.field result:I

.field final synthetic this$0:Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;)V
    .locals 1

    .prologue
    .line 498
    iput-object p1, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;->this$0:Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;->id:I

    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;->data:[B

    .line 501
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->ARNETWORKAL_MANAGER_RETURN_DEFAULT:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->getValue()I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;->result:I

    .line 502
    return-void
.end method


# virtual methods
.method getData()[B
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;->data:[B

    return-object v0
.end method

.method getId()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;->id:I

    return v0
.end method

.method getResult()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;->result:I

    return v0
.end method

.method setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 506
    iput-object p1, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;->data:[B

    .line 507
    return-void
.end method

.method setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 511
    iput p1, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;->id:I

    .line 512
    return-void
.end method

.method setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 516
    iput p1, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;->result:I

    .line 517
    return-void
.end method
