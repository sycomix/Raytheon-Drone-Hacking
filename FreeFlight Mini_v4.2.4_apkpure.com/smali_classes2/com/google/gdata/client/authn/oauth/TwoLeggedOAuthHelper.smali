.class public Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;
.super Ljava/lang/Object;
.source "TwoLeggedOAuthHelper.java"


# instance fields
.field private final parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

.field private final signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;


# direct methods
.method public constructor <init>(Lcom/google/gdata/client/authn/oauth/OAuthSigner;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)V
    .locals 0
    .param p1, "signer"    # Lcom/google/gdata/client/authn/oauth/OAuthSigner;
    .param p2, "parameters"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    .line 38
    iput-object p2, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    .line 39
    return-void
.end method


# virtual methods
.method addCommonRequestParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthSignatureMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    iget-object v2, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    invoke-interface {v2}, Lcom/google/gdata/client/authn/oauth/OAuthSigner;->getSignatureMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->setOAuthSignatureMethod(Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-static {}, Lcom/google/gdata/client/authn/oauth/OAuthUtil;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->setOAuthTimestamp(Ljava/lang/String;)V

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-static {}, Lcom/google/gdata/client/authn/oauth/OAuthUtil;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->setOAuthNonce(Ljava/lang/String;)V

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 79
    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getBaseParameters()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/google/gdata/client/authn/oauth/OAuthUtil;->getSignatureBaseString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "baseString":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    iget-object v2, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    iget-object v3, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-interface {v2, v0, v3}, Lcom/google/gdata/client/authn/oauth/OAuthSigner;->getSignature(Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->setOAuthSignature(Ljava/lang/String;)V

    .line 83
    .end local v0    # "baseString":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method addParametersAndRetrieveHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->addCommonRequestParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthHelper$HeaderKeyValuePair;

    invoke-direct {v1}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$HeaderKeyValuePair;-><init>()V

    .line 125
    .local v1, "headerParams":Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;
    const-string v3, "realm"

    iget-object v4, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v4}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v3, "oauth_signature"

    iget-object v4, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v4}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v3}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getBaseParameters()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 135
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v3}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->reset()V

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OAuth"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->validateInputParameters()V

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->addParametersAndRetrieveHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method validateInputParameters()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertOAuthConsumerKeyExists()V

    .line 43
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    instance-of v0, v0, Lcom/google/gdata/client/authn/oauth/OAuthHmacSha1Signer;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertOAuthConsumerSecretExists()V

    .line 46
    :cond_0
    return-void
.end method
