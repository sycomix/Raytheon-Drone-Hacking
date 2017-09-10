.class public Lcom/google/gdata/client/authn/oauth/OAuthHelper;
.super Ljava/lang/Object;
.source "OAuthHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/authn/oauth/OAuthHelper$HeaderKeyValuePair;,
        Lcom/google/gdata/client/authn/oauth/OAuthHelper$QueryKeyValuePair;,
        Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;
    }
.end annotation


# instance fields
.field private accessTokenUrl:Ljava/lang/String;

.field private httpClient:Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;

.field private requestTokenUrl:Ljava/lang/String;

.field private revokeTokenUrl:Ljava/lang/String;

.field private signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

.field private userAuthorizationUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthSigner;)V
    .locals 6
    .param p1, "requestTokenUrl"    # Ljava/lang/String;
    .param p2, "userAuthorizationUrl"    # Ljava/lang/String;
    .param p3, "accessTokenUrl"    # Ljava/lang/String;
    .param p4, "signer"    # Lcom/google/gdata/client/authn/oauth/OAuthSigner;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    new-instance v5, Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;

    invoke-direct {v5}, Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/client/authn/oauth/OAuthHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthSigner;Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;)V

    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthSigner;Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;)V
    .locals 0
    .param p1, "requestTokenUrl"    # Ljava/lang/String;
    .param p2, "userAuthorizationUrl"    # Ljava/lang/String;
    .param p3, "accessTokenUrl"    # Ljava/lang/String;
    .param p4, "signer"    # Lcom/google/gdata/client/authn/oauth/OAuthSigner;
    .param p5, "httpClient"    # Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->requestTokenUrl:Ljava/lang/String;

    .line 204
    iput-object p2, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->userAuthorizationUrl:Ljava/lang/String;

    .line 205
    iput-object p3, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->accessTokenUrl:Ljava/lang/String;

    .line 206
    iput-object p4, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    .line 207
    iput-object p5, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->httpClient:Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthSigner;)V
    .locals 7
    .param p1, "requestTokenUrl"    # Ljava/lang/String;
    .param p2, "userAuthorizationUrl"    # Ljava/lang/String;
    .param p3, "accessTokenUrl"    # Ljava/lang/String;
    .param p4, "revokeTokenUrl"    # Ljava/lang/String;
    .param p5, "signer"    # Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    .prologue
    .line 223
    new-instance v6, Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;

    invoke-direct {v6}, Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/client/authn/oauth/OAuthHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthSigner;Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthSigner;Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;)V
    .locals 0
    .param p1, "requestTokenUrl"    # Ljava/lang/String;
    .param p2, "userAuthorizationUrl"    # Ljava/lang/String;
    .param p3, "accessTokenUrl"    # Ljava/lang/String;
    .param p4, "revokeTokenUrl"    # Ljava/lang/String;
    .param p5, "signer"    # Lcom/google/gdata/client/authn/oauth/OAuthSigner;
    .param p6, "httpClient"    # Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->requestTokenUrl:Ljava/lang/String;

    .line 246
    iput-object p2, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->userAuthorizationUrl:Ljava/lang/String;

    .line 247
    iput-object p3, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->accessTokenUrl:Ljava/lang/String;

    .line 248
    iput-object p4, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->revokeTokenUrl:Ljava/lang/String;

    .line 249
    iput-object p5, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    .line 250
    iput-object p6, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->httpClient:Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;

    .line 251
    return-void
.end method

