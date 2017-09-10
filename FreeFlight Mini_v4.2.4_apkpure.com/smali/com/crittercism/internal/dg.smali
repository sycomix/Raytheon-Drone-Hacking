.class public final Lcom/crittercism/internal/dg;
.super Lcom/crittercism/internal/di;


# instance fields
.field public a:Landroid/os/ConditionVariable;

.field public b:Landroid/os/ConditionVariable;

.field private c:Lcom/crittercism/internal/az;

.field private d:Landroid/content/Context;

.field private e:Lcom/crittercism/internal/au;

.field private f:Lcom/crittercism/internal/av;

.field private g:Lcom/crittercism/internal/ar;

.field private h:Ljava/util/List;

.field private i:Z

.field private j:Z

.field private k:Lcom/crittercism/internal/ap;

.field private l:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/az;Landroid/content/Context;Lcom/crittercism/internal/au;Lcom/crittercism/internal/av;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/ap;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    .line 49
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/dg;->a:Landroid/os/ConditionVariable;

    .line 50
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/dg;->b:Landroid/os/ConditionVariable;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/dg;->h:Ljava/util/List;

    .line 57
    iput-boolean v1, p0, Lcom/crittercism/internal/dg;->i:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/dg;->l:Ljava/lang/Exception;

    .line 77
    iput-object p1, p0, Lcom/crittercism/internal/dg;->c:Lcom/crittercism/internal/az;

    .line 78
    iput-object p2, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    .line 79
    iput-object p3, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    .line 80
    iput-object p4, p0, Lcom/crittercism/internal/dg;->f:Lcom/crittercism/internal/av;

    .line 81
    iput-object p5, p0, Lcom/crittercism/internal/dg;->g:Lcom/crittercism/internal/ar;

    .line 82
    iput-object p6, p0, Lcom/crittercism/internal/dg;->k:Lcom/crittercism/internal/ap;

    .line 83
    iput-boolean v1, p0, Lcom/crittercism/internal/dg;->j:Z

    .line 84
    return-void
.end method

