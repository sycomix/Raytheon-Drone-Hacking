.class Lcom/parrot/arsdk/arnetwork/SendingRunnable;
.super Ljava/lang/Object;
.source "ARNetworkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field nativeManager:J


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "managerPtr"    # J

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-wide p1, p0, Lcom/parrot/arsdk/arnetwork/SendingRunnable;->nativeManager:J

    .line 355
    return-void
.end method

.method private static native nativeSendingThreadRun(J)I
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 362
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/SendingRunnable;->nativeManager:J

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arnetwork/SendingRunnable;->nativeSendingThreadRun(J)I

    .line 363
    return-void
.end method
