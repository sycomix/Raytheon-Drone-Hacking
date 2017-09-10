.class public Lcom/parrot/arsdk/arstream2/ARStream2Resender;
.super Ljava/lang/Object;
.source "ARStream2Resender.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

.field private final nativeRef:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/parrot/arsdk/arstream2/ARStream2Resender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arstream2/ARStream2Resender;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/arstream2/ARStream2Manager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;I)V
    .locals 17
    .param p1, "manager"    # Lcom/parrot/arsdk/arstream2/ARStream2Manager;
    .param p2, "clientAddress"    # Ljava/lang/String;
    .param p3, "mcastAddress"    # Ljava/lang/String;
    .param p4, "mcastIfaceAddress"    # Ljava/lang/String;
    .param p5, "serverStreamPort"    # I
    .param p6, "serverControlPort"    # I
    .param p7, "clientStreamPort"    # I
    .param p8, "clientControlPort"    # I
    .param p9, "canonicalName"    # Ljava/lang/String;
    .param p10, "classSelector"    # Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;
    .param p11, "maxNetworkLatency"    # I

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/arsdk/arstream2/ARStream2Resender;->manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    .line 21
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

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 22
    .local v14, "friendlyName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->getNativeRef()J

    move-result-wide v4

    .line 24
    invoke-virtual/range {p10 .. p10}, Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;->getValue()I

    move-result v15

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v16, p11

    .line 22
    invoke-direct/range {v3 .. v16}, Lcom/parrot/arsdk/arstream2/ARStream2Resender;->nativeInit(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;II)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/parrot/arsdk/arstream2/ARStream2Resender;->nativeRef:J

    .line 25
    return-void
.end method

.method private isValid()Z
    .locals 4

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Resender;->nativeRef:J

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

.method private native nativeInit(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;II)J
.end method

.method private native nativeStop(JJ)Z
.end method


# virtual methods
.method public stop()V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/parrot/arsdk/arstream2/ARStream2Resender;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Resender;->manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->getNativeRef()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/parrot/arsdk/arstream2/ARStream2Resender;->nativeRef:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/parrot/arsdk/arstream2/ARStream2Resender;->nativeStop(JJ)Z

    .line 38
    :cond_0
    return-void
.end method
