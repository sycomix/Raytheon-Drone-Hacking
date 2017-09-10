.class public Lcom/google/gdata/client/authn/oauth/RsaSha1PrivateKeyHelper;
.super Ljava/lang/Object;
.source "RsaSha1PrivateKeyHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static getPrivateKey(Ljava/io/File;)Ljava/security/PrivateKey;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/common/util/Base64DecoderException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Lcom/google/gdata/client/authn/oauth/RsaSha1PrivateKeyHelper;->getPrivateKey(Ljava/io/Reader;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateKey(Ljava/io/Reader;)Ljava/security/PrivateKey;
    .locals 1
    .param p0, "privateKeyReader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/common/util/Base64DecoderException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p0}, Lcom/google/gdata/client/authn/oauth/RsaSha1PrivateKeyHelper;->readToString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/client/authn/oauth/RsaSha1PrivateKeyHelper;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 4
    .param p0, "privateKeyString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/common/util/Base64DecoderException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 109
    const-string v0, "-----BEGIN PRIVATE KEY-----"

    .line 110
    .local v0, "begin":Ljava/lang/String;
    const-string v1, "-----END PRIVATE KEY-----"

    .line 111
    .local v1, "end":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 115
    :cond_0
    invoke-static {p0}, Lcom/google/gdata/util/common/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/gdata/client/authn/oauth/RsaSha1PrivateKeyHelper;->getPrivateKey([B)Ljava/security/PrivateKey;

    move-result-object v2

    return-object v2
.end method

.method public static getPrivateKey([B)Ljava/security/PrivateKey;
    .locals 3
    .param p0, "privateKeyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 129
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 130
    .local v0, "fac":Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 131
    .local v1, "privKeySpec":Ljava/security/spec/EncodedKeySpec;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    return-object v2
.end method

.method public static getPrivateKeyFromFilename(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/common/util/Base64DecoderException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/gdata/client/authn/oauth/RsaSha1PrivateKeyHelper;->getPrivateKey(Ljava/io/File;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method private static readToString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 138
    .local v0, "buf":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v1

    .local v1, "c":I
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 139
    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 146
    :try_start_1
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :goto_1
    return-object v3

    .line 142
    .end local v1    # "c":I
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 146
    :try_start_3
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 149
    :goto_2
    throw v3

    .line 147
    .restart local v1    # "c":I
    :catch_1
    move-exception v4

    goto :goto_1

    .end local v1    # "c":I
    :catch_2
    move-exception v4

    goto :goto_2
.end method
