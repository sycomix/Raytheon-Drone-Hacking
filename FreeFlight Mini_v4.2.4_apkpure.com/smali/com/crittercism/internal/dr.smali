.class public final Lcom/crittercism/internal/dr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/internal/dr$a;,
        Lcom/crittercism/internal/dr$b;
    }
.end annotation


# instance fields
.field public volatile a:Z

.field public volatile b:Z

.field private volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/dr;->a:Z

    .line 29
    iput-boolean v1, p0, Lcom/crittercism/internal/dr;->c:Z

    .line 30
    iput-boolean v1, p0, Lcom/crittercism/internal/dr;->b:Z

    .line 31
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/crittercism/internal/dr$a;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/dr$a;-><init>(Lcom/crittercism/internal/dr;)V

    .line 91
    new-instance v1, Lcom/crittercism/internal/dx;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/dx;-><init>(Ljava/lang/Runnable;)V

    .line 92
    invoke-virtual {v1}, Lcom/crittercism/internal/dx;->start()V

    .line 95
    :try_start_0
    invoke-virtual {v1}, Lcom/crittercism/internal/dx;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    const/4 v0, 0x0

    .line 99
    invoke-static {v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1196
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v1

    .line 35
    iget-boolean v2, p0, Lcom/crittercism/internal/dr;->c:Z

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/crittercism/internal/av;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    const-string v1, "Crittercism has not been initialized with a context and cannot load opt out status from disk."

    .line 38
    invoke-static {v1}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;)V

    .line 55
    :goto_0
    return v0

    .line 41
    :cond_0
    iget-boolean v0, p0, Lcom/crittercism/internal/dr;->c:Z

    if-nez v0, :cond_2

    .line 42
    monitor-enter p0

    .line 44
    :try_start_0
    iget-boolean v0, p0, Lcom/crittercism/internal/dr;->c:Z

    if-nez v0, :cond_1

    .line 45
    invoke-direct {p0}, Lcom/crittercism/internal/dr;->c()Z

    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/dr;->c:Z

    .line 53
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_2
    iget-boolean v0, p0, Lcom/crittercism/internal/dr;->a:Z

    goto :goto_0

    .line 50
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/crittercism/internal/dr;->c:Z

    goto :goto_1

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Z)Z
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcom/crittercism/internal/dr$b;

    invoke-direct {v0, p0, p1}, Lcom/crittercism/internal/dr$b;-><init>(Lcom/crittercism/internal/dr;Z)V

    .line 143
    new-instance v1, Lcom/crittercism/internal/dx;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/dx;-><init>(Ljava/lang/Runnable;)V

    .line 144
    invoke-virtual {v1}, Lcom/crittercism/internal/dx;->start()V

    .line 147
    :try_start_0
    invoke-virtual {v1}, Lcom/crittercism/internal/dx;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    const/4 v0, 0x0

    .line 151
    invoke-static {v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2196
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v3

    .line 3172
    sget-object v0, Lcom/crittercism/internal/cq;->i:Lcom/crittercism/internal/cq;

    .line 4026
    iget-object v0, v0, Lcom/crittercism/internal/cq;->m:Ljava/lang/String;

    .line 4176
    sget-object v4, Lcom/crittercism/internal/cq;->i:Lcom/crittercism/internal/cq;

    .line 5030
    iget-object v4, v4, Lcom/crittercism/internal/cq;->n:Ljava/lang/String;

    .line 112
    invoke-interface {v3, v0, v4}, Lcom/crittercism/internal/av;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    if-eqz v4, :cond_2

    .line 119
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    .line 127
    :goto_1
    if-eqz v1, :cond_1

    .line 128
    const-string v0, "optOutStatusSet"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 130
    :goto_2
    if-eqz v0, :cond_0

    .line 131
    const-string v0, "optOutStatus"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 137
    :goto_3
    iput-boolean v0, p0, Lcom/crittercism/internal/dr;->a:Z

    .line 138
    return v0

    .line 122
    :catch_0
    move-exception v0

    const-string v0, "JSONException in OptOutManager$loadStatusHelper(). Using null optOutStatusJSON."

    .line 124
    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 5180
    :cond_0
    sget-object v0, Lcom/crittercism/internal/cq;->l:Lcom/crittercism/internal/cq;

    .line 6026
    iget-object v0, v0, Lcom/crittercism/internal/cq;->m:Ljava/lang/String;

    .line 6184
    sget-object v1, Lcom/crittercism/internal/cq;->l:Lcom/crittercism/internal/cq;

    .line 7030
    iget-object v1, v1, Lcom/crittercism/internal/cq;->n:Ljava/lang/String;

    .line 134
    invoke-interface {v3, v0, v1}, Lcom/crittercism/internal/av;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
