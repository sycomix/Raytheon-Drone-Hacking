.class public final Lcom/crittercism/internal/df;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/List;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/crittercism/internal/df;->b:Landroid/content/Context;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/df;->a:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object v0, p0, Lcom/crittercism/internal/df;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/di;

    .line 91
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 95
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 99
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    goto :goto_2

    .line 101
    :cond_2
    return-void
.end method

.method public final declared-synchronized a(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/cx;)V
    .locals 7

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/crittercism/internal/bq;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/crittercism/internal/df;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/crittercism/internal/bq;->a(Landroid/content/Context;)Lcom/crittercism/internal/bq;

    move-result-object v1

    .line 1058
    iget-object v4, p0, Lcom/crittercism/internal/df;->b:Landroid/content/Context;

    move-object v0, p2

    move-object v2, p1

    move-object v3, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/crittercism/internal/cz;->a(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;Ljava/lang/String;Landroid/content/Context;Lcom/crittercism/internal/ar;)Lcom/crittercism/internal/cy;

    move-result-object v5

    .line 1061
    new-instance v0, Lcom/crittercism/internal/dh;

    new-instance v2, Lcom/crittercism/internal/db;

    invoke-direct {v2, p3, p4}, Lcom/crittercism/internal/db;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/crittercism/internal/db;->a()Ljava/net/URL;

    move-result-object v4

    move-object v2, p1

    move-object v3, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/crittercism/internal/dh;-><init>(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;Lcom/crittercism/internal/ar;Ljava/net/URL;Lcom/crittercism/internal/cy;Lcom/crittercism/internal/cx;)V

    .line 45
    iget-object v1, p0, Lcom/crittercism/internal/df;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
