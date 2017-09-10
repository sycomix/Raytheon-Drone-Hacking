.class public Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;
.super Lcom/google/gdata/client/authn/oauth/OAuthHelper;
.source "GoogleOAuthHelper.java"


# static fields
.field private static accessTokenUrl:Ljava/lang/String;

.field private static requestTokenUrl:Ljava/lang/String;

.field private static revokeTokenUrl:Ljava/lang/String;

.field private static userAuthorizationUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "https://www.google.com/accounts/OAuthGetRequestToken"

    sput-object v0, Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;->requestTokenUrl:Ljava/lang/String;

    .line 32
    const-string v0, "https://www.google.com/accounts/OAuthAuthorizeToken"

    sput-object v0, Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;->userAuthorizationUrl:Ljava/lang/String;

    .line 34
    const-string v0, "https://www.google.com/accounts/OAuthGetAccessToken"

    sput-object v0, Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;->accessTokenUrl:Ljava/lang/String;

    .line 36
    const-string v0, "https://www.google.com/accounts/AuthSubRevokeToken"

    sput-object v0, Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;->revokeTokenUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/client/authn/oauth/OAuthSigner;)V
    .locals 6
    .param p1, "signer"    # Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    .prologue
    .line 46
    sget-object v1, Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;->requestTokenUrl:Ljava/lang/String;

    sget-object v2, Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;->userAuthorizationUrl:Ljava/lang/String;

    sget-object v3, Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;->accessTokenUrl:Ljava/lang/String;

    sget-object v4, Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;->revokeTokenUrl:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/client/authn/oauth/OAuthHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthSigner;)V

    .line 48
    return-void
.end method

.method constructor <init>(Lcom/google/gdata/client/authn/oauth/OAuthSigner;Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;)V
    .locals 7
    .param p1, "signer"    # Lcom/google/gdata/client/authn/oauth/OAuthSigner;
    .param p2, "httpClient"    # Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;

    .prologue
    .line 59
    sget-object v1, Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;->requestTokenUrl:Ljava/lang/String;

    sget-object v2, Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;->userAuthorizationUrl:Ljava/lang/String;

    sget-object v3, Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;->accessTokenUrl:Ljava/lang/String;

    sget-object v4, Lcom/google/gdata/client/authn/oauth/GoogleOAuthHelper;->revokeTokenUrl:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/client/authn/oauth/OAuthHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthSigner;Lcom/google/gdata/client/authn/oauth/OAuthHttpClient;)V

    .line 61
    return-void
.end method
