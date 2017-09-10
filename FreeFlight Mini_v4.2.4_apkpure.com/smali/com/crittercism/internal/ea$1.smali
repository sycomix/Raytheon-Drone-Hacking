.class final Lcom/crittercism/internal/ea$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/ea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:J

.field final synthetic c:Lcom/crittercism/internal/ea;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/ea;Ljava/lang/Throwable;J)V
    .locals 1

    .prologue
    .line 42
    iput-object p1, p0, Lcom/crittercism/internal/ea$1;->c:Lcom/crittercism/internal/ea;

    iput-object p2, p0, Lcom/crittercism/internal/ea$1;->a:Ljava/lang/Throwable;

    iput-wide p3, p0, Lcom/crittercism/internal/ea$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/ea$1;->c:Lcom/crittercism/internal/ea;

    .line 1012
    iget-object v0, v0, Lcom/crittercism/internal/ea;->d:Lcom/crittercism/internal/dr;

    .line 45
    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Lcom/crittercism/internal/bi;

    iget-object v1, p0, Lcom/crittercism/internal/ea$1;->a:Ljava/lang/Throwable;

    iget-wide v2, p0, Lcom/crittercism/internal/ea$1;->b:J

    invoke-direct {v0, v1, v2, v3}, Lcom/crittercism/internal/bi;-><init>(Ljava/lang/Throwable;J)V

    .line 50
    const-string v1, "he"

    .line 1272
    iput-object v1, v0, Lcom/crittercism/internal/bi;->e:Ljava/lang/String;

    .line 51
    const-string v1, "5.6.4"
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2228
    :try_start_1
    iget-object v2, v0, Lcom/crittercism/internal/bi;->f:Lorg/json/JSONObject;

    const-string v3, "app_version"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3222
    :goto_1
    :try_start_2
    iget-object v1, v0, Lcom/crittercism/internal/bi;->f:Lorg/json/JSONObject;

    const-string v2, "logcat"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lcom/crittercism/internal/ea$1;->c:Lcom/crittercism/internal/ea;

    .line 4012
    iget-object v1, v1, Lcom/crittercism/internal/ea;->a:Lcom/crittercism/internal/au;

    .line 53
    invoke-interface {v1}, Lcom/crittercism/internal/au;->q()Lcom/crittercism/internal/bq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0

    .line 59
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1
.end method
