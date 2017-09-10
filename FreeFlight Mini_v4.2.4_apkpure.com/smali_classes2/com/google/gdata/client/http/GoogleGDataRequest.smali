.class public Lcom/google/gdata/client/http/GoogleGDataRequest;
.super Lcom/google/gdata/client/http/HttpGDataRequest;
.source "GoogleGDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/http/GoogleGDataRequest$1;,
        Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;,
        Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;,
        Lcom/google/gdata/client/http/GoogleGDataRequest$Factory;
    }
.end annotation


# static fields
.field public static final DISABLE_COOKIE_HANDLER_PROPERTY:Ljava/lang/String; = "com.google.gdata.DisableCookieHandler"

.field private static final activeService:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/google/gdata/client/GoogleService;",
            ">;"
        }
    .end annotation
.end field

.field private static final googleCookieHandler:Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private responseVersion:Lcom/google/gdata/util/Version;

.field private service:Lcom/google/gdata/client/GoogleService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 55
    const-class v1, Lcom/google/gdata/client/http/GoogleGDataRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/gdata/client/http/GoogleGDataRequest;->logger:Ljava/util/logging/Logger;

    .line 72
    :try_start_0
    const-string v1, "com.google.apphosting.api.ApiProxy"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 74
    .local v0, "apiProxyClass":Ljava/lang/Class;
    const-string v1, "getCurrentEnvironment"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "com.google.gdata.DisableCookieHandler"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lcom/google/gdata/client/http/GoogleGDataRequest;->activeService:Ljava/lang/ThreadLocal;

    .line 428
    const-string v1, "com.google.gdata.DisableCookieHandler"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 429
    new-instance v1, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;

    invoke-direct {v1, v4}, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;-><init>(Lcom/google/gdata/client/http/GoogleGDataRequest$1;)V

    sput-object v1, Lcom/google/gdata/client/http/GoogleGDataRequest;->googleCookieHandler:Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;

    .line 433
    :goto_1
    return-void

    .line 431
    :cond_1
    sput-object v4, Lcom/google/gdata/client/http/GoogleGDataRequest;->googleCookieHandler:Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;

    goto :goto_1

    .line 81
    :catch_0
    move-exception v1

    goto :goto_0

    .line 80
    :catch_1
    move-exception v1

    goto :goto_0

    .line 79
    :catch_2
    move-exception v1

    goto :goto_0

    .line 78
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;Lcom/google/gdata/client/http/HttpAuthToken;Ljava/util/Map;Ljava/util/Map;Lcom/google/gdata/client/http/HttpUrlConnectionSource;)V
    .locals 0
    .param p1, "type"    # Lcom/google/gdata/client/Service$GDataRequest$RequestType;
    .param p2, "requestUrl"    # Ljava/net/URL;
    .param p3, "contentType"    # Lcom/google/gdata/util/ContentType;
    .param p4, "authToken"    # Lcom/google/gdata/client/http/HttpAuthToken;
    .param p7, "connectionSource"    # Lcom/google/gdata/client/http/HttpUrlConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/client/Service$GDataRequest$RequestType;",
            "Ljava/net/URL;",
            "Lcom/google/gdata/util/ContentType;",
            "Lcom/google/gdata/client/http/HttpAuthToken;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/gdata/client/http/HttpUrlConnectionSource;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    .local p5, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "privateHeaderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p7}, Lcom/google/gdata/client/http/HttpGDataRequest;-><init>(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;Lcom/google/gdata/client/http/HttpAuthToken;Ljava/util/Map;Ljava/util/Map;Lcom/google/gdata/client/http/HttpUrlConnectionSource;)V

    .line 459
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/gdata/client/http/GoogleGDataRequest;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/gdata/client/http/GoogleGDataRequest;->activeService:Ljava/lang/ThreadLocal;

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 532
    :try_start_0
    sget-object v2, Lcom/google/gdata/client/http/GoogleGDataRequest;->activeService:Ljava/lang/ThreadLocal;

    iget-object v3, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->service:Lcom/google/gdata/client/GoogleService;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 535
    iget-object v2, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 536
    invoke-super {p0}, Lcom/google/gdata/client/http/HttpGDataRequest;->execute()V

    .line 539
    iget-object v2, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    const-string v3, "GData-Version"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "versionHeader":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 542
    sget-object v2, Lcom/google/gdata/client/http/GoogleGDataRequest;->activeService:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/GoogleService;

    .line 543
    .local v0, "service":Lcom/google/gdata/client/GoogleService;
    if-eqz v0, :cond_0

    .line 544
    new-instance v2, Lcom/google/gdata/util/Version;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/google/gdata/util/Version;

    invoke-direct {v2, v3, v1, v4}, Lcom/google/gdata/util/Version;-><init>(Ljava/lang/Class;Ljava/lang/String;[Lcom/google/gdata/util/Version;)V

    iput-object v2, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->responseVersion:Lcom/google/gdata/util/Version;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    .end local v0    # "service":Lcom/google/gdata/client/GoogleService;
    :cond_0
    sget-object v2, Lcom/google/gdata/client/http/GoogleGDataRequest;->activeService:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 551
    return-void

    .line 549
    .end local v1    # "versionHeader":Ljava/lang/String;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/google/gdata/client/http/GoogleGDataRequest;->activeService:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v2
.end method

.method public getRequestVersion()Lcom/google/gdata/util/Version;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->service:Lcom/google/gdata/client/GoogleService;

    invoke-virtual {v0}, Lcom/google/gdata/client/GoogleService;->getProtocolVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    return-object v0
.end method

.method public getResponseVersion()Lcom/google/gdata/util/Version;
    .locals 2

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->executed:Z

    if-nez v0, :cond_0

    .line 492
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request has not been executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->responseVersion:Lcom/google/gdata/util/Version;

    return-object v0
.end method

.method protected handleErrorResponse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 559
    :try_start_0
    iget-object v3, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 564
    invoke-super {p0}, Lcom/google/gdata/client/http/HttpGDataRequest;->handleErrorResponse()V

    .line 577
    return-void

    .line 562
    :pswitch_0
    new-instance v3, Lcom/google/gdata/util/RedirectRequiredException;

    iget-object v4, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-direct {v3, v4}, Lcom/google/gdata/util/RedirectRequiredException;-><init>(Ljava/net/HttpURLConnection;)V

    throw v3
    :try_end_0
    .catch Lcom/google/gdata/util/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Lcom/google/gdata/util/AuthenticationException;
    invoke-virtual {v0}, Lcom/google/gdata/util/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, "msg":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "Token expired"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->authToken:Lcom/google/gdata/client/http/HttpAuthToken;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->authToken:Lcom/google/gdata/client/http/HttpAuthToken;

    instance-of v3, v3, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuth2Token;

    if-eqz v3, :cond_2

    .line 570
    :cond_1
    new-instance v2, Lcom/google/gdata/client/GoogleService$SessionExpiredException;

    invoke-virtual {v0}, Lcom/google/gdata/util/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/gdata/client/GoogleService$SessionExpiredException;-><init>(Ljava/lang/String;)V

    .line 572
    .local v2, "se":Lcom/google/gdata/client/GoogleService$SessionExpiredException;
    invoke-virtual {v0}, Lcom/google/gdata/util/AuthenticationException;->getResponseContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/util/AuthenticationException;->getResponseBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gdata/client/GoogleService$SessionExpiredException;->setResponse(Lcom/google/gdata/util/ContentType;Ljava/lang/String;)V

    .line 573
    throw v2

    .line 575
    .end local v2    # "se":Lcom/google/gdata/client/GoogleService$SessionExpiredException;
    :cond_2
    throw v0

    .line 559
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setService(Lcom/google/gdata/client/GoogleService;)V
    .locals 3
    .param p1, "service"    # Lcom/google/gdata/client/GoogleService;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->service:Lcom/google/gdata/client/GoogleService;

    .line 507
    const-string v1, "GoogleGDataRequest.disableVersionHeader"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gdata/client/GoogleService;->getProtocolVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    .line 515
    .local v0, "requestVersion":Lcom/google/gdata/util/Version;
    if-eqz v0, :cond_0

    .line 516
    const-string v1, "GData-Version"

    invoke-virtual {v0}, Lcom/google/gdata/util/Version;->getVersionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/client/http/GoogleGDataRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    .end local v0    # "requestVersion":Lcom/google/gdata/util/Version;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
