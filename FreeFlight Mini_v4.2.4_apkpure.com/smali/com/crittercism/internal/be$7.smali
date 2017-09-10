.class final Lcom/crittercism/internal/be$7;
.super Lcom/crittercism/internal/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crittercism/internal/be;->b(I)V
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
    .line 856
    iput-object p1, p0, Lcom/crittercism/internal/be$7;->b:Lcom/crittercism/internal/be;

    iput-object p2, p0, Lcom/crittercism/internal/be$7;->a:Lcom/crittercism/internal/be;

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 859
    iget-object v0, p0, Lcom/crittercism/internal/be$7;->b:Lcom/crittercism/internal/be;

    iget-object v0, v0, Lcom/crittercism/internal/be;->a:Lcom/crittercism/internal/ax;

    .line 1689
    iget-object v0, v0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    .line 2483
    iget-object v0, v0, Lcom/crittercism/internal/dg;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 860
    invoke-static {}, Lcom/crittercism/internal/be;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/crittercism/internal/be$7;->b:Lcom/crittercism/internal/be;

    iget-object v0, v0, Lcom/crittercism/internal/be;->a:Lcom/crittercism/internal/ax;

    .line 3046
    iget-object v0, v0, Lcom/crittercism/internal/ax;->l:Lcom/crittercism/internal/bq;

    .line 861
    iget-object v1, p0, Lcom/crittercism/internal/be$7;->a:Lcom/crittercism/internal/be;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z

    .line 865
    :goto_0
    return-void

    .line 863
    :cond_0
    invoke-static {}, Lcom/crittercism/internal/be;->l()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 864
    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/be;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 865
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
