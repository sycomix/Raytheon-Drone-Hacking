.class public final Lcom/crittercism/internal/be;
.super Lcom/crittercism/app/Transaction;

# interfaces
.implements Lcom/crittercism/internal/cf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/internal/be$a;
    }
.end annotation


# static fields
.field private static c:Ljava/util/concurrent/ExecutorService;

.field private static d:Ljava/util/concurrent/ScheduledExecutorService;

.field private static o:Ljava/util/List;

.field private static volatile p:J

.field private static volatile q:J

.field private static volatile r:Z

.field private static final s:[I

.field private static t:Lcom/crittercism/internal/be;

.field private static u:Lcom/crittercism/internal/bf;


# instance fields
.field b:Lcom/crittercism/internal/be$a;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:I

.field private h:J

.field private i:J

.field private j:J

.field private k:Ljava/util/Map;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 53
    new-instance v0, Lcom/crittercism/internal/dy;

    invoke-direct {v0}, Lcom/crittercism/internal/dy;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    .line 65
    const/4 v0, 0x1

    new-instance v1, Lcom/crittercism/internal/dy;

    invoke-direct {v1}, Lcom/crittercism/internal/dy;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/crittercism/internal/be;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 96
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    .line 97
    sput-wide v2, Lcom/crittercism/internal/be;->p:J

    .line 98
    sput-wide v2, Lcom/crittercism/internal/be;->q:J

    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Lcom/crittercism/internal/be;->r:Z

    .line 113
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/crittercism/internal/be;->s:[I

    .line 140
    const/4 v0, 0x0

    sput-object v0, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    .line 142
    new-instance v0, Lcom/crittercism/internal/bf;

    invoke-direct {v0}, Lcom/crittercism/internal/bf;-><init>()V

    sput-object v0, Lcom/crittercism/internal/be;->u:Lcom/crittercism/internal/bf;

    return-void

    .line 113
    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data
.end method

.method public constructor <init>(Lcom/crittercism/internal/ax;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/16 v2, 0xff

    const/4 v0, -0x1

    .line 172
    invoke-direct {p0}, Lcom/crittercism/app/Transaction;-><init>()V

    .line 72
    iput-wide v4, p0, Lcom/crittercism/internal/be;->f:J

    .line 73
    iput v0, p0, Lcom/crittercism/internal/be;->g:I

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/crittercism/internal/be;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 173
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 174
    const-string v1, "Transaction name exceeds 255 characters! Truncating to first 255 characters."

    invoke-static {v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    .line 181
    :goto_0
    sget-object v1, Lcom/crittercism/internal/be$a;->a:Lcom/crittercism/internal/be$a;

    iput-object v1, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    .line 182
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/crittercism/internal/be;->k:Ljava/util/Map;

    .line 183
    iput-object p1, p0, Lcom/crittercism/internal/be;->a:Lcom/crittercism/internal/ax;

    .line 184
    sget-object v1, Lcom/crittercism/internal/ce;->a:Lcom/crittercism/internal/ce;

    invoke-virtual {v1}, Lcom/crittercism/internal/ce;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crittercism/internal/be;->l:Ljava/lang/String;

    .line 190
    iput-wide v4, p0, Lcom/crittercism/internal/be;->f:J

    .line 197
    sget-object v1, Lcom/crittercism/internal/be;->u:Lcom/crittercism/internal/bf;

    .line 2115
    iget-object v1, v1, Lcom/crittercism/internal/bf;->d:Lorg/json/JSONObject;

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2116
    if-eqz v1, :cond_0

    .line 2117
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 197
    :cond_0
    iput v0, p0, Lcom/crittercism/internal/be;->g:I

    .line 199
    return-void

    .line 179
    :cond_1
    iput-object p2, p0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>(Lcom/crittercism/internal/be;)V
    .locals 2

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/crittercism/app/Transaction;-><init>()V

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/crittercism/internal/be;->f:J

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/crittercism/internal/be;->g:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/be;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 202
    iget-object v0, p1, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    .line 203
    iget-wide v0, p1, Lcom/crittercism/internal/be;->f:J

    iput-wide v0, p0, Lcom/crittercism/internal/be;->f:J

    .line 204
    iget v0, p1, Lcom/crittercism/internal/be;->g:I

    iput v0, p0, Lcom/crittercism/internal/be;->g:I

    .line 205
    iget-wide v0, p1, Lcom/crittercism/internal/be;->h:J

    iput-wide v0, p0, Lcom/crittercism/internal/be;->h:J

    .line 206
    iget-wide v0, p1, Lcom/crittercism/internal/be;->i:J

    iput-wide v0, p0, Lcom/crittercism/internal/be;->i:J

    .line 207
    iget-object v0, p1, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    iput-object v0, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    .line 208
    iget-object v0, p1, Lcom/crittercism/internal/be;->k:Ljava/util/Map;

    iput-object v0, p0, Lcom/crittercism/internal/be;->k:Ljava/util/Map;

    .line 209
    iget-object v0, p1, Lcom/crittercism/internal/be;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/crittercism/internal/be;->l:Ljava/lang/String;

    .line 210
    iget-wide v0, p1, Lcom/crittercism/internal/be;->j:J

    iput-wide v0, p0, Lcom/crittercism/internal/be;->j:J

    .line 211
    iget-wide v0, p1, Lcom/crittercism/internal/be;->m:J

    iput-wide v0, p0, Lcom/crittercism/internal/be;->m:J

    .line 212
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 219
    invoke-direct {p0}, Lcom/crittercism/app/Transaction;-><init>()V

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/crittercism/internal/be;->f:J

    .line 73
    iput v4, p0, Lcom/crittercism/internal/be;->g:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/be;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    .line 221
    invoke-static {}, Lcom/crittercism/internal/be$a;->values()[Lcom/crittercism/internal/be$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    .line 222
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/crittercism/internal/be;->f:J

    .line 223
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    iput v0, p0, Lcom/crittercism/internal/be;->g:I

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/be;->k:Ljava/util/Map;

    .line 225
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 227
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    iget-object v3, p0, Lcom/crittercism/internal/be;->k:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 231
    :cond_0
    sget-object v0, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/eb;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/be;->h:J

    .line 232
    sget-object v0, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/eb;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/be;->i:J

    .line 234
    const/4 v0, 0x7

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    .line 2897
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 2898
    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 234
    iput-wide v0, p0, Lcom/crittercism/internal/be;->j:J

    .line 236
    sget-object v0, Lcom/crittercism/internal/ce;->a:Lcom/crittercism/internal/ce;

    invoke-virtual {v0}, Lcom/crittercism/internal/ce;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/be;->l:Ljava/lang/String;

    .line 237
    return-void
.end method

.method static synthetic a(Lcom/crittercism/internal/be;)Lcom/crittercism/internal/be$a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    return-object v0
.end method

.method public static a(Lcom/crittercism/internal/ax;Z)Ljava/util/List;
    .locals 12

    .prologue
    .line 361
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 364
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 365
    sget-object v1, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    monitor-enter v1

    .line 366
    :try_start_0
    sget-object v0, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 367
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 371
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/be;

    .line 372
    monitor-enter v0

    .line 373
    :try_start_1
    iget-object v7, v0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v8, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    if-ne v7, v8, :cond_1

    .line 374
    iput-wide v4, v0, Lcom/crittercism/internal/be;->i:J

    .line 376
    sget-object v7, Lcom/crittercism/internal/be$a;->g:Lcom/crittercism/internal/be$a;

    iput-object v7, v0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    .line 379
    invoke-static {}, Lcom/crittercism/internal/be;->m()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 380
    sget-wide v8, Lcom/crittercism/internal/be;->p:J

    iget-wide v10, v0, Lcom/crittercism/internal/be;->m:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 382
    iget-wide v10, v0, Lcom/crittercism/internal/be;->j:J

    sub-long v8, v2, v8

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/crittercism/internal/be;->j:J

    .line 387
    :cond_0
    :goto_1
    invoke-direct {v0}, Lcom/crittercism/internal/be;->p()V

    .line 388
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 370
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 385
    :cond_1
    :try_start_3
    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 388
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 398
    :cond_2
    new-instance v0, Lcom/crittercism/internal/be$2;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/be$2;-><init>(Lcom/crittercism/internal/ax;)V

    .line 409
    new-instance v1, Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 410
    sget-object v2, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2

    .line 411
    :try_start_4
    sget-object v0, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 412
    if-nez p1, :cond_3

    .line 413
    sget-object v0, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 417
    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 421
    :try_start_5
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_1

    .line 428
    :goto_3
    return-object v6

    .line 3684
    :cond_3
    :try_start_6
    iget-object v0, p0, Lcom/crittercism/internal/ax;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_2

    .line 417
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 423
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 425
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private declared-synchronized a(J)V
    .locals 1

    .prologue
    .line 662
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/crittercism/internal/be$a;->c:Lcom/crittercism/internal/be$a;

    invoke-direct {p0, v0, p1, p2}, Lcom/crittercism/internal/be;->a(Lcom/crittercism/internal/be$a;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    monitor-exit p0

    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Lcom/crittercism/internal/au;)V
    .locals 6

    .prologue
    .line 444
    :try_start_0
    invoke-interface {p0}, Lcom/crittercism/internal/au;->x()Lcom/crittercism/internal/bq;

    move-result-object v1

    .line 445
    invoke-virtual {v1}, Lcom/crittercism/internal/bq;->c()Ljava/util/List;

    move-result-object v0

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 447
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/bo;

    .line 448
    check-cast v0, Lcom/crittercism/internal/bx;

    .line 449
    invoke-virtual {v0}, Lcom/crittercism/internal/bx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 450
    if-eqz v0, :cond_0

    .line 453
    :try_start_1
    new-instance v5, Lcom/crittercism/internal/be;

    invoke-direct {v5, v0}, Lcom/crittercism/internal/be;-><init>(Lorg/json/JSONArray;)V

    .line 454
    iput-wide v2, v5, Lcom/crittercism/internal/be;->i:J

    .line 455
    sget-object v0, Lcom/crittercism/internal/be$a;->h:Lcom/crittercism/internal/be$a;

    iput-object v0, v5, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    .line 456
    invoke-interface {p0}, Lcom/crittercism/internal/au;->y()Lcom/crittercism/internal/bq;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 469
    :catch_1
    move-exception v0

    throw v0

    .line 461
    :catch_2
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 471
    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    .line 473
    :goto_1
    return-void

    .line 467
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Lcom/crittercism/internal/bq;->a()V
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1
.end method

.method public static a(Lcom/crittercism/internal/ax;)V
    .locals 10

    .prologue
    .line 292
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/crittercism/internal/be;->q:J

    .line 293
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 294
    sget-object v2, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    monitor-enter v2

    .line 295
    :try_start_0
    sget-object v0, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 298
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/be;

    .line 299
    monitor-enter v0

    .line 300
    :try_start_1
    iget-object v3, v0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v4, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    if-ne v3, v4, :cond_0

    .line 301
    iget-wide v4, v0, Lcom/crittercism/internal/be;->m:J

    sget-wide v6, Lcom/crittercism/internal/be;->p:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 310
    iget-wide v4, v0, Lcom/crittercism/internal/be;->m:J

    sget-wide v6, Lcom/crittercism/internal/be;->q:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 311
    iget-wide v4, v0, Lcom/crittercism/internal/be;->j:J

    sget-wide v6, Lcom/crittercism/internal/be;->q:J

    iget-wide v8, v0, Lcom/crittercism/internal/be;->m:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/crittercism/internal/be;->j:J

    .line 319
    :cond_0
    :goto_1
    invoke-direct {v0}, Lcom/crittercism/internal/be;->p()V

    .line 320
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 296
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 316
    :cond_1
    :try_start_3
    iget-wide v4, v0, Lcom/crittercism/internal/be;->j:J

    sget-wide v6, Lcom/crittercism/internal/be;->q:J

    sget-wide v8, Lcom/crittercism/internal/be;->p:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/crittercism/internal/be;->j:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 323
    :cond_2
    new-instance v0, Lcom/crittercism/internal/be$1;

    invoke-direct {v0, v1, p0}, Lcom/crittercism/internal/be$1;-><init>(Ljava/util/List;Lcom/crittercism/internal/ax;)V

    .line 338
    new-instance v1, Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 339
    sget-object v2, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2

    .line 340
    :try_start_4
    sget-object v0, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 341
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 349
    :try_start_5
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_1

    .line 355
    :goto_2
    return-void

    .line 341
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 351
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 353
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private a(Lcom/crittercism/internal/be$a;J)V
    .locals 2

    .prologue
    .line 699
    sget-object v0, Lcom/crittercism/internal/be$a;->c:Lcom/crittercism/internal/be$a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/crittercism/internal/be$a;->e:Lcom/crittercism/internal/be$a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/crittercism/internal/be$a;->h:Lcom/crittercism/internal/be$a;

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v1, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    if-ne v0, v1, :cond_2

    .line 703
    invoke-direct {p0}, Lcom/crittercism/internal/be;->p()V

    .line 704
    invoke-direct {p0, p1, p2, p3}, Lcom/crittercism/internal/be;->b(Lcom/crittercism/internal/be$a;J)V

    .line 711
    :cond_1
    :goto_0
    return-void

    .line 705
    :cond_2
    iget-object v0, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v1, Lcom/crittercism/internal/be$a;->f:Lcom/crittercism/internal/be$a;

    if-eq v0, v1, :cond_1

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transaction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not running. Either it has not been started or it has been stopped."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 708
    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    .line 709
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transaction is not running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lcom/crittercism/internal/bf;)V
    .locals 0

    .prologue
    .line 146
    sput-object p0, Lcom/crittercism/internal/be;->u:Lcom/crittercism/internal/bf;

    .line 147
    return-void
.end method

.method private declared-synchronized b(I)V
    .locals 3

    .prologue
    .line 844
    monitor-enter p0

    if-gez p1, :cond_0

    .line 845
    :try_start_0
    const-string v0, "Ignoring Transaction.setValue(int) call. Negative parameter provided."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    :goto_0
    monitor-exit p0

    return-void

    .line 849
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v1, Lcom/crittercism/internal/be$a;->a:Lcom/crittercism/internal/be$a;

    if-ne v0, v1, :cond_1

    .line 850
    iput p1, p0, Lcom/crittercism/internal/be;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 844
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 851
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v1, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    if-ne v0, v1, :cond_2

    .line 852
    iput p1, p0, Lcom/crittercism/internal/be;->g:I

    .line 853
    new-instance v0, Lcom/crittercism/internal/be;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/be;-><init>(Lcom/crittercism/internal/be;)V

    .line 856
    new-instance v1, Lcom/crittercism/internal/be$7;

    invoke-direct {v1, p0, v0}, Lcom/crittercism/internal/be$7;-><init>(Lcom/crittercism/internal/be;Lcom/crittercism/internal/be;)V

    .line 870
    sget-object v2, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 871
    :try_start_3
    sget-object v0, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 872
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 874
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transaction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " no longer in progress. Ignoring setValue(int) call."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Transaction no longer in progress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized b(J)V
    .locals 1

    .prologue
    .line 678
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/crittercism/internal/be$a;->e:Lcom/crittercism/internal/be$a;

    invoke-direct {p0, v0, p1, p2}, Lcom/crittercism/internal/be;->a(Lcom/crittercism/internal/be$a;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    monitor-exit p0

    return-void

    .line 678
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static b(Lcom/crittercism/internal/ax;)V
    .locals 8

    .prologue
    .line 477
    .line 4486
    :try_start_0
    new-instance v1, Lcom/crittercism/internal/be;

    const-string v0, "App Load"

    invoke-direct {v1, p0, v0}, Lcom/crittercism/internal/be;-><init>(Lcom/crittercism/internal/ax;Ljava/lang/String;)V

    .line 4488
    sput-object v1, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 4489
    :try_start_1
    invoke-static {}, Lcom/crittercism/internal/be;->n()J

    move-result-wide v2

    .line 4493
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 4494
    sget-object v0, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    sget-object v4, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    iput-object v4, v0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    .line 4495
    sget-object v0, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    .line 4527
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 4528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 4529
    sub-long/2addr v4, v2

    .line 4530
    sub-long v4, v6, v4

    .line 4495
    iput-wide v4, v0, Lcom/crittercism/internal/be;->h:J

    .line 4496
    sget-object v0, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    .line 4535
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 4537
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 4539
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 4540
    sub-long v2, v4, v2

    .line 4541
    sub-long v2, v6, v2

    .line 4496
    iput-wide v2, v0, Lcom/crittercism/internal/be;->m:J

    .line 4498
    sget-object v0, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    sget-object v2, Lcom/crittercism/internal/be;->u:Lcom/crittercism/internal/bf;

    sget-object v3, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    iget-object v3, v3, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bf;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 4737
    iput-wide v2, v0, Lcom/crittercism/internal/be;->f:J

    .line 4500
    sget-object v2, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4501
    :try_start_2
    sget-object v0, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    sget-object v3, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4502
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4503
    :try_start_3
    new-instance v0, Lcom/crittercism/internal/be;

    sget-object v2, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    invoke-direct {v0, v2}, Lcom/crittercism/internal/be;-><init>(Lcom/crittercism/internal/be;)V

    .line 4504
    new-instance v2, Lcom/crittercism/internal/be$3;

    invoke-direct {v2, p0, v0}, Lcom/crittercism/internal/be$3;-><init>(Lcom/crittercism/internal/ax;Lcom/crittercism/internal/be;)V

    .line 4518
    sget-object v3, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4519
    :try_start_4
    sget-object v0, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 4520
    sget-object v0, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    sget-object v2, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    iget-wide v4, v2, Lcom/crittercism/internal/be;->f:J

    invoke-direct {v0, v4, v5}, Lcom/crittercism/internal/be;->d(J)V

    .line 4521
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4523
    :cond_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    return-void

    .line 4502
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    .line 4523
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/ThreadDeath; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 479
    :catch_0
    move-exception v0

    throw v0

    .line 4521
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 481
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Lcom/crittercism/internal/be$a;J)V
    .locals 4

    .prologue
    .line 773
    iput-object p1, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "txn state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    invoke-virtual {v1}, Lcom/crittercism/internal/be$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 775
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/be;->i:J

    .line 779
    invoke-static {}, Lcom/crittercism/internal/be;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    sget-wide v0, Lcom/crittercism/internal/be;->p:J

    iget-wide v2, p0, Lcom/crittercism/internal/be;->m:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 781
    iget-wide v2, p0, Lcom/crittercism/internal/be;->j:J

    sub-long v0, p2, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/crittercism/internal/be;->j:J

    .line 784
    :cond_0
    sget-object v1, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    monitor-enter v1

    .line 785
    :try_start_0
    sget-object v0, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 786
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    new-instance v0, Lcom/crittercism/internal/be;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/be;-><init>(Lcom/crittercism/internal/be;)V

    .line 788
    new-instance v1, Lcom/crittercism/internal/be$6;

    invoke-direct {v1, p0, v0}, Lcom/crittercism/internal/be$6;-><init>(Lcom/crittercism/internal/be;Lcom/crittercism/internal/be;)V

    .line 827
    sget-object v2, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2

    .line 828
    :try_start_1
    sget-object v0, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 829
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 786
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 829
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static synthetic b(Lcom/crittercism/internal/be;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/crittercism/internal/be;->q()V

    return-void
.end method

.method static synthetic c(Lcom/crittercism/internal/be;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/crittercism/internal/be;->l:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized c(J)V
    .locals 1

    .prologue
    .line 694
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/crittercism/internal/be$a;->h:Lcom/crittercism/internal/be$a;

    invoke-direct {p0, v0, p1, p2}, Lcom/crittercism/internal/be;->a(Lcom/crittercism/internal/be$a;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    monitor-exit p0

    return-void

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(J)V
    .locals 3

    .prologue
    .line 741
    invoke-static {}, Lcom/crittercism/internal/be;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    sget-object v0, Lcom/crittercism/internal/be;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/crittercism/internal/be$5;

    invoke-direct {v1, p0}, Lcom/crittercism/internal/be$5;-><init>(Lcom/crittercism/internal/be;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/be;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 752
    :cond_0
    return-void
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    sput-boolean v0, Lcom/crittercism/internal/be;->r:Z

    .line 151
    return-void
.end method

.method public static g()V
    .locals 10

    .prologue
    .line 240
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/crittercism/internal/be;->p:J

    .line 241
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 242
    sget-object v1, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    monitor-enter v1

    .line 243
    :try_start_0
    sget-object v2, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 256
    sget-object v1, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    if-eqz v1, :cond_0

    .line 257
    sget-wide v2, Lcom/crittercism/internal/be;->q:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 258
    sget-object v1, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    monitor-enter v1

    .line 259
    :try_start_1
    sget-object v2, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    iget-wide v4, v2, Lcom/crittercism/internal/be;->j:J

    sget-wide v6, Lcom/crittercism/internal/be;->p:J

    sget-object v3, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    iget-wide v8, v3, Lcom/crittercism/internal/be;->m:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/crittercism/internal/be;->j:J

    .line 260
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 265
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/be;

    .line 266
    monitor-enter v0

    .line 267
    :try_start_2
    iget-object v2, v0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v3, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    if-ne v2, v3, :cond_1

    .line 268
    iget-object v2, v0, Lcom/crittercism/internal/be;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/crittercism/internal/be;->n:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    iget-wide v2, v0, Lcom/crittercism/internal/be;->f:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v0, Lcom/crittercism/internal/be;->j:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/crittercism/internal/be;->d(J)V

    .line 281
    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 244
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 260
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 275
    :cond_2
    :try_start_5
    iget-object v2, v0, Lcom/crittercism/internal/be;->n:Ljava/util/concurrent/ScheduledFuture;

    if-nez v2, :cond_1

    .line 278
    iget-wide v2, v0, Lcom/crittercism/internal/be;->f:J

    invoke-direct {v0, v2, v3}, Lcom/crittercism/internal/be;->d(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 283
    :cond_3
    return-void
.end method

.method public static h()V
    .locals 1

    .prologue
    .line 5589
    :try_start_0
    sget-object v0, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    if-eqz v0, :cond_0

    .line 5592
    sget-object v0, Lcom/crittercism/internal/be;->t:Lcom/crittercism/internal/be;

    invoke-virtual {v0}, Lcom/crittercism/internal/be;->b()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v0

    throw v0

    .line 584
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static i()V
    .locals 4

    .prologue
    .line 717
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 718
    sget-object v1, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    monitor-enter v1

    .line 719
    :try_start_0
    sget-object v2, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 720
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 722
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/be;

    .line 723
    monitor-enter v0

    .line 724
    :try_start_1
    iget-object v2, v0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v3, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    if-ne v2, v3, :cond_0

    .line 725
    sget-object v2, Lcom/crittercism/internal/be;->u:Lcom/crittercism/internal/bf;

    iget-object v3, v0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bf;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 6737
    iput-wide v2, v0, Lcom/crittercism/internal/be;->f:J

    .line 726
    invoke-direct {v0}, Lcom/crittercism/internal/be;->p()V

    .line 730
    iget-wide v2, v0, Lcom/crittercism/internal/be;->f:J

    invoke-direct {v0, v2, v3}, Lcom/crittercism/internal/be;->d(J)V

    .line 732
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 720
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 734
    :cond_1
    return-void
.end method

.method static synthetic k()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/crittercism/internal/be;->r:Z

    return v0
.end method

.method static synthetic l()Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    return-object v0
.end method

.method private static m()Z
    .locals 4

    .prologue
    .line 286
    sget-wide v0, Lcom/crittercism/internal/be;->p:J

    sget-wide v2, Lcom/crittercism/internal/be;->q:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static n()J
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v9, 0x0

    const-wide/16 v2, -0x1

    .line 545
    new-array v1, v0, [J

    .line 547
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 548
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/proc/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/stat"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    :try_start_0
    const-class v4, Landroid/os/Process;

    .line 553
    const-string v5, "readProcFile"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, [I

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, [Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, [J

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-class v8, [F

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 555
    const/4 v5, 0x0

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    sget-object v7, Lcom/crittercism/internal/be;->s:[I

    aput-object v7, v6, v0

    const/4 v0, 0x2

    const/4 v7, 0x0

    aput-object v7, v6, v0

    const/4 v0, 0x3

    aput-object v1, v6, v0

    const/4 v0, 0x4

    const/4 v7, 0x0

    aput-object v7, v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 557
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    if-nez v0, :cond_0

    move-wide v0, v2

    .line 575
    :goto_0
    return-wide v0

    .line 561
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 562
    goto :goto_0

    .line 564
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 565
    goto :goto_0

    .line 567
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 568
    goto :goto_0

    .line 570
    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 571
    goto :goto_0

    .line 575
    :cond_0
    aget-wide v0, v1, v9

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method private declared-synchronized o()V
    .locals 3

    .prologue
    .line 607
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v1, Lcom/crittercism/internal/be$a;->a:Lcom/crittercism/internal/be$a;

    if-ne v0, v1, :cond_0

    .line 608
    sget-object v0, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    iput-object v0, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/be;->h:J

    .line 610
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/be;->m:J

    .line 611
    sget-object v0, Lcom/crittercism/internal/be;->u:Lcom/crittercism/internal/bf;

    iget-object v1, p0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bf;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 5737
    iput-wide v0, p0, Lcom/crittercism/internal/be;->f:J

    .line 612
    sget-object v1, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 613
    :try_start_1
    sget-object v0, Lcom/crittercism/internal/be;->o:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    :try_start_2
    new-instance v0, Lcom/crittercism/internal/be;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/be;-><init>(Lcom/crittercism/internal/be;)V

    .line 617
    new-instance v1, Lcom/crittercism/internal/be$4;

    invoke-direct {v1, p0, v0}, Lcom/crittercism/internal/be$4;-><init>(Lcom/crittercism/internal/be;Lcom/crittercism/internal/be;)V

    .line 631
    sget-object v2, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 632
    :try_start_3
    sget-object v0, Lcom/crittercism/internal/be;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 640
    iget-wide v0, p0, Lcom/crittercism/internal/be;->f:J

    invoke-direct {p0, v0, v1}, Lcom/crittercism/internal/be;->d(J)V

    .line 641
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 647
    :goto_0
    monitor-exit p0

    return-void

    .line 614
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 607
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 641
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .line 643
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transaction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has already been started."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Transaction has already started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method

.method private declared-synchronized p()V
    .locals 2

    .prologue
    .line 758
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/be;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/crittercism/internal/be;->n:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    :cond_0
    monitor-exit p0

    return-void

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized q()V
    .locals 4

    .prologue
    .line 765
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 766
    iget-object v2, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v3, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    if-ne v2, v3, :cond_0

    .line 767
    sget-object v2, Lcom/crittercism/internal/be$a;->f:Lcom/crittercism/internal/be$a;

    invoke-direct {p0, v2, v0, v1}, Lcom/crittercism/internal/be;->b(Lcom/crittercism/internal/be$a;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    :cond_0
    monitor-exit p0

    return-void

    .line 765
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized r()I
    .locals 1

    .prologue
    .line 893
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/crittercism/internal/be;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 598
    :try_start_0
    invoke-direct {p0}, Lcom/crittercism/internal/be;->o()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 604
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v0

    throw v0

    .line 602
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 835
    :try_start_0
    invoke-direct {p0, p1}, Lcom/crittercism/internal/be;->b(I)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 841
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v0

    throw v0

    .line 839
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 957
    const/4 v0, 0x0

    .line 959
    :try_start_0
    invoke-virtual {p0}, Lcom/crittercism/internal/be;->j()Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 963
    :goto_0
    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 965
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 967
    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a_()I
    .locals 1

    .prologue
    .line 883
    :try_start_0
    invoke-direct {p0}, Lcom/crittercism/internal/be;->r()I
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 888
    :goto_0
    return v0

    .line 885
    :catch_0
    move-exception v0

    throw v0

    .line 887
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    .line 888
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 652
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 653
    invoke-direct {p0, v0, v1}, Lcom/crittercism/internal/be;->a(J)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 659
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v0

    throw v0

    .line 657
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 668
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 669
    invoke-direct {p0, v0, v1}, Lcom/crittercism/internal/be;->b(J)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 675
    :goto_0
    return-void

    .line 671
    :catch_0
    move-exception v0

    throw v0

    .line 673
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 684
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 685
    invoke-direct {p0, v0, v1}, Lcom/crittercism/internal/be;->c(J)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 691
    :goto_0
    return-void

    .line 687
    :catch_0
    move-exception v0

    throw v0

    .line 689
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/crittercism/internal/be;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Lorg/json/JSONArray;
    .locals 10

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 934
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/crittercism/internal/be;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    invoke-virtual {v1}, Lcom/crittercism/internal/be$a;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v0

    iget-wide v2, p0, Lcom/crittercism/internal/be;->f:J

    long-to-double v2, v2

    div-double/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    move-result-object v1

    iget v0, p0, Lcom/crittercism/internal/be;->g:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/crittercism/internal/be;->k:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/crittercism/internal/be;->h:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/crittercism/internal/eb;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/crittercism/internal/be;->i:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/crittercism/internal/eb;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    .line 942
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 943
    iget-wide v2, p0, Lcom/crittercism/internal/be;->j:J

    long-to-double v2, v2

    .line 6902
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 6903
    div-double/2addr v2, v4

    .line 6906
    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v8

    .line 943
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 947
    :goto_1
    return-object v0

    .line 934
    :cond_0
    iget v0, p0, Lcom/crittercism/internal/be;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 945
    :cond_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1
.end method
