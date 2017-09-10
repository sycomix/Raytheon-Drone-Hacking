.class public Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;
.super Ljava/lang/Object;
.source "ARStreamReader2Resender.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cResender:J

.field private controlThread:Ljava/lang/Thread;

.field private streamThread:Ljava/lang/Thread;

.field private valid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/arstream/ARStreamReader2;Ljava/lang/String;IIIIIIII)V
    .locals 13
    .param p1, "reader"    # Lcom/parrot/arsdk/arstream/ARStreamReader2;
    .param p2, "clientAddress"    # Ljava/lang/String;
    .param p3, "clientStreamPort"    # I
    .param p4, "clientControlPort"    # I
    .param p5, "serverStreamPort"    # I
    .param p6, "serverControlPort"    # I
    .param p7, "maxPacketSize"    # I
    .param p8, "targetPacketSize"    # I
    .param p9, "maxLatency"    # I
    .param p10, "maxNetworkLatency"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARStreamReader2Resender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p1}, Lcom/parrot/arsdk/arstream/ARStreamReader2;->getCReader()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->nativeConstructor(JLjava/lang/String;IIIIIIII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->cResender:J

    .line 80
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->cResender:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->valid:Z

    .line 81
    iget-boolean v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->valid:Z

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender$1;

    invoke-direct {v1, p0}, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender$1;-><init>(Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;)V

    const-string v2, "Resender streamThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->streamThread:Ljava/lang/Thread;

    .line 92
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender$2;

    invoke-direct {v1, p0}, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender$2;-><init>(Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;)V

    const-string v2, "Resender controlThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->controlThread:Ljava/lang/Thread;

    .line 103
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->streamThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 104
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->controlThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 110
    :goto_1
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_1
    sget-object v0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->TAG:Ljava/lang/String;

    const-string v1, "ARStreamReader2Resender error creating native resender"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->cResender:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;J)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;
    .param p1, "x1"    # J

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->nativeRunStreamThread(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;J)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;
    .param p1, "x1"    # J

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->nativeRunControlThread(J)V

    return-void
.end method

.method private native nativeConstructor(JLjava/lang/String;IIIIIIII)J
.end method

.method private native nativeDispose(J)Z
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
    .line 179
    iget-wide v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->cResender:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->nativeDispose(J)Z

    move-result v0

    .line 180
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 181
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->valid:Z

    .line 183
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
    .line 121
    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->valid:Z

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->TAG:Ljava/lang/String;

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

    .line 123
    invoke-virtual {p0}, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->stop()V

    .line 124
    invoke-virtual {p0}, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->dispose()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->TAG:Ljava/lang/String;

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

    .line 129
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 131
    return-void

    .line 129
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->valid:Z

    return v0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 153
    iget-wide v2, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->cResender:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->nativeStop(J)V

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->streamThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->streamThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->controlThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->controlThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
