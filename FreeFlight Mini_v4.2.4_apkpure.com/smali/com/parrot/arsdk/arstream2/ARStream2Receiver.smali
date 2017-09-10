.class public Lcom/parrot/arsdk/arstream2/ARStream2Receiver;
.super Ljava/lang/Object;
.source "ARStream2Receiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final arstream2ManagerNativeRef:J

.field private buffers:[Ljava/nio/ByteBuffer;

.field private final listener:Lcom/parrot/arsdk/arstream2/ARStream2ReceiverListener;

.field private final nativeRef:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->TAG:Ljava/lang/String;

    .line 137
    invoke-static {}, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->nativeInitClass()V

    .line 138
    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/arstream2/ARStream2Manager;Lcom/parrot/arsdk/arstream2/ARStream2ReceiverListener;)V
    .locals 2
    .param p1, "manager"    # Lcom/parrot/arsdk/arstream2/ARStream2Manager;
    .param p2, "listener"    # Lcom/parrot/arsdk/arstream2/ARStream2ReceiverListener;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->listener:Lcom/parrot/arsdk/arstream2/ARStream2ReceiverListener;

    .line 21
    invoke-virtual {p1}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->getNativeRef()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->arstream2ManagerNativeRef:J

    .line 22
    invoke-direct {p0}, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->nativeRef:J

    .line 23
    return-void
.end method

.method private getBuffer(I)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "bufferIdx"    # I

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->buffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 101
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in getBuffer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getFreeBufferIdx()I
    .locals 5

    .prologue
    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->listener:Lcom/parrot/arsdk/arstream2/ARStream2ReceiverListener;

    invoke-interface {v2}, Lcom/parrot/arsdk/arstream2/ARStream2ReceiverListener;->getFreeBuffer()I

    move-result v0

    .line 82
    .local v0, "bufferIdx":I
    if-ltz v0, :cond_0

    .line 91
    .end local v0    # "bufferIdx":I
    :goto_0
    return v0

    .line 86
    .restart local v0    # "bufferIdx":I
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->TAG:Ljava/lang/String;

    const-string v3, "\tNo more free buffers"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "bufferIdx":I
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 89
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getFreeBufferIdx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private native nativeFree(J)V
.end method

.method private native nativeInit()J
.end method

.method private static native nativeInitClass()V
.end method

.method private native nativeStart(JJ)Z
.end method

.method private native nativeStop(J)Z
.end method

.method private onBufferReady(IIJIJJJI)I
    .locals 16
    .param p1, "bufferIdx"    # I
    .param p2, "auSize"    # I
    .param p3, "metadata"    # J
    .param p5, "metadataSize"    # I
    .param p6, "auTimestamp"    # J
    .param p8, "auTimestampRaw"    # J
    .param p10, "auTimestampLocal"    # J
    .param p12, "iAuSyncType"    # I

    .prologue
    .line 109
    invoke-static/range {p12 .. p12}, Lcom/parrot/arsdk/arstream2/ARSTREAM2_STREAM_RECEIVER_AU_SYNC_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arstream2/ARSTREAM2_STREAM_RECEIVER_AU_SYNC_TYPE_ENUM;

    move-result-object v14

    .line 110
    .local v14, "auSyncType":Lcom/parrot/arsdk/arstream2/ARSTREAM2_STREAM_RECEIVER_AU_SYNC_TYPE_ENUM;
    if-nez v14, :cond_0

    .line 112
    sget-object v3, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad au sync type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p12

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v3, -0x1

    .line 127
    :goto_0
    return v3

    .line 118
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->buffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v3, p1

    .line 120
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->listener:Lcom/parrot/arsdk/arstream2/ARStream2ReceiverListener;

    move/from16 v4, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-interface/range {v3 .. v14}, Lcom/parrot/arsdk/arstream2/ARStream2ReceiverListener;->onBufferReady(IJIJJJLcom/parrot/arsdk/arstream2/ARSTREAM2_STREAM_RECEIVER_AU_SYNC_TYPE_ENUM;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    const/4 v3, 0x0

    goto :goto_0

    .line 123
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v15

    .line 125
    .local v15, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in onBufferReady"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private onSpsPpsReady(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v1, -0x1

    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->listener:Lcom/parrot/arsdk/arstream2/ARStream2ReceiverListener;

    invoke-interface {v2, p1, p2}, Lcom/parrot/arsdk/arstream2/ARStream2ReceiverListener;->onSpsPpsReady(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->buffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    iget-object v2, p0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->buffers:[Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    .line 72
    const/4 v1, 0x0

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in onSpsPpsReady"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->buffers:[Ljava/nio/ByteBuffer;

    .line 54
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->nativeFree(J)V

    .line 55
    return-void
.end method

.method public isValid()Z
    .locals 4

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->arstream2ManagerNativeRef:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->arstream2ManagerNativeRef:J

    iget-wide v2, p0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->nativeRef:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->nativeStart(JJ)Z

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unable to start, resender is not valid! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->arstream2ManagerNativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->nativeStop(J)Z

    .line 49
    :cond_0
    return-void
.end method
