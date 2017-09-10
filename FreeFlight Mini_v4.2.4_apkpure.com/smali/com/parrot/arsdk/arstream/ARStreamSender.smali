.class public Lcom/parrot/arsdk/arstream/ARStreamSender;
.super Ljava/lang/Object;
.source "ARStreamSender.java"


# static fields
.field public static final DEFAULT_MAXIUMU_TIME_BETWEEN_RETRIES_MS:I

.field public static final DEFAULT_MINIMUM_TIME_BETWEEN_RETRIES_MS:I

.field public static final INFINITE_TIME_BETWEEN_RETRIES:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ackRunnable:Ljava/lang/Runnable;

.field private cSender:J

.field private dataRunnable:Ljava/lang/Runnable;

.field private eventListener:Lcom/parrot/arsdk/arstream/ARStreamSenderListener;

.field private frames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/parrot/arsdk/arsal/ARNativeData;",
            ">;"
        }
    .end annotation
.end field

.field private valid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/parrot/arsdk/arstream/ARStreamSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arstream/ARStreamSender;->TAG:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/parrot/arsdk/arstream/ARStreamSender;->nativeGetDefaultMinTimeBetweenRetries()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/arstream/ARStreamSender;->DEFAULT_MINIMUM_TIME_BETWEEN_RETRIES_MS:I

    .line 93
    invoke-static {}, Lcom/parrot/arsdk/arstream/ARStreamSender;->nativeGetDefaultMaxTimeBetweenRetries()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/arstream/ARStreamSender;->DEFAULT_MAXIUMU_TIME_BETWEEN_RETRIES_MS:I

    .line 94
    invoke-static {}, Lcom/parrot/arsdk/arstream/ARStreamSender;->nativeGetInfiniteTimeBetweenRetries()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/arstream/ARStreamSender;->INFINITE_TIME_BETWEEN_RETRIES:I

    .line 461
    invoke-static {}, Lcom/parrot/arsdk/arstream/ARStreamSender;->nativeInitClass()V

    .line 462
    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/arnetwork/ARNetworkManager;IILcom/parrot/arsdk/arstream/ARStreamSenderListener;III)V
    .locals 9
    .param p1, "netManager"    # Lcom/parrot/arsdk/arnetwork/ARNetworkManager;
    .param p2, "dataBufferId"    # I
    .param p3, "ackBufferId"    # I
    .param p4, "theEventListener"    # Lcom/parrot/arsdk/arstream/ARStreamSenderListener;
    .param p5, "frameBufferSize"    # I
    .param p6, "maxFragmentSize"    # I
    .param p7, "maxNumberOfFragment"    # I

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {p1}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->getManager()J

    move-result-wide v2

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/parrot/arsdk/arstream/ARStreamSender;->nativeConstructor(JIIIII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->cSender:J

    .line 145
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->cSender:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->valid:Z

    .line 147
    iput-object p4, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->eventListener:Lcom/parrot/arsdk/arstream/ARStreamSenderListener;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    mul-int/lit8 v1, p5, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->frames:Ljava/util/Map;

    .line 150
    new-instance v0, Lcom/parrot/arsdk/arstream/ARStreamSender$1;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/arstream/ARStreamSender$1;-><init>(Lcom/parrot/arsdk/arstream/ARStreamSender;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->dataRunnable:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/parrot/arsdk/arstream/ARStreamSender$2;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/arstream/ARStreamSender$2;-><init>(Lcom/parrot/arsdk/arstream/ARStreamSender;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->ackRunnable:Ljava/lang/Runnable;

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->valid:Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->dataRunnable:Ljava/lang/Runnable;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->ackRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/arsdk/arstream/ARStreamSender;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/arsdk/arstream/ARStreamSender;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->cSender:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/arstream/ARStreamSender;J)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arstream/ARStreamSender;
    .param p1, "x1"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/arstream/ARStreamSender;->nativeRunDataThread(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/arsdk/arstream/ARStreamSender;J)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arstream/ARStreamSender;
    .param p1, "x1"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/arstream/ARStreamSender;->nativeRunAckThread(J)V

    return-void
.end method

.method private callbackWrapper(IJI)V
    .locals 6
    .param p1, "istatus"    # I
    .param p2, "ndPointer"    # J
    .param p4, "ndSize"    # I

    .prologue
    .line 328
    invoke-static {p1}, Lcom/parrot/arsdk/arstream/ARSTREAM_SENDER_STATUS_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arstream/ARSTREAM_SENDER_STATUS_ENUM;

    move-result-object v2

    .line 329
    .local v2, "status":Lcom/parrot/arsdk/arstream/ARSTREAM_SENDER_STATUS_ENUM;
    if-nez v2, :cond_0

    .line 347
    :goto_0
    return-void

    .line 332
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/arstream/ARStreamSender$3;->$SwitchMap$com$parrot$arsdk$arstream$ARSTREAM_SENDER_STATUS_ENUM:[I

    invoke-virtual {v2}, Lcom/parrot/arsdk/arstream/ARSTREAM_SENDER_STATUS_ENUM;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 344
    sget-object v3, Lcom/parrot/arsdk/arstream/ARStreamSender;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown status :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :pswitch_0
    const/4 v1, 0x0

    .line 336
    .local v1, "data":Lcom/parrot/arsdk/arsal/ARNativeData;
    monitor-enter p0

    .line 338
    :try_start_0
    iget-object v3, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->frames:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/arsdk/arsal/ARNativeData;

    move-object v1, v0

    .line 339
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    iget-object v3, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->eventListener:Lcom/parrot/arsdk/arstream/ARStreamSenderListener;

    invoke-interface {v3, v2, v1}, Lcom/parrot/arsdk/arstream/ARStreamSenderListener;->didUpdateFrameStatus(Lcom/parrot/arsdk/arstream/ARSTREAM_SENDER_STATUS_ENUM;Lcom/parrot/arsdk/arsal/ARNativeData;)V

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private native nativeAddFilter(JJ)I
.end method

.method private native nativeConstructor(JIIIII)J
.end method

.method private native nativeDispose(J)Z
.end method

.method private native nativeFlushFrameQueue(J)I
.end method

.method private static native nativeGetDefaultMaxTimeBetweenRetries()I
.end method

.method private static native nativeGetDefaultMinTimeBetweenRetries()I
.end method

.method private native nativeGetEfficiency(J)F
.end method

.method private static native nativeGetInfiniteTimeBetweenRetries()I
.end method

.method private static native nativeInitClass()V
.end method

.method private native nativeRunAckThread(J)V
.end method

.method private native nativeRunDataThread(J)V
.end method

.method private native nativeSendNewFrame(JJIZ)I
.end method

.method private static native nativeSetAckBufferParams(JI)V
.end method

.method private static native nativeSetDataBufferParams(JIII)V
.end method

.method private native nativeSetTimeBetweenRetries(JII)I
.end method

.method private native nativeStop(J)V
.end method

.method public static newAckARNetworkIOBufferParam(I)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    .locals 4
    .param p0, "bufferId"    # I

    .prologue
    .line 120
    new-instance v1, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;

    invoke-direct {v1, p0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;-><init>(I)V

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->build()Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v0

    .line 121
    .local v0, "retParam":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->getNativePointer()J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/parrot/arsdk/arstream/ARStreamSender;->nativeSetAckBufferParams(JI)V

    .line 122
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->updateFromNative()V

    .line 123
    return-object v0
.end method

.method public static newDataARNetworkIOBufferParam(III)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    .locals 4
    .param p0, "bufferId"    # I
    .param p1, "maxFragmentSize"    # I
    .param p2, "maxNumberOfFragment"    # I

    .prologue
    .line 108
    new-instance v1, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;

    invoke-direct {v1, p0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;-><init>(I)V

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParamBuilder;->build()Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v0

    .line 109
    .local v0, "retParam":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->getNativePointer()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1, p2}, Lcom/parrot/arsdk/arstream/ARStreamSender;->nativeSetDataBufferParams(JIII)V

    .line 110
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->updateFromNative()V

    .line 111
    return-object v0
.end method


# virtual methods
.method public addFilter(Lcom/parrot/arsdk/arstream/ARStreamFilter;)Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;
    .locals 4
    .param p1, "filter"    # Lcom/parrot/arsdk/arstream/ARStreamFilter;

    .prologue
    .line 314
    if-eqz p1, :cond_0

    .line 315
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->cSender:J

    invoke-interface {p1}, Lcom/parrot/arsdk/arstream/ARStreamFilter;->getFilterPointer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/parrot/arsdk/arstream/ARStreamSender;->nativeAddFilter(JJ)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;->ARSTREAM_ERROR_BAD_PARAMETERS:Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;

    goto :goto_0
.end method

.method public dispose()Z
    .locals 4

    .prologue
    .line 237
    iget-wide v2, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->cSender:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arstream/ARStreamSender;->nativeDispose(J)Z

    move-result v0

    .line 238
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 239
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->valid:Z

    .line 241
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
    .line 177
    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->valid:Z

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/parrot/arsdk/arstream/ARStreamSender;->TAG:Ljava/lang/String;

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

    .line 179
    invoke-virtual {p0}, Lcom/parrot/arsdk/arstream/ARStreamSender;->stop()V

    .line 180
    invoke-virtual {p0}, Lcom/parrot/arsdk/arstream/ARStreamSender;->dispose()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    sget-object v0, Lcom/parrot/arsdk/arstream/ARStreamSender;->TAG:Ljava/lang/String;

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

    .line 185
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 187
    return-void

    .line 185
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public flushFrameQueue()Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;
    .locals 4

    .prologue
    .line 275
    iget-wide v2, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->cSender:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arstream/ARStreamSender;->nativeFlushFrameQueue(J)I

    move-result v0

    .line 276
    .local v0, "intErr":I
    invoke-static {v0}, Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;

    move-result-object v1

    return-object v1
.end method

.method public getAckRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->ackRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getDataRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->dataRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getEstimatedEfficiency()F
    .locals 2

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->cSender:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arstream/ARStreamSender;->nativeGetEfficiency(J)F

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->valid:Z

    return v0
.end method

.method public sendNewFrame(Lcom/parrot/arsdk/arsal/ARNativeData;Z)Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;
    .locals 9
    .param p1, "frame"    # Lcom/parrot/arsdk/arsal/ARNativeData;
    .param p2, "flush"    # Z

    .prologue
    .line 253
    sget-object v0, Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;->ARSTREAM_ERROR_BAD_PARAMETERS:Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;

    .line 254
    .local v0, "err":Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;
    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->frames:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->getData()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    iget-wide v2, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->cSender:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->getData()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->getDataSize()I

    move-result v6

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/parrot/arsdk/arstream/ARStreamSender;->nativeSendNewFrame(JJIZ)I

    move-result v8

    .line 259
    .local v8, "intErr":I
    invoke-static {v8}, Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;

    move-result-object v0

    .line 260
    sget-object v1, Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;->ARSTREAM_OK:Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;

    if-eq v0, v1, :cond_0

    .line 262
    monitor-enter p0

    .line 264
    :try_start_1
    iget-object v1, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->frames:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->getData()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 267
    :cond_0
    return-object v0

    .line 257
    .end local v8    # "intErr":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 265
    .restart local v8    # "intErr":I
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public setTimeBetweenRetries(II)Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;
    .locals 4
    .param p1, "minTimeMs"    # I
    .param p2, "maxTimeMs"    # I

    .prologue
    .line 207
    iget-wide v2, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->cSender:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/parrot/arsdk/arstream/ARStreamSender;->nativeSetTimeBetweenRetries(JII)I

    move-result v0

    .line 208
    .local v0, "err":I
    invoke-static {v0}, Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;

    move-result-object v1

    return-object v1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamSender;->cSender:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arstream/ARStreamSender;->nativeStop(J)V

    .line 227
    return-void
.end method
