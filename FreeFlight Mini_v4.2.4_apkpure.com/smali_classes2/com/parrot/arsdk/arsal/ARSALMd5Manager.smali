.class public Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
.super Ljava/lang/Object;
.source "ARSALMd5Manager.java"


# instance fields
.field private m_initOk:Z

.field private m_managerPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 52
    invoke-static {}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->nativeStaticInit()Z

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arsal/ARSALException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->m_initOk:Z

    .line 63
    invoke-direct {p0}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->nativeNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->m_managerPtr:J

    .line 65
    iget-wide v0, p0, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->m_managerPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->m_initOk:Z

    .line 69
    :cond_0
    return-void
.end method

.method private native nativeCheck(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeClose(J)I
.end method

.method private native nativeCompute(JLjava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arsal/ARSALException;
        }
    .end annotation
.end method

.method private native nativeDelete(J)V
.end method

.method private native nativeInit(JLcom/parrot/arsdk/arsal/ARSALMd5;)I
.end method

.method private native nativeNew()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arsal/ARSALException;
        }
    .end annotation
.end method

.method private static native nativeStaticInit()Z
.end method


# virtual methods
.method public check(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "md5Txt"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-wide v2, p0, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->m_managerPtr:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->nativeCheck(JLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 113
    .local v1, "resultCode":I
    invoke-static {v1}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    move-result-object v0

    .line 115
    .local v0, "result":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    return-object v0
.end method

.method public close()Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    .locals 4

    .prologue
    .line 89
    iget-wide v2, p0, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->m_managerPtr:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->nativeClose(J)I

    move-result v1

    .line 91
    .local v1, "resultCode":I
    invoke-static {v1}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    move-result-object v0

    .line 93
    .local v0, "result":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    return-object v0
.end method

.method public compute(Ljava/lang/String;)[B
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arsal/ARSALException;
        }
    .end annotation

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->m_managerPtr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->nativeCompute(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->m_initOk:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 103
    iget-wide v0, p0, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->nativeDelete(J)V

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->m_managerPtr:J

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->m_initOk:Z

    .line 107
    :cond_0
    return-void
.end method

.method public getNativeManager()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->m_managerPtr:J

    return-wide v0
.end method

.method public init()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arsal/ARSALException;
        }
    .end annotation

    .prologue
    .line 78
    iget-wide v2, p0, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->m_managerPtr:J

    new-instance v4, Lcom/parrot/arsdk/arsal/ARSALMd5;

    invoke-direct {v4}, Lcom/parrot/arsdk/arsal/ARSALMd5;-><init>()V

    invoke-direct {p0, v2, v3, v4}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->nativeInit(JLcom/parrot/arsdk/arsal/ARSALMd5;)I

    move-result v1

    .line 80
    .local v1, "resultCode":I
    invoke-static {v1}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    move-result-object v0

    .line 81
    .local v0, "result":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    if-eq v0, v2, :cond_0

    .line 83
    new-instance v2, Lcom/parrot/arsdk/arsal/ARSALException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/arsal/ARSALException;-><init>(Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;)V

    throw v2

    .line 85
    :cond_0
    return-void
.end method
