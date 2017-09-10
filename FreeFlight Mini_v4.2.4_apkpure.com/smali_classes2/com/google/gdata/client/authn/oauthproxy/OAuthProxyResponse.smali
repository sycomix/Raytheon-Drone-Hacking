.class public Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;
.super Ljava/util/HashMap;
.source "OAuthProxyResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .line 43
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 44
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "x_oauth_approval_url"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string v5, "x_oauth_error"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "x_oauth_error_text"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "x_oauth_state"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 49
    .local v2, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 50
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 54
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public getApprovalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "x_oauth_approval_url"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "x_oauth_error"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "x_oauth_error_text"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "x_oauth_state"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setApprovalUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v0, "x_oauth_approval_url"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "x_oauth_error"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public setErrorText(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "x_oauth_error_text"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v0, "x_oauth_state"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method
