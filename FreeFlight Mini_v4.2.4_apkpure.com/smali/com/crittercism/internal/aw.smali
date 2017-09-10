.class public final Lcom/crittercism/internal/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final b:Lcom/crittercism/internal/ax;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/ax;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/crittercism/internal/aw;->b:Lcom/crittercism/internal/ax;

    .line 14
    iput-object p2, p0, Lcom/crittercism/internal/aw;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 15
    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/aw;->b:Lcom/crittercism/internal/ax;

    .line 1410
    iget-object v1, v0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    if-nez v1, :cond_2

    .line 1412
    const-string v0, "Unable to handle application crash. Crittercism not yet initialized"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/crittercism/internal/aw;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/crittercism/internal/aw;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    instance-of v0, v0, Lcom/crittercism/internal/aw;

    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/crittercism/internal/aw;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 34
    :cond_1
    :goto_1
    return-void

    .line 1416
    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    .line 1479
    iget-object v1, v1, Lcom/crittercism/internal/dg;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 1418
    iget-object v1, v0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/crittercism/internal/dp;->a(Landroid/content/Context;Z)V

    .line 1420
    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1421
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->s:Z

    if-eqz v1, :cond_4

    .line 2430
    new-instance v1, Lcom/crittercism/internal/bi;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-direct {v1, p2, v2, v3}, Lcom/crittercism/internal/bi;-><init>(Ljava/lang/Throwable;J)V

    .line 2431
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lcom/crittercism/internal/bi;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    .line 2432
    new-instance v2, Lcom/crittercism/internal/cu;

    invoke-direct {v2, v0}, Lcom/crittercism/internal/cu;-><init>(Lcom/crittercism/internal/ar;)V

    sget-object v3, Lcom/crittercism/internal/bp;->e:Lcom/crittercism/internal/bp;

    .line 3135
    iget-object v3, v3, Lcom/crittercism/internal/bp;->q:Ljava/lang/String;

    .line 2432
    invoke-virtual {v2, v3, v1}, Lcom/crittercism/internal/cu;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/crittercism/internal/cu;

    move-result-object v1

    .line 2434
    new-instance v2, Lcom/crittercism/internal/dj;

    new-instance v3, Lcom/crittercism/internal/dc;

    new-instance v4, Lcom/crittercism/internal/db;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    .line 4072
    iget-object v0, v0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 4081
    iget-object v0, v0, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 2434
    const-string v5, "/android_v2/handle_crashes"

    invoke-direct {v4, v0, v5}, Lcom/crittercism/internal/db;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/crittercism/internal/db;->a()Ljava/net/URL;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/crittercism/internal/dc;-><init>(Ljava/net/URL;)V

    const/4 v0, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/crittercism/internal/dj;-><init>(Lcom/crittercism/internal/cw;Lcom/crittercism/internal/dc;Lcom/crittercism/internal/cy;)V

    invoke-virtual {v2}, Lcom/crittercism/internal/dj;->run()V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/crittercism/internal/aw;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/crittercism/internal/aw;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    instance-of v1, v1, Lcom/crittercism/internal/aw;

    if-nez v1, :cond_3

    .line 31
    iget-object v1, p0, Lcom/crittercism/internal/aw;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_3
    throw v0

    .line 1424
    :cond_4
    :try_start_3
    invoke-virtual {v0, p2}, Lcom/crittercism/internal/ax;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 27
    :catch_1
    move-exception v0

    .line 28
    :try_start_4
    const-string v1, "Unable to send crash"

    invoke-static {v1, v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 30
    iget-object v0, p0, Lcom/crittercism/internal/aw;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/crittercism/internal/aw;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    instance-of v0, v0, Lcom/crittercism/internal/aw;

    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/crittercism/internal/aw;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method
