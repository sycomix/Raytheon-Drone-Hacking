.class final Lcom/crittercism/internal/ax$7;
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
    .line 753
    iput-object p1, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    iput-object p2, p0, Lcom/crittercism/internal/ax$7;->a:Ljava/lang/Throwable;

    iput-wide p3, p0, Lcom/crittercism/internal/ax$7;->b:J

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 756
    iget-object v0, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    .line 1091
    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 756
    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    :goto_0
    return-void

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    .line 2091
    iget-object v1, v0, Lcom/crittercism/internal/ax;->n:Lcom/crittercism/internal/cv;

    .line 760
    monitor-enter v1

    .line 761
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    .line 3091
    iget v0, v0, Lcom/crittercism/internal/ax;->B:I

    .line 761
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 762
    new-instance v0, Lcom/crittercism/internal/bi;

    iget-object v2, p0, Lcom/crittercism/internal/ax$7;->a:Ljava/lang/Throwable;

    iget-wide v4, p0, Lcom/crittercism/internal/ax$7;->b:J

    invoke-direct {v0, v2, v4, v5}, Lcom/crittercism/internal/bi;-><init>(Ljava/lang/Throwable;J)V

    .line 763
    const-string v2, "current_session"

    iget-object v3, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    .line 4091
    iget-object v3, v3, Lcom/crittercism/internal/ax;->i:Lcom/crittercism/internal/bq;

    .line 763
    invoke-virtual {v0, v2, v3}, Lcom/crittercism/internal/bi;->a(Ljava/lang/String;Lcom/crittercism/internal/bq;)V

    .line 769
    iget-object v2, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    .line 5091
    iget-object v2, v2, Lcom/crittercism/internal/ax;->j:Lcom/crittercism/internal/bq;

    .line 769
    invoke-virtual {v0, v2}, Lcom/crittercism/internal/bi;->a(Lcom/crittercism/internal/bq;)V

    .line 770
    const-string v2, "he"

    .line 5272
    iput-object v2, v0, Lcom/crittercism/internal/bi;->e:Ljava/lang/String;

    .line 5277
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/crittercism/internal/bi;->g:Z

    .line 777
    iget-object v2, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    .line 6091
    iget-object v2, v2, Lcom/crittercism/internal/ax;->n:Lcom/crittercism/internal/cv;

    .line 777
    invoke-virtual {v2}, Lcom/crittercism/internal/cv;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 778
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lcom/crittercism/internal/bi;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    .line 780
    new-instance v2, Lcom/crittercism/internal/cu;

    .line 7091
    sget-object v3, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 780
    invoke-direct {v2, v3}, Lcom/crittercism/internal/cu;-><init>(Lcom/crittercism/internal/ar;)V

    sget-object v3, Lcom/crittercism/internal/bp;->b:Lcom/crittercism/internal/bp;

    .line 7135
    iget-object v3, v3, Lcom/crittercism/internal/bp;->q:Ljava/lang/String;

    .line 780
    invoke-virtual {v2, v3, v0}, Lcom/crittercism/internal/cu;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/crittercism/internal/cu;

    move-result-object v0

    .line 784
    new-instance v2, Lcom/crittercism/internal/dj;

    new-instance v3, Lcom/crittercism/internal/dc;

    new-instance v4, Lcom/crittercism/internal/db;

    iget-object v5, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    .line 8091
    iget-object v5, v5, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    .line 9072
    iget-object v5, v5, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 9081
    iget-object v5, v5, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 784
    const-string v6, "/android_v2/handle_exceptions"

    invoke-direct {v4, v5, v6}, Lcom/crittercism/internal/db;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/crittercism/internal/db;->a()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/crittercism/internal/dc;-><init>(Ljava/net/URL;)V

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/crittercism/internal/dj;-><init>(Lcom/crittercism/internal/cw;Lcom/crittercism/internal/dc;Lcom/crittercism/internal/cy;)V

    invoke-virtual {v2}, Lcom/crittercism/internal/dj;->run()V

    .line 788
    iget-object v0, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    .line 9091
    iget v2, v0, Lcom/crittercism/internal/ax;->B:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/crittercism/internal/ax;->B:I

    .line 789
    iget-object v0, p0, Lcom/crittercism/internal/ax$7;->c:Lcom/crittercism/internal/ax;

    .line 10091
    iget-object v0, v0, Lcom/crittercism/internal/ax;->n:Lcom/crittercism/internal/cv;

    .line 789
    invoke-virtual {v0}, Lcom/crittercism/internal/cv;->b()V

    .line 792
    :cond_1
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
