.class final Lcom/crittercism/internal/ax$3;
.super Lcom/crittercism/internal/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crittercism/internal/ax;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/ax;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/crittercism/internal/ax;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/ax;Lcom/crittercism/internal/ax;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1475
    iput-object p1, p0, Lcom/crittercism/internal/ax$3;->c:Lcom/crittercism/internal/ax;

    iput-object p2, p0, Lcom/crittercism/internal/ax$3;->a:Lcom/crittercism/internal/ax;

    iput-object p3, p0, Lcom/crittercism/internal/ax$3;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/crittercism/internal/ax$3;->c:Lcom/crittercism/internal/ax;

    .line 2091
    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 1478
    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1488
    :cond_0
    :goto_0
    return-void

    .line 1482
    :cond_1
    iget-object v0, p0, Lcom/crittercism/internal/ax$3;->a:Lcom/crittercism/internal/ax;

    .line 3091
    iget-object v0, v0, Lcom/crittercism/internal/ax;->x:Lcom/crittercism/internal/du;

    .line 1482
    iget-object v1, p0, Lcom/crittercism/internal/ax$3;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/du;->a(Lorg/json/JSONObject;)V

    .line 1485
    iget-object v0, p0, Lcom/crittercism/internal/ax$3;->a:Lcom/crittercism/internal/ax;

    .line 4091
    iget-object v0, v0, Lcom/crittercism/internal/ax;->x:Lcom/crittercism/internal/du;

    .line 1485
    invoke-virtual {v0}, Lcom/crittercism/internal/du;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/crittercism/internal/ax$3;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v0}, Lcom/crittercism/internal/ax;->G()V

    goto :goto_0
.end method
