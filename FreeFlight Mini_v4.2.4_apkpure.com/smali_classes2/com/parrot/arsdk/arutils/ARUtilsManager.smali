.class public Lcom/parrot/arsdk/arutils/ARUtilsManager;
.super Ljava/lang/Object;
.source "ARUtilsManager.java"


# static fields
.field public static final FTP_ANONYMOUS:Ljava/lang/String; = "anonymous"

.field private static final TAG:Ljava/lang/String; = "ARUtilsManager"


# instance fields
.field private mIsBLEFtpInited:Z

.field private mIsRFCommFtpInited:Z

.field private mIsWifiFtpInited:Z

.field private m_initOk:Z

.field private m_managerPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 94
    invoke-static {}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeStaticInit()Z

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsWifiFtpInited:Z

    .line 89
    iput-boolean v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsBLEFtpInited:Z

    .line 90
    iput-boolean v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsRFCommFtpInited:Z

    .line 104
    iput-boolean v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_initOk:Z

    .line 105
    invoke-direct {p0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    .line 107
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_initOk:Z

    .line 111
    :cond_0
    return-void
.end method

.method private native nativeBLEFtpConnectionCancel(J)I
.end method

.method private native nativeBLEFtpConnectionDisconnect(J)I
.end method

.method private native nativeBLEFtpConnectionReconnect(J)I
.end method

.method private native nativeBLEFtpConnectionReset(J)I
.end method

.method private native nativeBLEFtpDelete(JLjava/lang/String;)I
.end method

.method private native nativeBLEFtpGet(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;Z)I
.end method

.method private native nativeBLEFtpGetWithBuffer(JLjava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;)[B
.end method

.method private native nativeBLEFtpIsConnectionCanceled(J)I
.end method

.method private native nativeBLEFtpList(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation
.end method

.method private native nativeBLEFtpPut(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;Z)I
.end method

.method private native nativeBLEFtpRename(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeBLEFtpSize(JLjava/lang/String;)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation
.end method

.method private native nativeCloseBLEFtp(J)V
.end method

.method private native nativeCloseRFCommFtp(J)V
.end method

.method private native nativeCloseWifiFtp(J)I
.end method

.method private native nativeDelete(J)I
.end method

.method private native nativeInitBLEFtp(JLcom/parrot/arsdk/arutils/ARUtilsBLEFtp;Ljava/util/concurrent/Semaphore;)I
.end method

.method private native nativeInitRFCommFtp(JLcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;Ljava/util/concurrent/Semaphore;)I
.end method

.method private native nativeInitWifiFtp(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeInitWifiFtpOverMux(JLjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeNew()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation
.end method

.method private native nativeRFCommFtpConnectionCancel(J)I
.end method

.method private native nativeRFCommFtpConnectionDisconnect(J)I
.end method

.method private native nativeRFCommFtpConnectionReconnect(J)I
.end method

.method private native nativeRFCommFtpConnectionReset(J)I
.end method

.method private native nativeRFCommFtpIsConnectionCanceled(J)I
.end method

.method private native nativeRFCommFtpPut(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;Z)I
.end method

.method private static native nativeStaticInit()Z
.end method


# virtual methods
.method public BLEFtpConnectionCancel()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 359
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpConnectionCancel(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpConnectionDisconnect()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 349
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpConnectionDisconnect(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpConnectionReconnect()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 354
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpConnectionReconnect(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpConnectionReset()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 369
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpConnectionReset(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpDelete(Ljava/lang/String;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2
    .param p1, "remotePath"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpDelete(JLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpGet(Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;Z)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 9
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "destFile"    # Ljava/lang/String;
    .param p3, "progressListener"    # Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;
    .param p4, "progressArg"    # Ljava/lang/Object;
    .param p5, "resume"    # Z

    .prologue
    .line 389
    iget-wide v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpGet(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;Z)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpGetWithBuffer(Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;)[B
    .locals 7
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "progressListener"    # Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;
    .param p3, "progressArg"    # Ljava/lang/Object;

    .prologue
    .line 394
    iget-wide v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpGetWithBuffer(JLjava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpIsConnectionCanceled()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 364
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpIsConnectionCanceled(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpListFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "remotePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation

    .prologue
    .line 374
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpList(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpPut(Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;Z)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 9
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "srcFile"    # Ljava/lang/String;
    .param p3, "progressListener"    # Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;
    .param p4, "progressArg"    # Ljava/lang/Object;
    .param p5, "resume"    # Z

    .prologue
    .line 384
    iget-wide v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpPut(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;Z)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpRename(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2
    .param p1, "oldNamePath"    # Ljava/lang/String;
    .param p2, "newNamePath"    # Ljava/lang/String;

    .prologue
    .line 404
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpRename(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpSize(Ljava/lang/String;)D
    .locals 2
    .param p1, "remotePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation

    .prologue
    .line 379
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpSize(JLjava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public RFCommFtpConnectionCancel()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 514
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeRFCommFtpConnectionCancel(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public RFCommFtpConnectionDisconnect()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 504
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeRFCommFtpConnectionDisconnect(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public RFCommFtpConnectionReconnect()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 509
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeRFCommFtpConnectionReconnect(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public RFCommFtpConnectionReset()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 524
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeRFCommFtpConnectionReset(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public RFCommFtpIsConnectionCanceled()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 519
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeRFCommFtpIsConnectionCanceled(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public RFCommFtpPut(Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;Z)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 9
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "srcFile"    # Ljava/lang/String;
    .param p3, "progressListener"    # Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;
    .param p4, "progressArg"    # Ljava/lang/Object;
    .param p5, "resume"    # Z

    .prologue
    .line 529
    iget-wide v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeRFCommFtpPut(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;Z)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public closeBLEFtp(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 322
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 324
    .local v1, "error":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    if-nez p1, :cond_0

    .line 326
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 344
    :goto_0
    return-object v1

    .line 328
    :cond_0
    iget-boolean v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsBLEFtpInited:Z

    if-eqz v2, :cond_2

    .line 330
    invoke-static {p1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;

    move-result-object v0

    .line 332
    .local v0, "bleFtp":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->unregisterDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 336
    :cond_1
    iget-wide v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeCloseBLEFtp(J)V

    .line 337
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsBLEFtpInited:Z

    goto :goto_0

    .line 341
    .end local v0    # "bleFtp":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    :cond_2
    const-string v2, "ARUtilsManager"

    const-string v3, "we haven\'t successfully initBLEFtp"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public closeRFCommFtp(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 478
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 480
    .local v0, "error":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    if-nez p1, :cond_0

    .line 482
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 499
    :goto_0
    return-object v0

    .line 484
    :cond_0
    iget-boolean v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsRFCommFtpInited:Z

    if-eqz v2, :cond_2

    .line 486
    invoke-static {p1}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;

    move-result-object v1

    .line 487
    .local v1, "rfcommFtp":Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;
    invoke-virtual {v1}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->unregisterDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 489
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 491
    :cond_1
    iget-wide v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeCloseRFCommFtp(J)V

    .line 492
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsRFCommFtpInited:Z

    goto :goto_0

    .line 496
    .end local v1    # "rfcommFtp":Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;
    :cond_2
    const-string v2, "ARUtilsManager"

    const-string v3, "we haven\'t successfully initRFCommFtp"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public closeWifiFtp()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 4

    .prologue
    .line 214
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 215
    .local v0, "error":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    iget-boolean v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsWifiFtpInited:Z

    if-eqz v2, :cond_0

    .line 217
    iget-wide v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeCloseWifiFtp(J)I

    move-result v1

    .line 218
    .local v1, "intError":I
    invoke-static {v1}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    .line 219
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsWifiFtpInited:Z

    .line 226
    .end local v1    # "intError":I
    :goto_0
    return-object v0

    .line 223
    :cond_0
    const-string v2, "ARUtilsManager"

    const-string v3, "we haven\'t successfully initWifiFtp"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_initOk:Z

    if-eqz v0, :cond_0

    .line 120
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeDelete(J)I

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_initOk:Z

    .line 124
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
    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 140
    return-void

    .line 138
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getManager()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    return-wide v0
.end method

.method public initBLEFtp(Landroid/content/Context;Landroid/bluetooth/BluetoothGatt;I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p3, "port"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 234
    iget-boolean v6, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsBLEFtpInited:Z

    if-eqz v6, :cond_1

    .line 236
    const-string v4, "ARUtilsManager"

    const-string v5, "BLE FTP is already inited"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 293
    :cond_0
    :goto_0
    return-object v2

    .line 240
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 242
    .local v2, "error":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    const/4 v0, 0x0

    .line 245
    .local v0, "bleFtp":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    if-nez p1, :cond_2

    .line 247
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 250
    :cond_2
    if-nez p2, :cond_3

    .line 252
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 255
    :cond_3
    if-eqz p3, :cond_4

    rem-int/lit8 v6, p3, 0xa

    if-eq v6, v4, :cond_5

    .line 257
    :cond_4
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 260
    :cond_5
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v2, v6, :cond_6

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.bluetooth_le"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 265
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_NETWORK_TYPE:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 268
    :cond_6
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v2, v6, :cond_7

    .line 275
    :cond_7
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v2, v6, :cond_8

    .line 277
    invoke-static {p1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;

    move-result-object v0

    .line 278
    invoke-virtual {v0, p2, p3}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->registerDevice(Landroid/bluetooth/BluetoothGatt;I)Z

    move-result v3

    .line 279
    .local v3, "registered":Z
    if-nez v3, :cond_8

    .line 281
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BLE_FAILED:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 285
    .end local v3    # "registered":Z
    :cond_8
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v2, v6, :cond_9

    :goto_1
    iput-boolean v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsBLEFtpInited:Z

    .line 287
    iget-boolean v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsBLEFtpInited:Z

    if-eqz v4, :cond_0

    .line 289
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 290
    .local v1, "cancelSem":Ljava/util/concurrent/Semaphore;
    iget-wide v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeInitBLEFtp(JLcom/parrot/arsdk/arutils/ARUtilsBLEFtp;Ljava/util/concurrent/Semaphore;)I

    goto :goto_0

    .end local v1    # "cancelSem":Ljava/util/concurrent/Semaphore;
    :cond_9
    move v4, v5

    .line 285
    goto :goto_1
.end method

.method public initRFCommFtp(Landroid/content/Context;Landroid/bluetooth/BluetoothGatt;I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p3, "port"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 413
    iget-boolean v6, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsRFCommFtpInited:Z

    if-eqz v6, :cond_1

    .line 415
    const-string v4, "ARUtilsManager"

    const-string v5, "RFComm FTP is already inited"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 470
    :cond_0
    :goto_0
    return-object v1

    .line 419
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 420
    .local v1, "error":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    const/4 v3, 0x0

    .line 422
    .local v3, "rfcommFtp":Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;
    if-nez p1, :cond_2

    .line 424
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 427
    :cond_2
    if-nez p2, :cond_3

    .line 429
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 432
    :cond_3
    if-eqz p3, :cond_4

    rem-int/lit8 v6, p3, 0xa

    if-eq v6, v4, :cond_5

    .line 434
    :cond_4
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 437
    :cond_5
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v1, v6, :cond_6

    .line 440
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.bluetooth"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 442
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_NETWORK_TYPE:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 445
    :cond_6
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v1, v6, :cond_7

    .line 452
    :cond_7
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v1, v6, :cond_8

    .line 454
    invoke-static {p1}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;

    move-result-object v3

    .line 455
    invoke-virtual {v3, p2, p3}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->registerDevice(Landroid/bluetooth/BluetoothGatt;I)Z

    move-result v2

    .line 456
    .local v2, "registered":Z
    if-nez v2, :cond_8

    .line 458
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_RFCOMM_FAILED:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 462
    .end local v2    # "registered":Z
    :cond_8
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v1, v6, :cond_9

    :goto_1
    iput-boolean v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsRFCommFtpInited:Z

    .line 464
    iget-boolean v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsRFCommFtpInited:Z

    if-eqz v4, :cond_0

    .line 466
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 467
    .local v0, "cancelSem":Ljava/util/concurrent/Semaphore;
    iget-wide v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v4, v5, v3, v0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeInitRFCommFtp(JLcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;Ljava/util/concurrent/Semaphore;)I

    goto :goto_0

    .end local v0    # "cancelSem":Ljava/util/concurrent/Semaphore;
    :cond_9
    move v4, v5

    .line 462
    goto :goto_1
.end method

.method public initWifiFtp(Lcom/parrot/mux/Mux$Ref;ILjava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 11
    .param p1, "muxRef"    # Lcom/parrot/mux/Mux$Ref;
    .param p2, "port"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 192
    const-string v1, "ARUtilsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initWifiFtp on mux, port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 195
    .local v0, "error":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    iget-boolean v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsWifiFtpInited:Z

    if-nez v1, :cond_1

    .line 196
    invoke-virtual {p1}, Lcom/parrot/mux/Mux$Ref;->getCPtr()J

    .line 197
    iget-wide v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    const-string v4, ""

    invoke-virtual {p1}, Lcom/parrot/mux/Mux$Ref;->getCPtr()J

    move-result-wide v6

    move-object v1, p0

    move v5, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeInitWifiFtpOverMux(JLjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 198
    .local v10, "intError":I
    invoke-static {v10}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    .line 199
    invoke-virtual {p1}, Lcom/parrot/mux/Mux$Ref;->release()V

    .line 200
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsWifiFtpInited:Z

    .line 206
    .end local v10    # "intError":I
    :goto_1
    return-object v0

    .line 200
    .restart local v10    # "intError":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 204
    .end local v10    # "intError":I
    :cond_1
    const-string v1, "ARUtilsManager"

    const-string v2, "wifi FTP is already inited"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initWifiFtp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 9
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 165
    const-string v1, "ARUtilsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initWifiFtp on ip:port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 168
    .local v0, "error":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 184
    :goto_0
    return-object v0

    .line 172
    :cond_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsWifiFtpInited:Z

    if-nez v1, :cond_2

    .line 174
    iget-wide v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeInitWifiFtp(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 175
    .local v8, "intError":I
    invoke-static {v8}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    .line 177
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsWifiFtpInited:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 181
    .end local v8    # "intError":I
    :cond_2
    const-string v1, "ARUtilsManager"

    const-string v2, "wifi FTP is already inited"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isCorrectlyInitialized()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_initOk:Z

    return v0
.end method
