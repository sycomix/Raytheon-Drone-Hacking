.class public Lcom/google/gdata/client/sites/ActivityQuery;
.super Lcom/google/gdata/client/Query;
.source "ActivityQuery.java"


# instance fields
.field private kind:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/gdata/client/sites/ActivityQuery;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 1
    .param p1, "kind"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/gdata/client/sites/ActivityQuery;->kind:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 65
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/sites/ActivityQuery;->kind:Ljava/lang/String;

    .line 66
    const-string v0, "kind"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/sites/ActivityQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/sites/ActivityQuery;->kind:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method
