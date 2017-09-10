.class public Lcom/parrot/arsdk/arstream2/ARStream2Recorder;
.super Ljava/lang/Object;
.source "ARStream2Recorder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final nativeRef:J

.field private final recordFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/parrot/arsdk/arstream2/ARStream2Recorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arstream2/ARStream2Recorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/arstream2/ARStream2Manager;Ljava/lang/String;)V
    .locals 2
    .param p1, "manager"    # Lcom/parrot/arsdk/arstream2/ARStream2Manager;
    .param p2, "recordFileName"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->getNativeRef()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Recorder;->nativeRef:J

    .line 15
    iput-object p2, p0, Lcom/parrot/arsdk/arstream2/ARStream2Recorder;->recordFileName:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private isValid()Z
    .locals 4

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Recorder;->nativeRef:J

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

.method private native nativeStart(JLjava/lang/String;)Z
.end method

.method private native nativeStop(J)Z
.end method


# virtual methods
.method public start()V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/arsdk/arstream2/ARStream2Recorder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Recorder;->nativeRef:J

    iget-object v2, p0, Lcom/parrot/arsdk/arstream2/ARStream2Recorder;->recordFileName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/arsdk/arstream2/ARStream2Recorder;->nativeStart(JLjava/lang/String;)Z

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/arstream2/ARStream2Recorder;->TAG:Ljava/lang/String;

    const-string v1, "unable to start, recorder is not valid!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/parrot/arsdk/arstream2/ARStream2Recorder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-wide v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Recorder;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arstream2/ARStream2Recorder;->nativeStop(J)Z

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/arstream2/ARStream2Recorder;->TAG:Ljava/lang/String;

    const-string v1, "unable to stop, recorder is not valid!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
