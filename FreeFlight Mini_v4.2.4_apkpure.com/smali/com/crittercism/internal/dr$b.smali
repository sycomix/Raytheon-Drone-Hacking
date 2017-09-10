.class public final Lcom/crittercism/internal/dr$b;
.super Lcom/crittercism/internal/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/dr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/crittercism/internal/dr;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/dr;Z)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/crittercism/internal/dr$b;->a:Lcom/crittercism/internal/dr;

    .line 260
    iput-boolean p2, p0, Lcom/crittercism/internal/dr$b;->b:Z

    .line 261
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/crittercism/internal/dr$b;->b:Z

    .line 1196
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v1

    .line 1160
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1162
    :try_start_0
    const-string v3, "optOutStatus"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1163
    const-string v0, "optOutStatusSet"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    :goto_0
    sget-object v0, Lcom/crittercism/internal/cq;->i:Lcom/crittercism/internal/cq;

    .line 3026
    iget-object v0, v0, Lcom/crittercism/internal/cq;->m:Ljava/lang/String;

    .line 3176
    sget-object v3, Lcom/crittercism/internal/cq;->i:Lcom/crittercism/internal/cq;

    .line 4030
    iget-object v3, v3, Lcom/crittercism/internal/cq;->n:Ljava/lang/String;

    .line 1167
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v3, v2}, Lcom/crittercism/internal/av;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
