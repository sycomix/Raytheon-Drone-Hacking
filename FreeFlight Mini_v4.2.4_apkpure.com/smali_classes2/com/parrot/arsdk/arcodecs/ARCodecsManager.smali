.class public abstract Lcom/parrot/arsdk/arcodecs/ARCodecsManager;
.super Ljava/lang/Object;
.source "ARCodecsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private initOk:Z

.field private jniManager:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->TAG:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->nativeStaticInit()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;)V
    .locals 4
    .param p1, "type"    # Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->initOk:Z

    .line 41
    invoke-virtual {p1}, Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->nativeNew(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->jniManager:J

    .line 43
    iget-wide v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->jniManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->initOk:Z

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->TAG:Ljava/lang/String;

    const-string v1, "Error occured during the creation of the native ARCodecsManager"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native nativeDecode(JLcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;)I
.end method

.method private native nativeDelete(J)I
.end method

.method private native nativeNew(I)J
.end method

.method private static native nativeStaticGenerateByteArray(JI)[B
.end method

.method private static native nativeStaticInit()V
.end method


# virtual methods
.method public decode(Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;)Z
    .locals 4
    .param p1, "outputFrame"    # Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;

    .prologue
    const/4 v1, 0x1

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "decodeOK":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->initOk:Z

    if-ne v2, v1, :cond_0

    .line 111
    iget-wide v2, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->jniManager:J

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->nativeDecode(JLcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;)I

    move-result v0

    .line 114
    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->initOk:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 60
    iget-wide v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->jniManager:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->nativeDelete(J)I

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->jniManager:J

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->initOk:Z

    .line 64
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
    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 79
    return-void

    .line 77
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getManager()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->jniManager:J

    return-wide v0
.end method

.method public abstract getNextDataCallback()Lcom/parrot/arsdk/arsal/ARNativeData;
.end method

.method public isCorrectlyInitialized()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->initOk:Z

    return v0
.end method
