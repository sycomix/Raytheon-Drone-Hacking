.class public final Lcom/crittercism/internal/ct;
.super Lcom/crittercism/internal/da;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/internal/ct$a;
    }
.end annotation


# instance fields
.field private a:Lcom/crittercism/internal/ar;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lorg/json/JSONObject;

.field private e:Lorg/json/JSONObject;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;Ljava/lang/String;Landroid/content/Context;Lcom/crittercism/internal/ar;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/crittercism/internal/da;-><init>(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;)V

    .line 64
    iput-object p3, p0, Lcom/crittercism/internal/ct;->c:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/crittercism/internal/ct;->b:Landroid/content/Context;

    .line 66
    iput-object p5, p0, Lcom/crittercism/internal/ct;->a:Lcom/crittercism/internal/ar;

    .line 67
    return-void
.end method


# virtual methods
.method public final a(ZILorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/crittercism/internal/da;->a(ZILorg/json/JSONObject;)V

    .line 146
    if-eqz p3, :cond_4

    .line 147
    const-string v0, "internalExceptionReporting"

    invoke-virtual {p3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    sget v0, Lcom/crittercism/internal/dw$a;->b:I

    sput v0, Lcom/crittercism/internal/dw;->a:I

    .line 1075
    :goto_0
    iget-object v0, p0, Lcom/crittercism/internal/ct;->a:Lcom/crittercism/internal/ar;

    invoke-interface {v0}, Lcom/crittercism/internal/ar;->n()Lcom/crittercism/internal/ds;

    move-result-object v3

    .line 1077
    if-eqz v3, :cond_0

    .line 1081
    const-string v0, "rateMyApp"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1082
    if-nez v4, :cond_6

    .line 1083
    invoke-virtual {v3, v2}, Lcom/crittercism/internal/ds;->a(Z)V

    .line 3120
    :cond_0
    :goto_1
    const-string v0, "needPkg"

    invoke-virtual {p3, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3133
    :try_start_0
    new-instance v0, Lcom/crittercism/internal/cu;

    iget-object v3, p0, Lcom/crittercism/internal/ct;->a:Lcom/crittercism/internal/ar;

    invoke-direct {v0, v3}, Lcom/crittercism/internal/cu;-><init>(Lcom/crittercism/internal/ar;)V

    const-string v3, "device_name"

    iget-object v4, p0, Lcom/crittercism/internal/ct;->a:Lcom/crittercism/internal/ar;

    invoke-interface {v4}, Lcom/crittercism/internal/ar;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/crittercism/internal/cu;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crittercism/internal/cu;

    move-result-object v0

    const-string v3, "pkg"

    iget-object v4, p0, Lcom/crittercism/internal/ct;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/crittercism/internal/cu;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crittercism/internal/cu;

    move-result-object v0

    .line 3136
    new-instance v3, Lcom/crittercism/internal/dc;

    new-instance v4, Lcom/crittercism/internal/db;

    iget-object v5, p0, Lcom/crittercism/internal/ct;->c:Ljava/lang/String;

    const-string v6, "/android_v2/update_package_name"

    invoke-direct {v4, v5, v6}, Lcom/crittercism/internal/db;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/crittercism/internal/db;->a()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/crittercism/internal/dc;-><init>(Ljava/net/URL;)V

    .line 3138
    new-instance v4, Lcom/crittercism/internal/dj;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v3, v5}, Lcom/crittercism/internal/dj;-><init>(Lcom/crittercism/internal/cw;Lcom/crittercism/internal/dc;Lcom/crittercism/internal/cy;)V

    invoke-virtual {v4}, Lcom/crittercism/internal/dj;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3128
    :goto_2
    iput-boolean v1, p0, Lcom/crittercism/internal/ct;->f:Z

    .line 4100
    :cond_1
    const-string v0, "apm"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/ct;->d:Lorg/json/JSONObject;

    .line 4101
    iget-object v0, p0, Lcom/crittercism/internal/ct;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    .line 4102
    new-instance v0, Lcom/crittercism/internal/h;

    iget-object v1, p0, Lcom/crittercism/internal/ct;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/crittercism/internal/h;-><init>(Lorg/json/JSONObject;)V

    .line 4104
    iget-object v1, p0, Lcom/crittercism/internal/ct;->b:Landroid/content/Context;

    .line 4211
    iget-boolean v3, v0, Lcom/crittercism/internal/h;->c:Z

    if-eqz v3, :cond_9

    .line 4212
    invoke-static {v1}, Lcom/crittercism/internal/h;->b(Landroid/content/Context;)V

    .line 4217
    :cond_2
    :goto_3
    const-string v3, "com.crittercism.optmz.config"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4218
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 4220
    iget-boolean v3, v0, Lcom/crittercism/internal/h;->b:Z

    if-eqz v3, :cond_a

    .line 4221
    const-string v3, "enabled"

    iget-boolean v4, v0, Lcom/crittercism/internal/h;->a:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4222
    const-string v3, "kill"

    iget-boolean v4, v0, Lcom/crittercism/internal/h;->c:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4223
    const-string v3, "persist"

    iget-boolean v4, v0, Lcom/crittercism/internal/h;->b:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4224
    const-string v3, "interval"

    iget v4, v0, Lcom/crittercism/internal/h;->d:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4229
    :goto_4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4105
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/h;)V

    .line 5110
    :cond_3
    const-string/jumbo v0, "txnConfig"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/ct;->e:Lorg/json/JSONObject;

    .line 5111
    iget-object v0, p0, Lcom/crittercism/internal/ct;->e:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    .line 5112
    new-instance v0, Lcom/crittercism/internal/bf;

    iget-object v1, p0, Lcom/crittercism/internal/ct;->e:Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/crittercism/internal/bf;-><init>(Lorg/json/JSONObject;)V

    .line 5113
    iget-object v1, p0, Lcom/crittercism/internal/ct;->b:Landroid/content/Context;

    .line 6079
    const-string v3, "com.crittercism.txn.config"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6081
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 6082
    const-string v2, "enabled"

    iget-boolean v3, v0, Lcom/crittercism/internal/bf;->a:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6083
    const-string v2, "interval"

    iget v3, v0, Lcom/crittercism/internal/bf;->b:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6084
    const-string v2, "defaultTimeout"

    iget v3, v0, Lcom/crittercism/internal/bf;->c:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6085
    const-string/jumbo v2, "transactions"

    iget-object v3, v0, Lcom/crittercism/internal/bf;->d:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6087
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5114
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/bf;)V

    .line 158
    :cond_4
    return-void

    .line 150
    :cond_5
    sget v0, Lcom/crittercism/internal/dw$a;->c:I

    sput v0, Lcom/crittercism/internal/dw;->a:I

    goto/16 :goto_0

    .line 1088
    :cond_6
    :try_start_1
    const-string v0, "rateAfterLoadNum"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2084
    if-gez v0, :cond_7

    move v0, v2

    .line 2088
    :cond_7
    iget-object v5, v3, Lcom/crittercism/internal/ds;->a:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "rateAfterNumLoads"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1089
    const-string v0, "remindAfterLoadNum"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2096
    if-gtz v0, :cond_8

    move v0, v1

    .line 2101
    :cond_8
    iget-object v5, v3, Lcom/crittercism/internal/ds;->a:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "remindAfterNumLoads"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1090
    const-string v0, "message"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3068
    iget-object v5, v3, Lcom/crittercism/internal/ds;->a:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "rateAppMessage"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1091
    const-string/jumbo v0, "title"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3076
    iget-object v4, v3, Lcom/crittercism/internal/ds;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "rateAppTitle"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1092
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/crittercism/internal/ds;->a(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1095
    :catch_0
    move-exception v0

    invoke-virtual {v3, v2}, Lcom/crittercism/internal/ds;->a(Z)V

    goto/16 :goto_1

    .line 3123
    :catch_1
    move-exception v0

    .line 3124
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException in handleResponse(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 3126
    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 4263
    :cond_9
    invoke-static {v1}, Lcom/crittercism/internal/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 4264
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    .line 4266
    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4268
    const-string v3, "Unable to reenable OPTMZ instrumentation"

    invoke-static {v3}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4226
    :cond_a
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4
.end method
