.class public final Lcom/crittercism/internal/bv$l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/bu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/bv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field private a:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/bv$l;->a:Lorg/json/JSONArray;

    .line 447
    invoke-static {}, Lcom/crittercism/internal/bv;->c()Lcom/crittercism/internal/bd;

    move-result-object v0

    .line 1019
    iget-boolean v0, v0, Lcom/crittercism/internal/bd;->a:Z

    .line 447
    if-eqz v0, :cond_0

    .line 448
    invoke-static {}, Lcom/crittercism/internal/bv;->d()Lcom/crittercism/internal/bz;

    move-result-object v0

    invoke-interface {v0}, Lcom/crittercism/internal/bz;->a()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/bv$l;->a:Lorg/json/JSONArray;

    .line 450
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    const-string v0, "logcat"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 440
    .line 1457
    iget-object v0, p0, Lcom/crittercism/internal/bv$l;->a:Lorg/json/JSONArray;

    .line 440
    return-object v0
.end method
