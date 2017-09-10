.class public Lcom/crittercism/app/CritterUserDataRequest;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/crittercism/app/CritterCallback;

.field private b:Lcom/crittercism/internal/ax;

.field private c:Ljava/util/Map;

.field private d:Lcom/crittercism/internal/dk;


# direct methods
.method public constructor <init>(Lcom/crittercism/app/CritterCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/crittercism/app/CritterCallback;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/crittercism/app/CritterUserDataRequest;->a:Lcom/crittercism/app/CritterCallback;

    .line 43
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->b:Lcom/crittercism/internal/ax;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->c:Ljava/util/Map;

    .line 45
    new-instance v0, Lcom/crittercism/internal/dk;

    iget-object v1, p0, Lcom/crittercism/app/CritterUserDataRequest;->b:Lcom/crittercism/internal/ax;

    invoke-direct {v0, v1}, Lcom/crittercism/internal/dk;-><init>(Lcom/crittercism/internal/ar;)V

    iput-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->d:Lcom/crittercism/internal/dk;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/crittercism/app/CritterUserDataRequest;)Lcom/crittercism/internal/dk;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->d:Lcom/crittercism/internal/dk;

    return-object v0
.end method

.method static synthetic a(Lcom/crittercism/app/CritterUserDataRequest;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/crittercism/app/CritterUserDataRequest;->c:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Lcom/crittercism/app/CritterUserDataRequest;)Lcom/crittercism/internal/ax;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->b:Lcom/crittercism/internal/ax;

    return-object v0
.end method

.method static synthetic c(Lcom/crittercism/app/CritterUserDataRequest;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/crittercism/app/CritterUserDataRequest;)Lcom/crittercism/app/CritterCallback;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->a:Lcom/crittercism/app/CritterCallback;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized makeRequest()V
    .locals 3

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->b:Lcom/crittercism/internal/ax;

    .line 3689
    iget-object v0, v0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    .line 96
    if-nez v0, :cond_1

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Must initialize Crittercism before calling "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".makeRequest()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :cond_1
    :try_start_1
    new-instance v1, Lcom/crittercism/app/CritterUserDataRequest$1;

    invoke-direct {v1, p0}, Lcom/crittercism/app/CritterUserDataRequest$1;-><init>(Lcom/crittercism/app/CritterUserDataRequest;)V

    .line 112
    invoke-virtual {v0, v1}, Lcom/crittercism/internal/dg;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/crittercism/internal/dx;

    invoke-direct {v0, v1}, Lcom/crittercism/internal/dx;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/crittercism/internal/dx;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestDidCrashOnLastLoad()Lcom/crittercism/app/CritterUserDataRequest;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->d:Lcom/crittercism/internal/dk;

    .line 2042
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/crittercism/internal/dk;->c:Z

    .line 67
    return-object p0
.end method

.method public requestOptOutStatus()Lcom/crittercism/app/CritterUserDataRequest;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->d:Lcom/crittercism/internal/dk;

    .line 3038
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/crittercism/internal/dk;->b:Z

    .line 87
    return-object p0
.end method

.method public requestRateMyAppInfo()Lcom/crittercism/app/CritterUserDataRequest;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->d:Lcom/crittercism/internal/dk;

    .line 1050
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/crittercism/internal/dk;->e:Z

    .line 56
    return-object p0
.end method

.method public requestUserUUID()Lcom/crittercism/app/CritterUserDataRequest;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->d:Lcom/crittercism/internal/dk;

    .line 2046
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/crittercism/internal/dk;->d:Z

    .line 77
    return-object p0
.end method
