.class public Lcom/google/gdata/client/authn/oauth/GoogleOAuthParameters;
.super Lcom/google/gdata/client/authn/oauth/OAuthParameters;
.source "GoogleOAuthParameters.java"


# static fields
.field public static final SCOPE_KEY:Ljava/lang/String; = "scope"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;-><init>()V

    return-void
.end method


# virtual methods
.method public assertScopeExists()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 66
    const-string v0, "scope"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/GoogleOAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/GoogleOAuthParameters;->assertExists(Ljava/lang/String;Ljava/util/Map;)V

    .line 67
    return-void
.end method

.method public checkScopeExists()Z
    .locals 2

    .prologue
    .line 56
    const-string v0, "scope"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/GoogleOAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/GoogleOAuthParameters;->checkExists(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    const-string v0, "scope"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/GoogleOAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/GoogleOAuthParameters;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->reset()V

    .line 76
    const-string v0, "scope"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/GoogleOAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/GoogleOAuthParameters;->remove(Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 2
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string v0, "scope"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/GoogleOAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/authn/oauth/GoogleOAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 47
    return-void
.end method
