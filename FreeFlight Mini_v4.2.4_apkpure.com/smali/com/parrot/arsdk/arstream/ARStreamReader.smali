.class public Lcom/parrot/arsdk/arstream/ARStreamReader;
.super Ljava/lang/Object;
.source "ARStreamReader.java"


# static fields
.field public static final DEFAULT_MAX_ACK_INTERVAL:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ackRunnable:Ljava/lang/Runnable;

.field private cReader:J

.field private currentFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

.field private dataRunnable:Ljava/lang/Runnable;

.field private eventListener:Lcom/parrot/arsdk/arstream/ARStreamReaderListener;

.field private previousFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

.field private valid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/parrot/arsdk/arstream/ARStreamReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arstream/ARStreamReader;->TAG:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/parrot/arsdk/arstream/ARStreamReader;->nativeGetDefaultMaxAckInterval()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/arstream/ARStreamReader;->DEFAULT_MAX_ACK_INTERVAL:I

    .line 404
    invoke-static {}, Lcom/parrot/arsdk/arstream/ARStreamReader;->nativeInitClass()V

    .line 405
    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/arnetwork/ARNetworkManager;IILcom/parrot/arsdk/arsal/ARNativeData;Lcom/parrot/arsdk/arstream/ARStreamReaderListener;II)V
    .locals 13
    .param p1, "netManager"    # Lcom/parrot/arsdk/arnetwork/ARNetworkManager;
    .param p2, "dataBufferId"    # I
    .param p3, "ackBufferId"    # I
    .param p4, "initialFrameBuffer"    # Lcom/parrot/arsdk/arsal/ARNativeData;
    .param p5, "theEventListener"    # Lcom/parrot/arsdk/arstream/ARStreamReaderListener;
    .param p6, "maxFragmentSize"    # I
    .param p7, "maxAckInterval"    # I

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->getManager()J

    move-result-wide v4

    invoke-virtual/range {p4 .. p4}, Lcom/parrot/arsdk/arsal/ARNativeData;->getData()J

    move-result-wide v8

    invoke-virtual/range {p4 .. p4}, Lcom/parrot/arsdk/arsal/ARNativeData;->getCapacity()I

    move-result v10

    move-object v3, p0

    move v6, p2

    move/from16 v7, p3

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-direct/range {v3 .. v12}, Lcom/parrot/arsdk/arstream/ARStreamReader;->nativeConstructor(JIIJIII)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->cReader:J

    .line 144
    iget-wide v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->cReader:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 145
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->valid:Z

    .line 146
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->eventListener:Lcom/parrot/arsdk/arstream/ARStreamReaderListener;

    .line 147
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->currentFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    .line 148
    new-instance v2, Lcom/parrot/arsdk/arstream/ARStreamReader$1;

    invoke-direct {v2, p0}, Lcom/parrot/arsdk/arstream/ARStreamReader$1;-><init>(Lcom/parrot/arsdk/arstream/ARStreamReader;)V

    iput-object v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->dataRunnable:Ljava/lang/Runnable;

    .line 153
    new-instance v2, Lcom/parrot/arsdk/arstream/ARStreamReader$2;

    invoke-direct {v2, p0}, Lcom/parrot/arsdk/arstream/ARStreamReader$2;-><init>(Lcom/parrot/arsdk/arstream/ARStreamReader;)V

    iput-object v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->ackRunnable:Ljava/lang/Runnable;

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->valid:Z

    .line 160
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->dataRunnable:Ljava/lang/Runnable;

    .line 161
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->ackRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/arsdk/arstream/ARStreamReader;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/arsdk/arstream/ARStreamReader;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->cReader:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/arstream/ARStreamReader;J)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arstream/ARStreamReader;
    .param p1, "x1"    # J

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/arstream/ARStreamReader;->nativeRunDataThread(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/arsdk/arstream/ARStreamReader;J)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arstream/ARStreamReader;
    .param p1, "x1"    # J

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/arstream/ARStreamReader;->nativeRunAckThread(J)V

    return-void
.end method

