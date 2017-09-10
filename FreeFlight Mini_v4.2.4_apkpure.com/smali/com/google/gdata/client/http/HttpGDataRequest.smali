.class public Lcom/google/gdata/client/http/HttpGDataRequest;
.super Ljava/lang/Object;
.source "HttpGDataRequest.java"

# interfaces
.implements Lcom/google/gdata/client/Service$GDataRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/http/HttpGDataRequest$1;,
        Lcom/google/gdata/client/http/HttpGDataRequest$Factory;
    }
.end annotation


# static fields
.field public static final METHOD_OVERRIDE_HEADER:Ljava/lang/String; = "X-HTTP-Method-Override"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final METHOD_OVERRIDE_PROPERTY:Ljava/lang/String; = "com.google.gdata.UseMethodOverride"

.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected final authToken:Lcom/google/gdata/client/http/HttpAuthToken;

.field protected connectTimeout:I

.field protected final connectionSource:Lcom/google/gdata/client/http/HttpUrlConnectionSource;

.field protected executed:Z

.field protected expectsInput:Z

.field protected hasOutput:Z

.field protected httpConn:Ljava/net/HttpURLConnection;

.field private inputStream:Ljava/io/InputStream;

.field protected inputType:Lcom/google/gdata/util/ContentType;

.field protected readTimeout:I

.field protected requestUrl:Ljava/net/URL;

