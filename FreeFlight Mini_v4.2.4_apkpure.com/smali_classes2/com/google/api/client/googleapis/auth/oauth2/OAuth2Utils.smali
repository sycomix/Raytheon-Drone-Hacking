.class Lcom/google/api/client/googleapis/auth/oauth2/OAuth2Utils;
.super Ljava/lang/Object;
.source "OAuth2Utils.java"


# static fields
.field private static final METADATA_SERVER_URL:Ljava/lang/String; = "http://metadata.google.internal"

.field static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/googleapis/auth/oauth2/OAuth2Utils;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method static exceptionWithCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;",
            "Ljava/lang/Throwable;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "exception":Ljava/lang/Throwable;, "TT;"
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 39
    return-object p0
.end method

.method static headersContainValue(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "headers"    # Lcom/google/api/client/http/HttpHeaders;
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 44
    .local v2, "values":Ljava/lang/Object;
    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_1

    move-object v3, v2

    .line 46
    check-cast v3, Ljava/util/Collection;

    .line 47
    .local v3, "valuesList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 48
    .local v0, "headerValue":Ljava/lang/Object;
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_0

    check-cast v0, Ljava/lang/String;

    .end local v0    # "headerValue":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    const/4 v4, 0x1

    .line 53
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "valuesList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static runningOnComputeEngine(Lcom/google/api/client/http/HttpTransport;)Z
    .locals 6
    .param p0, "transport"    # Lcom/google/api/client/http/HttpTransport;

    .prologue
    .line 58
    :try_start_0
    new-instance v3, Lcom/google/api/client/http/GenericUrl;

    const-string v4, "http://metadata.google.internal"

    invoke-direct {v3, v4}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 59
    .local v3, "tokenUrl":Lcom/google/api/client/http/GenericUrl;
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/api/client/http/HttpRequestFactory;->buildGetRequest(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v1

    .line 60
    .local v1, "request":Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v2

    .line 61
    .local v2, "response":Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    .line 62
    .local v0, "headers":Lcom/google/api/client/http/HttpHeaders;
    const-string v4, "Metadata-Flavor"

    const-string v5, "Google"

    invoke-static {v0, v4, v5}, Lcom/google/api/client/googleapis/auth/oauth2/OAuth2Utils;->headersContainValue(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    const/4 v4, 0x1

    .line 67
    .end local v0    # "headers":Lcom/google/api/client/http/HttpHeaders;
    .end local v1    # "request":Lcom/google/api/client/http/HttpRequest;
    .end local v2    # "response":Lcom/google/api/client/http/HttpResponse;
    .end local v3    # "tokenUrl":Lcom/google/api/client/http/GenericUrl;
    :goto_0
    return v4

    .line 65
    :catch_0
    move-exception v4

    .line 67
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
