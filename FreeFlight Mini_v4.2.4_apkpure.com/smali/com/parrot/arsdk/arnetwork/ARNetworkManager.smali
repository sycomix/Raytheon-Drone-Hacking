.class public abstract Lcom/parrot/arsdk/arnetwork/ARNetworkManager;
.super Ljava/lang/Object;
.source "ARNetworkManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkManager"


# instance fields
.field private alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

.field private m_initOk:Z

.field public m_receivingRunnable:Lcom/parrot/arsdk/arnetwork/ReceivingRunnable;

.field public m_sendingRunnable:Lcom/parrot/arsdk/arnetwork/SendingRunnable;

.field private nativeManager:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 69
    invoke-static {}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeStaticInit()V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;I)V
    .locals 10
    .param p1, "osSpecificManager"    # Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;
    .param p2, "inputParamArray"    # [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    .param p3, "outputParamArray"    # [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    .param p4, "timeBetweenPingsMs"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->getValue()I

    move-result v9

    .line 82
    .local v9, "error":I
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_initOk:Z

    .line 83
    invoke-virtual {p1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->getManager()J

    move-result-wide v2

    array-length v4, p2

    array-length v6, p3

    move-object v1, p0

    move-object v5, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeNew(JI[Ljava/lang/Object;I[Ljava/lang/Object;II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeManager:J

    .line 85
    const-string v0, "NetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_initOk:Z

    .line 90
    new-instance v0, Lcom/parrot/arsdk/arnetwork/SendingRunnable;

    iget-wide v2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeManager:J

    invoke-direct {v0, v2, v3}, Lcom/parrot/arsdk/arnetwork/SendingRunnable;-><init>(J)V

    iput-object v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_sendingRunnable:Lcom/parrot/arsdk/arnetwork/SendingRunnable;

    .line 91
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ReceivingRunnable;

    iget-wide v2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeManager:J

    invoke-direct {v0, v2, v3}, Lcom/parrot/arsdk/arnetwork/ReceivingRunnable;-><init>(J)V

    iput-object v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_receivingRunnable:Lcom/parrot/arsdk/arnetwork/ReceivingRunnable;

    .line 92
    iput-object p1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    .line 94
    :cond_0
    return-void
.end method

.method private callback(ILcom/parrot/arsdk/arsal/ARNativeData;ILjava/lang/Object;)I
    .locals 3
    .param p1, "IoBufferId"    # I
    .param p2, "data"    # Lcom/parrot/arsdk/arsal/ARNativeData;
    .param p3, "status"    # I
    .param p4, "customData"    # Ljava/lang/Object;

    .prologue
    .line 307
    invoke-static {p3}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_STATUS_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_STATUS_ENUM;

    move-result-object v0

    .line 309
    .local v0, "jStatus":Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_STATUS_ENUM;
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->onCallback(ILcom/parrot/arsdk/arsal/ARNativeData;Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_STATUS_ENUM;Ljava/lang/Object;)Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    move-result-object v1

    .line 311
    .local v1, "retVal":Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_STATUS_ENUM;->ARNETWORK_MANAGER_CALLBACK_STATUS_DONE:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_STATUS_ENUM;

    if-ne v0, v2, :cond_0

    .line 313
    invoke-virtual {p2}, Lcom/parrot/arsdk/arsal/ARNativeData;->dispose()V

    .line 316
    :cond_0
    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->getValue()I

    move-result v2

    return v2
.end method

.method private disconnectCallback()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {p0, v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->onDisconnect(Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;)V

    .line 331
    return-void
.end method

.method private native nativeDelete(J)I
.end method

.method private native nativeFlush(J)I
.end method

.method private native nativeNew(JI[Ljava/lang/Object;I[Ljava/lang/Object;II)J
.end method

.method private native nativeReadData(JIJILcom/parrot/arsdk/arsal/ARNativeData;)I
.end method

.method private native nativeReadDataWithTimeout(JIJILcom/parrot/arsdk/arsal/ARNativeData;I)I
.end method

.method private native nativeSendData(JILcom/parrot/arsdk/arsal/ARNativeData;JILjava/lang/Object;I)I
.end method

.method private static native nativeStaticInit()V
.end method

.method private native nativeStop(J)V
.end method

.method private native nativeTryReadData(JIJILcom/parrot/arsdk/arsal/ARNativeData;)I
.end method


# virtual methods
.method public Flush()Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    .locals 4

    .prologue
    .line 142
    sget-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 143
    .local v0, "error":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    iget-boolean v2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_initOk:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 145
    iget-wide v2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeFlush(J)I

    move-result v1

    .line 146
    .local v1, "intError":I
    invoke-static {v1}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    move-result-object v0

    .line 153
    .end local v1    # "intError":I
    :goto_0
    return-object v0

    .line 150
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_initOk:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 103
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeManager:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeDelete(J)I

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeManager:J

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_initOk:Z

    .line 107
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 335
    const-string v0, "0x%08x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeManager:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManager()J
    .locals 2

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeManager:J

    return-wide v0
.end method

.method public isCorrectlyInitialized()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_initOk:Z

    return v0
.end method

.method public abstract onCallback(ILcom/parrot/arsdk/arsal/ARNativeData;Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_STATUS_ENUM;Ljava/lang/Object;)Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
.end method

.method public abstract onDisconnect(Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;)V
.end method

.method public readData(ILcom/parrot/arsdk/arsal/ARNativeData;)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    .locals 10
    .param p1, "outputBufferID"    # I
    .param p2, "data"    # Lcom/parrot/arsdk/arsal/ARNativeData;

    .prologue
    .line 210
    sget-object v8, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 211
    .local v8, "error":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    iget-boolean v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_initOk:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 213
    iget-wide v1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeManager:J

    invoke-virtual {p2}, Lcom/parrot/arsdk/arsal/ARNativeData;->getData()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/parrot/arsdk/arsal/ARNativeData;->getCapacity()I

    move-result v6

    move-object v0, p0

    move v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeReadData(JIJILcom/parrot/arsdk/arsal/ARNativeData;)I

    move-result v9

    .line 214
    .local v9, "intError":I
    invoke-static {v9}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    move-result-object v8

    .line 221
    .end local v9    # "intError":I
    :goto_0
    return-object v8

    .line 218
    :cond_0
    sget-object v8, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    goto :goto_0
.end method

.method public readDataWithTimeout(ILcom/parrot/arsdk/arsal/ARNativeData;I)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    .locals 11
    .param p1, "outputBufferID"    # I
    .param p2, "data"    # Lcom/parrot/arsdk/arsal/ARNativeData;
    .param p3, "timeoutMs"    # I

    .prologue
    .line 255
    sget-object v9, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 256
    .local v9, "error":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    iget-boolean v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_initOk:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 258
    iget-wide v1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeManager:J

    invoke-virtual {p2}, Lcom/parrot/arsdk/arsal/ARNativeData;->getData()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/parrot/arsdk/arsal/ARNativeData;->getCapacity()I

    move-result v6

    move-object v0, p0

    move v3, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeReadDataWithTimeout(JIJILcom/parrot/arsdk/arsal/ARNativeData;I)I

    move-result v10

    .line 259
    .local v10, "intError":I
    invoke-static {v10}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    move-result-object v9

    .line 266
    .end local v10    # "intError":I
    :goto_0
    return-object v9

    .line 263
    :cond_0
    sget-object v9, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    goto :goto_0
.end method

.method public sendData(ILcom/parrot/arsdk/arsal/ARNativeData;Ljava/lang/Object;Z)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    .locals 12
    .param p1, "inputBufferID"    # I
    .param p2, "arData"    # Lcom/parrot/arsdk/arsal/ARNativeData;
    .param p3, "customData"    # Ljava/lang/Object;
    .param p4, "doDataCopy"    # Z

    .prologue
    .line 165
    sget-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 167
    .local v0, "error":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    if-eqz p4, :cond_1

    const/4 v10, 0x1

    .line 169
    .local v10, "doDataCopyInt":I
    :goto_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_initOk:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    if-eqz p2, :cond_3

    .line 171
    invoke-virtual {p2}, Lcom/parrot/arsdk/arsal/ARNativeData;->getData()J

    move-result-wide v6

    .line 172
    .local v6, "dataPtr":J
    invoke-virtual {p2}, Lcom/parrot/arsdk/arsal/ARNativeData;->getDataSize()I

    move-result v8

    .line 175
    .local v8, "dataSize":I
    if-eqz p4, :cond_2

    .line 177
    new-instance v5, Lcom/parrot/arsdk/arsal/ARNativeData;

    invoke-direct {v5, p2}, Lcom/parrot/arsdk/arsal/ARNativeData;-><init>(Lcom/parrot/arsdk/arsal/ARNativeData;)V

    .line 178
    .local v5, "jData":Lcom/parrot/arsdk/arsal/ARNativeData;
    invoke-virtual {p2}, Lcom/parrot/arsdk/arsal/ARNativeData;->getDataSize()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/parrot/arsdk/arsal/ARNativeData;->setUsedSize(I)Z

    .line 185
    :goto_1
    iget-wide v2, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeManager:J

    move-object v1, p0

    move v4, p1

    move-object v9, p3

    invoke-direct/range {v1 .. v10}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeSendData(JILcom/parrot/arsdk/arsal/ARNativeData;JILjava/lang/Object;I)I

    move-result v11

    .line 186
    .local v11, "intError":I
    invoke-static {v11}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    move-result-object v0

    .line 188
    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    if-eq v0, v1, :cond_0

    if-eqz p4, :cond_0

    .line 190
    invoke-virtual {v5}, Lcom/parrot/arsdk/arsal/ARNativeData;->dispose()V

    .line 198
    .end local v5    # "jData":Lcom/parrot/arsdk/arsal/ARNativeData;
    .end local v6    # "dataPtr":J
    .end local v8    # "dataSize":I
    .end local v11    # "intError":I
    :cond_0
    :goto_2
    return-object v0

    .line 167
    .end local v10    # "doDataCopyInt":I
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 182
    .restart local v6    # "dataPtr":J
    .restart local v8    # "dataSize":I
    .restart local v10    # "doDataCopyInt":I
    :cond_2
    move-object v5, p2

    .restart local v5    # "jData":Lcom/parrot/arsdk/arsal/ARNativeData;
    goto :goto_1

    .line 195
    .end local v5    # "jData":Lcom/parrot/arsdk/arsal/ARNativeData;
    .end local v6    # "dataPtr":J
    .end local v8    # "dataSize":I
    :cond_3
    sget-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    goto :goto_2
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_initOk:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 132
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeManager:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeStop(J)V

    .line 134
    :cond_0
    return-void
.end method

.method public tryReadData(ILcom/parrot/arsdk/arsal/ARNativeData;)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    .locals 10
    .param p1, "outputBufferID"    # I
    .param p2, "data"    # Lcom/parrot/arsdk/arsal/ARNativeData;

    .prologue
    .line 232
    sget-object v8, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 233
    .local v8, "error":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    iget-boolean v0, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_initOk:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 235
    iget-wide v1, p0, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeManager:J

    invoke-virtual {p2}, Lcom/parrot/arsdk/arsal/ARNativeData;->getData()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/parrot/arsdk/arsal/ARNativeData;->getCapacity()I

    move-result v6

    move-object v0, p0

    move v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->nativeTryReadData(JIJILcom/parrot/arsdk/arsal/ARNativeData;)I

    move-result v9

    .line 236
    .local v9, "intError":I
    invoke-static {v9}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    move-result-object v8

    .line 243
    .end local v9    # "intError":I
    :goto_0
    return-object v8

    .line 240
    :cond_0
    sget-object v8, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    goto :goto_0
.end method
