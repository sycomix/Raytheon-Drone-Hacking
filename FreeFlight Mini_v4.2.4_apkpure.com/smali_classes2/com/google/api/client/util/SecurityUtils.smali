.class public final Lcom/google/api/client/util/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    return-void
.end method

.method public static getDefaultKeyStore()Ljava/security/KeyStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaKeyStore()Ljava/security/KeyStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 53
    const-string v0, "JKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public static getPkcs12KeyStore()Ljava/security/KeyStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 58
    const-string v0, "PKCS12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateKey(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "keyPass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    return-object v0
.end method

.method public static getRsaKeyFactory()Ljava/security/KeyFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 121
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getSha1WithRsaSignatureAlgorithm()Ljava/security/Signature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 126
    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method public static getSha256WithRsaSignatureAlgorithm()Ljava/security/Signature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 131
    const-string v0, "SHA256withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method public static getX509CertificateFactory()Ljava/security/cert/CertificateFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 217
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    return-object v0
.end method

.method public static loadKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .param p1, "keyStream"    # Ljava/io/InputStream;
    .param p2, "storePass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 86
    return-void

    .line 84
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static loadKeyStoreFromCertificates(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;Ljava/io/InputStream;)V
    .locals 4
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .param p1, "certificateFactory"    # Ljava/security/cert/CertificateFactory;
    .param p2, "certificateStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, "i":I
    invoke-virtual {p1, p2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 250
    .local v0, "cert":Ljava/security/cert/Certificate;
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 251
    add-int/lit8 v1, v1, 0x1

    .line 252
    goto :goto_0

    .line 253
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    :cond_0
    return-void
.end method

.method public static loadPrivateKeyFromKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .param p1, "keyStream"    # Ljava/io/InputStream;
    .param p2, "storePass"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "keyPass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {p0, p1, p2}, Lcom/google/api/client/util/SecurityUtils;->loadKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 116
    invoke-static {p0, p3, p4}, Lcom/google/api/client/util/SecurityUtils;->getPrivateKey(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static sign(Ljava/security/Signature;Ljava/security/PrivateKey;[B)[B
    .locals 1
    .param p0, "signatureAlgorithm"    # Ljava/security/Signature;
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "contentBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 146
    invoke-virtual {p0, p2}, Ljava/security/Signature;->update([B)V

    .line 147
    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method public static verify(Ljava/security/Signature;Ljavax/net/ssl/X509TrustManager;Ljava/util/List;[B[B)Ljava/security/cert/X509Certificate;
    .locals 14
    .param p0, "signatureAlgorithm"    # Ljava/security/Signature;
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;
    .param p3, "signatureBytes"    # [B
    .param p4, "contentBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Signature;",
            "Ljavax/net/ssl/X509TrustManager;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[B[B)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 184
    .local p2, "certChainBase64":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lcom/google/api/client/util/SecurityUtils;->getX509CertificateFactory()Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 188
    .local v6, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    new-array v7, v13, [Ljava/security/cert/X509Certificate;

    .line 189
    .local v7, "certificates":[Ljava/security/cert/X509Certificate;
    const/4 v8, 0x0

    .line 190
    .local v8, "currentCert":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 191
    .local v4, "certBase64":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v5

    .line 192
    .local v5, "certDer":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 194
    .local v2, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-virtual {v6, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 195
    .local v3, "cert":Ljava/security/cert/Certificate;
    instance-of v13, v3, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v13, :cond_0

    .line 196
    const/4 v13, 0x0

    .line 212
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    .end local v4    # "certBase64":Ljava/lang/String;
    .end local v5    # "certDer":[B
    .end local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v8    # "currentCert":I
    .end local v11    # "i$":Ljava/util/Iterator;
    :goto_1
    return-object v13

    .line 185
    :catch_0
    move-exception v10

    .line 186
    .local v10, "e":Ljava/security/cert/CertificateException;
    const/4 v13, 0x0

    goto :goto_1

    .line 198
    .end local v10    # "e":Ljava/security/cert/CertificateException;
    .restart local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "cert":Ljava/security/cert/Certificate;
    .restart local v4    # "certBase64":Ljava/lang/String;
    .restart local v5    # "certDer":[B
    .restart local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v8    # "currentCert":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_0
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "currentCert":I
    .local v9, "currentCert":I
    :try_start_2
    check-cast v3, Ljava/security/cert/X509Certificate;

    .end local v3    # "cert":Ljava/security/cert/Certificate;
    aput-object v3, v7, v8
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3

    move v8, v9

    .line 202
    .end local v9    # "currentCert":I
    .restart local v8    # "currentCert":I
    goto :goto_0

    .line 199
    :catch_1
    move-exception v10

    .line 200
    .restart local v10    # "e":Ljava/security/cert/CertificateException;
    :goto_2
    const/4 v13, 0x0

    goto :goto_1

    .line 204
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v4    # "certBase64":Ljava/lang/String;
    .end local v5    # "certDer":[B
    .end local v10    # "e":Ljava/security/cert/CertificateException;
    :cond_1
    :try_start_3
    const-string v13, "RSA"

    invoke-interface {p1, v7, v13}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 208
    const/4 v13, 0x0

    aget-object v13, v7, v13

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    .line 209
    .local v12, "pubKey":Ljava/security/PublicKey;
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p0, v12, v0, v1}, Lcom/google/api/client/util/SecurityUtils;->verify(Ljava/security/Signature;Ljava/security/PublicKey;[B[B)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 210
    const/4 v13, 0x0

    aget-object v13, v7, v13

    goto :goto_1

    .line 205
    .end local v12    # "pubKey":Ljava/security/PublicKey;
    :catch_2
    move-exception v10

    .line 206
    .restart local v10    # "e":Ljava/security/cert/CertificateException;
    const/4 v13, 0x0

    goto :goto_1

    .line 212
    .end local v10    # "e":Ljava/security/cert/CertificateException;
    .restart local v12    # "pubKey":Ljava/security/PublicKey;
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 199
    .end local v8    # "currentCert":I
    .end local v12    # "pubKey":Ljava/security/PublicKey;
    .restart local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "certBase64":Ljava/lang/String;
    .restart local v5    # "certDer":[B
    .restart local v9    # "currentCert":I
    :catch_3
    move-exception v10

    move v8, v9

    .end local v9    # "currentCert":I
    .restart local v8    # "currentCert":I
    goto :goto_2
.end method

.method public static verify(Ljava/security/Signature;Ljava/security/PublicKey;[B[B)Z
    .locals 1
    .param p0, "signatureAlgorithm"    # Ljava/security/Signature;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "signatureBytes"    # [B
    .param p3, "contentBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 163
    invoke-virtual {p0, p3}, Ljava/security/Signature;->update([B)V

    .line 164
    invoke-virtual {p0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    return v0
.end method
