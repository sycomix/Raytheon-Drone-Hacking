.class public Lcom/parrot/mux/Mux;
.super Ljava/lang/Object;
.source "Mux.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/mux/Mux$Ref;,
        Lcom/parrot/mux/Mux$IOnClosedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mux"


# instance fields
.field private muxCtx:J

.field private final onClosedListener:Lcom/parrot/mux/Mux$IOnClosedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 67
    invoke-static {}, Lcom/parrot/mux/Mux;->nativeClInit()J

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Lcom/parrot/mux/Mux$IOnClosedListener;)V
    .locals 2
    .param p1, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "onClosedListener"    # Lcom/parrot/mux/Mux$IOnClosedListener;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/parrot/mux/Mux;->onClosedListener:Lcom/parrot/mux/Mux$IOnClosedListener;

    .line 72
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/mux/Mux;->nativeNew(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/mux/Mux;->muxCtx:J

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/mux/Mux;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/mux/Mux;

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/parrot/mux/Mux;->muxCtx:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/parrot/mux/Mux;J)J
    .locals 3
    .param p0, "x0"    # Lcom/parrot/mux/Mux;
    .param p1, "x1"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/parrot/mux/Mux;->nativeAquireMuxRef(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/parrot/mux/Mux;J)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/mux/Mux;
    .param p1, "x1"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/parrot/mux/Mux;->nativeReleaseMuxRef(J)V

    return-void
.end method

.method private native nativeAquireMuxRef(J)J
.end method

.method private static native nativeClInit()J
.end method

.method private native nativeDispose(J)V
.end method

.method private native nativeNew(I)J
.end method

.method private native nativeReleaseMuxRef(J)V
.end method

.method private native nativeRunThread(J)V
.end method

.method private native nativeStop(J)V
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/parrot/mux/Mux;->muxCtx:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/mux/Mux;->nativeDispose(J)V

    .line 85
    return-void
.end method

.method public isValid()Z
    .locals 4

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/parrot/mux/Mux;->muxCtx:J

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

.method public newMuxRef()Lcom/parrot/mux/Mux$Ref;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/parrot/mux/Mux$Ref;

    invoke-direct {v0, p0}, Lcom/parrot/mux/Mux$Ref;-><init>(Lcom/parrot/mux/Mux;)V

    return-object v0
.end method

.method protected onEof()V
    .locals 3

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/parrot/mux/Mux;->onClosedListener:Lcom/parrot/mux/Mux$IOnClosedListener;

    invoke-interface {v1}, Lcom/parrot/mux/Mux$IOnClosedListener;->onClosed()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Mux"

    const-string v2, "exception in onDeviceRemoved"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public runReader()V
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/parrot/mux/Mux;->muxCtx:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/mux/Mux;->nativeRunThread(J)V

    .line 89
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/parrot/mux/Mux;->muxCtx:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/mux/Mux;->nativeStop(J)V

    .line 81
    return-void
.end method
