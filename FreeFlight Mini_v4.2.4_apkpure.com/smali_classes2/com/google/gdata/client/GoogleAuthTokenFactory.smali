.class public Lcom/google/gdata/client/GoogleAuthTokenFactory;
.super Ljava/lang/Object;
.source "GoogleAuthTokenFactory.java"

# interfaces
.implements Lcom/google/gdata/client/AuthTokenFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuth2Token;,
        Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;,
        Lcom/google/gdata/client/GoogleAuthTokenFactory$AuthSubToken;,
        Lcom/google/gdata/client/GoogleAuthTokenFactory$UserToken;
    }
.end annotation


# static fields
.field public static final GOOGLE_ACCOUNTS_PATH:Ljava/lang/String; = "/accounts"

.field public static final GOOGLE_LOGIN_PATH:Ljava/lang/String; = "/accounts/ClientLogin"


# instance fields
.field private applicationName:Ljava/lang/String;

.field private authToken:Lcom/google/gdata/client/http/HttpAuthToken;

.field private domainName:Ljava/lang/String;

.field private loginProtocol:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;

.field private tokenListener:Lcom/google/gdata/client/AuthTokenFactory$TokenListener;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/AuthTokenFactory$TokenListener;)V
    .locals 6
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "applicationName"    # Ljava/lang/String;
    .param p3, "tokenListener"    # Lcom/google/gdata/client/AuthTokenFactory$TokenListener;

    .prologue
    .line 289
    const-string v3, "https"

    const-string v4, "www.google.com"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/client/GoogleAuthTokenFactory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/AuthTokenFactory$TokenListener;)V

    .line 291
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/AuthTokenFactory$TokenListener;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "applicationName"    # Ljava/lang/String;
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "domainName"    # Ljava/lang/String;
    .param p5, "tokenListener"    # Lcom/google/gdata/client/AuthTokenFactory$TokenListener;

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->serviceName:Ljava/lang/String;

    .line 321
    iput-object p2, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->applicationName:Ljava/lang/String;

    .line 322
    iput-object p4, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->domainName:Ljava/lang/String;

    .line 323
    iput-object p3, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->loginProtocol:Ljava/lang/String;

    .line 324
    iput-object p5, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->tokenListener:Lcom/google/gdata/client/AuthTokenFactory$TokenListener;

    .line 325
    return-void
.end method

