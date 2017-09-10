.class Lorg/mortbay/servlet/MultiPartFilter$Wrapper;
.super Ljavax/servlet/http/HttpServletRequestWrapper;
.source "MultiPartFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/servlet/MultiPartFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Wrapper"
.end annotation


# instance fields
.field encoding:Ljava/lang/String;

.field map:Lorg/mortbay/util/MultiMap;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Lorg/mortbay/util/MultiMap;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "map"    # Lorg/mortbay/util/MultiMap;

    .prologue
    .line 367
    invoke-direct {p0, p1}, Ljavax/servlet/http/HttpServletRequestWrapper;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    .line 358
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;->encoding:Ljava/lang/String;

    .line 368
    iput-object p2, p0, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;->map:Lorg/mortbay/util/MultiMap;

    .line 369
    return-void
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 386
    iget-object v3, p0, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;->map:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v3, p1}, Lorg/mortbay/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 387
    .local v1, "o":Ljava/lang/Object;
    instance-of v3, v1, [B

    if-nez v3, :cond_0

    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 388
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 390
    :cond_0
    instance-of v3, v1, [B

    if-eqz v3, :cond_2

    .line 394
    :try_start_0
    new-instance v2, Ljava/lang/String;

    check-cast v1, [B

    .end local v1    # "o":Ljava/lang/Object;
    check-cast v1, [B

    iget-object v3, p0, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;->encoding:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    return-object v2

    .line 397
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 404
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 402
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_2
    if-eqz v1, :cond_1

    .line 403
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;->map:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0}, Lorg/mortbay/util/MultiMap;->toStringArrayMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;->map:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0}, Lorg/mortbay/util/MultiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getParameterValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v5, p0, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;->map:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v5, p1}, Lorg/mortbay/util/MultiMap;->getValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 432
    .local v2, "l":Ljava/util/List;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 433
    :cond_0
    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/String;

    .line 452
    :cond_1
    return-object v4

    .line 434
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 435
    .local v4, "v":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 437
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 438
    .local v3, "o":Ljava/lang/Object;
    instance-of v5, v3, [B

    if-eqz v5, :cond_4

    .line 442
    :try_start_0
    new-instance v5, Ljava/lang/String;

    check-cast v3, [B

    .end local v3    # "o":Ljava/lang/Object;
    check-cast v3, [B

    iget-object v6, p0, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;->encoding:Ljava/lang/String;

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v5, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 449
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 450
    check-cast v3, Ljava/lang/String;

    .end local v3    # "o":Ljava/lang/Object;
    aput-object v3, v4, v1

    goto :goto_1
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 462
    iput-object p1, p0, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;->encoding:Ljava/lang/String;

    .line 463
    return-void
.end method
