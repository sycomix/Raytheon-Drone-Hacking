.class public Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;
.super Ljava/lang/Object;
.source "ARNetworkIOBufferParamBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ID:I

.field private ackTimeoutMs:I

.field private dataCopyMaxSize:I

.field private dataType:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

.field private isOverwriting:Z

.field private numberOfCell:I

.field private numberOfRetry:I

.field private timeBetweenSendMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->ID:I

    .line 59
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;->ARNETWORKAL_FRAME_TYPE_DATA:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->dataType:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    .line 60
    iput v2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->timeBetweenSendMs:I

    .line 61
    sget v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

    iput v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->ackTimeoutMs:I

    .line 62
    sget v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

    iput v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->numberOfRetry:I

    .line 63
    iput v2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->numberOfCell:I

    .line 64
    iput v1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->dataCopyMaxSize:I

    .line 65
    iput-boolean v1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->isOverwriting:Z

    .line 66
    return-void
.end method


# virtual methods
.method public build()Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    .locals 9

    .prologue
    .line 117
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    iget v1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->ID:I

    iget-object v2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->dataType:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    iget v3, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->timeBetweenSendMs:I

    iget v4, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->ackTimeoutMs:I

    iget v5, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->numberOfRetry:I

    iget v6, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->numberOfCell:I

    iget v7, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->dataCopyMaxSize:I

    iget-boolean v8, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->isOverwriting:Z

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;-><init>(ILcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;IIIIIZ)V

    return-object v0
.end method

.method public setAckTimeoutMs(I)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->ackTimeoutMs:I

    .line 80
    return-object p0
.end method

.method public setDataCopyMaxSize(I)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->dataCopyMaxSize:I

    .line 95
    return-object p0
.end method

.method public setDataType(Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;
    .locals 0
    .param p1, "type"    # Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->dataType:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    .line 70
    return-object p0
.end method

.method public setNumberOfCell(I)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->numberOfCell:I

    .line 90
    return-object p0
.end method

.method public setNumberOfRetry(I)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->numberOfRetry:I

    .line 85
    return-object p0
.end method

.method public setOverwriting(Z)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->isOverwriting:Z

    .line 100
    return-object p0
.end method

.method public setTimeBetweenSendMs(I)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->timeBetweenSendMs:I

    .line 75
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\n    ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    dataType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->dataType:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    timeBetweenSendMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->timeBetweenSendMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    ackTimeoutMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->ackTimeoutMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    numberOfRetry = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->numberOfRetry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    numberOfCell = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->numberOfCell:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    dataCopyMaxSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->dataCopyMaxSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    isOverwriting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->isOverwriting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
