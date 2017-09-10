.class public final Lcom/crittercism/internal/bv$q;
.super Lcom/crittercism/internal/bv$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/bv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "q"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 663
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/crittercism/internal/bv$g;-><init>(I)V

    .line 664
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    const-string v0, "mobile_network"

    return-object v0
.end method

.method public final bridge synthetic c()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 661
    invoke-super {p0}, Lcom/crittercism/internal/bv$g;->c()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
