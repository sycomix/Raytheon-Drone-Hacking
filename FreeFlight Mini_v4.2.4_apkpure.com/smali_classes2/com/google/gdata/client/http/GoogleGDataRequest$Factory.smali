.class public Lcom/google/gdata/client/http/GoogleGDataRequest$Factory;
.super Lcom/google/gdata/client/http/HttpGDataRequest$Factory;
.source "GoogleGDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/http/GoogleGDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;-><init>()V

    return-void
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
    .line 94
    new-instance v0, Lcom/google/gdata/client/http/GoogleGDataRequest;

    iget-object v4, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$Factory;->authToken:Lcom/google/gdata/client/http/HttpAuthToken;

    iget-object v5, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$Factory;->headerMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$Factory;->privateHeaderMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$Factory;->connectionSource:Lcom/google/gdata/client/http/HttpUrlConnectionSource;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/gdata/client/http/GoogleGDataRequest;-><init>(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;Lcom/google/gdata/client/http/HttpAuthToken;Ljava/util/Map;Ljava/util/Map;Lcom/google/gdata/client/http/HttpUrlConnectionSource;)V

    return-object v0
.end method
