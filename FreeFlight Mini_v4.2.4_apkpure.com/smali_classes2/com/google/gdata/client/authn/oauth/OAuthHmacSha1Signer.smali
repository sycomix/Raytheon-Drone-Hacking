.class public Lcom/google/gdata/client/authn/oauth/OAuthHmacSha1Signer;
.super Ljava/lang/Object;
.source "OAuthHmacSha1Signer.java"

# interfaces
.implements Lcom/google/gdata/client/authn/oauth/OAuthSigner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getKey(Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;
    .locals 2
    .param p1, "oauthParameters"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gdata/client/authn/oauth/OAuthUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthTokenSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gdata/client/authn/oauth/OAuthUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSignature(Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;
    .locals 6
    .param p1, "baseString"    # Ljava/lang/String;
    .param p2, "oauthParameters"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 39
    if-nez p2, :cond_0

    .line 40
    :try_start_0
    new-instance v4, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string v5, "OAuth parameters cannot be null"

    invoke-direct {v4, v5}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lcom/google/gdata/client/authn/oauth/OAuthException;

    invoke-direct {v4, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 42
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/google/gdata/client/authn/oauth/OAuthHmacSha1Signer;->getKey(Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "keyString":Ljava/lang/String;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "HmacSHA1"

    invoke-direct {v1, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 44
    .local v1, "key":Ljavax/crypto/SecretKey;
    const-string v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 45
    .local v3, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v3, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 46
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/gdata/util/common/util/Base64;->encode([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    return-object v4

    .line 49
    .end local v1    # "key":Ljavax/crypto/SecretKey;
    .end local v2    # "keyString":Ljava/lang/String;
    .end local v3    # "mac":Ljavax/crypto/Mac;
    :catch_1
    move-exception v0

    .line 50
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Lcom/google/gdata/client/authn/oauth/OAuthException;

    invoke-direct {v4, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 51
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 52
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v4, Lcom/google/gdata/client/authn/oauth/OAuthException;

    invoke-direct {v4, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getSignatureMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "HMAC-SHA1"

    return-object v0
.end method
