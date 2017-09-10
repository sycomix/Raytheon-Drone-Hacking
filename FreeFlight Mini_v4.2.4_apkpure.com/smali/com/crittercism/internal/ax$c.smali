.class final Lcom/crittercism/internal/ax$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crittercism/internal/ax$c;->a:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/crittercism/internal/ax$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 315
    monitor-enter p0

    .line 316
    :try_start_0
    iget-boolean v0, p0, Lcom/crittercism/internal/ax$c;->a:Z

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/ax$c;->a:Z

    .line 318
    invoke-static {}, Lcom/crittercism/internal/be;->h()V

    .line 320
    :cond_0
    monitor-exit p0

    .line 321
    return v1

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
