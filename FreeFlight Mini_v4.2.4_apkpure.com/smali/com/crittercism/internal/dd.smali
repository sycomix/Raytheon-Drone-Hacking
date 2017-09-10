.class public final Lcom/crittercism/internal/dd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/cy;


# instance fields
.field private a:Lcom/crittercism/internal/du;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/du;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/crittercism/internal/dd;->a:Lcom/crittercism/internal/du;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(ZILorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 17
    if-nez p1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/crittercism/internal/dd;->a:Lcom/crittercism/internal/du;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/du;->a(Z)V

    .line 24
    :cond_0
    return-void
.end method
