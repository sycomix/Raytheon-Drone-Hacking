.class public final Lcom/crittercism/internal/cu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/cw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/internal/cu$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/ar;)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/cu;->a:Ljava/util/Map;

    .line 39
    iget-object v0, p0, Lcom/crittercism/internal/cu;->a:Ljava/util/Map;

    const-string v1, "app_id"

    invoke-interface {p1}, Lcom/crittercism/internal/ar;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/crittercism/internal/cu;->a:Ljava/util/Map;

    const-string v1, "hashed_device_id"

    invoke-interface {p1}, Lcom/crittercism/internal/ar;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/crittercism/internal/cu;->a:Ljava/util/Map;

    const-string v1, "library_version"

    const-string v2, "5.6.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/crittercism/internal/cu;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/crittercism/internal/cu;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-object p0
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/crittercism/internal/cu;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/crittercism/internal/cu;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-object p0
.end method

.method public final synthetic a(Lcom/crittercism/internal/bq;)Lcom/crittercism/internal/cw;
    .locals 3

    .prologue
    .line 21
    .line 1077
    iget-object v0, p0, Lcom/crittercism/internal/cu;->a:Ljava/util/Map;

    .line 1352
    iget-object v1, p1, Lcom/crittercism/internal/bq;->b:Ljava/lang/String;

    .line 1077
    new-instance v2, Lcom/crittercism/internal/bm;

    invoke-direct {v2, p1}, Lcom/crittercism/internal/bm;-><init>(Lcom/crittercism/internal/bq;)V

    .line 2026
    iget-object v2, v2, Lcom/crittercism/internal/bm;->a:Lorg/json/JSONArray;

    .line 1077
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-object p0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 83
    const-string v0, "Writing to output stream"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/crittercism/internal/cu;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 85
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 104
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/crittercism/internal/cu;->a:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    const-string v2, "Couldn\'t turn request into a string"

    invoke-static {v2, v1}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