.field protected type:Lcom/google/gdata/client/Service$GDataRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/google/gdata/client/http/HttpGDataRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/http/HttpGDataRequest;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->executed:Z

    .line 238
    iput v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->connectTimeout:I

    .line 245
    iput v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->readTimeout:I

    .line 256
    iput-object v2, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->inputStream:Ljava/io/InputStream;

    .line 366
    sget-object v0, Lcom/google/gdata/client/http/JdkHttpUrlConnectionSource;->INSTANCE:Lcom/google/gdata/client/http/JdkHttpUrlConnectionSource;

    iput-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->connectionSource:Lcom/google/gdata/client/http/HttpUrlConnectionSource;

    .line 367
    iput-object v2, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->authToken:Lcom/google/gdata/client/http/HttpAuthToken;

    .line 368
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;Lcom/google/gdata/client/http/HttpAuthToken;Ljava/util/Map;Ljava/util/Map;Lcom/google/gdata/client/http/HttpUrlConnectionSource;)V
    .locals 6
    .param p1, "type"    # Lcom/google/gdata/client/Service$GDataRequest$RequestType;
    .param p2, "requestUrl"    # Ljava/net/URL;
    .param p3, "inputType"    # Lcom/google/gdata/util/ContentType;
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
    .local p5, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "privateHeaderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->executed:Z

    .line 238
    iput v4, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->connectTimeout:I

    .line 245
    iput v4, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->readTimeout:I

    .line 256
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->inputStream:Ljava/io/InputStream;

    .line 277
    iput-object p7, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->connectionSource:Lcom/google/gdata/client/http/HttpUrlConnectionSource;

    .line 278
    iput-object p1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->type:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    .line 279
    iput-object p3, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->inputType:Lcom/google/gdata/util/ContentType;

    .line 280
    iput-object p2, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->requestUrl:Ljava/net/URL;

    .line 281
    invoke-virtual {p0, p2}, Lcom/google/gdata/client/http/HttpGDataRequest;->getRequestConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    .line 282
    iput-object p4, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->authToken:Lcom/google/gdata/client/http/HttpAuthToken;

    .line 284
    sget-object v3, Lcom/google/gdata/client/http/HttpGDataRequest$1;->$SwitchMap$com$google$gdata$client$Service$GDataRequest$RequestType:[I

    invoke-virtual {p1}, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 332
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown request type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 287
    :pswitch_0
    iput-boolean v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->hasOutput:Z

    .line 335
    :goto_0
    if-eqz p4, :cond_0

    .line 338
    iget-object v3, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, p2, v3}, Lcom/google/gdata/client/http/HttpAuthToken;->getAuthorizationHeader(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "authHeader":Ljava/lang/String;
    const-string v3, "Authorization"

    invoke-virtual {p0, v3, v0}, Lcom/google/gdata/client/http/HttpGDataRequest;->setPrivateHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .end local v0    # "authHeader":Ljava/lang/String;
    :cond_0
    if-eqz p5, :cond_3

    .line 345
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 346
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/google/gdata/client/http/HttpGDataRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 292
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_1
    iput-boolean v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->expectsInput:Z

    .line 293
    iput-boolean v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->hasOutput:Z

    .line 294
    const-string v3, "POST"

    invoke-virtual {p0, v3}, Lcom/google/gdata/client/http/HttpGDataRequest;->setMethod(Ljava/lang/String;)V

    .line 295
    const-string v3, "Content-Type"

    invoke-virtual {p3}, Lcom/google/gdata/util/ContentType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/gdata/client/http/HttpGDataRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :pswitch_2
    iput-boolean v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->expectsInput:Z

    .line 300
    iput-boolean v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->hasOutput:Z

    .line 301
    const-string v3, "com.google.gdata.UseMethodOverride"

    invoke-static {v3}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 302
    const-string v3, "POST"

    invoke-virtual {p0, v3}, Lcom/google/gdata/client/http/HttpGDataRequest;->setMethod(Ljava/lang/String;)V

    .line 303
    const-string v3, "X-HTTP-Method-Override"

    const-string v4, "PUT"

    invoke-virtual {p0, v3, v4}, Lcom/google/gdata/client/http/HttpGDataRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_2
    const-string v3, "Content-Type"

    invoke-virtual {p3}, Lcom/google/gdata/util/ContentType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/gdata/client/http/HttpGDataRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_1
    const-string v3, "PUT"

    invoke-virtual {p0, v3}, Lcom/google/gdata/client/http/HttpGDataRequest;->setMethod(Ljava/lang/String;)V

    goto :goto_2

    .line 311
    :pswitch_3
    iput-boolean v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->expectsInput:Z

    .line 312
    iput-boolean v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->hasOutput:Z

    .line 316
    const-string v3, "POST"

    invoke-virtual {p0, v3}, Lcom/google/gdata/client/http/HttpGDataRequest;->setMethod(Ljava/lang/String;)V

    .line 317
    const-string v3, "X-HTTP-Method-Override"

    const-string v4, "PATCH"

    invoke-virtual {p0, v3, v4}, Lcom/google/gdata/client/http/HttpGDataRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v3, "Content-Type"

    invoke-virtual {p3}, Lcom/google/gdata/util/ContentType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/gdata/client/http/HttpGDataRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 322
    :pswitch_4
    const-string v3, "com.google.gdata.UseMethodOverride"

    invoke-static {v3}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 323
    const-string v3, "POST"

    invoke-virtual {p0, v3}, Lcom/google/gdata/client/http/HttpGDataRequest;->setMethod(Ljava/lang/String;)V

    .line 324
    const-string v3, "X-HTTP-Method-Override"

    const-string v4, "DELETE"

    invoke-virtual {p0, v3, v4}, Lcom/google/gdata/client/http/HttpGDataRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :goto_3
    const-string v3, "Content-Length"

    const-string v4, "0"

    invoke-virtual {p0, v3, v4}, Lcom/google/gdata/client/http/HttpGDataRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    :cond_2
    const-string v3, "DELETE"

    invoke-virtual {p0, v3}, Lcom/google/gdata/client/http/HttpGDataRequest;->setMethod(Ljava/lang/String;)V

    goto :goto_3

    .line 350
    :cond_3
    if-eqz p6, :cond_4

    .line 351
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 352
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/google/gdata/client/http/HttpGDataRequest;->setPrivateHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 357
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-virtual {p0, v3, v4}, Lcom/google/gdata/client/http/HttpGDataRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v3, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    iget-boolean v4, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->expectsInput:Z

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 360
    return-void

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleOAuthProxyErrorResponse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 582
    new-instance v0, Lcom/google/gdata/util/OAuthProxyException;

    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/OAuthProxyException;-><init>(Ljava/net/HttpURLConnection;)V

    throw v0
.end method

.method private isOAuthProxyErrorResponse()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 566
    iget-object v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 567
    .local v0, "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v5, "x_oauth_approval_url"

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 569
    .local v1, "isOAuthRedirectToApproval":Z
    iget-object v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    const-string/jumbo v5, "x_oauth_error"

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "x_oauth_error_text"

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    move v2, v4

    .line 573
    .local v2, "isOtherOAuthError":Z
    :goto_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    return v3

    .end local v2    # "isOtherOAuthError":Z
    :cond_3
    move v2, v3

    .line 569
    goto :goto_0
.end method


# virtual methods
.method protected checkResponse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/google/gdata/client/http/HttpGDataRequest;->isOAuthProxyErrorResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    invoke-direct {p0}, Lcom/google/gdata/client/http/HttpGDataRequest;->handleOAuthProxyErrorResponse()V

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/google/gdata/client/http/HttpGDataRequest;->handleErrorResponse()V

    goto :goto_0
.end method

.method public end()V
    .locals 4

    .prologue
    .line 699
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 700
    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v1, Lcom/google/gdata/client/http/HttpGDataRequest;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Error closing response stream"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public execute()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 492
    iget v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->connectTimeout:I

    if-ltz v5, :cond_0

    .line 493
    iget-object v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    iget v6, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->connectTimeout:I

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 496
    :cond_0
    iget v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->readTimeout:I

    if-ltz v5, :cond_1

    .line 497
    iget-object v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    iget v6, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->readTimeout:I

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 507
    :cond_1
    const-string v5, "http.strictPostRedirect"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "httpStrictPostRedirect":Ljava/lang/String;
    :try_start_0
    const-string v5, "http.strictPostRedirect"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 511
    iget-object v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 513
    sget-object v5, Lcom/google/gdata/client/http/HttpGDataRequest;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 520
    iget-object v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    iget-object v6, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->requestUrl:Ljava/net/URL;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->requestUrl:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 523
    sget-object v5, Lcom/google/gdata/client/http/HttpGDataRequest;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Redirected to:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 527
    :cond_2
    sget-object v5, Lcom/google/gdata/client/http/HttpGDataRequest;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 529
    sget-object v5, Lcom/google/gdata/client/http/HttpGDataRequest;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 530
    iget-object v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 532
    .local v0, "headerField":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 533
    .local v4, "value":Ljava/lang/String;
    sget-object v6, Lcom/google/gdata/client/http/HttpGDataRequest;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 541
    .end local v0    # "headerField":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-nez v1, :cond_6

    .line 542
    const-string v6, "http.strictPostRedirect"

    invoke-static {v6}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 544
    :goto_1
    throw v5

    .line 538
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/google/gdata/client/http/HttpGDataRequest;->checkResponse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    if-nez v1, :cond_5

    .line 542
    const-string v5, "http.strictPostRedirect"

    invoke-static {v5}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 548
    :goto_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->executed:Z

    .line 549
    return-void

    .line 544
    :cond_5
    const-string v5, "http.strictPostRedirect"

    invoke-static {v5, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v6, "http.strictPostRedirect"

    invoke-static {v6, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getParseSource()Lcom/google/gdata/data/ParseSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    new-instance v0, Lcom/google/gdata/data/ParseSource;

    invoke-virtual {p0}, Lcom/google/gdata/client/http/HttpGDataRequest;->getResponseStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/ParseSource;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected getRequestConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "requestUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    :try_start_0
    iget-object v2, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->connectionSource:Lcom/google/gdata/client/http/HttpUrlConnectionSource;

    invoke-interface {v2, p1}, Lcom/google/gdata/client/http/HttpUrlConnectionSource;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 393
    .local v1, "uc":Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 396
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 398
    return-object v1

    .line 387
    .end local v1    # "uc":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported scheme:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRequestContentType()Lcom/google/gdata/util/ContentType;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->inputType:Lcom/google/gdata/util/ContentType;

    return-object v0
.end method

.method public getRequestStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->expectsInput:Z

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request doesn\'t accept input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    sget-object v0, Lcom/google/gdata/client/http/HttpGDataRequest;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    new-instance v0, Lcom/google/gdata/util/LoggableOutputStream;

    sget-object v1, Lcom/google/gdata/client/http/HttpGDataRequest;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/LoggableOutputStream;-><init>(Ljava/util/logging/Logger;Ljava/io/OutputStream;)V

    .line 462
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->requestUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getRequestWriter()Lcom/google/gdata/util/common/xml/XmlWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/gdata/client/http/HttpGDataRequest;->getRequestStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 468
    .local v0, "requestStream":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 469
    .local v1, "writer":Ljava/io/Writer;
    new-instance v2, Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-direct {v2, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;-><init>(Ljava/io/Writer;)V

    return-object v2
.end method

.method public getResponseContentType()Lcom/google/gdata/util/ContentType;
    .locals 3

    .prologue
    .line 638
    iget-boolean v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->executed:Z

    if-nez v1, :cond_0

    .line 639
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must call execute() before attempting to read response"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 642
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 644
    const/4 v1, 0x0

    .line 646
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/google/gdata/util/ContentType;

    invoke-direct {v1, v0}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getResponseDateHeader(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;
    .locals 6
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 654
    iget-object v2, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, p1, v4, v5}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    .line 655
    .local v0, "dateValue":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    new-instance v2, Lcom/google/gdata/data/DateTime;

    invoke-direct {v2, v0, v1}, Lcom/google/gdata/data/DateTime;-><init>(J)V

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->executed:Z

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call execute() before attempting to read response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_0
    iget-boolean v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->hasOutput:Z

    if-nez v0, :cond_1

    .line 666
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request doesn\'t have response data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 670
    iget-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->inputStream:Ljava/io/InputStream;

    .line 680
    :goto_0
    return-object v0

    .line 673
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->inputStream:Ljava/io/InputStream;

    .line 674
    const-string v0, "gzip"

    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->inputStream:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->inputStream:Ljava/io/InputStream;

    .line 677
    :cond_3
    sget-object v0, Lcom/google/gdata/client/http/HttpGDataRequest;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 678
    new-instance v0, Lcom/google/gdata/util/LoggableInputStream;

    sget-object v1, Lcom/google/gdata/client/http/HttpGDataRequest;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->inputStream:Ljava/io/InputStream;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/LoggableInputStream;-><init>(Ljava/util/logging/Logger;Ljava/io/InputStream;)V

    goto :goto_0

    .line 680
    :cond_4
    iget-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->inputStream:Ljava/io/InputStream;

    goto :goto_0
.end method

.method protected handleErrorResponse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 632
    new-instance v0, Lcom/google/gdata/util/ServiceException;

    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/net/HttpURLConnection;)V

    throw v0

    .line 599
    :sswitch_0
    new-instance v0, Lcom/google/gdata/util/ResourceNotFoundException;

    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ResourceNotFoundException;-><init>(Ljava/net/HttpURLConnection;)V

    throw v0

    .line 602
    :sswitch_1
    new-instance v0, Lcom/google/gdata/util/InvalidEntryException;

    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/InvalidEntryException;-><init>(Ljava/net/HttpURLConnection;)V

    throw v0

    .line 605
    :sswitch_2
    new-instance v0, Lcom/google/gdata/util/ServiceForbiddenException;

    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ServiceForbiddenException;-><init>(Ljava/net/HttpURLConnection;)V

    throw v0

    .line 608
    :sswitch_3
    new-instance v0, Lcom/google/gdata/util/AuthenticationException;

    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/AuthenticationException;-><init>(Ljava/net/HttpURLConnection;)V

    throw v0

    .line 611
    :sswitch_4
    new-instance v0, Lcom/google/gdata/util/NotModifiedException;

    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/NotModifiedException;-><init>(Ljava/net/HttpURLConnection;)V

    throw v0

    .line 614
    :sswitch_5
    new-instance v0, Lcom/google/gdata/util/PreconditionFailedException;

    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/PreconditionFailedException;-><init>(Ljava/net/HttpURLConnection;)V

    throw v0

    .line 617
    :sswitch_6
    new-instance v0, Lcom/google/gdata/util/NotImplementedException;

    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/NotImplementedException;-><init>(Ljava/net/HttpURLConnection;)V

    throw v0

    .line 620
    :sswitch_7
    new-instance v0, Lcom/google/gdata/util/VersionConflictException;

    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/VersionConflictException;-><init>(Ljava/net/HttpURLConnection;)V

    throw v0

    .line 623
    :sswitch_8
    new-instance v0, Lcom/google/gdata/util/EntityTooLargeException;

    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/EntityTooLargeException;-><init>(Ljava/net/HttpURLConnection;)V

    throw v0

    .line 626
    :sswitch_9
    new-instance v0, Lcom/google/gdata/util/NotAcceptableException;

    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/NotAcceptableException;-><init>(Ljava/net/HttpURLConnection;)V

    throw v0

    .line 629
    :sswitch_a
    new-instance v0, Lcom/google/gdata/util/NoLongerAvailableException;

    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/NoLongerAvailableException;-><init>(Ljava/net/HttpURLConnection;)V

    throw v0

    .line 596
    nop

    :sswitch_data_0
    .sparse-switch
        0x130 -> :sswitch_4
        0x190 -> :sswitch_1
        0x191 -> :sswitch_3
        0x193 -> :sswitch_2
        0x194 -> :sswitch_0
        0x196 -> :sswitch_9
        0x199 -> :sswitch_7
        0x19a -> :sswitch_a
        0x19c -> :sswitch_5
        0x19d -> :sswitch_8
        0x1f5 -> :sswitch_6
    .end sparse-switch
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 402
    if-gez p1, :cond_0

    .line 403
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_0
    iput p1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->connectTimeout:I

    .line 406
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 2
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 431
    if-nez p1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    sget-object v0, Lcom/google/gdata/client/http/HttpGDataRequest$1;->$SwitchMap$com$google$gdata$client$Service$GDataRequest$RequestType:[I

    iget-object v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->type:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    invoke-virtual {v1}, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 449
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Etag conditions not supported for this request type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :pswitch_1
    if-eqz p1, :cond_0

    .line 438
    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/http/HttpGDataRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :pswitch_2
    if-eqz p1, :cond_0

    .line 445
    const-string v0, "If-Match"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/http/HttpGDataRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    sget-object v0, Lcom/google/gdata/client/http/HttpGDataRequest;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public setIfModifiedSince(Lcom/google/gdata/data/DateTime;)V
    .locals 2
    .param p1, "conditionDate"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 416
    if-nez p1, :cond_0

    .line 427
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->type:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    sget-object v1, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->QUERY:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    if-ne v0, v1, :cond_1

    .line 421
    const-string v0, "If-Modified-Since"

    invoke-virtual {p1}, Lcom/google/gdata/data/DateTime;->toStringRfc822()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/http/HttpGDataRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Date conditions not supported for this request type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 474
    sget-object v0, Lcom/google/gdata/client/http/HttpGDataRequest;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    sget-object v0, Lcom/google/gdata/client/http/HttpGDataRequest;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 477
    :cond_0
    return-void
.end method

.method public setPrivateHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    sget-object v0, Lcom/google/gdata/client/http/HttpGDataRequest;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <Not Logged>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 409
    if-gez p1, :cond_0

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    iput p1, p0, Lcom/google/gdata/client/http/HttpGDataRequest;->readTimeout:I

    .line 413
    return-void
.end method
