.class public Lcom/google/gdata/client/authn/oauth/OAuthParameters;
.super Ljava/lang/Object;
.source "OAuthParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;
    }
.end annotation


# static fields
.field public static final OAUTH_CALLBACK_KEY:Ljava/lang/String; = "oauth_callback"

.field public static final OAUTH_CONSUMER_KEY:Ljava/lang/String; = "oauth_consumer_key"

.field public static final OAUTH_CONSUMER_SECRET:Ljava/lang/String; = "oauth_consumer_secret"

.field public static final OAUTH_KEY:Ljava/lang/String; = "OAuth"

.field public static final OAUTH_NONCE_KEY:Ljava/lang/String; = "oauth_nonce"

.field public static final OAUTH_SIGNATURE_KEY:Ljava/lang/String; = "oauth_signature"

.field public static final OAUTH_SIGNATURE_METHOD_KEY:Ljava/lang/String; = "oauth_signature_method"

.field public static final OAUTH_TIMESTAMP_KEY:Ljava/lang/String; = "oauth_timestamp"

.field public static final OAUTH_TOKEN_KEY:Ljava/lang/String; = "oauth_token"

.field public static final OAUTH_TOKEN_SECRET_KEY:Ljava/lang/String; = "oauth_token_secret"

.field public static final OAUTH_VERIFIER_KEY:Ljava/lang/String; = "oauth_verifier"

.field public static final REALM_KEY:Ljava/lang/String; = "realm"

.field public static final XOAUTH_REQUESTOR_ID_KEY:Ljava/lang/String; = "xoauth_requestor_id"


# instance fields
.field protected baseParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected extraParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private oauthType:Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;->THREE_LEGGED_OAUTH:Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    iput-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->oauthType:Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    .line 71
    return-void
.end method


# virtual methods
.method public addCustomBaseParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    return-void
.end method

.method public addExtraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 122
    return-void
.end method

