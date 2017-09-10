.class public Lcom/google/gdata/client/http/AuthSubUtil;
.super Ljava/lang/Object;
.source "AuthSubUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;
    }
.end annotation


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String; = "www.google.com"

.field private static final DEFAULT_PROTOCOL:Ljava/lang/String; = "https"

.field private static final RANDOM:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/gdata/client/http/AuthSubUtil;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private static addParameter(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/StringBuffer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 502
    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->uriEscaper()Lcom/google/gdata/util/common/base/Escaper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/gdata/util/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 503
    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->uriEscaper()Lcom/google/gdata/util/common/base/Escaper;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/gdata/util/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 506
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 507
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 519
    :goto_0
    :sswitch_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    return-void

    .line 509
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 514
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 509
    nop

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch
.end method

.method public static exchangeForSessionToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 9
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "onetimeUseToken"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-static {p0, p1}, Lcom/google/gdata/client/http/AuthSubUtil;->getSessionTokenUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "sessionUrl":Ljava/lang/String;
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 316
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 318
    .local v2, "httpConn":Ljava/net/HttpURLConnection;
    const-string v6, "GET"

    invoke-static {p2, p3, v5, v6}, Lcom/google/gdata/client/http/AuthSubUtil;->formAuthorizationHeader(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "header":Ljava/lang/String;
    const-string v6, "Authorization"

    invoke-virtual {v2, v6, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_0

    .line 322
    new-instance v6, Lcom/google/gdata/util/AuthenticationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/gdata/util/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 327
    :cond_0
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    sget-object v8, Lcom/google/gdata/util/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v6}, Lcom/google/gdata/util/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "body":Ljava/lang/String;
    const-string v6, "\n"

    const-string v7, "="

    const/4 v8, 0x1

    invoke-static {v0, v6, v7, v8}, Lcom/google/gdata/util/common/base/StringUtil;->string2Map(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v3

    .line 333
    .local v3, "parsedTokens":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/google/gdata/util/common/base/StringUtil;->lowercaseKeys(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 334
    const-string v6, "token"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    return-object v6
.end method

.method public static exchangeForSessionToken(Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 2
    .param p0, "onetimeUseToken"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 288
    const-string v0, "https"

    const-string v1, "www.google.com"

    invoke-static {v0, v1, p0, p1}, Lcom/google/gdata/client/http/AuthSubUtil;->exchangeForSessionToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formAuthorizationHeader(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "requestUrl"    # Ljava/net/URL;
    .param p3, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 476
    if-nez p1, :cond_0

    .line 477
    const-string v8, "AuthSub token=\"%s\""

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 488
    :goto_0
    return-object v8

    .line 480
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 481
    .local v6, "timestamp":J
    sget-object v8, Lcom/google/gdata/client/http/AuthSubUtil;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v8}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    .line 482
    .local v2, "nonce":J
    const-string v8, "%s %s %d %s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p3, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v2, v3}, Lcom/google/gdata/client/http/AuthSubUtil;->unsignedLongToString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "dataToSign":Ljava/lang/String;
    invoke-static {p1}, Lcom/google/gdata/client/http/AuthSubUtil;->getSigAlg(Ljava/security/PrivateKey;)Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

    move-result-object v4

    .line 486
    .local v4, "sigAlg":Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;
    invoke-static {p1, v0, v4}, Lcom/google/gdata/client/http/AuthSubUtil;->sign(Ljava/security/PrivateKey;Ljava/lang/String;Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;)[B

    move-result-object v5

    .line 487
    .local v5, "signature":[B
    invoke-static {v5}, Lcom/google/gdata/util/common/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "encodedSignature":Ljava/lang/String;
    const-string v8, "AuthSub token=\"%s\" data=\"%s\" sig=\"%s\" sigalg=\"%s\""

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    const/4 v10, 0x2

    aput-object v1, v9, v10

    const/4 v10, 0x3

    invoke-virtual {v4}, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->getAuthSubName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static getPrivateKeyFromKeystore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 4
    .param p0, "keystore"    # Ljava/lang/String;
    .param p1, "keystorePass"    # Ljava/lang/String;
    .param p2, "keyAlias"    # Ljava/lang/String;
    .param p3, "keyPass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 257
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    .line 259
    .local v1, "keyStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .end local v1    # "keyStream":Ljava/io/FileInputStream;
    .local v2, "keyStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 261
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v3

    check-cast v3, Ljava/security/PrivateKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_0
    return-object v3

    .line 263
    .end local v2    # "keyStream":Ljava/io/FileInputStream;
    .restart local v1    # "keyStream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    :goto_0
    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v3

    .line 263
    .end local v1    # "keyStream":Ljava/io/FileInputStream;
    .restart local v2    # "keyStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "keyStream":Ljava/io/FileInputStream;
    .restart local v1    # "keyStream":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static getRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "hostedDomain"    # Ljava/lang/String;
    .param p3, "nextUrl"    # Ljava/lang/String;
    .param p4, "scope"    # Ljava/lang/String;
    .param p5, "secure"    # Z
    .param p6, "session"    # Z

    .prologue
    .line 189
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/gdata/client/http/AuthSubUtil;->getRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 191
    .local v6, "url":Ljava/lang/StringBuffer;
    const-string v0, "hd"

    invoke-static {v6, v0, p2}, Lcom/google/gdata/client/http/AuthSubUtil;->addParameter(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "nextUrl"    # Ljava/lang/String;
    .param p3, "scope"    # Ljava/lang/String;
    .param p4, "secure"    # Z
    .param p5, "session"    # Z

    .prologue
    .line 128
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 129
    .local v0, "url":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/accounts/AuthSubRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v1, "next"

    invoke-static {v0, v1, p2}, Lcom/google/gdata/client/http/AuthSubUtil;->addParameter(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "scope"

    invoke-static {v0, v1, p3}, Lcom/google/gdata/client/http/AuthSubUtil;->addParameter(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v2, "secure"

    if-eqz p4, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-static {v0, v2, v1}, Lcom/google/gdata/client/http/AuthSubUtil;->addParameter(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "session"

    if-eqz p5, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-static {v0, v2, v1}, Lcom/google/gdata/client/http/AuthSubUtil;->addParameter(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 132
    :cond_0
    const-string v1, "0"

    goto :goto_0

    .line 133
    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method public static getRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7
    .param p0, "hostedDomain"    # Ljava/lang/String;
    .param p1, "nextUrl"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "secure"    # Z
    .param p4, "session"    # Z

    .prologue
    .line 159
    const-string v0, "https"

    const-string v1, "www.google.com"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/gdata/client/http/AuthSubUtil;->getRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRequestUrl(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 6
    .param p0, "nextUrl"    # Ljava/lang/String;
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "secure"    # Z
    .param p3, "session"    # Z

    .prologue
    .line 100
    const-string v0, "https"

    const-string v1, "www.google.com"

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/gdata/client/http/AuthSubUtil;->getRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRevokeTokenUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/accounts/AuthSubRevokeToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSessionTokenUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/accounts/AuthSubSessionToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSigAlg(Ljava/security/PrivateKey;)Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;
    .locals 3
    .param p0, "key"    # Ljava/security/PrivateKey;

    .prologue
    .line 542
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "algorithm":Ljava/lang/String;
    const-string v1, "dsa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    sget-object v1, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->DSA_SHA1:Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

    .line 546
    :goto_0
    return-object v1

    .line 545
    :cond_0
    const-string v1, "rsa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    sget-object v1, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->RSA_SHA1:Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

    goto :goto_0

    .line 548
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown algorithm in private key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getTokenFromReply(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "queryString"    # Ljava/lang/String;

    .prologue
    .line 227
    const-string v3, "&"

    const-string v4, "="

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, v5}, Lcom/google/gdata/util/common/base/StringUtil;->string2Map(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v2

    .line 229
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/google/gdata/util/common/base/StringUtil;->lowercaseKeys(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 230
    const-string v3, "token"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    .local v1, "encoded":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getTokenFromReply(Ljava/net/URL;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/client/http/AuthSubUtil;->getTokenFromReply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTokenInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/util/Map;
    .locals 9
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-static {p0, p1}, Lcom/google/gdata/client/http/AuthSubUtil;->getTokenInfoUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, "tokenInfoUrl":Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 384
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 386
    .local v2, "httpConn":Ljava/net/HttpURLConnection;
    const-string v5, "GET"

    invoke-static {p2, p3, v4, v5}, Lcom/google/gdata/client/http/AuthSubUtil;->formAuthorizationHeader(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "header":Ljava/lang/String;
    const-string v5, "Authorization"

    invoke-virtual {v2, v5, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    .line 390
    new-instance v5, Lcom/google/gdata/util/AuthenticationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/gdata/util/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 394
    :cond_0
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    sget-object v7, Lcom/google/gdata/util/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v5}, Lcom/google/gdata/util/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, "="

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcom/google/gdata/util/common/base/StringUtil;->string2Map(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v5

    return-object v5
.end method

.method public static getTokenInfo(Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/util/Map;
    .locals 2
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 356
    const-string v0, "https"

    const-string v1, "www.google.com"

    invoke-static {v0, v1, p0, p1}, Lcom/google/gdata/client/http/AuthSubUtil;->getTokenInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getTokenInfoUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/accounts/AuthSubTokenInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static revokeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;)V
    .locals 7
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-static {p0, p1}, Lcom/google/gdata/client/http/AuthSubUtil;->getRevokeTokenUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "revokeUrl":Ljava/lang/String;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 444
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 446
    .local v1, "httpConn":Ljava/net/HttpURLConnection;
    const-string v4, "GET"

    invoke-static {p2, p3, v3, v4}, Lcom/google/gdata/client/http/AuthSubUtil;->formAuthorizationHeader(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "header":Ljava/lang/String;
    const-string v4, "Authorization"

    invoke-virtual {v1, v4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    .line 450
    new-instance v4, Lcom/google/gdata/util/AuthenticationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/gdata/util/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 453
    :cond_0
    return-void
.end method

.method public static revokeToken(Ljava/lang/String;Ljava/security/PrivateKey;)V
    .locals 2
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 418
    const-string v0, "https"

    const-string v1, "www.google.com"

    invoke-static {v0, v1, p0, p1}, Lcom/google/gdata/client/http/AuthSubUtil;->revokeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;)V

    .line 419
    return-void
.end method

.method private static sign(Ljava/security/PrivateKey;Ljava/lang/String;Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;)[B
    .locals 2
    .param p0, "key"    # Ljava/security/PrivateKey;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "algorithm"    # Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 531
    invoke-virtual {p2}, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->getJCAName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 532
    .local v0, "signature":Ljava/security/Signature;
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 533
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 534
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    return-object v1
.end method

.method private static unsignedLongToString(J)Ljava/lang/String;
    .locals 14
    .param p0, "value"    # J

    .prologue
    .line 597
    const-wide/16 v8, 0x0

    cmp-long v8, p0, v8

    if-ltz v8, :cond_0

    .line 598
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 616
    :goto_0
    return-object v8

    .line 603
    :cond_0
    const/16 v4, 0x14

    .line 604
    .local v4, "max_dig":I
    new-array v2, v4, [C

    .line 605
    .local v2, "cbuf":[C
    const/16 v5, 0xa

    .line 606
    .local v5, "radix":I
    move v3, v4

    .line 607
    .local v3, "dst":I
    const/16 v8, 0x20

    ushr-long v6, p0, v8

    .line 608
    .local v6, "top":J
    const-wide v8, 0xffffffffL

    and-long v0, p0, v8

    .line 609
    .local v0, "bot":J
    int-to-long v8, v5

    rem-long v8, v6, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 610
    int-to-long v8, v5

    div-long/2addr v6, v8

    .line 611
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gtz v8, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_2

    .line 612
    :cond_1
    add-int/lit8 v3, v3, -0x1

    int-to-long v8, v5

    rem-long v8, v0, v8

    long-to-int v8, v8

    invoke-static {v8, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    aput-char v8, v2, v3

    .line 613
    int-to-long v8, v5

    div-long v8, v0, v8

    int-to-long v10, v5

    rem-long v10, v6, v10

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    add-long v0, v8, v10

    .line 614
    int-to-long v8, v5

    div-long/2addr v6, v8

    goto :goto_1

    .line 616
    :cond_2
    new-instance v8, Ljava/lang/String;

    sub-int v9, v4, v3

    invoke-direct {v8, v2, v3, v9}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method
