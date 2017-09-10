.class final Lcom/crittercism/internal/ax$8;
.super Lcom/crittercism/internal/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:J

.field final synthetic c:Lcom/crittercism/internal/ax;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/ax;Ljava/lang/Throwable;J)V
    .locals 1

    .prologue
    .line 804
    iput-object p1, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    iput-object p2, p0, Lcom/crittercism/internal/ax$8;->a:Ljava/lang/Throwable;

    iput-wide p3, p0, Lcom/crittercism/internal/ax$8;->b:J

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 806
    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    .line 1091
    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 806
    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    new-instance v1, Lcom/crittercism/internal/bi;

    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->a:Ljava/lang/Throwable;

    iget-wide v2, p0, Lcom/crittercism/internal/ax$8;->b:J

    invoke-direct {v1, v0, v2, v3}, Lcom/crittercism/internal/bi;-><init>(Ljava/lang/Throwable;J)V

    .line 809
    const-string v0, "current_session"

    iget-object v2, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    .line 2091
    iget-object v2, v2, Lcom/crittercism/internal/ax;->i:Lcom/crittercism/internal/bq;

    .line 809
    invoke-virtual {v1, v0, v2}, Lcom/crittercism/internal/bi;->a(Ljava/lang/String;Lcom/crittercism/internal/bq;)V

    .line 811
    const-string v0, "he"

    .line 2272
    iput-object v0, v1, Lcom/crittercism/internal/bi;->e:Ljava/lang/String;

    .line 812
    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->a:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/crittercism/internal/co;

    if-eqz v0, :cond_3

    .line 813
    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->a:Ljava/lang/Throwable;

    check-cast v0, Lcom/crittercism/internal/co;

    .line 3042
    iget-boolean v0, v0, Lcom/crittercism/internal/co;->a:Z

    .line 3277
    iput-boolean v0, v1, Lcom/crittercism/internal/bi;->g:Z

    .line 820
    :goto_1
    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    .line 5004
    iget-object v0, v0, Lcom/crittercism/internal/ax;->h:Lcom/crittercism/internal/bq;

    .line 820
    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    .line 5091
    iget-object v0, v0, Lcom/crittercism/internal/ax;->k:Lcom/crittercism/internal/bq;

    .line 821
    new-instance v2, Lcom/crittercism/internal/bw;

    .line 5380
    iget-object v3, v1, Lcom/crittercism/internal/bi;->b:Ljava/lang/String;

    .line 5387
    iget-object v4, v1, Lcom/crittercism/internal/bi;->c:Ljava/lang/String;

    .line 821
    invoke-direct {v2, v3, v4}, Lcom/crittercism/internal/bw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z

    .line 823
    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    .line 6091
    iget-object v0, v0, Lcom/crittercism/internal/ax;->j:Lcom/crittercism/internal/bq;

    .line 823
    invoke-virtual {v1, v0}, Lcom/crittercism/internal/bi;->a(Lcom/crittercism/internal/bq;)V

    .line 824
    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    .line 7091
    iget-object v0, v0, Lcom/crittercism/internal/ax;->k:Lcom/crittercism/internal/bq;

    .line 824
    invoke-virtual {v1, v0}, Lcom/crittercism/internal/bi;->b(Lcom/crittercism/internal/bq;)V

    .line 835
    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    .line 8004
    iget-object v0, v0, Lcom/crittercism/internal/ax;->h:Lcom/crittercism/internal/bq;

    .line 835
    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bq;->b(Lcom/crittercism/internal/cf;)Z

    .line 837
    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    .line 8091
    iget-object v0, v0, Lcom/crittercism/internal/ax;->n:Lcom/crittercism/internal/cv;

    .line 837
    invoke-virtual {v0}, Lcom/crittercism/internal/cv;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    new-instance v0, Lcom/crittercism/internal/df;

    iget-object v1, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    .line 9091
    iget-object v1, v1, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    .line 838
    invoke-direct {v0, v1}, Lcom/crittercism/internal/df;-><init>(Landroid/content/Context;)V

    .line 840
    iget-object v1, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    .line 10004
    iget-object v1, v1, Lcom/crittercism/internal/ax;->h:Lcom/crittercism/internal/bq;

    .line 840
    new-instance v2, Lcom/crittercism/internal/da$a;

    invoke-direct {v2}, Lcom/crittercism/internal/da$a;-><init>()V

    iget-object v3, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    .line 10091
    iget-object v3, v3, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    .line 11072
    iget-object v3, v3, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 11081
    iget-object v3, v3, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 840
    const-string v4, "/android_v2/handle_exceptions"

    const/4 v5, 0x0

    .line 11091
    sget-object v6, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 840
    new-instance v7, Lcom/crittercism/internal/cu$a;

    invoke-direct {v7}, Lcom/crittercism/internal/cu$a;-><init>()V

    invoke-virtual/range {v0 .. v7}, Lcom/crittercism/internal/df;->a(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/cx;)V

    .line 849
    iget-object v1, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    .line 12091
    iget-object v1, v1, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    .line 849
    iget-object v2, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    .line 13091
    iget-object v2, v2, Lcom/crittercism/internal/ax;->q:Ljava/util/concurrent/ExecutorService;

    .line 14081
    iget-object v0, v0, Lcom/crittercism/internal/df;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/di;

    .line 14082
    invoke-virtual {v1, v0}, Lcom/crittercism/internal/dg;->a(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 14083
    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 4277
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/crittercism/internal/bi;->g:Z

    goto/16 :goto_1

    .line 850
    :cond_4
    iget-object v0, p0, Lcom/crittercism/internal/ax$8;->c:Lcom/crittercism/internal/ax;

    .line 14091
    iget-object v0, v0, Lcom/crittercism/internal/ax;->n:Lcom/crittercism/internal/cv;

    .line 850
    invoke-virtual {v0}, Lcom/crittercism/internal/cv;->b()V

    goto/16 :goto_0
.end method