.method private callbackWrapper(IJIZII)[J
    .locals 8
    .param p1, "icause"    # I
    .param p2, "ndPointer"    # J
    .param p4, "ndSize"    # I
    .param p5, "isFlush"    # Z
    .param p6, "nbSkip"    # I
    .param p7, "newBufferCapacity"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 273
    invoke-static {p1}, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    move-result-object v1

    .line 274
    .local v1, "cause":Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;
    if-nez v1, :cond_0

    .line 275
    sget-object v0, Lcom/parrot/arsdk/arstream/ARStreamReader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad cause : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_0
    return-object v6

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->currentFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->currentFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arsal/ARNativeData;->getData()J

    move-result-wide v2

    cmp-long v0, p2, v2

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->previousFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->previousFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    .line 280
    invoke-virtual {v0}, Lcom/parrot/arsdk/arsal/ARNativeData;->getData()J

    move-result-wide v2

    cmp-long v0, p2, v2

    if-eqz v0, :cond_3

    .line 281
    :cond_2
    sget-object v0, Lcom/parrot/arsdk/arstream/ARStreamReader;->TAG:Ljava/lang/String;

    const-string v2, "Bad frame buffer"

    invoke-static {v0, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_3
    sget-object v0, Lcom/parrot/arsdk/arstream/ARStreamReader$3;->$SwitchMap$com$parrot$arsdk$arstream$ARSTREAM_READER_CAUSE_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 303
    sget-object v0, Lcom/parrot/arsdk/arstream/ARStreamReader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown cause :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_1
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->currentFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    if-eqz v0, :cond_4

    .line 307
    new-array v6, v7, [J

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->currentFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arsal/ARNativeData;->getData()J

    move-result-wide v2

    aput-wide v2, v6, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->currentFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arsal/ARNativeData;->getCapacity()I

    move-result v2

    int-to-long v2, v2

    aput-wide v2, v6, v0

    .line 308
    .local v6, "retVal":[J
    goto :goto_0

    .line 287
    .end local v6    # "retVal":[J
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->currentFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arsal/ARNativeData;->setUsedSize(I)Z

    .line 288
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->eventListener:Lcom/parrot/arsdk/arstream/ARStreamReaderListener;

    iget-object v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->currentFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-interface/range {v0 .. v5}, Lcom/parrot/arsdk/arstream/ARStreamReaderListener;->didUpdateFrameStatus(Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;Lcom/parrot/arsdk/arsal/ARNativeData;ZII)Lcom/parrot/arsdk/arsal/ARNativeData;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->currentFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    goto :goto_1

    .line 291
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->currentFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    iput-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->previousFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    .line 292
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->eventListener:Lcom/parrot/arsdk/arstream/ARStreamReaderListener;

    iget-object v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->currentFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-interface/range {v0 .. v5}, Lcom/parrot/arsdk/arstream/ARStreamReaderListener;->didUpdateFrameStatus(Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;Lcom/parrot/arsdk/arsal/ARNativeData;ZII)Lcom/parrot/arsdk/arsal/ARNativeData;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->currentFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    goto :goto_1

    .line 295
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->eventListener:Lcom/parrot/arsdk/arstream/ARStreamReaderListener;

    iget-object v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->previousFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-interface/range {v0 .. v5}, Lcom/parrot/arsdk/arstream/ARStreamReaderListener;->didUpdateFrameStatus(Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;Lcom/parrot/arsdk/arsal/ARNativeData;ZII)Lcom/parrot/arsdk/arsal/ARNativeData;

    .line 296
    iput-object v6, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->previousFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    goto :goto_1

    .line 299
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->eventListener:Lcom/parrot/arsdk/arstream/ARStreamReaderListener;

    iget-object v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->currentFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-interface/range {v0 .. v5}, Lcom/parrot/arsdk/arstream/ARStreamReaderListener;->didUpdateFrameStatus(Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;Lcom/parrot/arsdk/arsal/ARNativeData;ZII)Lcom/parrot/arsdk/arsal/ARNativeData;

    .line 300
    iput-object v6, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->currentFrameBuffer:Lcom/parrot/arsdk/arsal/ARNativeData;

    goto :goto_1

    .line 310
    :cond_4
    new-array v6, v7, [J

    fill-array-data v6, :array_0

    .line 311
    .restart local v6    # "retVal":[J
    goto/16 :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 310
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private native nativeAddFilter(JJ)I
.end method

.method private native nativeConstructor(JIIJIII)J
.end method

.method private native nativeDispose(J)Z
.end method

.method private static native nativeGetDefaultMaxAckInterval()I
.end method

.method private native nativeGetEfficiency(J)F
.end method

.method private static native nativeInitClass()V
.end method

.method private native nativeRunAckThread(J)V
.end method

.method private native nativeRunDataThread(J)V
.end method

.method private static native nativeSetAckBufferParams(JI)V
.end method

.method private static native nativeSetDataBufferParams(JIII)V
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

    invoke-static {v2, v3, p0}, Lcom/parrot/arsdk/arstream/ARStreamReader;->nativeSetAckBufferParams(JI)V

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

    invoke-static {v2, v3, p0, p1, p2}, Lcom/parrot/arsdk/arstream/ARStreamReader;->nativeSetDataBufferParams(JIII)V

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
    .line 259
    if-eqz p1, :cond_0

    .line 260
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->cReader:J

    invoke-interface {p1}, Lcom/parrot/arsdk/arstream/ARStreamFilter;->getFilterPointer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/parrot/arsdk/arstream/ARStreamReader;->nativeAddFilter(JJ)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;->ARSTREAM_ERROR_BAD_PARAMETERS:Lcom/parrot/arsdk/arstream/ARSTREAM_ERROR_ENUM;

    goto :goto_0
.end method

.method public dispose()Z
    .locals 4

    .prologue
    .line 217
    iget-wide v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->cReader:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arstream/ARStreamReader;->nativeDispose(J)Z

    move-result v0

    .line 218
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 219
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->valid:Z

    .line 221
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
    .line 175
    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->valid:Z

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/parrot/arsdk/arstream/ARStreamReader;->TAG:Ljava/lang/String;

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

    .line 177
    invoke-virtual {p0}, Lcom/parrot/arsdk/arstream/ARStreamReader;->stop()V

    .line 178
    invoke-virtual {p0}, Lcom/parrot/arsdk/arstream/ARStreamReader;->dispose()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    sget-object v0, Lcom/parrot/arsdk/arstream/ARStreamReader;->TAG:Ljava/lang/String;

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

    .line 183
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 185
    return-void

    .line 183
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAckRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->ackRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getDataRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->dataRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getEstimatedEfficiency()F
    .locals 2

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->cReader:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arstream/ARStreamReader;->nativeGetEfficiency(J)F

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->valid:Z

    return v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader;->cReader:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arstream/ARStreamReader;->nativeStop(J)V

    .line 207
    return-void
.end method