.method private containsUser(Ljava/lang/String;)Z
    .locals 1
    .param p1, "requestUrl"    # Ljava/lang/String;

    .prologue
    .line 690
    const-string/jumbo v0, "xoauth_requestor_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createUserAuthorizationUrl(Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;
    .locals 3
    .param p1, "oauthParameters"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    .prologue
    .line 419
    new-instance v0, Lcom/google/gdata/client/authn/oauth/OAuthHelper$QueryKeyValuePair;

    invoke-direct {v0}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$QueryKeyValuePair;-><init>()V

    .line 420
    .local v0, "queryParams":Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;
    const-string v1, "oauth_token"

    invoke-virtual {p1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 423
    const-string v1, "oauth_callback"

    invoke-virtual {p1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->userAuthorizationUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAccessToken(Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;
    .locals 6
    .param p1, "oauthParameters"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 546
    new-instance v0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;

    iget-object v4, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    invoke-direct {v0, v4, p1}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;-><init>(Lcom/google/gdata/client/authn/oauth/OAuthSigner;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)V

    .line 548
    .local v0, "helper":Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;
    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->validateInputParameters()V

    .line 549
    invoke-virtual {p1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertOAuthTokenExists()V

    .line 550
    iget-object v4, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    instance-of v4, v4, Lcom/google/gdata/client/authn/oauth/OAuthHmacSha1Signer;

    if-eqz v4, :cond_0

    .line 551
    invoke-virtual {p1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertOAuthTokenSecretExists()V

    .line 555
    :cond_0
    iget-object v4, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->accessTokenUrl:Ljava/lang/String;

    const-string v5, "GET"

    invoke-virtual {p0, v4, v5, p1}, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->getOAuthUrl(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/net/URL;

    move-result-object v3

    .line 559
    .local v3, "url":Ljava/net/URL;
    iget-object v4, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->httpClient:Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;

    invoke-virtual {v4, v3}, Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;->getResponse(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, "response":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/gdata/client/authn/oauth/OAuthUtil;->parseQuerystring(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 561
    .local v1, "queryString":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "oauth_token"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->setOAuthToken(Ljava/lang/String;)V

    .line 563
    const-string v4, "oauth_token_secret"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->setOAuthTokenSecret(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->reset()V

    .line 572
    invoke-virtual {p1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthToken()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getAccessToken(Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "oauthParameters"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->getOAuthParametersFromCallback(Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)V

    .line 511
    invoke-virtual {p0, p2}, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->getAccessToken(Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessToken(Ljava/net/URL;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "oauthParameters"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->getAccessToken(Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessTokenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->accessTokenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;
    .locals 2
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .param p3, "oauthParameters"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 601
    new-instance v0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    invoke-direct {v0, v1, p3}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;-><init>(Lcom/google/gdata/client/authn/oauth/OAuthSigner;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)V

    .line 603
    .local v0, "helper":Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;
    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->validateInputParameters()V

    .line 608
    invoke-direct {p0, p1}, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->containsUser(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 609
    invoke-virtual {p3}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertOAuthTokenExists()V

    .line 610
    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    instance-of v1, v1, Lcom/google/gdata/client/authn/oauth/OAuthHmacSha1Signer;

    if-eqz v1, :cond_0

    .line 611
    invoke-virtual {p3}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertOAuthTokenSecretExists()V

    .line 615
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->addParametersAndRetrieveHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOAuthParametersFromCallback(Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)V
    .locals 2
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "oauthParameters"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    .prologue
    .line 456
    invoke-static {p1}, Lcom/google/gdata/client/authn/oauth/OAuthUtil;->parseQuerystring(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 457
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "oauth_token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->setOAuthToken(Ljava/lang/String;)V

    .line 458
    const-string v1, "oauth_token_secret"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 459
    const-string v1, "oauth_token_secret"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->setOAuthTokenSecret(Ljava/lang/String;)V

    .line 462
    :cond_0
    const-string v1, "oauth_verifier"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 463
    const-string v1, "oauth_verifier"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->setOAuthVerifier(Ljava/lang/String;)V

    .line 466
    :cond_1
    return-void
.end method

.method public getOAuthParametersFromCallback(Ljava/net/URL;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "oauthParameters"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    .prologue
    .line 441
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->getOAuthParametersFromCallback(Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)V

    .line 442
    return-void
.end method

.method public getOAuthUrl(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/net/URL;
    .locals 8
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .param p3, "oauthParameters"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 658
    new-instance v2, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;

    iget-object v6, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    invoke-direct {v2, v6, p3}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;-><init>(Lcom/google/gdata/client/authn/oauth/OAuthSigner;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)V

    .line 661
    .local v2, "helper":Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;
    invoke-virtual {v2, p1, p2}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->addCommonRequestParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    new-instance v5, Lcom/google/gdata/client/authn/oauth/OAuthHelper$QueryKeyValuePair;

    invoke-direct {v5}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$QueryKeyValuePair;-><init>()V

    .line 666
    .local v5, "queryParams":Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;
    invoke-virtual {p3}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getBaseParameters()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 667
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 668
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 671
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v6, "oauth_signature"

    invoke-virtual {p3}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 676
    .local v1, "fullUrl":Ljava/lang/StringBuilder;
    const-string v6, "?"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    const-string v6, "&"

    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {v5}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 676
    :cond_2
    const-string v6, "?"

    goto :goto_1

    .line 681
    :catch_0
    move-exception v4

    .line 682
    .local v4, "mue":Ljava/net/MalformedURLException;
    new-instance v6, Lcom/google/gdata/client/authn/oauth/OAuthException;

    invoke-direct {v6, v4}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getRequestTokenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->requestTokenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRevokeTokenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->revokeTokenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUnauthorizedRequestToken(Lcom/google/gdata/client/authn/oauth/OAuthParameters;)V
    .locals 8
    .param p1, "oauthParameters"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 315
    new-instance v1, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;

    iget-object v6, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    invoke-direct {v1, v6, p1}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;-><init>(Lcom/google/gdata/client/authn/oauth/OAuthSigner;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)V

    .line 317
    .local v1, "helper":Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;
    invoke-virtual {v1}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->validateInputParameters()V

    .line 321
    const/4 v2, 0x0

    .line 322
    .local v2, "oauthCallbackExists":Z
    invoke-virtual {p1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->checkOAuthCallbackExists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 323
    invoke-virtual {p1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthCallback()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "callback":Ljava/lang/String;
    const-string v6, "oauth_callback"

    invoke-virtual {p1, v6, v0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->addCustomBaseParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v2, 0x1

    .line 331
    .end local v0    # "callback":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->requestTokenUrl:Ljava/lang/String;

    const-string v7, "GET"

    invoke-virtual {p0, v6, v7, p1}, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->getOAuthUrl(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/net/URL;

    move-result-object v5

    .line 335
    .local v5, "url":Ljava/net/URL;
    iget-object v6, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->httpClient:Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;

    invoke-virtual {v6, v5}, Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;->getResponse(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, "response":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/gdata/client/authn/oauth/OAuthUtil;->parseQuerystring(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 337
    .local v3, "queryString":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "oauth_token"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->setOAuthToken(Ljava/lang/String;)V

    .line 339
    const-string v6, "oauth_token_secret"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->setOAuthTokenSecret(Ljava/lang/String;)V

    .line 342
    if-eqz v2, :cond_1

    .line 346
    const-string v6, "oauth_callback"

    invoke-virtual {p1, v6}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->removeCustomBaseParameter(Ljava/lang/String;)V

    .line 353
    :cond_1
    invoke-virtual {p1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->reset()V

    .line 354
    return-void
.end method

.method public getUserAuthorizationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->userAuthorizationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAuthorizationUrl(Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;
    .locals 1
    .param p1, "oauthParameters"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->getUnauthorizedRequestToken(Lcom/google/gdata/client/authn/oauth/OAuthParameters;)V

    .line 393
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->createUserAuthorizationUrl(Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public revokeToken(Lcom/google/gdata/client/authn/oauth/OAuthParameters;)V
    .locals 5
    .param p1, "oauthParameters"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 635
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 636
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Authorization"

    iget-object v3, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->revokeTokenUrl:Ljava/lang/String;

    const-string v4, "GET"

    invoke-virtual {p0, v3, v4, p1}, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    :try_start_0
    iget-object v2, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->httpClient:Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;

    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->revokeTokenUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0}, Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;->getResponse(Ljava/net/URL;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    return-void

    .line 641
    :catch_0
    move-exception v1

    .line 642
    .local v1, "mue":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/google/gdata/client/authn/oauth/OAuthException;

    invoke-direct {v2, v1}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setAccessTokenUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->accessTokenUrl:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setRequestTokenUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->requestTokenUrl:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setRevokeTokenUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->revokeTokenUrl:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setUserAuthorizationUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper;->userAuthorizationUrl:Ljava/lang/String;

    .line 281
    return-void
.end method
