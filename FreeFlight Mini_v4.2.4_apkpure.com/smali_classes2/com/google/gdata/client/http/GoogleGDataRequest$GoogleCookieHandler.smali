.class Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;
.super Ljava/net/CookieHandler;
.source "GoogleGDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/http/GoogleGDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoogleCookieHandler"
.end annotation


# instance fields
.field private nextHandler:Ljava/net/CookieHandler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/net/CookieHandler;-><init>()V

    .line 335
    const-string v0, "com.google.gdata.DisableCookieHandler"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    invoke-static {}, Lcom/google/gdata/client/http/GoogleGDataRequest;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Installing GoogleCookieHandler"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;->nextHandler:Ljava/net/CookieHandler;

    .line 338
    invoke-static {p0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 340
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/client/http/GoogleGDataRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/client/http/GoogleGDataRequest$1;

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    .local p2, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 353
    .local v2, "cookieHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/google/gdata/client/http/GoogleGDataRequest;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gdata/client/GoogleService;

    .line 354
    .local v5, "service":Lcom/google/gdata/client/GoogleService;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/google/gdata/client/GoogleService;->handlesCookies()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 358
    invoke-virtual {v5}, Lcom/google/gdata/client/GoogleService;->getCookies()Ljava/util/Set;

    move-result-object v3

    .line 359
    .local v3, "cookies":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v1, "cookieBuf":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;

    .line 361
    .local v0, "cookie":Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;
    invoke-virtual {v0, p1}, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->matches(Ljava/net/URI;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 362
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 363
    const-string v6, "; "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_1
    invoke-virtual {v0}, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->getHeaderValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-static {}, Lcom/google/gdata/client/http/GoogleGDataRequest;->access$000()Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting cookie: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    .end local v0    # "cookie":Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 375
    const-string v6, "Cookie"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .end local v1    # "cookieBuf":Ljava/lang/StringBuilder;
    .end local v3    # "cookies":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    :goto_1
    return-object v6

    .line 379
    :cond_4
    iget-object v6, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;->nextHandler:Ljava/net/CookieHandler;

    if-eqz v6, :cond_3

    .line 380
    iget-object v6, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;->nextHandler:Ljava/net/CookieHandler;

    invoke-virtual {v6, p1, p2}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    goto :goto_1
.end method

.method public put(Ljava/net/URI;Ljava/util/Map;)V
    .locals 8
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    .local p2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/google/gdata/client/http/GoogleGDataRequest;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/client/GoogleService;

    .line 396
    .local v3, "service":Lcom/google/gdata/client/GoogleService;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/gdata/client/GoogleService;->handlesCookies()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 397
    const-string v5, "Set-Cookie"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 398
    .local v4, "setCookieList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 399
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 400
    .local v1, "cookieValue":Ljava/lang/String;
    new-instance v0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;

    invoke-direct {v0, p1, v1}, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    .line 401
    .local v0, "cookie":Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;
    invoke-virtual {v3, v0}, Lcom/google/gdata/client/GoogleService;->addCookie(Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;)V

    .line 402
    invoke-static {}, Lcom/google/gdata/client/http/GoogleGDataRequest;->access$000()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding cookie:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    .end local v0    # "cookie":Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;
    .end local v1    # "cookieValue":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "setCookieList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v5, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;->nextHandler:Ljava/net/CookieHandler;

    if-eqz v5, :cond_1

    .line 407
    iget-object v5, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;->nextHandler:Ljava/net/CookieHandler;

    invoke-virtual {v5, p1, p2}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    .line 410
    :cond_1
    return-void
.end method
