.class public Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;
.super Ljava/util/HashMap;
.source "OAuthProxyRequest.java"


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


# static fields
.field public static final DEFAULT_ACCESS_TOKEN_URL:Ljava/lang/String; = "https://www.google.com/accounts/OAuthGetAccessToken"

.field public static final DEFAULT_AUTHORIZATION_URL:Ljava/lang/String; = "https://www.google.com/accounts/OAuthAuthorizeToken"

.field public static final DEFAULT_REQUEST_TOKEN_URL:Ljava/lang/String; = "https://www.google.com/accounts/OAuthGetRequestToken"

.field public static final DEFAULT_SERVICE_NAME:Ljava/lang/String; = "google"

.field public static final DEFAULT_USE_TOKEN:Ljava/lang/String; = "always"


# instance fields
.field private requestTokenUrl:Ljava/lang/String;

.field private scope:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 48
    const-string v0, "https://www.google.com/accounts/OAuthGetAccessToken"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->setAccessTokenUrl(Ljava/lang/String;)V

    .line 49
    const-string v0, "https://www.google.com/accounts/OAuthAuthorizeToken"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->setAuthorizationUrl(Ljava/lang/String;)V

    .line 50
    const-string v0, "https://www.google.com/accounts/OAuthGetRequestToken"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->setRequestTokenUrl(Ljava/lang/String;)V

    .line 51
    const-string v0, "google"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->setServiceName(Ljava/lang/String;)V

    .line 52
    const-string v0, "always"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->setUseToken(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private storeRequestTokenUrl()V
    .locals 4

    .prologue
    .line 177
    iget-object v1, p0, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->requestTokenUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->scope:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->requestTokenUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->requestTokenUrl:Ljava/lang/String;

    const/16 v3, 0x3f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const-string v1, "?"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->requestTokenUrl:Ljava/lang/String;

    .line 180
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->requestTokenUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "scope="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->scope:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->requestTokenUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    const-string v1, "x_oauth_request_token_url"

    iget-object v2, p0, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->requestTokenUrl:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-void

    .line 178
    :cond_1
    const-string v1, "&"

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getAcessTokenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "x_oauth_access_token_url"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "x_oauth_authorization_url"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDesiredCallbackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "x_oauth_desired_callback_url"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReceivedCallbackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "x_oauth_received_callback_url"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTokenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "x_oauth_request_token_url"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "x_oauth_service_name"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "x_oauth_state"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTokenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, "x_oauth_token_name"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUseToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, "x_oauth_use_token"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setAccessTokenUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, "x_oauth_access_token_url"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public setAuthorizationUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, "x_oauth_authorization_url"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public setDesiredCallbackUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v0, "x_oauth_desired_callback_url"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public setReceivedCallbackUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 98
    const-string v0, "x_oauth_received_callback_url"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public setRequestTokenUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->requestTokenUrl:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->storeRequestTokenUrl()V

    .line 116
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->scope:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->storeRequestTokenUrl()V

    .line 130
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v0, "x_oauth_service_name"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v0, "x_oauth_state"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public setTokenName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v0, "x_oauth_token_name"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method

.method public setUseToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 169
    const-string v0, "x_oauth_use_token"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyRequest;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method
