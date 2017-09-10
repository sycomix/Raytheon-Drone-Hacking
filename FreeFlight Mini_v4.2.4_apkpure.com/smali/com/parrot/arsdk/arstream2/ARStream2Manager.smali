.class public Lcom/parrot/arsdk/arstream2/ARStream2Manager;
.super Ljava/lang/Object;
.source "ARStream2Manager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final nativeRef:J

.field private final networkThread:Ljava/lang/Thread;

.field private final outputThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/parrot/mux/Mux;Ljava/lang/String;I)V
    .locals 7
    .param p1, "mux"    # Lcom/parrot/mux/Mux;
    .param p2, "canonicalName"    # Ljava/lang/String;
    .param p3, "maxPacketSize"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 20
    .local v5, "friendlyName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/parrot/mux/Mux;->newMuxRef()Lcom/parrot/mux/Mux$Ref;

    move-result-object v0

    .line 21
    .local v0, "muxRef":Lcom/parrot/mux/Mux$Ref;
    invoke-virtual {v0}, Lcom/parrot/mux/Mux$Ref;->getCPtr()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->nativeMuxInit(JLjava/lang/String;Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->nativeRef:J

    .line 22
    invoke-virtual {v0}, Lcom/parrot/mux/Mux$Ref;->release()V

    .line 23
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/parrot/arsdk/arstream2/ARStream2Manager$1;

    invoke-direct {v2, p0}, Lcom/parrot/arsdk/arstream2/ARStream2Manager$1;-><init>(Lcom/parrot/arsdk/arstream2/ARStream2Manager;)V

    const-string v3, "ARStream2Stream"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->networkThread:Ljava/lang/Thread;

    .line 32
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/parrot/arsdk/arstream2/ARStream2Manager$2;

    invoke-direct {v2, p0}, Lcom/parrot/arsdk/arstream2/ARStream2Manager$2;-><init>(Lcom/parrot/arsdk/arstream2/ARStream2Manager;)V

    const-string v3, "ARStream2Filter"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->outputThread:Ljava/lang/Thread;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;ILcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;)V
    .locals 12
    .param p1, "serverAddress"    # Ljava/lang/String;
    .param p2, "serverStreamPort"    # I
    .param p3, "serverControlPort"    # I
    .param p4, "clientStreamPort"    # I
    .param p5, "clientControlPort"    # I
    .param p6, "canonicalName"    # Ljava/lang/String;
    .param p7, "maxPacketSize"    # I
    .param p8, "classSelector"    # Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 48
    .local v9, "friendlyName":Ljava/lang/String;
    invoke-virtual/range {p8 .. p8}, Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;->getValue()I

    move-result v11

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v10, p7

    .line 47
    invoke-direct/range {v2 .. v11}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->nativeNetInit(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;II)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->nativeRef:J

    .line 49
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/parrot/arsdk/arstream2/ARStream2Manager$3;

    invoke-direct {v3, p0}, Lcom/parrot/arsdk/arstream2/ARStream2Manager$3;-><init>(Lcom/parrot/arsdk/arstream2/ARStream2Manager;)V

    const-string v4, "ARStream2Stream"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->networkThread:Ljava/lang/Thread;

    .line 58
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/parrot/arsdk/arstream2/ARStream2Manager$4;

    invoke-direct {v3, p0}, Lcom/parrot/arsdk/arstream2/ARStream2Manager$4;-><init>(Lcom/parrot/arsdk/arstream2/ARStream2Manager;)V

    const-string v4, "ARStream2Filter"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->outputThread:Ljava/lang/Thread;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/arsdk/arstream2/ARStream2Manager;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    .prologue
    .line 10
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->nativeRef:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/arstream2/ARStream2Manager;J)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arstream2/ARStream2Manager;
    .param p1, "x1"    # J

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->nativeRunNetworkThread(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/arsdk/arstream2/ARStream2Manager;J)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arstream2/ARStream2Manager;
    .param p1, "x1"    # J

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->nativeRunOutputThread(J)V

    return-void
.end method

.method private native nativeFree(J)Z
.end method

.method private native nativeMuxInit(JLjava/lang/String;Ljava/lang/String;I)J
.end method

.method private native nativeNetInit(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;II)J
.end method

.method private native nativeRunNetworkThread(J)V
.end method

.method private native nativeRunOutputThread(J)V
.end method

.method private native nativeStop(J)Z
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->networkThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 102
    iget-object v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->outputThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->nativeFree(J)Z

    .line 108
    :cond_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getNativeRef()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->nativeRef:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->nativeRef:J

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
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->networkThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    iget-object v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->outputThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unable to start, arstream2 manager is not valid! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->nativeStop(J)Z

    .line 93
    :cond_0
    return-void
.end method
