.class public Lcom/google/gdata/util/RedirectRequiredException;
.super Lcom/google/gdata/util/ServiceException;
.source "RedirectRequiredException.java"


# static fields
.field private static final LOCATION:Ljava/lang/String; = "Location"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "sc"    # I
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string v0, "Redirect Required"

    invoke-direct {p0, v0}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/RedirectRequiredException;->setHttpErrorCodeOverride(I)V

    .line 47
    invoke-virtual {p0}, Lcom/google/gdata/util/RedirectRequiredException;->getHttpHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Location"

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "httpConn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/net/HttpURLConnection;)V

    .line 53
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/RedirectRequiredException;->setHttpErrorCodeOverride(I)V

    .line 55
    return-void
.end method


# virtual methods
.method public getRedirectLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    const-string v1, "Location"

    invoke-virtual {p0, v1}, Lcom/google/gdata/util/RedirectRequiredException;->getHttpHeader(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 59
    .local v0, "location":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 60
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
