.class final Lcom/crittercism/internal/be$6;
.super Lcom/crittercism/internal/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crittercism/internal/be;->b(Lcom/crittercism/internal/be$a;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/be;

.field final synthetic b:Lcom/crittercism/internal/be;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/be;Lcom/crittercism/internal/be;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Lcom/crittercism/internal/be$6;->b:Lcom/crittercism/internal/be;

    iput-object p2, p0, Lcom/crittercism/internal/be$6;->a:Lcom/crittercism/internal/be;

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 791
    iget-object v0, p0, Lcom/crittercism/internal/be$6;->a:Lcom/crittercism/internal/be;

    invoke-static {v0}, Lcom/crittercism/internal/be;->a(Lcom/crittercism/internal/be;)Lcom/crittercism/internal/be$a;

    move-result-object v0

    sget-object v1, Lcom/crittercism/internal/be$a;->c:Lcom/crittercism/internal/be$a;

    if-eq v0, v1, :cond_0

    .line 792
    new-instance v0, Lcom/crittercism/internal/be$6$1;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/be$6$1;-><init>(Lcom/crittercism/internal/be$6;)V

    .line 798
    iget-object v1, p0, Lcom/crittercism/internal/be$6;->b:Lcom/crittercism/internal/be;

    iget-object v1, v1, Lcom/crittercism/internal/be;->a:Lcom/crittercism/internal/ax;

    .line 2670
    iget-object v1, v1, Lcom/crittercism/internal/ax;->r:Ljava/util/concurrent/ExecutorService;

    .line 800
    new-instance v2, Ljava/util/concurrent/FutureTask;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 801
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 804
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 812
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/crittercism/internal/be$6;->b:Lcom/crittercism/internal/be;

    iget-object v0, v0, Lcom/crittercism/internal/be;->a:Lcom/crittercism/internal/ax;

    .line 2689
    iget-object v0, v0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    .line 3483
    iget-object v0, v0, Lcom/crittercism/internal/dg;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 813
    invoke-static {}, Lcom/crittercism/internal/be;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "about to delete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crittercism/internal/be$6;->b:Lcom/crittercism/internal/be;

    invoke-static {v1}, Lcom/crittercism/internal/be;->c(Lcom/crittercism/internal/be;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/crittercism/internal/be$6;->b:Lcom/crittercism/internal/be;

    iget-object v0, v0, Lcom/crittercism/internal/be;->a:Lcom/crittercism/internal/ax;

    .line 4046
    iget-object v0, v0, Lcom/crittercism/internal/ax;->l:Lcom/crittercism/internal/bq;

    .line 815
    iget-object v1, p0, Lcom/crittercism/internal/be$6;->b:Lcom/crittercism/internal/be;

    invoke-static {v1}, Lcom/crittercism/internal/be;->c(Lcom/crittercism/internal/be;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bq;->a(Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/crittercism/internal/be$6;->a:Lcom/crittercism/internal/be;

    invoke-static {v0}, Lcom/crittercism/internal/be;->a(Lcom/crittercism/internal/be;)Lcom/crittercism/internal/be$a;

    move-result-object v0

    sget-object v1, Lcom/crittercism/internal/be$a;->h:Lcom/crittercism/internal/be$a;

    if-eq v0, v1, :cond_1

    .line 817
    iget-object v0, p0, Lcom/crittercism/internal/be$6;->b:Lcom/crittercism/internal/be;

    iget-object v0, v0, Lcom/crittercism/internal/be;->a:Lcom/crittercism/internal/ax;

    .line 4051
    iget-object v0, v0, Lcom/crittercism/internal/ax;->m:Lcom/crittercism/internal/bq;

    .line 817
    iget-object v1, p0, Lcom/crittercism/internal/be$6;->a:Lcom/crittercism/internal/be;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z

    .line 824
    :cond_1
    :goto_1
    return-void

    .line 806
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 808
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 820
    :cond_2
    invoke-static {}, Lcom/crittercism/internal/be;->l()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 821
    :try_start_1
    invoke-static {}, Lcom/crittercism/internal/be;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 822
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
