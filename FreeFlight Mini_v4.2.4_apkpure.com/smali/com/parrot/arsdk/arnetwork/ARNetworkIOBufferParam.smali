.class public Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
.super Ljava/lang/Object;
.source "ARNetworkIOBufferParam.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static ARNETWORK_IOBUFFERPARAM_DATACOPYMAXSIZE_USE_MAX:I

.field public static ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ackTimeoutMs:I

.field private cIOBufferParam:J

.field private copyMaxSize:I

.field private dataType:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

.field private id:I

.field private isOverwriting:Z

.field private numberOfCell:I

.field private numberOfRetry:I

.field private timeBetweenSend:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->TAG:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeStaticGetInfiniteNumber()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

    .line 89
    invoke-static {}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeStaticGetDataCopyMaxSizeUseMax()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_DATACOPYMAXSIZE_USE_MAX:I

    .line 90
    return-void
.end method

.method public constructor <init>(ILcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;IIIIIZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "dataType"    # Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;
    .param p3, "timeBetweenSendMs"    # I
    .param p4, "ackTimeoutMs"    # I
    .param p5, "numberOfRetry"    # I
    .param p6, "numberOfCell"    # I
    .param p7, "dataCopyMaxSize"    # I
    .param p8, "isOverwriting"    # Z

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-direct {p0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    .line 107
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeSetId(JI)V

    .line 108
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    invoke-virtual {p2}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;->getValue()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeSetDataType(JI)V

    .line 109
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    invoke-direct {p0, v0, v1, p3}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeSetTimeBetweenSend(JI)V

    .line 110
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    invoke-direct {p0, v0, v1, p4}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeSetAckTimeoutMs(JI)V

    .line 111
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    invoke-direct {p0, v0, v1, p5}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeSetNumberOfRetry(JI)V

    .line 112
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    invoke-direct {p0, v0, v1, p6}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeSetNumberOfCell(JI)V

    .line 113
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    invoke-direct {p0, v0, v1, p7}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeSetDataCopyMaxSize(JI)V

    .line 114
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    invoke-direct {p0, v0, v1, p8}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeSetIsOverwriting(JZ)V

    .line 116
    iput p1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->id:I

    .line 117
    iput-object p2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dataType:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    .line 118
    iget v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->timeBetweenSend:I

    iput v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->timeBetweenSend:I

    .line 119
    iput p4, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ackTimeoutMs:I

    .line 120
    iput p5, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->numberOfRetry:I

    .line 121
    iput p6, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->numberOfCell:I

    .line 122
    iput p7, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->copyMaxSize:I

    .line 123
    iput-boolean p8, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->isOverwriting:Z

    .line 124
    return-void
.end method

.method private native nativeDelete(J)V
.end method

.method private native nativeGetAckTimeoutMs(J)I
.end method

.method private native nativeGetDataCopyMaxSize(J)I
.end method

.method private native nativeGetDataType(J)I
.end method

.method private native nativeGetId(J)I
.end method

.method private native nativeGetIsOverwriting(J)Z
.end method

.method private native nativeGetNumberOfCell(J)I
.end method

.method private native nativeGetNumberOfRetry(J)I
.end method

.method private native nativeGetTimeBetweenSend(J)I
.end method

.method private native nativeNew()J
.end method

.method private native nativeSetAckTimeoutMs(JI)V
.end method

.method private native nativeSetDataCopyMaxSize(JI)V
.end method

.method private native nativeSetDataType(JI)V
.end method

.method private native nativeSetId(JI)V
.end method

.method private native nativeSetIsOverwriting(JZ)V
.end method

.method private native nativeSetNumberOfCell(JI)V
.end method

.method private native nativeSetNumberOfRetry(JI)V
.end method

.method private native nativeSetTimeBetweenSend(JI)V
.end method

.method private static native nativeStaticGetDataCopyMaxSizeUseMax()I
.end method

.method private static native nativeStaticGetInfiniteNumber()I
.end method


# virtual methods
.method public clone()Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    .locals 9

    .prologue
    .line 225
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    iget v1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->id:I

    iget-object v2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dataType:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    iget v3, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->timeBetweenSend:I

    iget v4, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ackTimeoutMs:I

    iget v5, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->numberOfRetry:I

    iget v6, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->numberOfCell:I

    iget v7, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->copyMaxSize:I

    iget-boolean v8, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->isOverwriting:Z

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;-><init>(ILcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;IIIIIZ)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->clone()Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 145
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 146
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeDelete(J)V

    .line 147
    iput-wide v2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    .line 149
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not disposed by the application !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 163
    return-void

    .line 161
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAckTimeoutMs()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ackTimeoutMs:I

    return v0
.end method

.method public getCopyMaxSize()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->copyMaxSize:I

    return v0
.end method

.method public getDataType()Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dataType:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->id:I

    return v0
.end method

.method public getIsOverwriting()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->isOverwriting:Z

    return v0
.end method

.method public getNativePointer()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    return-wide v0
.end method

.method public getNumberOfCell()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->numberOfCell:I

    return v0
.end method

.method public getNumberOfRetry()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->numberOfRetry:I

    return v0
.end method

.method public getTimeBetweenSend()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->timeBetweenSend:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "< id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " | dataType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dataType:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " | timeBetweenSend = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->timeBetweenSend:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " | ackTimeoutMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ackTimeoutMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " | numberOfRetry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->numberOfRetry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " | numberOfCell = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->numberOfCell:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " | copyMaxSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->copyMaxSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " | isOverwriting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->isOverwriting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFromNative()V
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeGetId(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->id:I

    .line 132
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeGetDataType(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dataType:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    .line 133
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeGetTimeBetweenSend(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->timeBetweenSend:I

    .line 134
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeGetAckTimeoutMs(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ackTimeoutMs:I

    .line 135
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeGetNumberOfRetry(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->numberOfRetry:I

    .line 136
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeGetNumberOfCell(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->numberOfCell:I

    .line 137
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeGetDataCopyMaxSize(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->copyMaxSize:I

    .line 138
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->cIOBufferParam:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->nativeGetIsOverwriting(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->isOverwriting:Z

    .line 139
    return-void
.end method
