.class public Lcom/crittercism/internal/da;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/cy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/internal/da$a;
    }
.end annotation


# instance fields
.field private a:Lcom/crittercism/internal/bq;

.field private b:Lcom/crittercism/internal/bq;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/crittercism/internal/da;->a:Lcom/crittercism/internal/bq;

    .line 30
    iput-object p2, p0, Lcom/crittercism/internal/da;->b:Lcom/crittercism/internal/bq;

    .line 31
    return-void
.end method


# virtual methods
.method public a(ZILorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 41
    .line 1037
    if-nez p1, :cond_0

    const/16 v0, 0xc8

    if-lt p2, v0, :cond_1

    const/16 v0, 0x12c

    if-ge p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 41
    :goto_0
    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/crittercism/internal/da;->a:Lcom/crittercism/internal/bq;

    invoke-virtual {v0}, Lcom/crittercism/internal/bq;->a()V

    .line 46
    :goto_1
    return-void

    .line 1037
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/crittercism/internal/da;->a:Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/da;->b:Lcom/crittercism/internal/bq;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/bq;)V

    goto :goto_1
.end method