.method private getAuthException(Ljava/util/Map;)Lcom/google/gdata/util/AuthenticationException;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/gdata/util/AuthenticationException;"
        }
    .end annotation

    .prologue
    .line 657
    .local p1, "pairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Error"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 659
    .local v2, "errorName":Ljava/lang/String;
    const-string v3, "BadAuthentication"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 660
    new-instance v3, Lcom/google/gdata/client/GoogleService$InvalidCredentialsException;

    const-string v4, "Invalid credentials"

    invoke-direct {v3, v4}, Lcom/google/gdata/client/GoogleService$InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    .line 688
    :goto_0
    return-object v3

    .line 662
    :cond_0
    const-string v3, "AccountDeleted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 663
    new-instance v3, Lcom/google/gdata/client/GoogleService$AccountDeletedException;

    const-string v4, "Account deleted"

    invoke-direct {v3, v4}, Lcom/google/gdata/client/GoogleService$AccountDeletedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_1
    const-string v3, "AccountDisabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 666
    new-instance v3, Lcom/google/gdata/client/GoogleService$AccountDisabledException;

    const-string v4, "Account disabled"

    invoke-direct {v3, v4}, Lcom/google/gdata/client/GoogleService$AccountDisabledException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :cond_2
    const-string v3, "NotVerified"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 669
    new-instance v3, Lcom/google/gdata/client/GoogleService$NotVerifiedException;

    const-string v4, "Not verified"

    invoke-direct {v3, v4}, Lcom/google/gdata/client/GoogleService$NotVerifiedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 671
    :cond_3
    const-string v3, "TermsNotAgreed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 672
    new-instance v3, Lcom/google/gdata/client/GoogleService$TermsNotAgreedException;

    const-string v4, "Terms not agreed"

    invoke-direct {v3, v4}, Lcom/google/gdata/client/GoogleService$TermsNotAgreedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :cond_4
    const-string v3, "ServiceUnavailable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 675
    new-instance v3, Lcom/google/gdata/client/GoogleService$ServiceUnavailableException;

    const-string v4, "Service unavailable"

    invoke-direct {v3, v4}, Lcom/google/gdata/client/GoogleService$ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_5
    const-string v3, "CaptchaRequired"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 679
    const-string v3, "CaptchaUrl"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 680
    .local v0, "captchaPath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 681
    .local v1, "captchaUrl":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->loginProtocol:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->domainName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/accounts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    new-instance v4, Lcom/google/gdata/client/GoogleService$CaptchaRequiredException;

    const-string v5, "Captcha required"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v3, "CaptchaToken"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Lcom/google/gdata/client/GoogleService$CaptchaRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    goto/16 :goto_0

    .line 688
    .end local v0    # "captchaPath":Ljava/lang/String;
    .end local v1    # "captchaUrl":Ljava/lang/StringBuilder;
    :cond_6
    new-instance v3, Lcom/google/gdata/util/AuthenticationException;

    const-string v4, "Error authenticating (check service name)"

    invoke-direct {v3, v4}, Lcom/google/gdata/util/AuthenticationException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static makePostRequest(Ljava/net/URL;Ljava/util/Map;)Ljava/lang/String;
    .locals 14
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x1

    .line 582
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    .line 585
    .local v10, "urlConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 586
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 587
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 588
    const-string v11, "POST"

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 589
    const-string v11, "Content-Type"

    const-string v12, "application/x-www-form-urlencoded"

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v12, "User-Agent"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "service"

    invoke-interface {p1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " GData-Java/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v13, Lcom/google/gdata/client/GoogleAuthTokenFactory;

    invoke-virtual {v13}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    .local v0, "content":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 599
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 600
    .local v6, "parameter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 601
    const-string v11, "&"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    :cond_0
    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->uriEscaper()Lcom/google/gdata/util/common/base/Escaper;

    move-result-object v12

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v12, v11}, Lcom/google/gdata/util/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->uriEscaper()Lcom/google/gdata/util/common/base/Escaper;

    move-result-object v12

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v12, v11}, Lcom/google/gdata/util/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    const/4 v1, 0x0

    .line 607
    goto :goto_0

    .line 609
    .end local v6    # "parameter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v5, 0x0

    .line 611
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 612
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "utf-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/io/OutputStream;->write([B)V

    .line 613
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 615
    if-eqz v5, :cond_2

    .line 616
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 621
    :cond_2
    const/4 v3, 0x0

    .line 622
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    .local v4, "outputBuilder":Ljava/lang/StringBuilder;
    :try_start_1
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 625
    .local v8, "responseCode":I
    const/16 v11, 0xc8

    if-ne v8, v11, :cond_5

    .line 626
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 632
    :goto_1
    if-eqz v3, :cond_6

    .line 633
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 635
    .local v7, "reader":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "string":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 636
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 640
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "responseCode":I
    .end local v9    # "string":Ljava/lang/String;
    :catchall_0
    move-exception v11

    if-eqz v3, :cond_3

    .line 641
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v11

    .line 615
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "outputBuilder":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v11

    if-eqz v5, :cond_4

    .line 616
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_4
    throw v11

    .line 628
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "outputBuilder":Ljava/lang/StringBuilder;
    .restart local v8    # "responseCode":I
    :cond_5
    :try_start_2
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_1

    .line 640
    :cond_6
    if-eqz v3, :cond_7

    .line 641
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 644
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method


# virtual methods
.method public bridge synthetic getAuthToken()Lcom/google/gdata/client/AuthTokenFactory$AuthToken;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->getAuthToken()Lcom/google/gdata/client/http/HttpAuthToken;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken()Lcom/google/gdata/client/http/HttpAuthToken;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->authToken:Lcom/google/gdata/client/http/HttpAuthToken;

    return-object v0
.end method

