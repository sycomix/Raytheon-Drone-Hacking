.class public final Lcom/crittercism/internal/dk;
.super Lcom/crittercism/internal/di;


# instance fields
.field public a:Ljava/util/Map;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field private f:Lcom/crittercism/internal/dv;

.field private g:Lcom/crittercism/internal/dr;

.field private h:Lcom/crittercism/internal/ar;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/ar;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/dk;->a:Ljava/util/Map;

    .line 26
    iput-boolean v1, p0, Lcom/crittercism/internal/dk;->b:Z

    .line 27
    iput-boolean v1, p0, Lcom/crittercism/internal/dk;->c:Z

    .line 28
    iput-boolean v1, p0, Lcom/crittercism/internal/dk;->d:Z

    .line 29
    iput-boolean v1, p0, Lcom/crittercism/internal/dk;->e:Z

    .line 32
    iput-object p1, p0, Lcom/crittercism/internal/dk;->h:Lcom/crittercism/internal/ar;

    .line 33
    invoke-interface {p1}, Lcom/crittercism/internal/ar;->l()Lcom/crittercism/internal/dv;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/dk;->f:Lcom/crittercism/internal/dv;

    .line 34
    invoke-interface {p1}, Lcom/crittercism/internal/ar;->m()Lcom/crittercism/internal/dr;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/dk;->g:Lcom/crittercism/internal/dr;

    .line 35
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/dk;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/crittercism/internal/dk;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    .line 65
    iget-boolean v2, p0, Lcom/crittercism/internal/dk;->b:Z

    if-eqz v2, :cond_0

    .line 66
    const-string v2, "optOutStatus"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/crittercism/internal/dk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    :cond_0
    if-nez v1, :cond_4

    .line 70
    iget-boolean v1, p0, Lcom/crittercism/internal/dk;->c:Z

    if-eqz v1, :cond_1

    .line 71
    const-string v1, "crashedOnLastLoad"

    sget-boolean v2, Lcom/crittercism/internal/dp;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/crittercism/internal/dk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    :cond_1
    iget-boolean v1, p0, Lcom/crittercism/internal/dk;->d:Z

    if-eqz v1, :cond_2

    .line 75
    const-string/jumbo v1, "userUUID"

    iget-object v2, p0, Lcom/crittercism/internal/dk;->h:Lcom/crittercism/internal/ar;

    invoke-interface {v2}, Lcom/crittercism/internal/ar;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/crittercism/internal/dk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    :cond_2
    iget-boolean v1, p0, Lcom/crittercism/internal/dk;->e:Z

    if-eqz v1, :cond_4

    .line 79
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v1

    .line 2696
    iget-object v1, v1, Lcom/crittercism/internal/ax;->A:Lcom/crittercism/internal/ds;

    .line 82
    if-eqz v1, :cond_4

    .line 83
    const-string v2, "shouldShowRateAppAlert"

    .line 4056
    iget-object v3, v1, Lcom/crittercism/internal/ds;->a:Landroid/content/SharedPreferences;

    const-string v4, "rateMyAppEnabled"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3113
    if-eqz v3, :cond_3

    .line 4109
    iget-object v3, v1, Lcom/crittercism/internal/ds;->a:Landroid/content/SharedPreferences;

    const-string v4, "hasRatedApp"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3117
    if-nez v3, :cond_3

    .line 3121
    invoke-virtual {v1}, Lcom/crittercism/internal/ds;->a()I

    move-result v3

    .line 5080
    iget-object v4, v1, Lcom/crittercism/internal/ds;->a:Landroid/content/SharedPreferences;

    const-string v5, "rateAfterNumLoads"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3124
    if-lt v3, v4, :cond_3

    .line 5092
    iget-object v5, v1, Lcom/crittercism/internal/ds;->a:Landroid/content/SharedPreferences;

    const-string v6, "remindAfterNumLoads"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3130
    sub-int/2addr v3, v4

    rem-int/2addr v3, v5

    if-nez v3, :cond_3

    const/4 v0, 0x1

    .line 83
    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/crittercism/internal/dk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string v0, "message"

    invoke-virtual {v1}, Lcom/crittercism/internal/ds;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/crittercism/internal/dk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string/jumbo v0, "title"

    invoke-virtual {v1}, Lcom/crittercism/internal/ds;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/crittercism/internal/dk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    :cond_4
    return-void
.end method
