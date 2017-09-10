.class public Lcom/google/gdata/client/http/HttpGDataRequest$Factory;
.super Ljava/lang/Object;
.source "HttpGDataRequest.java"

# interfaces
.implements Lcom/google/gdata/client/Service$GDataRequestFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/http/HttpGDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field protected authToken:Lcom/google/gdata/client/http/HttpAuthToken;

.field protected connectionSource:Lcom/google/gdata/client/http/HttpUrlConnectionSource;

.field protected headerMap:Ljava/util/Map;
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

.field protected privateHeaderMap:Ljava/util/Map;
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

.field protected useSsl:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->headerMap:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->privateHeaderMap:Ljava/util/Map;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->useSsl:Z

    .line 110
    sget-object v0, Lcom/google/gdata/client/http/JdkHttpUrlConnectionSource;->INSTANCE:Lcom/google/gdata/client/http/JdkHttpUrlConnectionSource;

    iput-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->connectionSource:Lcom/google/gdata/client/http/HttpUrlConnectionSource;

    return-void
.end method

.method private extendHeaderMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 131
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 8
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
    .line 185
    new-instance v0, Lcom/google/gdata/client/http/HttpGDataRequest;

    iget-object v4, p0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->authToken:Lcom/google/gdata/client/http/HttpAuthToken;

    iget-object v5, p0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->headerMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->privateHeaderMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->connectionSource:Lcom/google/gdata/client/http/HttpUrlConnectionSource;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/gdata/client/http/HttpGDataRequest;-><init>(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;Lcom/google/gdata/client/http/HttpAuthToken;Ljava/util/Map;Ljava/util/Map;Lcom/google/gdata/client/http/HttpUrlConnectionSource;)V

    return-object v0
.end method

.method public getRequest(Lcom/google/gdata/client/Query;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;
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
    .line 171
    sget-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->QUERY:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    invoke-virtual {p1}, Lcom/google/gdata/client/Query;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->getRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public getRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 4
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
    .line 161
    iget-boolean v1, p0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->useSsl:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    const-string v3, "https"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local p2    # "requestUrl":Ljava/net/URL;
    .local v0, "requestUrl":Ljava/net/URL;
    move-object p2, v0

    .line 165
    .end local v0    # "requestUrl":Ljava/net/URL;
    .restart local p2    # "requestUrl":Ljava/net/URL;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v1

    return-object v1
.end method

.method public setAuthToken(Lcom/google/gdata/client/AuthTokenFactory$AuthToken;)V
    .locals 2
    .param p1, "authToken"    # Lcom/google/gdata/client/AuthTokenFactory$AuthToken;

    .prologue
    .line 114
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/google/gdata/client/http/HttpAuthToken;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid token type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    check-cast p1, Lcom/google/gdata/client/http/HttpAuthToken;

    .end local p1    # "authToken":Lcom/google/gdata/client/AuthTokenFactory$AuthToken;
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->setAuthToken(Lcom/google/gdata/client/http/HttpAuthToken;)V

    .line 118
    return-void
.end method

.method public setAuthToken(Lcom/google/gdata/client/http/HttpAuthToken;)V
    .locals 0
    .param p1, "authToken"    # Lcom/google/gdata/client/http/HttpAuthToken;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->authToken:Lcom/google/gdata/client/http/HttpAuthToken;

    .line 122
    return-void
.end method

.method public setConnectionSource(Lcom/google/gdata/client/http/HttpUrlConnectionSource;)V
    .locals 2
    .param p1, "connectionSource"    # Lcom/google/gdata/client/http/HttpUrlConnectionSource;

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionSource"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->connectionSource:Lcom/google/gdata/client/http/HttpUrlConnectionSource;

    .line 154
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->headerMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->extendHeaderMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public setPrivateHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->privateHeaderMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->extendHeaderMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public useSsl()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->useSsl:Z

    .line 126
    return-void
.end method
