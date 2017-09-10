.class public Lcom/google/gdata/client/authn/oauth/OAuthRsaSha1Signer;
.super Ljava/lang/Object;
.source "OAuthRsaSha1Signer.java"

# interfaces
.implements Lcom/google/gdata/client/authn/oauth/OAuthSigner;


# instance fields
.field privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "privateKeyString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string v2, "Private key string cannot be null"

    invoke-direct {v1, v2}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 69
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string v2, "Private key string cannot be empty"

    invoke-direct {v1, v2}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/google/gdata/client/authn/oauth/RsaSha1PrivateKeyHelper;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthRsaSha1Signer;->setPrivateKey(Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Lcom/google/gdata/util/common/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lcom/google/gdata/util/common/util/Base64DecoderException;
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string v2, "Invalid private key"

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 76
    .end local v0    # "e":Lcom/google/gdata/util/common/util/Base64DecoderException;
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string v2, "Invalid private key"

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 78
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 79
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string v2, "Invalid private key"

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/authn/oauth/OAuthRsaSha1Signer;->setPrivateKey(Ljava/security/PrivateKey;)V

    .line 56
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "privateKeyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string v2, "Private key bytes cannot be null"

    invoke-direct {v1, v2}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_0
    array-length v1, p1

    if-nez v1, :cond_1

    .line 94
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string v2, "Private key bytes cannot be empty"

    invoke-direct {v1, v2}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/google/gdata/client/authn/oauth/RsaSha1PrivateKeyHelper;->getPrivateKey([B)Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthRsaSha1Signer;->setPrivateKey(Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string v2, "Invalid private key"

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 101
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 102
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string v2, "Invalid private key"

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getSignature(Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;
    .locals 4
    .param p1, "baseString"    # Ljava/lang/String;
    .param p2, "oauthParameters"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v2, p0, Lcom/google/gdata/client/authn/oauth/OAuthRsaSha1Signer;->privateKey:Ljava/security/PrivateKey;

    if-nez v2, :cond_0

    .line 122
    new-instance v2, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string v3, "Private key cannot be null"

    invoke-direct {v2, v3}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_0
    :try_start_0
    const-string v2, "SHA1withRSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 126
    .local v1, "signer":Ljava/security/Signature;
    iget-object v2, p0, Lcom/google/gdata/client/authn/oauth/OAuthRsaSha1Signer;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 127
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 128
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/gdata/util/common/util/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    return-object v2

    .line 129
    .end local v1    # "signer":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string v3, "Error generating signature"

    invoke-direct {v2, v3, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 131
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 132
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string v3, "Error generating signature"

    invoke-direct {v2, v3, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 133
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 134
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v2, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string v3, "Error generating signature"

    invoke-direct {v2, v3, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 135
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_3
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string v3, "Error generating signature"

    invoke-direct {v2, v3, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSignatureMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, "RSA-SHA1"

    return-object v0
.end method

.method public setPrivateKey(Ljava/security/PrivateKey;)V
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string v1, "Private key cannot be null"

    invoke-direct {v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/google/gdata/client/authn/oauth/OAuthRsaSha1Signer;->privateKey:Ljava/security/PrivateKey;

    .line 117
    return-void
.end method
