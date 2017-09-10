.class final Lcom/crittercism/internal/ap$1;
.super Lcom/crittercism/internal/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/au;Landroid/content/Context;Lcom/crittercism/internal/az;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/ax;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/au;

.field final synthetic b:Lcom/crittercism/internal/az;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/crittercism/internal/ar;

.field final synthetic e:Lcom/crittercism/internal/ax;

.field final synthetic f:Lcom/crittercism/internal/ap;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/ap;Lcom/crittercism/internal/au;Lcom/crittercism/internal/az;Landroid/content/Context;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/ax;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/crittercism/internal/ap$1;->f:Lcom/crittercism/internal/ap;

    iput-object p2, p0, Lcom/crittercism/internal/ap$1;->a:Lcom/crittercism/internal/au;

    iput-object p3, p0, Lcom/crittercism/internal/ap$1;->b:Lcom/crittercism/internal/az;

    iput-object p4, p0, Lcom/crittercism/internal/ap$1;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/crittercism/internal/ap$1;->d:Lcom/crittercism/internal/ar;

    iput-object p6, p0, Lcom/crittercism/internal/ap$1;->e:Lcom/crittercism/internal/ax;

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 150
    iget-object v0, p0, Lcom/crittercism/internal/ap$1;->f:Lcom/crittercism/internal/ap;

    .line 1021
    iget-object v0, v0, Lcom/crittercism/internal/ap;->d:Lcom/crittercism/internal/dr;

    .line 150
    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/crittercism/internal/ap$1;->a:Lcom/crittercism/internal/au;

    invoke-interface {v0}, Lcom/crittercism/internal/au;->o()Lcom/crittercism/internal/bq;

    move-result-object v1

    .line 157
    iget-object v0, p0, Lcom/crittercism/internal/ap$1;->b:Lcom/crittercism/internal/az;

    .line 1072
    iget-object v0, v0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 1081
    iget-object v0, v0, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/crittercism/internal/ap$1;->f:Lcom/crittercism/internal/ap;

    .line 2055
    iget-object v0, v0, Lcom/crittercism/internal/ap;->a:Lcom/crittercism/internal/bk;

    .line 161
    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {v1, v0}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z

    .line 165
    :cond_2
    new-instance v0, Lcom/crittercism/internal/df;

    iget-object v2, p0, Lcom/crittercism/internal/ap$1;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/crittercism/internal/df;-><init>(Landroid/content/Context;)V

    .line 166
    new-instance v2, Lcom/crittercism/internal/ct$a;

    invoke-direct {v2}, Lcom/crittercism/internal/ct$a;-><init>()V

    iget-object v3, p0, Lcom/crittercism/internal/ap$1;->b:Lcom/crittercism/internal/az;

    .line 2096
    iget-object v3, v3, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 3089
    iget-object v3, v3, Lcom/crittercism/internal/bl;->d:Ljava/lang/String;

    .line 166
    const-string v4, "/v0/appload"

    iget-object v5, p0, Lcom/crittercism/internal/ap$1;->b:Lcom/crittercism/internal/az;

    .line 4072
    iget-object v5, v5, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 4081
    iget-object v5, v5, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 166
    iget-object v6, p0, Lcom/crittercism/internal/ap$1;->d:Lcom/crittercism/internal/ar;

    new-instance v7, Lcom/crittercism/internal/cs$b;

    invoke-direct {v7}, Lcom/crittercism/internal/cs$b;-><init>()V

    invoke-virtual/range {v0 .. v7}, Lcom/crittercism/internal/df;->a(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/cx;)V

    .line 175
    iget-object v1, p0, Lcom/crittercism/internal/ap$1;->e:Lcom/crittercism/internal/ax;

    .line 5075
    iget-object v0, v0, Lcom/crittercism/internal/df;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/di;

    .line 5697
    iget-object v3, v1, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    invoke-virtual {v3, v0}, Lcom/crittercism/internal/dg;->a(Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 5698
    iget-object v3, v1, Lcom/crittercism/internal/ax;->q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
