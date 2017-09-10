.class Lcom/parrot/arsdk/arnetwork/ReceivingRunnable;
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
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-wide p1, p0, Lcom/parrot/arsdk/arnetwork/ReceivingRunnable;->nativeManager:J

    .line 382
    return-void
.end method

.method private static native nativeReceivingThreadRun(J)I
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 389
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetwork/ReceivingRunnable;->nativeManager:J

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arnetwork/ReceivingRunnable;->nativeReceivingThreadRun(J)I

    .line 390
    return-void
.end method