.method public getAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "captchaToken"    # Ljava/lang/String;
    .param p4, "captchaAnswer"    # Ljava/lang/String;
    .param p5, "serviceName"    # Ljava/lang/String;
    .param p6, "applicationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 505
    sget-object v7, Lcom/google/gdata/client/ClientLoginAccountType;->HOSTED_OR_GOOGLE:Lcom/google/gdata/client/ClientLoginAccountType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->getAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)Ljava/lang/String;
    .locals 12
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "captchaToken"    # Ljava/lang/String;
    .param p4, "captchaAnswer"    # Ljava/lang/String;
    .param p5, "serviceName"    # Ljava/lang/String;
    .param p6, "applicationName"    # Ljava/lang/String;
    .param p7, "accountType"    # Lcom/google/gdata/client/ClientLoginAccountType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 531
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 532
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "Email"

    invoke-interface {v3, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string v8, "Passwd"

    invoke-interface {v3, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v8, "source"

    move-object/from16 v0, p6

    invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v8, "service"

    move-object/from16 v0, p5

    invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v8, "accountType"

    invoke-virtual/range {p7 .. p7}, Lcom/google/gdata/client/ClientLoginAccountType;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    if-eqz p3, :cond_0

    .line 539
    const-string v8, "logintoken"

    invoke-interface {v3, v8, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :cond_0
    if-eqz p4, :cond_1

    .line 542
    const-string v8, "logincaptcha"

    move-object/from16 v0, p4

    invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    :cond_1
    :try_start_0
    new-instance v7, Ljava/net/URL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->loginProtocol:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->domainName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/accounts/ClientLogin"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 547
    .local v7, "url":Ljava/net/URL;
    invoke-static {v7, v3}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->makePostRequest(Ljava/net/URL;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 556
    .local v4, "postOutput":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n"

    const-string v10, "="

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Lcom/google/gdata/util/common/base/StringUtil;->string2Map(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v6

    .line 558
    .local v6, "tokenPairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "Auth"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 559
    .local v5, "token":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 560
    invoke-direct {p0, v6}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->getAuthException(Ljava/util/Map;)Lcom/google/gdata/util/AuthenticationException;

    move-result-object v8

    throw v8

    .line 548
    .end local v4    # "postOutput":Ljava/lang/String;
    .end local v5    # "token":Ljava/lang/String;
    .end local v6    # "tokenPairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 549
    .local v2, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/gdata/util/AuthenticationException;

    const-string v8, "Error connecting with login URI"

    invoke-direct {v1, v8}, Lcom/google/gdata/util/AuthenticationException;-><init>(Ljava/lang/String;)V

    .line 551
    .local v1, "ae":Lcom/google/gdata/util/AuthenticationException;
    invoke-virtual {v1, v2}, Lcom/google/gdata/util/AuthenticationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 552
    throw v1

    .line 562
    .end local v1    # "ae":Lcom/google/gdata/util/AuthenticationException;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "postOutput":Ljava/lang/String;
    .restart local v5    # "token":Ljava/lang/String;
    .restart local v6    # "tokenPairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "url":Ljava/net/URL;
    :cond_2
    return-object v5
.end method

.method public handleSessionExpiredException(Lcom/google/gdata/client/GoogleService$SessionExpiredException;)V
    .locals 8
    .param p1, "sessionExpired"    # Lcom/google/gdata/client/GoogleService$SessionExpiredException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/GoogleService$SessionExpiredException;,
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 698
    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->username:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->password:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 699
    iget-object v1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->password:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->serviceName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->applicationName:Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->getAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 701
    .local v7, "token":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setUserToken(Ljava/lang/String;)V

    .line 708
    .end local v7    # "token":Ljava/lang/String;
    :cond_0
    return-void

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->authToken:Lcom/google/gdata/client/http/HttpAuthToken;

    instance-of v0, v0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuth2Token;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->authToken:Lcom/google/gdata/client/http/HttpAuthToken;

    check-cast v0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuth2Token;

    invoke-virtual {v0}, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuth2Token;->refreshToken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    :cond_2
    throw p1
.end method

.method public setAuthSubToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setAuthSubToken(Ljava/lang/String;Ljava/security/PrivateKey;)V

    .line 423
    return-void
.end method

.method public setAuthSubToken(Ljava/lang/String;Ljava/security/PrivateKey;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PrivateKey;

    .prologue
    .line 437
    new-instance v0, Lcom/google/gdata/client/GoogleAuthTokenFactory$AuthSubToken;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/client/GoogleAuthTokenFactory$AuthSubToken;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setAuthToken(Lcom/google/gdata/client/http/HttpAuthToken;)V

    .line 438
    return-void
.end method

.method public setAuthToken(Lcom/google/gdata/client/http/HttpAuthToken;)V
    .locals 1
    .param p1, "authToken"    # Lcom/google/gdata/client/http/HttpAuthToken;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->authToken:Lcom/google/gdata/client/http/HttpAuthToken;

    .line 475
    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->tokenListener:Lcom/google/gdata/client/AuthTokenFactory$TokenListener;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->tokenListener:Lcom/google/gdata/client/AuthTokenFactory$TokenListener;

    invoke-interface {v0, p1}, Lcom/google/gdata/client/AuthTokenFactory$TokenListener;->tokenChanged(Lcom/google/gdata/client/AuthTokenFactory$AuthToken;)V

    .line 478
    :cond_0
    return-void
.end method

.method public setOAuth2Credentials(Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 1
    .param p1, "credential"    # Lcom/google/api/client/auth/oauth2/Credential;

    .prologue
    .line 465
    new-instance v0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuth2Token;

    invoke-direct {v0, p1}, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuth2Token;-><init>(Lcom/google/api/client/auth/oauth2/Credential;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setAuthToken(Lcom/google/gdata/client/http/HttpAuthToken;)V

    .line 466
    return-void
.end method

.method public setOAuthCredentials(Lcom/google/gdata/client/authn/oauth/OAuthParameters;Lcom/google/gdata/client/authn/oauth/OAuthSigner;)V
    .locals 1
    .param p1, "parameters"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters;
    .param p2, "signer"    # Lcom/google/gdata/client/authn/oauth/OAuthSigner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertOAuthConsumerKeyExists()V

    .line 456
    new-instance v0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;-><init>(Lcom/google/gdata/client/authn/oauth/OAuthParameters;Lcom/google/gdata/client/authn/oauth/OAuthSigner;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setAuthToken(Lcom/google/gdata/client/http/HttpAuthToken;)V

    .line 457
    return-void
.end method

.method public setUserCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 336
    sget-object v0, Lcom/google/gdata/client/ClientLoginAccountType;->HOSTED_OR_GOOGLE:Lcom/google/gdata/client/ClientLoginAccountType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setUserCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)V

    .line 338
    return-void
.end method

.method public setUserCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "accountType"    # Lcom/google/gdata/client/ClientLoginAccountType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 352
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setUserCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)V

    .line 353
    return-void
.end method

.method public setUserCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "captchaToken"    # Ljava/lang/String;
    .param p4, "captchaAnswer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 372
    sget-object v5, Lcom/google/gdata/client/ClientLoginAccountType;->HOSTED_OR_GOOGLE:Lcom/google/gdata/client/ClientLoginAccountType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setUserCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)V

    .line 374
    return-void
.end method

.method public setUserCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)V
    .locals 9
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "captchaToken"    # Ljava/lang/String;
    .param p4, "captchaAnswer"    # Ljava/lang/String;
    .param p5, "accountType"    # Lcom/google/gdata/client/ClientLoginAccountType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 395
    iput-object p1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->username:Ljava/lang/String;

    .line 396
    iput-object p2, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->password:Ljava/lang/String;

    .line 397
    iget-object v5, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->serviceName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->applicationName:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->getAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)Ljava/lang/String;

    move-result-object v8

    .line 399
    .local v8, "token":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setUserToken(Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public setUserToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 412
    new-instance v0, Lcom/google/gdata/client/GoogleAuthTokenFactory$UserToken;

    invoke-direct {v0, p1}, Lcom/google/gdata/client/GoogleAuthTokenFactory$UserToken;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setAuthToken(Lcom/google/gdata/client/http/HttpAuthToken;)V

    .line 413
    return-void
.end method