.method protected assertExists(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 611
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->checkExists(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    new-instance v0, Lcom/google/gdata/client/authn/oauth/OAuthException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_0
    return-void
.end method

.method public assertOAuthCallbackExists()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 515
    const-string v0, "oauth_callback"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertExists(Ljava/lang/String;Ljava/util/Map;)V

    .line 516
    return-void
.end method

.method public assertOAuthConsumerKeyExists()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 171
    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertExists(Ljava/lang/String;Ljava/util/Map;)V

    .line 172
    return-void
.end method

.method public assertOAuthConsumerSecretExists()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 187
    const-string v0, "oauth_consumer_secret"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertExists(Ljava/lang/String;Ljava/util/Map;)V

    .line 188
    return-void
.end method

.method public assertOAuthNonceExists()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 229
    const-string v0, "oauth_nonce"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertExists(Ljava/lang/String;Ljava/util/Map;)V

    .line 230
    return-void
.end method

.method public assertOAuthSignatureExists()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 267
    const-string v0, "oauth_signature"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertExists(Ljava/lang/String;Ljava/util/Map;)V

    .line 268
    return-void
.end method

.method public assertOAuthSignatureMethodExists()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 306
    const-string v0, "oauth_signature_method"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertExists(Ljava/lang/String;Ljava/util/Map;)V

    .line 307
    return-void
.end method

.method public assertOAuthTimestampExists()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 347
    const-string v0, "oauth_timestamp"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertExists(Ljava/lang/String;Ljava/util/Map;)V

    .line 348
    return-void
.end method

.method public assertOAuthTokenExists()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 387
    const-string v0, "oauth_token"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertExists(Ljava/lang/String;Ljava/util/Map;)V

    .line 388
    return-void
.end method

.method public assertOAuthTokenSecretExists()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 425
    const-string v0, "oauth_token_secret"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertExists(Ljava/lang/String;Ljava/util/Map;)V

    .line 426
    return-void
.end method

.method public assertOAuthVerifierExists()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 475
    const-string v0, "oauth_verifier"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertExists(Ljava/lang/String;Ljava/util/Map;)V

    .line 476
    return-void
.end method

.method public assertRealmExists()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 552
    const-string v0, "realm"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertExists(Ljava/lang/String;Ljava/util/Map;)V

    .line 553
    return-void
.end method

.method protected checkExists(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 598
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkOAuthCallbackExists()Z
    .locals 2

    .prologue
    .line 504
    const-string v0, "oauth_callback"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->checkExists(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public checkOAuthConsumerKeyExists()Z
    .locals 2

    .prologue
    .line 160
    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->checkExists(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public checkOAuthConsumerSecretExists()Z
    .locals 2

    .prologue
    .line 183
    const-string v0, "oauth_consumer_secret"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->checkExists(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public checkOAuthNonceExists()Z
    .locals 2

    .prologue
    .line 218
    const-string v0, "oauth_nonce"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->checkExists(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public checkOAuthSignatureExists()Z
    .locals 2

    .prologue
    .line 256
    const-string v0, "oauth_signature"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->checkExists(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public checkOAuthSignatureMethodExists()Z
    .locals 2

    .prologue
    .line 295
    const-string v0, "oauth_signature_method"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->checkExists(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public checkOAuthTimestampExists()Z
    .locals 2

    .prologue
    .line 336
    const-string v0, "oauth_timestamp"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->checkExists(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public checkOAuthTokenExists()Z
    .locals 2

    .prologue
    .line 376
    const-string v0, "oauth_token"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->checkExists(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public checkOAuthTokenSecretExists()Z
    .locals 2

    .prologue
    .line 414
    const-string v0, "oauth_token_secret"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->checkExists(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public checkOAuthVerifierExists()Z
    .locals 2

    .prologue
    .line 464
    const-string v0, "oauth_verifier"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->checkExists(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public checkRealmExists()Z
    .locals 2

    .prologue
    .line 542
    const-string v0, "realm"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->checkExists(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method protected get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 564
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 565
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getBaseParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExtraParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthCallback()Ljava/lang/String;
    .locals 2

    .prologue
    .line 486
    const-string v0, "oauth_callback"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthConsumerKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthConsumerSecret()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    const-string v0, "oauth_consumer_secret"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthNonce()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    const-string v0, "oauth_nonce"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    const-string v0, "oauth_signature"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthSignatureMethod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    const-string v0, "oauth_signature_method"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthTimestamp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 318
    const-string v0, "oauth_timestamp"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    const-string v0, "oauth_token"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthTokenSecret()Ljava/lang/String;
    .locals 2

    .prologue
    .line 396
    const-string v0, "oauth_token_secret"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthType()Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->oauthType:Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    return-object v0
.end method

.method public getOAuthVerifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 446
    const-string v0, "oauth_verifier"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 524
    const-string v0, "realm"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 576
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    return-void
.end method

.method protected remove(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    return-void
.end method

.method public removeCustomBaseParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->remove(Ljava/lang/String;Ljava/util/Map;)V

    .line 111
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "oauth_nonce"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->remove(Ljava/lang/String;Ljava/util/Map;)V

    .line 130
    const-string v0, "oauth_timestamp"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->remove(Ljava/lang/String;Ljava/util/Map;)V

    .line 131
    const-string v0, "oauth_verifier"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->remove(Ljava/lang/String;Ljava/util/Map;)V

    .line 132
    const-string v0, "oauth_signature"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->remove(Ljava/lang/String;Ljava/util/Map;)V

    .line 133
    return-void
.end method

.method public setOAuthCallback(Ljava/lang/String;)V
    .locals 2
    .param p1, "oauthCallback"    # Ljava/lang/String;

    .prologue
    .line 494
    const-string v0, "oauth_callback"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 495
    return-void
.end method

.method public setOAuthConsumerKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "consumerKey"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 151
    return-void
.end method

.method public setOAuthConsumerSecret(Ljava/lang/String;)V
    .locals 2
    .param p1, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 179
    const-string v0, "oauth_consumer_secret"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 180
    return-void
.end method

.method public setOAuthNonce(Ljava/lang/String;)V
    .locals 2
    .param p1, "oauthNonce"    # Ljava/lang/String;

    .prologue
    .line 208
    const-string v0, "oauth_nonce"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 209
    return-void
.end method

.method public setOAuthSignature(Ljava/lang/String;)V
    .locals 2
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 246
    const-string v0, "oauth_signature"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 247
    return-void
.end method

.method public setOAuthSignatureMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "signatureMethod"    # Ljava/lang/String;

    .prologue
    .line 285
    const-string v0, "oauth_signature_method"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 286
    return-void
.end method

.method public setOAuthTimestamp(Ljava/lang/String;)V
    .locals 2
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 326
    const-string v0, "oauth_timestamp"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 327
    return-void
.end method

.method public setOAuthToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 366
    const-string v0, "oauth_token"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 367
    return-void
.end method

.method public setOAuthTokenSecret(Ljava/lang/String;)V
    .locals 2
    .param p1, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 404
    const-string v0, "oauth_token_secret"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 405
    return-void
.end method

.method public setOAuthType(Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;)V
    .locals 0
    .param p1, "type"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->oauthType:Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    .line 440
    return-void
.end method

.method public setOAuthVerifier(Ljava/lang/String;)V
    .locals 2
    .param p1, "verifier"    # Ljava/lang/String;

    .prologue
    .line 454
    const-string v0, "oauth_verifier"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->baseParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 455
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 2
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 532
    const-string v0, "realm"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->extraParameters:Ljava/util/Map;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 533
    return-void
.end method
