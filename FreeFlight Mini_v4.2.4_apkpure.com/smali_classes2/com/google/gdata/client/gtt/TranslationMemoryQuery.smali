.class public Lcom/google/gdata/client/gtt/TranslationMemoryQuery;
.super Lcom/google/gdata/client/Query;
.source "TranslationMemoryQuery.java"


# instance fields
.field private scope:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/gdata/client/gtt/TranslationMemoryQuery;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/gdata/client/gtt/TranslationMemoryQuery;->scope:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 63
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/gtt/TranslationMemoryQuery;->scope:Ljava/lang/String;

    .line 64
    const-string v0, "scope"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/gtt/TranslationMemoryQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/gtt/TranslationMemoryQuery;->scope:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method
