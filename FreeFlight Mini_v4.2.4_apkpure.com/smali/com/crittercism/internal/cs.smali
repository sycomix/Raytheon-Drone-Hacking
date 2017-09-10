.class public final Lcom/crittercism/internal/cs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/cw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/internal/cs$b;,
        Lcom/crittercism/internal/cs$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/cs;->a:Ljava/util/Map;

    .line 71
    return-void
.end method

.method private a()Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 138
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 140
    iget-object v0, p0, Lcom/crittercism/internal/cs;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 142
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/cs$a;

    .line 146
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "appLoads"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "count"

    .line 1050
    iget v5, v0, Lcom/crittercism/internal/cs$a;->b:I

    .line 146
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "current"

    .line 1058
    iget-boolean v0, v0, Lcom/crittercism/internal/cs$a;->a:Z

    .line 146
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 151
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    goto :goto_0

    .line 157
    :cond_0
    return-object v2
.end method


# virtual methods
.method public final synthetic a(Lcom/crittercism/internal/bq;)Lcom/crittercism/internal/cw;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 22
    .line 1075
    invoke-virtual {p1}, Lcom/crittercism/internal/bq;->c()Ljava/util/List;

    move-result-object v0

    .line 1078
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/bo;

    .line 1098
    instance-of v1, v0, Lcom/crittercism/internal/by;

    if-nez v1, :cond_1

    move-object v1, v3

    .line 1082
    :goto_1
    if-eqz v1, :cond_6

    .line 1127
    iget-object v0, p0, Lcom/crittercism/internal/cs;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/cs$a;

    .line 1129
    if-nez v0, :cond_0

    .line 1130
    new-instance v0, Lcom/crittercism/internal/cs$a;

    invoke-direct {v0}, Lcom/crittercism/internal/cs$a;-><init>()V

    .line 1131
    iget-object v2, p0, Lcom/crittercism/internal/cs;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2046
    :cond_0
    iget v2, v0, Lcom/crittercism/internal/cs$a;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/crittercism/internal/cs$a;->b:I

    move-object v0, v1

    :goto_2
    move-object v2, v0

    .line 1086
    goto :goto_0

    .line 1103
    :cond_1
    invoke-virtual {v0}, Lcom/crittercism/internal/bo;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1105
    if-nez v0, :cond_2

    move-object v1, v3

    .line 1106
    goto :goto_1

    .line 1109
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1112
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 1113
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1114
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1115
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1120
    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    move-object v1, v4

    .line 1123
    goto :goto_1

    .line 1088
    :cond_4
    if-eqz v2, :cond_5

    .line 1089
    iget-object v0, p0, Lcom/crittercism/internal/cs;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/cs$a;

    .line 2054
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/crittercism/internal/cs$a;->a:Z

    .line 22
    :cond_5
    return-object p0

    :cond_6
    move-object v0, v2

    goto :goto_2
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/crittercism/internal/cs;->a()Lorg/json/JSONArray;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 166
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 172
    :try_start_0
    invoke-direct {p0}, Lcom/crittercism/internal/cs;->a()Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    const-string v2, "Unable to turn AppLoadRequest into a string"

    invoke-static {v2, v1}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