.method private declared-synchronized b()V
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/crittercism/internal/dg;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()Z
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/crittercism/internal/dg;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()Ljava/io/File;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/crittercism/internal/dg;->c:Lcom/crittercism/internal/az;

    invoke-virtual {v3}, Lcom/crittercism/internal/az;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 112
    if-eqz v2, :cond_0

    .line 113
    array-length v3, v2

    if-ne v3, v4, :cond_2

    .line 114
    aget-object v1, v2, v1

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 117
    :cond_2
    array-length v3, v2

    if-le v3, v4, :cond_0

    .line 118
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 119
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 120
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private e()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 381
    iget-boolean v0, p0, Lcom/crittercism/internal/dg;->j:Z

    if-eqz v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 2294
    :cond_1
    iget-boolean v0, p0, Lcom/crittercism/internal/dg;->j:Z

    if-nez v0, :cond_2

    .line 2298
    iget-object v0, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-interface {v0}, Lcom/crittercism/internal/au;->o()Lcom/crittercism/internal/bq;

    move-result-object v1

    .line 2299
    iget-object v0, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-interface {v0}, Lcom/crittercism/internal/au;->p()Lcom/crittercism/internal/bq;

    move-result-object v8

    .line 2301
    iget-object v0, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-interface {v0}, Lcom/crittercism/internal/au;->q()Lcom/crittercism/internal/bq;

    move-result-object v9

    .line 2303
    iget-object v0, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-interface {v0}, Lcom/crittercism/internal/au;->r()Lcom/crittercism/internal/bq;

    move-result-object v10

    .line 2304
    iget-object v0, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-interface {v0}, Lcom/crittercism/internal/au;->s()Lcom/crittercism/internal/bq;

    move-result-object v11

    .line 2305
    iget-object v0, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-interface {v0}, Lcom/crittercism/internal/au;->z()Lcom/crittercism/internal/du;

    move-result-object v12

    .line 2312
    iget-object v0, p0, Lcom/crittercism/internal/dg;->c:Lcom/crittercism/internal/az;

    .line 3072
    iget-object v0, v0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 3081
    iget-object v0, v0, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 2319
    new-instance v0, Lcom/crittercism/internal/df;

    iget-object v2, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/crittercism/internal/df;-><init>(Landroid/content/Context;)V

    .line 2320
    new-instance v2, Lcom/crittercism/internal/ct$a;

    invoke-direct {v2}, Lcom/crittercism/internal/ct$a;-><init>()V

    iget-object v3, p0, Lcom/crittercism/internal/dg;->c:Lcom/crittercism/internal/az;

    .line 3096
    iget-object v3, v3, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 4089
    iget-object v3, v3, Lcom/crittercism/internal/bl;->d:Ljava/lang/String;

    .line 2320
    const-string v4, "/v0/appload"

    iget-object v5, p0, Lcom/crittercism/internal/dg;->c:Lcom/crittercism/internal/az;

    .line 5072
    iget-object v5, v5, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 5081
    iget-object v5, v5, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 2320
    iget-object v6, p0, Lcom/crittercism/internal/dg;->g:Lcom/crittercism/internal/ar;

    new-instance v7, Lcom/crittercism/internal/cs$b;

    invoke-direct {v7}, Lcom/crittercism/internal/cs$b;-><init>()V

    invoke-virtual/range {v0 .. v7}, Lcom/crittercism/internal/df;->a(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/cx;)V

    .line 2329
    new-instance v2, Lcom/crittercism/internal/da$a;

    invoke-direct {v2}, Lcom/crittercism/internal/da$a;-><init>()V

    iget-object v1, p0, Lcom/crittercism/internal/dg;->c:Lcom/crittercism/internal/az;

    .line 6072
    iget-object v1, v1, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 6081
    iget-object v3, v1, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 2329
    const-string v4, "/android_v2/handle_exceptions"

    iget-object v6, p0, Lcom/crittercism/internal/dg;->g:Lcom/crittercism/internal/ar;

    new-instance v7, Lcom/crittercism/internal/cu$a;

    invoke-direct {v7}, Lcom/crittercism/internal/cu$a;-><init>()V

    move-object v1, v8

    move-object v5, v13

    invoke-virtual/range {v0 .. v7}, Lcom/crittercism/internal/df;->a(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/cx;)V

    .line 2338
    new-instance v2, Lcom/crittercism/internal/da$a;

    invoke-direct {v2}, Lcom/crittercism/internal/da$a;-><init>()V

    iget-object v1, p0, Lcom/crittercism/internal/dg;->c:Lcom/crittercism/internal/az;

    .line 7072
    iget-object v1, v1, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 7081
    iget-object v3, v1, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 2338
    const-string v4, "/android_v2/handle_ndk_crashes"

    iget-object v6, p0, Lcom/crittercism/internal/dg;->g:Lcom/crittercism/internal/ar;

    new-instance v7, Lcom/crittercism/internal/cu$a;

    invoke-direct {v7}, Lcom/crittercism/internal/cu$a;-><init>()V

    move-object v1, v10

    move-object v5, v13

    invoke-virtual/range {v0 .. v7}, Lcom/crittercism/internal/df;->a(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/cx;)V

    .line 2347
    new-instance v2, Lcom/crittercism/internal/da$a;

    invoke-direct {v2}, Lcom/crittercism/internal/da$a;-><init>()V

    iget-object v1, p0, Lcom/crittercism/internal/dg;->c:Lcom/crittercism/internal/az;

    .line 8072
    iget-object v1, v1, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 8081
    iget-object v3, v1, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 2347
    const-string v4, "/android_v2/handle_crashes"

    iget-object v6, p0, Lcom/crittercism/internal/dg;->g:Lcom/crittercism/internal/ar;

    new-instance v7, Lcom/crittercism/internal/cu$a;

    invoke-direct {v7}, Lcom/crittercism/internal/cu$a;-><init>()V

    move-object v1, v11

    move-object v5, v13

    invoke-virtual/range {v0 .. v7}, Lcom/crittercism/internal/df;->a(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/cx;)V

    .line 2356
    new-instance v2, Lcom/crittercism/internal/da$a;

    invoke-direct {v2}, Lcom/crittercism/internal/da$a;-><init>()V

    iget-object v1, p0, Lcom/crittercism/internal/dg;->c:Lcom/crittercism/internal/az;

    .line 9072
    iget-object v1, v1, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 9081
    iget-object v3, v1, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 2356
    const-string v4, "/android_v2/handle_exceptions"

    new-instance v6, Lcom/crittercism/internal/ay;

    iget-object v1, p0, Lcom/crittercism/internal/dg;->g:Lcom/crittercism/internal/ar;

    iget-object v5, p0, Lcom/crittercism/internal/dg;->c:Lcom/crittercism/internal/az;

    invoke-direct {v6, v1, v5}, Lcom/crittercism/internal/ay;-><init>(Lcom/crittercism/internal/ar;Lcom/crittercism/internal/az;)V

    new-instance v7, Lcom/crittercism/internal/cu$a;

    invoke-direct {v7}, Lcom/crittercism/internal/cu$a;-><init>()V

    move-object v1, v9

    move-object v5, v13

    invoke-virtual/range {v0 .. v7}, Lcom/crittercism/internal/df;->a(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/cx;)V

    .line 2365
    invoke-virtual {v0}, Lcom/crittercism/internal/df;->a()V

    .line 2367
    invoke-virtual {v12}, Lcom/crittercism/internal/du;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2374
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crittercism/internal/ax;->G()V

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/crittercism/internal/dg;->k:Lcom/crittercism/internal/ap;

    new-instance v1, Lcom/crittercism/internal/bk;

    iget-object v2, p0, Lcom/crittercism/internal/dg;->g:Lcom/crittercism/internal/ar;

    invoke-direct {v1, v2}, Lcom/crittercism/internal/bk;-><init>(Lcom/crittercism/internal/ar;)V

    .line 10051
    iput-object v1, v0, Lcom/crittercism/internal/ap;->a:Lcom/crittercism/internal/bk;

    .line 390
    iget-object v0, p0, Lcom/crittercism/internal/dg;->k:Lcom/crittercism/internal/ap;

    .line 10075
    iget-boolean v0, v0, Lcom/crittercism/internal/ap;->b:Z

    .line 390
    if-nez v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/crittercism/internal/ap;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    const-string v0, "Discovered App Load during init task"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/crittercism/internal/dg;->k:Lcom/crittercism/internal/ap;

    invoke-virtual {v0}, Lcom/crittercism/internal/ap;->b()V

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/crittercism/internal/dg;->k:Lcom/crittercism/internal/ap;

    invoke-virtual {v0}, Lcom/crittercism/internal/ap;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const-string v0, "about to send App Load from init task"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/crittercism/internal/dg;->k:Lcom/crittercism/internal/ap;

    iget-object v1, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    iget-object v5, p0, Lcom/crittercism/internal/dg;->c:Lcom/crittercism/internal/az;

    iget-object v2, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    iget-object v6, p0, Lcom/crittercism/internal/dg;->g:Lcom/crittercism/internal/ar;

    .line 10191
    iget-object v3, v0, Lcom/crittercism/internal/ap;->d:Lcom/crittercism/internal/dr;

    invoke-virtual {v3}, Lcom/crittercism/internal/dr;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 10195
    invoke-virtual {v0}, Lcom/crittercism/internal/ap;->c()V

    .line 10197
    invoke-interface {v1}, Lcom/crittercism/internal/au;->o()Lcom/crittercism/internal/bq;

    move-result-object v1

    .line 11072
    iget-object v3, v5, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 11081
    iget-object v3, v3, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 12055
    iget-object v0, v0, Lcom/crittercism/internal/ap;->a:Lcom/crittercism/internal/bk;

    .line 10204
    if-eqz v0, :cond_4

    .line 10205
    invoke-virtual {v1, v0}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z

    .line 10208
    :cond_4
    new-instance v0, Lcom/crittercism/internal/df;

    invoke-direct {v0, v2}, Lcom/crittercism/internal/df;-><init>(Landroid/content/Context;)V

    .line 10209
    new-instance v2, Lcom/crittercism/internal/ct$a;

    invoke-direct {v2}, Lcom/crittercism/internal/ct$a;-><init>()V

    .line 12096
    iget-object v3, v5, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 13089
    iget-object v3, v3, Lcom/crittercism/internal/bl;->d:Ljava/lang/String;

    .line 10209
    const-string v4, "/v0/appload"

    .line 14072
    iget-object v5, v5, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 14081
    iget-object v5, v5, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 10209
    new-instance v7, Lcom/crittercism/internal/cs$b;

    invoke-direct {v7}, Lcom/crittercism/internal/cs$b;-><init>()V

    invoke-virtual/range {v0 .. v7}, Lcom/crittercism/internal/df;->a(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/cx;)V

    .line 10218
    invoke-virtual {v0}, Lcom/crittercism/internal/df;->a()V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 426
    :try_start_0
    const-string v0, "Running critter init task"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 14129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/com.crittercism/pending"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14130
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14131
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14133
    const-string v0, "Someone is tampering!!!!"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 431
    :goto_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 14939
    iget-object v0, v0, Lcom/crittercism/internal/ax;->w:Lcom/crittercism/internal/dq;

    .line 433
    invoke-virtual {v0}, Lcom/crittercism/internal/dq;->a()Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/crittercism/internal/dg;->g:Lcom/crittercism/internal/ar;

    invoke-interface {v0}, Lcom/crittercism/internal/ar;->l()Lcom/crittercism/internal/dv;

    move-result-object v0

    .line 437
    iget-object v2, p0, Lcom/crittercism/internal/dg;->f:Lcom/crittercism/internal/av;

    invoke-virtual {v0, v2}, Lcom/crittercism/internal/dv;->a(Lcom/crittercism/internal/av;)V

    .line 439
    iget-object v2, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/crittercism/internal/dp;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/crittercism/internal/dp;->a:Z

    .line 440
    iget-object v2, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/crittercism/internal/dp;->a(Landroid/content/Context;Z)V

    .line 442
    iget-object v2, p0, Lcom/crittercism/internal/dg;->g:Lcom/crittercism/internal/ar;

    invoke-interface {v2}, Lcom/crittercism/internal/ar;->m()Lcom/crittercism/internal/dr;

    move-result-object v2

    .line 443
    invoke-virtual {v2}, Lcom/crittercism/internal/dr;->a()Z

    move-result v2

    iput-boolean v2, p0, Lcom/crittercism/internal/dg;->j:Z

    .line 444
    iget-boolean v2, p0, Lcom/crittercism/internal/dg;->j:Z

    if-nez v2, :cond_0

    .line 445
    new-instance v2, Lcom/crittercism/internal/ds;

    iget-object v3, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/crittercism/internal/ds;-><init>(Landroid/content/Context;)V

    .line 15042
    invoke-virtual {v2}, Lcom/crittercism/internal/ds;->a()I

    move-result v3

    .line 15043
    add-int/lit8 v3, v3, 0x1

    .line 15044
    iget-object v4, v2, Lcom/crittercism/internal/ds;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "numAppLoads"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 447
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v3

    .line 15700
    iput-object v2, v3, Lcom/crittercism/internal/ax;->A:Lcom/crittercism/internal/ds;

    .line 449
    invoke-virtual {v0}, Lcom/crittercism/internal/dv;->a()Lcom/crittercism/internal/dt;

    move-result-object v0

    iget-object v2, p0, Lcom/crittercism/internal/dg;->f:Lcom/crittercism/internal/av;

    sget-object v3, Lcom/crittercism/internal/cq;->j:Lcom/crittercism/internal/cq;

    .line 16026
    iget-object v3, v3, Lcom/crittercism/internal/cq;->m:Ljava/lang/String;

    .line 449
    sget-object v4, Lcom/crittercism/internal/cq;->j:Lcom/crittercism/internal/cq;

    .line 16030
    iget-object v4, v4, Lcom/crittercism/internal/cq;->n:Ljava/lang/String;

    .line 449
    invoke-virtual {v0, v2, v3, v4}, Lcom/crittercism/internal/dt;->a(Lcom/crittercism/internal/av;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_0
    invoke-direct {p0}, Lcom/crittercism/internal/dg;->d()Ljava/io/File;

    move-result-object v8

    .line 456
    iget-boolean v0, p0, Lcom/crittercism/internal/dg;->j:Z

    if-eqz v0, :cond_4

    .line 16155
    iget-object v0, p0, Lcom/crittercism/internal/dg;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 16156
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 16406
    iget-boolean v0, v0, Lcom/crittercism/internal/ax;->s:Z

    .line 16156
    if-nez v0, :cond_2

    .line 16157
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    .line 17141
    :cond_1
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->a:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    invoke-virtual {v0}, Lcom/crittercism/internal/bq;->a()V

    .line 17142
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->b:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    invoke-virtual {v0}, Lcom/crittercism/internal/bq;->a()V

    .line 17143
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->c:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    invoke-virtual {v0}, Lcom/crittercism/internal/bq;->a()V

    .line 17144
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->d:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    invoke-virtual {v0}, Lcom/crittercism/internal/bq;->a()V

    .line 17145
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->e:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    invoke-virtual {v0}, Lcom/crittercism/internal/bq;->a()V

    .line 17146
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->f:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    invoke-virtual {v0}, Lcom/crittercism/internal/bq;->a()V

    .line 17147
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->h:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    invoke-virtual {v0}, Lcom/crittercism/internal/bq;->a()V

    .line 17148
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->g:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    invoke-virtual {v0}, Lcom/crittercism/internal/bq;->a()V

    .line 17149
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->k:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    invoke-virtual {v0}, Lcom/crittercism/internal/bq;->a()V

    .line 16159
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 16164
    :cond_2
    iget-object v0, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/crittercism/internal/h;->b(Landroid/content/Context;)V

    .line 462
    :goto_1
    invoke-direct {p0}, Lcom/crittercism/internal/dg;->b()V

    .line 465
    iget-object v0, p0, Lcom/crittercism/internal/dg;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 466
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 468
    :catch_0
    move-exception v0

    .line 469
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in run(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 470
    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    .line 471
    iput-object v0, p0, Lcom/crittercism/internal/dg;->l:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    iget-object v0, p0, Lcom/crittercism/internal/dg;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 474
    iget-object v0, p0, Lcom/crittercism/internal/dg;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 475
    :goto_3
    return-void

    .line 14137
    :cond_3
    :try_start_2
    invoke-static {v2}, Lcom/crittercism/internal/dz;->a(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 473
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/crittercism/internal/dg;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 474
    iget-object v1, p0, Lcom/crittercism/internal/dg;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0

    .line 18170
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    .line 19134
    new-instance v0, Lcom/crittercism/internal/h;

    invoke-direct {v0, v2}, Lcom/crittercism/internal/h;-><init>(Landroid/content/Context;)V

    .line 19135
    const-string v3, "com.crittercism.optmz.config"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 19137
    const-string v3, "interval"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 19138
    const-string v3, "interval"

    const/16 v4, 0xa

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 19318
    iput v3, v0, Lcom/crittercism/internal/h;->d:I

    .line 19147
    const-string v3, "kill"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 19148
    const-string v3, "kill"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 20309
    iput-boolean v3, v0, Lcom/crittercism/internal/h;->c:Z

    .line 19153
    const-string v3, "persist"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 19154
    const-string v3, "persist"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 20327
    iput-boolean v3, v0, Lcom/crittercism/internal/h;->b:Z

    .line 19163
    const-string v3, "enabled"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 19164
    const-string v1, "enabled"

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 21289
    iput-boolean v1, v0, Lcom/crittercism/internal/h;->a:Z

    .line 18171
    :goto_4
    if-eqz v0, :cond_5

    .line 18172
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/h;)V

    .line 22212
    :cond_5
    iget-object v0, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-interface {v0}, Lcom/crittercism/internal/au;->A()V

    .line 23177
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 23406
    iget-boolean v0, v0, Lcom/crittercism/internal/ax;->s:Z

    .line 23180
    if-nez v0, :cond_6

    .line 23184
    iget-object v0, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/crittercism/internal/bf;->a(Landroid/content/Context;)Lcom/crittercism/internal/bf;

    move-result-object v9

    .line 23185
    iget-object v0, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-interface {v0}, Lcom/crittercism/internal/au;->y()Lcom/crittercism/internal/bq;

    move-result-object v3

    .line 23186
    iget-object v0, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-interface {v0}, Lcom/crittercism/internal/au;->t()Lcom/crittercism/internal/bq;

    move-result-object v4

    .line 23187
    iget-object v0, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-interface {v0}, Lcom/crittercism/internal/au;->u()Lcom/crittercism/internal/bq;

    move-result-object v5

    .line 23188
    iget-object v0, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-interface {v0}, Lcom/crittercism/internal/au;->w()Lcom/crittercism/internal/bq;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 23193
    :try_start_4
    new-instance v7, Ljava/net/URL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/crittercism/internal/dg;->c:Lcom/crittercism/internal/az;

    .line 24088
    iget-object v1, v1, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 24093
    iget-object v1, v1, Lcom/crittercism/internal/bl;->c:Ljava/lang/String;

    .line 23193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v1/transactions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23200
    :try_start_5
    new-instance v0, Lcom/crittercism/internal/bg;

    iget-object v1, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/crittercism/internal/dg;->g:Lcom/crittercism/internal/ar;

    invoke-direct/range {v0 .. v7}, Lcom/crittercism/internal/bg;-><init>(Landroid/content/Context;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;Ljava/net/URL;)V

    .line 23203
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v1

    .line 24148
    iput-object v0, v1, Lcom/crittercism/internal/ax;->y:Lcom/crittercism/internal/bg;

    .line 23205
    new-instance v2, Lcom/crittercism/internal/dx;

    const-string v3, "TXN Thread"

    invoke-direct {v2, v0, v3}, Lcom/crittercism/internal/dx;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 23206
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 23207
    invoke-virtual {v1, v9}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/bf;)V

    .line 24218
    :cond_6
    :goto_5
    const-string v0, "generateCrashFromDump: begin"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 24220
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 24406
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->s:Z

    .line 24222
    if-nez v1, :cond_8

    .line 24226
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    .line 24229
    :cond_7
    iget-object v1, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-interface {v1}, Lcom/crittercism/internal/au;->t()Lcom/crittercism/internal/bq;

    move-result-object v2

    .line 24230
    iget-object v1, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-interface {v1}, Lcom/crittercism/internal/au;->u()Lcom/crittercism/internal/bq;

    move-result-object v4

    .line 24231
    iget-object v1, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-interface {v1}, Lcom/crittercism/internal/au;->v()Lcom/crittercism/internal/bq;

    move-result-object v3

    .line 24232
    iget-object v1, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-interface {v1}, Lcom/crittercism/internal/au;->w()Lcom/crittercism/internal/bq;

    move-result-object v5

    .line 24234
    iget-object v1, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-interface {v1}, Lcom/crittercism/internal/au;->r()Lcom/crittercism/internal/bq;

    move-result-object v6

    .line 24242
    if-eqz v8, :cond_e

    .line 24243
    const/4 v1, 0x1

    sput-boolean v1, Lcom/crittercism/internal/dp;->a:Z

    .line 24464
    iget-object v0, v0, Lcom/crittercism/internal/ax;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 24247
    new-instance v0, Lcom/crittercism/internal/cb;

    move-object v1, v8

    invoke-direct/range {v0 .. v5}, Lcom/crittercism/internal/cb;-><init>(Ljava/io/File;Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;)V

    .line 24249
    invoke-virtual {v6, v0}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z

    .line 24250
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 24251
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "generateCrashFromDump: deleting ndk dump: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 24252
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 24256
    iget-object v0, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-interface {v0}, Lcom/crittercism/internal/au;->x()Lcom/crittercism/internal/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crittercism/internal/bq;->a()V

    .line 24263
    :goto_6
    invoke-virtual {v3}, Lcom/crittercism/internal/bq;->a()V

    .line 24264
    invoke-virtual {v4}, Lcom/crittercism/internal/bq;->a()V

    .line 24265
    invoke-virtual {v5}, Lcom/crittercism/internal/bq;->a()V

    .line 24266
    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/bq;)V

    .line 17415
    :cond_8
    invoke-static {}, Lcom/crittercism/internal/be;->f()V

    .line 17416
    iget-object v0, p0, Lcom/crittercism/internal/dg;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 26270
    iget-object v0, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-interface {v0}, Lcom/crittercism/internal/au;->t()Lcom/crittercism/internal/bq;

    move-result-object v0

    sget-object v1, Lcom/crittercism/internal/cd;->a:Lcom/crittercism/internal/cd;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z

    .line 26275
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 26406
    iget-boolean v0, v0, Lcom/crittercism/internal/ax;->s:Z

    .line 26275
    if-nez v0, :cond_9

    .line 26280
    iget-object v0, p0, Lcom/crittercism/internal/dg;->c:Lcom/crittercism/internal/az;

    invoke-virtual {v0}, Lcom/crittercism/internal/az;->isNdkCrashReportingEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26281
    const-string v0, "Installing NDK Library"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 26284
    :try_start_6
    iget-object v0, p0, Lcom/crittercism/internal/dg;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/crittercism/internal/dg;->c:Lcom/crittercism/internal/az;

    invoke-virtual {v1}, Lcom/crittercism/internal/az;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crittercism/app/CrittercismNDK;->installNdkLib(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 17420
    :cond_9
    :goto_7
    :try_start_7
    invoke-direct {p0}, Lcom/crittercism/internal/dg;->e()V

    goto/16 :goto_1

    :cond_a
    move-object v0, v1

    .line 19144
    goto/16 :goto_4

    :cond_b
    move-object v0, v1

    .line 19150
    goto/16 :goto_4

    :cond_c
    move-object v0, v1

    .line 19160
    goto/16 :goto_4

    :cond_d
    move-object v0, v1

    .line 19167
    goto/16 :goto_4

    .line 23194
    :catch_1
    move-exception v0

    .line 23196
    const-string v1, "Bad transactions URL. Transactions will be disabled"

    invoke-static {v1, v0}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 25464
    :cond_e
    iget-object v0, v0, Lcom/crittercism/internal/ax;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 24260
    iget-object v0, p0, Lcom/crittercism/internal/dg;->e:Lcom/crittercism/internal/au;

    invoke-static {v0}, Lcom/crittercism/internal/be;->a(Lcom/crittercism/internal/au;)V

    goto :goto_6

    .line 26285
    :catch_2
    move-exception v0

    .line 26286
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception installing ndk library: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    .line 473
    :cond_f
    iget-object v0, p0, Lcom/crittercism/internal/dg;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 474
    iget-object v0, p0, Lcom/crittercism/internal/dg;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_3
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/crittercism/internal/dg;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/crittercism/internal/dg;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    const/4 v0, 0x1

    .line 99
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
