.class public final Lcom/crittercism/internal/cc;
.super Lcom/crittercism/internal/cg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/internal/cc$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/crittercism/internal/cg;-><init>()V

    .line 46
    sget v0, Lcom/crittercism/internal/cc$a;->a:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/crittercism/internal/cc$a;->b:I

    .line 49
    :cond_0
    sget-object v0, Lcom/crittercism/internal/ce;->a:Lcom/crittercism/internal/ce;

    invoke-virtual {v0}, Lcom/crittercism/internal/ce;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/cc;->a:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    invoke-virtual {v0}, Lcom/crittercism/internal/eb;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/cc;->b:Ljava/lang/String;

    .line 51
    iput p1, p0, Lcom/crittercism/internal/cc;->c:I

    .line 52
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/crittercism/internal/cg;-><init>()V

    .line 55
    sget v0, Lcom/crittercism/internal/cc$a;->c:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/crittercism/internal/cc$a;->d:I

    .line 59
    :cond_0
    sget-object v0, Lcom/crittercism/internal/ce;->a:Lcom/crittercism/internal/ce;

    invoke-virtual {v0}, Lcom/crittercism/internal/ce;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/cc;->a:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    invoke-virtual {v0}, Lcom/crittercism/internal/eb;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/cc;->b:Ljava/lang/String;

    .line 61
    iput p1, p0, Lcom/crittercism/internal/cc;->c:I

    .line 62
    iput-object p2, p0, Lcom/crittercism/internal/cc;->d:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/crittercism/internal/cg;-><init>()V

    .line 67
    sget v0, Lcom/crittercism/internal/cc$a;->e:I

    .line 71
    sget-object v0, Lcom/crittercism/internal/ce;->a:Lcom/crittercism/internal/ce;

    invoke-virtual {v0}, Lcom/crittercism/internal/ce;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/cc;->a:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    invoke-virtual {v0}, Lcom/crittercism/internal/eb;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/cc;->b:Ljava/lang/String;

    .line 73
    iput p1, p0, Lcom/crittercism/internal/cc;->c:I

    .line 74
    iput-object p2, p0, Lcom/crittercism/internal/cc;->e:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/crittercism/internal/cc;->f:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    const-string v1, "change"

    iget v2, p0, Lcom/crittercism/internal/cc;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget v1, p0, Lcom/crittercism/internal/cc;->c:I

    sget v2, Lcom/crittercism/internal/cc$a;->c:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/crittercism/internal/cc;->c:I

    sget v2, Lcom/crittercism/internal/cc$a;->d:I

    if-ne v1, v2, :cond_2

    .line 89
    :cond_0
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/crittercism/internal/cc;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_1
    :goto_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/crittercism/internal/cc;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 90
    :cond_2
    iget v1, p0, Lcom/crittercism/internal/cc;->c:I

    sget v2, Lcom/crittercism/internal/cc$a;->e:I

    if-ne v1, v2, :cond_1

    .line 91
    const-string v1, "oldType"

    iget-object v2, p0, Lcom/crittercism/internal/cc;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "newType"

    iget-object v2, p0, Lcom/crittercism/internal/cc;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/crittercism/internal/cc;->a:Ljava/lang/String;

    return-object v0
.end method
