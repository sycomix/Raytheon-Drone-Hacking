.class public Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;
.super Ljava/lang/Object;
.source "GoogleAuthTokenFactory.java"

# interfaces
.implements Lcom/google/gdata/client/http/HttpAuthToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/GoogleAuthTokenFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAuthToken"
.end annotation


# instance fields
.field parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

.field final signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;


# direct methods
.method public constructor <init>(Lcom/google/gdata/client/authn/oauth/OAuthParameters;Lcom/google/gdata/client/authn/oauth/OAuthSigner;)V
    .locals 0
    .param p1, "parameters"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters;
    .param p2, "signer"    # Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    .line 190
    iput-object p2, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    .line 191
    return-void
.end method


# virtual methods
.method public getAuthorizationHeader(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "requestUrl"    # Ljava/net/URL;
    .param p2, "requestMethod"    # Ljava/lang/String;

    .prologue
    .line 203
    :try_start_0
    iget-object v3, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v3}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthType()Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    move-result-object v3

    sget-object v4, Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;->TWO_LEGGED_OAUTH:Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    if-ne v3, v4, :cond_0

    .line 204
    new-instance v2, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;

    iget-object v3, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    iget-object v4, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-direct {v2, v3, v4}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;-><init>(Lcom/google/gdata/client/authn/oauth/OAuthSigner;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)V

    .line 206
    .local v2, "twoLeggedOAuthHelper":Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    .end local v2    # "twoLeggedOAuthHelper":Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;
    :goto_0
    return-object v3

    .line 209
    :cond_0
    new-instance v1, Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;

    iget-object v3, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    invoke-direct {v1, v3}, Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;-><init>(Lcom/google/gdata/client/authn/oauth/OAuthSigner;)V

    .line 210
    .local v1, "oauthHelper":Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v1, v3, p2, v4}, Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/gdata/client/authn/oauth/OAuthException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 213
    .end local v1    # "oauthHelper":Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Lcom/google/gdata/client/authn/oauth/OAuthException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
