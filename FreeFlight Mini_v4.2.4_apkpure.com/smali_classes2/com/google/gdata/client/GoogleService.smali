.class public Lcom/google/gdata/client/GoogleService;
.super Lcom/google/gdata/client/Service;
.source "GoogleService.java"

# interfaces
.implements Lcom/google/gdata/client/AuthTokenFactory$TokenListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/GoogleService$SessionExpiredException;,
        Lcom/google/gdata/client/GoogleService$CaptchaRequiredException;,
        Lcom/google/gdata/client/GoogleService$ServiceUnavailableException;,
        Lcom/google/gdata/client/GoogleService$TermsNotAgreedException;,
        Lcom/google/gdata/client/GoogleService$NotVerifiedException;,
        Lcom/google/gdata/client/GoogleService$AccountDisabledException;,
        Lcom/google/gdata/client/GoogleService$AccountDeletedException;,
        Lcom/google/gdata/client/GoogleService$InvalidCredentialsException;
    }
.end annotation


# instance fields
.field private authTokenFactory:Lcom/google/gdata/client/AuthTokenFactory;

.field private cookieManager:Lcom/google/gdata/client/CookieManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "requestFactory"    # Lcom/google/gdata/client/Service$GDataRequestFactory;
    .param p3, "authTokenFactory"    # Lcom/google/gdata/client/AuthTokenFactory;

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/google/gdata/client/Service;-><init>()V

    .line 228
    iput-object p2, p0, Lcom/google/gdata/client/GoogleService;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    .line 229
    iput-object p3, p0, Lcom/google/gdata/client/GoogleService;->authTokenFactory:Lcom/google/gdata/client/AuthTokenFactory;

    .line 230
    new-instance v0, Lcom/google/gdata/client/SimpleCookieManager;

    invoke-direct {v0}, Lcom/google/gdata/client/SimpleCookieManager;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/GoogleService;->cookieManager:Lcom/google/gdata/client/CookieManager;

    .line 231
    invoke-direct {p0, p1}, Lcom/google/gdata/client/GoogleService;->initRequestFactory(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 174
    const-string v0, "https"

    const-string v1, "www.google.com"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "applicationName"    # Ljava/lang/String;
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "domainName"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/google/gdata/client/Service;-><init>()V

    .line 202
    new-instance v0, Lcom/google/gdata/client/http/GoogleGDataRequest$Factory;

    invoke-direct {v0}, Lcom/google/gdata/client/http/GoogleGDataRequest$Factory;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/GoogleService;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    .line 203
    new-instance v0, Lcom/google/gdata/client/GoogleAuthTokenFactory;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/client/GoogleAuthTokenFactory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/AuthTokenFactory$TokenListener;)V

    iput-object v0, p0, Lcom/google/gdata/client/GoogleService;->authTokenFactory:Lcom/google/gdata/client/AuthTokenFactory;

    .line 206
    new-instance v0, Lcom/google/gdata/client/SimpleCookieManager;

    invoke-direct {v0}, Lcom/google/gdata/client/SimpleCookieManager;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/GoogleService;->cookieManager:Lcom/google/gdata/client/CookieManager;

    .line 207
    invoke-direct {p0, p2}, Lcom/google/gdata/client/GoogleService;->initRequestFactory(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method private getGoogleAuthTokenFactory()Lcom/google/gdata/client/GoogleAuthTokenFactory;
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService;->authTokenFactory:Lcom/google/gdata/client/AuthTokenFactory;

    instance-of v0, v0, Lcom/google/gdata/client/GoogleAuthTokenFactory;

    if-nez v0, :cond_0

    .line 789
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid authentication token factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService;->authTokenFactory:Lcom/google/gdata/client/AuthTokenFactory;

    check-cast v0, Lcom/google/gdata/client/GoogleAuthTokenFactory;

    return-object v0
.end method

.method private initRequestFactory(Ljava/lang/String;)V
    .locals 4
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 239
    if-eqz p1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    const-string v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gdata/client/GoogleService;->getServiceVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    const-string v1, "User-Agent"

    invoke-virtual {p0}, Lcom/google/gdata/client/GoogleService;->getServiceVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static makePostRequest(Ljava/net/URL;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
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
    .line 484
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->makePostRequest(Ljava/net/URL;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addCookie(Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;)V
    .locals 1
    .param p1, "cookie"    # Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService;->cookieManager:Lcom/google/gdata/client/CookieManager;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService;->cookieManager:Lcom/google/gdata/client/CookieManager;

    invoke-interface {v0, p1}, Lcom/google/gdata/client/CookieManager;->addCookie(Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;)V

    .line 520
    :cond_0
    return-void
.end method

.method public batch(Ljava/net/URL;Lcom/google/gdata/data/IFeed;)Lcom/google/gdata/data/IFeed;
    .locals 2
    .param p1, "feedUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Ljava/net/URL;",
            "TF;)TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;,
            Lcom/google/gdata/client/batch/BatchInterruptedException;
        }
    .end annotation

    .prologue
    .line 770
    .local p2, "inputFeed":Lcom/google/gdata/data/IFeed;, "TF;"
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/Service;->batch(Ljava/net/URL;Lcom/google/gdata/data/IFeed;)Lcom/google/gdata/data/IFeed;
    :try_end_0
    .catch Lcom/google/gdata/util/RedirectRequiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/client/GoogleService$SessionExpiredException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 777
    :goto_0
    return-object v1

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Lcom/google/gdata/util/RedirectRequiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleRedirectException(Lcom/google/gdata/util/RedirectRequiredException;)Ljava/net/URL;

    move-result-object p1

    .line 777
    .end local v0    # "e":Lcom/google/gdata/util/RedirectRequiredException;
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/Service;->batch(Ljava/net/URL;Lcom/google/gdata/data/IFeed;)Lcom/google/gdata/data/IFeed;

    move-result-object v1

    goto :goto_0

    .line 773
    :catch_1
    move-exception v0

    .line 774
    .local v0, "e":Lcom/google/gdata/client/GoogleService$SessionExpiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleSessionExpiredException(Lcom/google/gdata/client/GoogleService$SessionExpiredException;)V

    goto :goto_1
.end method

.method protected createRequest(Lcom/google/gdata/client/Query;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 2
    .param p1, "query"    # Lcom/google/gdata/client/Query;
    .param p2, "contentType"    # Lcom/google/gdata/util/ContentType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 549
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Query;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 550
    .local v0, "request":Lcom/google/gdata/client/Service$GDataRequest;
    instance-of v1, v0, Lcom/google/gdata/client/http/GoogleGDataRequest;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 551
    check-cast v1, Lcom/google/gdata/client/http/GoogleGDataRequest;

    invoke-virtual {v1, p0}, Lcom/google/gdata/client/http/GoogleGDataRequest;->setService(Lcom/google/gdata/client/GoogleService;)V

    .line 553
    :cond_0
    return-object v0
.end method

.method public createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 2
    .param p1, "type"    # Lcom/google/gdata/client/Service$GDataRequest$RequestType;
    .param p2, "requestUrl"    # Ljava/net/URL;
    .param p3, "contentType"    # Lcom/google/gdata/util/ContentType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 540
    .local v0, "request":Lcom/google/gdata/client/Service$GDataRequest;
    instance-of v1, v0, Lcom/google/gdata/client/http/GoogleGDataRequest;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 541
    check-cast v1, Lcom/google/gdata/client/http/GoogleGDataRequest;

    invoke-virtual {v1, p0}, Lcom/google/gdata/client/http/GoogleGDataRequest;->setService(Lcom/google/gdata/client/GoogleService;)V

    .line 543
    :cond_0
    return-object v0
.end method

.method public delete(Ljava/net/URL;)V
    .locals 1
    .param p1, "entryUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 690
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/gdata/client/Service;->delete(Ljava/net/URL;)V
    :try_end_0
    .catch Lcom/google/gdata/util/RedirectRequiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/client/GoogleService$SessionExpiredException; {:try_start_0 .. :try_end_0} :catch_1

    .line 699
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Lcom/google/gdata/util/RedirectRequiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleRedirectException(Lcom/google/gdata/util/RedirectRequiredException;)Ljava/net/URL;

    move-result-object p1

    .line 698
    .end local v0    # "e":Lcom/google/gdata/util/RedirectRequiredException;
    :goto_1
    invoke-super {p0, p1}, Lcom/google/gdata/client/Service;->delete(Ljava/net/URL;)V

    goto :goto_0

    .line 694
    :catch_1
    move-exception v0

    .line 695
    .local v0, "e":Lcom/google/gdata/client/GoogleService$SessionExpiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleSessionExpiredException(Lcom/google/gdata/client/GoogleService$SessionExpiredException;)V

    goto :goto_1
.end method

.method public delete(Ljava/net/URL;Ljava/lang/String;)V
    .locals 1
    .param p1, "entryUrl"    # Ljava/net/URL;
    .param p2, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 705
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/Service;->delete(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gdata/util/RedirectRequiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/client/GoogleService$SessionExpiredException; {:try_start_0 .. :try_end_0} :catch_1

    .line 714
    :goto_0
    return-void

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Lcom/google/gdata/util/RedirectRequiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleRedirectException(Lcom/google/gdata/util/RedirectRequiredException;)Ljava/net/URL;

    move-result-object p1

    .line 713
    .end local v0    # "e":Lcom/google/gdata/util/RedirectRequiredException;
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/Service;->delete(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_0

    .line 709
    :catch_1
    move-exception v0

    .line 710
    .local v0, "e":Lcom/google/gdata/client/GoogleService$SessionExpiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleSessionExpiredException(Lcom/google/gdata/client/GoogleService$SessionExpiredException;)V

    goto :goto_1
.end method

.method public getAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
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
    .line 462
    invoke-direct {p0}, Lcom/google/gdata/client/GoogleService;->getGoogleAuthTokenFactory()Lcom/google/gdata/client/GoogleAuthTokenFactory;

    move-result-object v0

    .local v0, "googleAuthTokenFactory":Lcom/google/gdata/client/GoogleAuthTokenFactory;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 463
    invoke-virtual/range {v0 .. v6}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->getAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAuthTokenFactory()Lcom/google/gdata/client/AuthTokenFactory;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService;->authTokenFactory:Lcom/google/gdata/client/AuthTokenFactory;

    return-object v0
.end method

.method public getCookieManager()Lcom/google/gdata/client/CookieManager;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService;->cookieManager:Lcom/google/gdata/client/CookieManager;

    return-object v0
.end method

.method public getCookies()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService;->cookieManager:Lcom/google/gdata/client/CookieManager;

    if-nez v0, :cond_0

    .line 528
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cookie manager defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService;->cookieManager:Lcom/google/gdata/client/CookieManager;

    invoke-interface {v0}, Lcom/google/gdata/client/CookieManager;->getCookies()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IEntry;
    .locals 2
    .param p1, "entryUrl"    # Ljava/net/URL;
    .param p3, "ifModifiedSince"    # Lcom/google/gdata/data/DateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/google/gdata/data/DateTime;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 563
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/client/Service;->getEntry(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catch Lcom/google/gdata/util/RedirectRequiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/client/GoogleService$SessionExpiredException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 570
    :goto_0
    return-object v1

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Lcom/google/gdata/util/RedirectRequiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleRedirectException(Lcom/google/gdata/util/RedirectRequiredException;)Ljava/net/URL;

    move-result-object p1

    .line 570
    .end local v0    # "e":Lcom/google/gdata/util/RedirectRequiredException;
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/client/Service;->getEntry(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    goto :goto_0

    .line 566
    :catch_1
    move-exception v0

    .line 567
    .local v0, "e":Lcom/google/gdata/client/GoogleService$SessionExpiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleSessionExpiredException(Lcom/google/gdata/client/GoogleService$SessionExpiredException;)V

    goto :goto_1
.end method

.method public getEntry(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IEntry;
    .locals 2
    .param p1, "entryUrl"    # Ljava/net/URL;
    .param p3, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 581
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/client/Service;->getEntry(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catch Lcom/google/gdata/util/RedirectRequiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/client/GoogleService$SessionExpiredException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 588
    :goto_0
    return-object v1

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Lcom/google/gdata/util/RedirectRequiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleRedirectException(Lcom/google/gdata/util/RedirectRequiredException;)Ljava/net/URL;

    move-result-object p1

    .line 588
    .end local v0    # "e":Lcom/google/gdata/util/RedirectRequiredException;
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/client/Service;->getEntry(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    goto :goto_0

    .line 584
    :catch_1
    move-exception v0

    .line 585
    .local v0, "e":Lcom/google/gdata/client/GoogleService$SessionExpiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleSessionExpiredException(Lcom/google/gdata/client/GoogleService$SessionExpiredException;)V

    goto :goto_1
.end method

.method public getFeed(Lcom/google/gdata/client/Query;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;
    .locals 2
    .param p1, "query"    # Lcom/google/gdata/client/Query;
    .param p3, "ifModifiedSince"    # Lcom/google/gdata/data/DateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Query;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Lcom/google/gdata/data/DateTime;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 662
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Lcom/google/gdata/client/Query;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;
    :try_end_0
    .catch Lcom/google/gdata/util/RedirectRequiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/client/GoogleService$SessionExpiredException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 669
    :goto_0
    return-object v1

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Lcom/google/gdata/util/RedirectRequiredException;
    new-instance p1, Lcom/google/gdata/client/Query;

    .end local p1    # "query":Lcom/google/gdata/client/Query;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleRedirectException(Lcom/google/gdata/util/RedirectRequiredException;)Ljava/net/URL;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 669
    .end local v0    # "e":Lcom/google/gdata/util/RedirectRequiredException;
    .restart local p1    # "query":Lcom/google/gdata/client/Query;
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Lcom/google/gdata/client/Query;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;

    move-result-object v1

    goto :goto_0

    .line 665
    :catch_1
    move-exception v0

    .line 666
    .local v0, "e":Lcom/google/gdata/client/GoogleService$SessionExpiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleSessionExpiredException(Lcom/google/gdata/client/GoogleService$SessionExpiredException;)V

    goto :goto_1
.end method

.method public getFeed(Lcom/google/gdata/client/Query;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;
    .locals 2
    .param p1, "query"    # Lcom/google/gdata/client/Query;
    .param p3, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Query;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 676
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Lcom/google/gdata/client/Query;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;
    :try_end_0
    .catch Lcom/google/gdata/util/RedirectRequiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/client/GoogleService$SessionExpiredException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 683
    :goto_0
    return-object v1

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Lcom/google/gdata/util/RedirectRequiredException;
    new-instance p1, Lcom/google/gdata/client/Query;

    .end local p1    # "query":Lcom/google/gdata/client/Query;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleRedirectException(Lcom/google/gdata/util/RedirectRequiredException;)Ljava/net/URL;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 683
    .end local v0    # "e":Lcom/google/gdata/util/RedirectRequiredException;
    .restart local p1    # "query":Lcom/google/gdata/client/Query;
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Lcom/google/gdata/client/Query;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;

    move-result-object v1

    goto :goto_0

    .line 679
    :catch_1
    move-exception v0

    .line 680
    .local v0, "e":Lcom/google/gdata/client/GoogleService$SessionExpiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleSessionExpiredException(Lcom/google/gdata/client/GoogleService$SessionExpiredException;)V

    goto :goto_1
.end method

.method public getFeed(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;
    .locals 2
    .param p1, "feedUrl"    # Ljava/net/URL;
    .param p3, "ifModifiedSince"    # Lcom/google/gdata/data/DateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Lcom/google/gdata/data/DateTime;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 631
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;
    :try_end_0
    .catch Lcom/google/gdata/util/RedirectRequiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/client/GoogleService$SessionExpiredException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 638
    :goto_0
    return-object v1

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Lcom/google/gdata/util/RedirectRequiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleRedirectException(Lcom/google/gdata/util/RedirectRequiredException;)Ljava/net/URL;

    move-result-object p1

    .line 638
    .end local v0    # "e":Lcom/google/gdata/util/RedirectRequiredException;
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;

    move-result-object v1

    goto :goto_0

    .line 634
    :catch_1
    move-exception v0

    .line 635
    .local v0, "e":Lcom/google/gdata/client/GoogleService$SessionExpiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleSessionExpiredException(Lcom/google/gdata/client/GoogleService$SessionExpiredException;)V

    goto :goto_1
.end method

.method public getFeed(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;
    .locals 2
    .param p1, "feedUrl"    # Ljava/net/URL;
    .param p3, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 645
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;
    :try_end_0
    .catch Lcom/google/gdata/util/RedirectRequiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/client/GoogleService$SessionExpiredException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 652
    :goto_0
    return-object v1

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Lcom/google/gdata/util/RedirectRequiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleRedirectException(Lcom/google/gdata/util/RedirectRequiredException;)Ljava/net/URL;

    move-result-object p1

    .line 652
    .end local v0    # "e":Lcom/google/gdata/util/RedirectRequiredException;
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;

    move-result-object v1

    goto :goto_0

    .line 648
    :catch_1
    move-exception v0

    .line 649
    .local v0, "e":Lcom/google/gdata/client/GoogleService$SessionExpiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleSessionExpiredException(Lcom/google/gdata/client/GoogleService$SessionExpiredException;)V

    goto :goto_1
.end method

.method protected handleRedirectException(Lcom/google/gdata/util/RedirectRequiredException;)Ljava/net/URL;
    .locals 4
    .param p1, "redirect"    # Lcom/google/gdata/util/RedirectRequiredException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 723
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/google/gdata/util/RedirectRequiredException;->getRedirectLocation()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Lcom/google/gdata/util/ServiceException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidRedirectedToUrl:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 727
    .local v1, "se":Lcom/google/gdata/util/ServiceException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid redirected-to URL - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/gdata/util/RedirectRequiredException;->getRedirectLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gdata/util/ServiceException;->setInternalReason(Ljava/lang/String;)V

    .line 729
    throw v1
.end method

.method protected handleSessionExpiredException(Lcom/google/gdata/client/GoogleService$SessionExpiredException;)V
    .locals 1
    .param p1, "e"    # Lcom/google/gdata/client/GoogleService$SessionExpiredException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService;->authTokenFactory:Lcom/google/gdata/client/AuthTokenFactory;

    invoke-interface {v0, p1}, Lcom/google/gdata/client/AuthTokenFactory;->handleSessionExpiredException(Lcom/google/gdata/client/GoogleService$SessionExpiredException;)V

    .line 739
    return-void
.end method

.method public handlesCookies()Z
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService;->cookieManager:Lcom/google/gdata/client/CookieManager;

    if-nez v0, :cond_0

    .line 507
    const/4 v0, 0x0

    .line 509
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService;->cookieManager:Lcom/google/gdata/client/CookieManager;

    invoke-interface {v0}, Lcom/google/gdata/client/CookieManager;->cookiesEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    .locals 2
    .param p1, "feedUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "TE;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 613
    .local p2, "entry":Lcom/google/gdata/data/IEntry;, "TE;"
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/Service;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catch Lcom/google/gdata/util/RedirectRequiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/client/GoogleService$SessionExpiredException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 620
    :goto_0
    return-object v1

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Lcom/google/gdata/util/RedirectRequiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleRedirectException(Lcom/google/gdata/util/RedirectRequiredException;)Ljava/net/URL;

    move-result-object p1

    .line 620
    .end local v0    # "e":Lcom/google/gdata/util/RedirectRequiredException;
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/Service;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    goto :goto_0

    .line 616
    :catch_1
    move-exception v0

    .line 617
    .local v0, "e":Lcom/google/gdata/client/GoogleService$SessionExpiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleSessionExpiredException(Lcom/google/gdata/client/GoogleService$SessionExpiredException;)V

    goto :goto_1
.end method

.method public setAuthSubToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/client/GoogleService;->setAuthSubToken(Ljava/lang/String;Ljava/security/PrivateKey;)V

    .line 422
    return-void
.end method

.method public setAuthSubToken(Ljava/lang/String;Ljava/security/PrivateKey;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PrivateKey;

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/google/gdata/client/GoogleService;->getGoogleAuthTokenFactory()Lcom/google/gdata/client/GoogleAuthTokenFactory;

    move-result-object v0

    .line 437
    .local v0, "googleAuthTokenFactory":Lcom/google/gdata/client/GoogleAuthTokenFactory;
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setAuthSubToken(Ljava/lang/String;Ljava/security/PrivateKey;)V

    .line 438
    iget-object v1, p0, Lcom/google/gdata/client/GoogleService;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    iget-object v2, p0, Lcom/google/gdata/client/GoogleService;->authTokenFactory:Lcom/google/gdata/client/AuthTokenFactory;

    invoke-interface {v2}, Lcom/google/gdata/client/AuthTokenFactory;->getAuthToken()Lcom/google/gdata/client/AuthTokenFactory$AuthToken;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setAuthToken(Lcom/google/gdata/client/AuthTokenFactory$AuthToken;)V

    .line 439
    return-void
.end method

.method public setAuthTokenFactory(Lcom/google/gdata/client/AuthTokenFactory;)V
    .locals 0
    .param p1, "authTokenFactory"    # Lcom/google/gdata/client/AuthTokenFactory;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/gdata/client/GoogleService;->authTokenFactory:Lcom/google/gdata/client/AuthTokenFactory;

    .line 262
    return-void
.end method

.method public setCookieManager(Lcom/google/gdata/client/CookieManager;)V
    .locals 0
    .param p1, "cookieManager"    # Lcom/google/gdata/client/CookieManager;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/google/gdata/client/GoogleService;->cookieManager:Lcom/google/gdata/client/CookieManager;

    .line 280
    return-void
.end method

.method public setHandlesCookies(Z)V
    .locals 2
    .param p1, "handlesCookies"    # Z

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService;->cookieManager:Lcom/google/gdata/client/CookieManager;

    if-nez v0, :cond_0

    .line 493
    if-eqz p1, :cond_1

    .line 494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cookie manager defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService;->cookieManager:Lcom/google/gdata/client/CookieManager;

    invoke-interface {v0, p1}, Lcom/google/gdata/client/CookieManager;->setCookiesEnabled(Z)V

    .line 499
    :cond_1
    return-void
.end method

.method public setOAuth2Credentials(Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 3
    .param p1, "credential"    # Lcom/google/api/client/auth/oauth2/Credential;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/google/gdata/client/GoogleService;->getGoogleAuthTokenFactory()Lcom/google/gdata/client/GoogleAuthTokenFactory;

    move-result-object v0

    .line 411
    .local v0, "googleAuthTokenFactory":Lcom/google/gdata/client/GoogleAuthTokenFactory;
    invoke-virtual {v0, p1}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setOAuth2Credentials(Lcom/google/api/client/auth/oauth2/Credential;)V

    .line 412
    iget-object v1, p0, Lcom/google/gdata/client/GoogleService;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    iget-object v2, p0, Lcom/google/gdata/client/GoogleService;->authTokenFactory:Lcom/google/gdata/client/AuthTokenFactory;

    invoke-interface {v2}, Lcom/google/gdata/client/AuthTokenFactory;->getAuthToken()Lcom/google/gdata/client/AuthTokenFactory$AuthToken;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setAuthToken(Lcom/google/gdata/client/AuthTokenFactory$AuthToken;)V

    .line 413
    return-void
.end method

.method public setOAuthCredentials(Lcom/google/gdata/client/authn/oauth/OAuthParameters;Lcom/google/gdata/client/authn/oauth/OAuthSigner;)V
    .locals 3
    .param p1, "parameters"    # Lcom/google/gdata/client/authn/oauth/OAuthParameters;
    .param p2, "signer"    # Lcom/google/gdata/client/authn/oauth/OAuthSigner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/google/gdata/client/GoogleService;->getGoogleAuthTokenFactory()Lcom/google/gdata/client/GoogleAuthTokenFactory;

    move-result-object v0

    .line 399
    .local v0, "googleAuthTokenFactory":Lcom/google/gdata/client/GoogleAuthTokenFactory;
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setOAuthCredentials(Lcom/google/gdata/client/authn/oauth/OAuthParameters;Lcom/google/gdata/client/authn/oauth/OAuthSigner;)V

    .line 400
    iget-object v1, p0, Lcom/google/gdata/client/GoogleService;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    iget-object v2, p0, Lcom/google/gdata/client/GoogleService;->authTokenFactory:Lcom/google/gdata/client/AuthTokenFactory;

    invoke-interface {v2}, Lcom/google/gdata/client/AuthTokenFactory;->getAuthToken()Lcom/google/gdata/client/AuthTokenFactory$AuthToken;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setAuthToken(Lcom/google/gdata/client/AuthTokenFactory$AuthToken;)V

    .line 401
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
    .line 303
    sget-object v0, Lcom/google/gdata/client/ClientLoginAccountType;->HOSTED_OR_GOOGLE:Lcom/google/gdata/client/ClientLoginAccountType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/client/GoogleService;->setUserCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)V

    .line 305
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

    .line 319
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/client/GoogleService;->setUserCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)V

    .line 320
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
    .line 339
    sget-object v5, Lcom/google/gdata/client/ClientLoginAccountType;->HOSTED_OR_GOOGLE:Lcom/google/gdata/client/ClientLoginAccountType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/client/GoogleService;->setUserCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)V

    .line 341
    return-void
.end method

.method public setUserCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)V
    .locals 6
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
    .line 363
    invoke-direct {p0}, Lcom/google/gdata/client/GoogleService;->getGoogleAuthTokenFactory()Lcom/google/gdata/client/GoogleAuthTokenFactory;

    move-result-object v0

    .local v0, "googleAuthTokenFactory":Lcom/google/gdata/client/GoogleAuthTokenFactory;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 364
    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setUserCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)V

    .line 367
    iget-object v1, p0, Lcom/google/gdata/client/GoogleService;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    iget-object v2, p0, Lcom/google/gdata/client/GoogleService;->authTokenFactory:Lcom/google/gdata/client/AuthTokenFactory;

    invoke-interface {v2}, Lcom/google/gdata/client/AuthTokenFactory;->getAuthToken()Lcom/google/gdata/client/AuthTokenFactory$AuthToken;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setAuthToken(Lcom/google/gdata/client/AuthTokenFactory$AuthToken;)V

    .line 368
    return-void
.end method

.method public setUserToken(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/google/gdata/client/GoogleService;->getGoogleAuthTokenFactory()Lcom/google/gdata/client/GoogleAuthTokenFactory;

    move-result-object v0

    .line 380
    .local v0, "googleAuthTokenFactory":Lcom/google/gdata/client/GoogleAuthTokenFactory;
    invoke-virtual {v0, p1}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setUserToken(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/google/gdata/client/GoogleService;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    iget-object v2, p0, Lcom/google/gdata/client/GoogleService;->authTokenFactory:Lcom/google/gdata/client/AuthTokenFactory;

    invoke-interface {v2}, Lcom/google/gdata/client/AuthTokenFactory;->getAuthToken()Lcom/google/gdata/client/AuthTokenFactory$AuthToken;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setAuthToken(Lcom/google/gdata/client/AuthTokenFactory$AuthToken;)V

    .line 382
    return-void
.end method

.method public tokenChanged(Lcom/google/gdata/client/AuthTokenFactory$AuthToken;)V
    .locals 1
    .param p1, "newToken"    # Lcom/google/gdata/client/AuthTokenFactory$AuthToken;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService;->cookieManager:Lcom/google/gdata/client/CookieManager;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService;->cookieManager:Lcom/google/gdata/client/CookieManager;

    invoke-interface {v0}, Lcom/google/gdata/client/CookieManager;->clearCookies()V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    invoke-interface {v0, p1}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setAuthToken(Lcom/google/gdata/client/AuthTokenFactory$AuthToken;)V

    .line 290
    return-void
.end method

.method public update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    .locals 2
    .param p1, "entryUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "TE;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 597
    .local p2, "entry":Lcom/google/gdata/data/IEntry;, "TE;"
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/Service;->update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catch Lcom/google/gdata/util/RedirectRequiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/client/GoogleService$SessionExpiredException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 604
    :goto_0
    return-object v1

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Lcom/google/gdata/util/RedirectRequiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleRedirectException(Lcom/google/gdata/util/RedirectRequiredException;)Ljava/net/URL;

    move-result-object p1

    .line 604
    .end local v0    # "e":Lcom/google/gdata/util/RedirectRequiredException;
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/Service;->update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    goto :goto_0

    .line 600
    :catch_1
    move-exception v0

    .line 601
    .local v0, "e":Lcom/google/gdata/client/GoogleService$SessionExpiredException;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleService;->handleSessionExpiredException(Lcom/google/gdata/client/GoogleService$SessionExpiredException;)V

    goto :goto_1
.end method
