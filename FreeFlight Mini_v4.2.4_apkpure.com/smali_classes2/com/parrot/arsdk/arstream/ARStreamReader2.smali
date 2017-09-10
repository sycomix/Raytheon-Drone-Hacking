.class public Lcom/parrot/arsdk/arstream/ARStreamReader2;
.super Ljava/lang/Object;
.source "ARStreamReader2.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cReader:J

.field private final listener:Lcom/parrot/arsdk/arstream/ARStreamReader2Listener;

.field private naluBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

.field private previousnaluBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

.field private valid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/parrot/arsdk/arstream/ARStreamReader2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->TAG:Ljava/lang/String;

    .line 279
    invoke-static {}, Lcom/parrot/arsdk/arstream/ARStreamReader2;->nativeInitClass()V

    .line 280
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIIIILcom/parrot/arsdk/arstream/ARStreamReader2Listener;)V
    .locals 4
    .param p1, "serverAddress"    # Ljava/lang/String;
    .param p2, "serverStreamPort"    # I
    .param p3, "serverControlPort"    # I
    .param p4, "clientStreamPort"    # I
    .param p5, "clientControlPort"    # I
    .param p6, "maxPacketSize"    # I
    .param p7, "maxBitrate"    # I
    .param p8, "maxLatency"    # I
    .param p9, "maxNetworkLatency"    # I
    .param p10, "naluBufferSize"    # I
    .param p11, "listener"    # Lcom/parrot/arsdk/arstream/ARStreamReader2Listener;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p11, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->listener:Lcom/parrot/arsdk/arstream/ARStreamReader2Listener;

    .line 92
    new-instance v0, Lcom/parrot/arsdk/arsal/ARNativeData;

    invoke-direct {v0, p10}, Lcom/parrot/arsdk/arsal/ARNativeData;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->naluBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    .line 93
    invoke-direct/range {p0 .. p9}, Lcom/parrot/arsdk/arstream/ARStreamReader2;->nativeConstructor(Ljava/lang/String;IIIIIIII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->cReader:J

    .line 94
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->cReader:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->valid:Z

    .line 95
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private callbackWrapper(IJIZZJII)[J
    .locals 13
    .param p1, "icause"    # I
    .param p2, "naluBufferPtr"    # J
    .param p4, "naluSize"    # I
    .param p5, "isFirstNaluInAu"    # Z
    .param p6, "sLastNaluInAu"    # Z
    .param p7, "auTimeStamp"    # J
    .param p9, "missingPacketsBefore"    # I
    .param p10, "newBufferCapacity"    # I

    .prologue
    .line 187
    invoke-static {p1}, Lcom/parrot/arsdk/arstream/ARSTREAM_READER2_CAUSE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arstream/ARSTREAM_READER2_CAUSE_ENUM;

    move-result-object v9

    .line 188
    .local v9, "cause":Lcom/parrot/arsdk/arstream/ARSTREAM_READER2_CAUSE_ENUM;
    if-nez v9, :cond_0

    .line 189
    sget-object v2, Lcom/parrot/arsdk/arstream/ARStreamReader2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad cause : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v10, 0x0

    .line 225
    :goto_0
    return-object v10

    .line 193
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/arstream/ARStreamReader2$1;->$SwitchMap$com$parrot$arsdk$arstream$ARSTREAM_READER2_CAUSE_ENUM:[I

    invoke-virtual {v9}, Lcom/parrot/arsdk/arstream/ARSTREAM_READER2_CAUSE_ENUM;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 217
    sget-object v2, Lcom/parrot/arsdk/arstream/ARStreamReader2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown cause :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->naluBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    if-eqz v2, :cond_1

    .line 221
    const/4 v2, 0x2

    new-array v10, v2, [J

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->naluBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    invoke-virtual {v3}, Lcom/parrot/arsdk/arsal/ARNativeData;->getData()J

    move-result-wide v4

    aput-wide v4, v10, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->naluBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    invoke-virtual {v3}, Lcom/parrot/arsdk/arsal/ARNativeData;->getCapacity()I

    move-result v3

    int-to-long v4, v3

    aput-wide v4, v10, v2

    .line 222
    .local v10, "retVal":[J
    goto :goto_0

    .line 195
    .end local v10    # "retVal":[J
    :pswitch_1
    iget-object v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->naluBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/parrot/arsdk/arsal/ARNativeData;->setUsedSize(I)Z

    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->listener:Lcom/parrot/arsdk/arstream/ARStreamReader2Listener;

    iget-object v3, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->naluBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    move/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move/from16 v8, p9

    invoke-interface/range {v2 .. v8}, Lcom/parrot/arsdk/arstream/ARStreamReader2Listener;->onNaluReceived(Lcom/parrot/arsdk/arsal/ARNativeData;ZZJI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_2
    iget-object v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->naluBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/arsal/ARNativeData;->setUsedSize(I)Z

    goto :goto_1

    .line 200
    :catch_0
    move-exception v11

    .line 202
    .local v11, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/parrot/arsdk/arstream/ARStreamReader2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in onNaluReceived callback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 207
    .end local v11    # "t":Ljava/lang/Throwable;
    :pswitch_2
    iget-object v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->naluBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    iput-object v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->previousnaluBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    .line 208
    new-instance v2, Lcom/parrot/arsdk/arsal/ARNativeData;

    move/from16 v0, p10

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/arsal/ARNativeData;-><init>(I)V

    iput-object v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->naluBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    .line 209
    sget-object v2, Lcom/parrot/arsdk/arstream/ARStreamReader2;->TAG:Ljava/lang/String;

    const-string v3, "ARSTREAM_READER2_CAUSE_NALU_BUFFER_TOO_SMALL"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 212
    :pswitch_3
    iget-object v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->previousnaluBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arsal/ARNativeData;->dispose()V

    goto :goto_1

    .line 224
    :cond_1
    const/4 v2, 0x2

    new-array v10, v2, [J

    fill-array-data v10, :array_0

    .line 225
    .restart local v10    # "retVal":[J
    goto/16 :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 224
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private native nativeConstructor(Ljava/lang/String;IIIIIIII)J
.end method

.method private native nativeDispose(J)Z
.end method

.method private static native nativeInitClass()V
.end method

.method private native nativeRunControlThread(J)V
.end method

.method private native nativeRunStreamThread(J)V
.end method

.method private native nativeStop(J)V
.end method


# virtual methods
.method public dispose()Z
    .locals 4

    .prologue
    .line 164
    iget-wide v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->cReader:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arstream/ARStreamReader2;->nativeDispose(J)Z

    move-result v0

    .line 165
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 166
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->valid:Z

    .line 168
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->valid:Z

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not disposed !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/parrot/arsdk/arstream/ARStreamReader2;->stop()V

    .line 109
    invoke-virtual {p0}, Lcom/parrot/arsdk/arstream/ARStreamReader2;->dispose()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to dispose object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ... leaking memory !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 116
    return-void

    .line 114
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getCReader()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->cReader:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->valid:Z

    return v0
.end method

.method public runReaderControl()V
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->cReader:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arstream/ARStreamReader2;->nativeRunControlThread(J)V

    .line 146
    return-void
.end method

.method public runReaderStream()V
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->cReader:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arstream/ARStreamReader2;->nativeRunStreamThread(J)V

    .line 138
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2;->cReader:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arstream/ARStreamReader2;->nativeStop(J)V

    .line 154
    return-void
.end method
