.class public Lorg/mortbay/jetty/servlet/ServletHandler;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "ServletHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/servlet/ServletHandler$Chain;,
        Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;,
        Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;
    }
.end annotation


# static fields
.field public static final __DEFAULT_SERVLET:Ljava/lang/String; = "default"

.field public static final __J_S_CONTEXT_TEMPDIR:Ljava/lang/String; = "javax.servlet.context.tempdir"

.field public static final __J_S_ERROR_EXCEPTION:Ljava/lang/String; = "javax.servlet.error.exception"

.field public static final __J_S_ERROR_EXCEPTION_TYPE:Ljava/lang/String; = "javax.servlet.error.exception_type"

.field public static final __J_S_ERROR_MESSAGE:Ljava/lang/String; = "javax.servlet.error.message"

.field public static final __J_S_ERROR_REQUEST_URI:Ljava/lang/String; = "javax.servlet.error.request_uri"

.field public static final __J_S_ERROR_SERVLET_NAME:Ljava/lang/String; = "javax.servlet.error.servlet_name"

.field public static final __J_S_ERROR_STATUS_CODE:Ljava/lang/String; = "javax.servlet.error.status_code"

.field static class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

.field static class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

.field static class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

.field static class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;


# instance fields
.field protected transient _chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

.field private _contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

.field private _filterChainsCached:Z

.field private _filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

.field private transient _filterNameMap:Ljava/util/Map;

.field private transient _filterNameMappings:Lorg/mortbay/util/MultiMap;

.field private transient _filterPathMappings:Ljava/util/List;

.field private _filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

.field private _maxFilterChainsCacheSize:I

.field private _servletContext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

.field private _servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

.field private transient _servletNameMap:Ljava/util/Map;

.field private transient _servletPathMap:Lorg/mortbay/jetty/servlet/PathMap;

.field private _servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

.field private _startWithUnavailable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    .line 88
    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    .line 89
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    .line 90
    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_startWithUnavailable:Z

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    .line 110
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 794
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private getFilterChain(ILjava/lang/String;Lorg/mortbay/jetty/servlet/ServletHolder;)Ljavax/servlet/FilterChain;
    .locals 9
    .param p1, "requestType"    # I
    .param p2, "pathInContext"    # Ljava/lang/String;
    .param p3, "servletHolder"    # Lorg/mortbay/jetty/servlet/ServletHolder;

    .prologue
    .line 533
    if-nez p2, :cond_0

    invoke-virtual {p3}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, "key":Ljava/lang/String;
    :goto_0
    iget-boolean v6, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    if-eqz v6, :cond_2

    .line 537
    monitor-enter p0

    .line 539
    :try_start_0
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    aget-object v6, v6, p1

    invoke-virtual {v6, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 540
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    aget-object v6, v6, p1

    invoke-virtual {v6, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/servlet/FilterChain;

    monitor-exit p0

    .line 598
    :goto_1
    return-object v6

    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    move-object v3, p2

    .line 533
    goto :goto_0

    .line 541
    .restart local v3    # "key":Ljava/lang/String;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    :cond_2
    const/4 v1, 0x0

    .line 548
    .local v1, "filters":Ljava/lang/Object;
    if-eqz p2, :cond_d

    iget-object v6, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    if-eqz v6, :cond_d

    .line 550
    const/4 v2, 0x0

    .end local v1    # "filters":Ljava/lang/Object;
    .local v2, "i":I
    :goto_2
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 552
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mortbay/jetty/servlet/FilterMapping;

    .line 553
    .local v4, "mapping":Lorg/mortbay/jetty/servlet/FilterMapping;
    invoke-virtual {v4, p2, p1}, Lorg/mortbay/jetty/servlet/FilterMapping;->appliesTo(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 554
    invoke-virtual {v4}, Lorg/mortbay/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 550
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 541
    .end local v2    # "i":I
    .end local v4    # "mapping":Lorg/mortbay/jetty/servlet/FilterMapping;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .restart local v2    # "i":I
    :cond_4
    move-object v6, v1

    .line 559
    .end local v2    # "i":I
    :goto_3
    if-eqz p3, :cond_8

    iget-object v7, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v7}, Lorg/mortbay/util/MultiMap;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 562
    iget-object v7, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v7}, Lorg/mortbay/util/MultiMap;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 564
    iget-object v7, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    invoke-virtual {p3}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/mortbay/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 565
    .local v5, "o":Ljava/lang/Object;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    invoke-static {v5}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 567
    invoke-static {v5, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mortbay/jetty/servlet/FilterMapping;

    .line 568
    .restart local v4    # "mapping":Lorg/mortbay/jetty/servlet/FilterMapping;
    invoke-virtual {v4, p1}, Lorg/mortbay/jetty/servlet/FilterMapping;->appliesTo(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 569
    invoke-virtual {v4}, Lorg/mortbay/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "filters":Ljava/lang/Object;
    move-object v6, v1

    .line 565
    .end local v1    # "filters":Ljava/lang/Object;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 572
    .end local v4    # "mapping":Lorg/mortbay/jetty/servlet/FilterMapping;
    :cond_6
    iget-object v7, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    const-string v8, "*"

    invoke-virtual {v7, v8}, Lorg/mortbay/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 573
    const/4 v2, 0x0

    :goto_5
    invoke-static {v5}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v7

    if-ge v2, v7, :cond_8

    .line 575
    invoke-static {v5, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mortbay/jetty/servlet/FilterMapping;

    .line 576
    .restart local v4    # "mapping":Lorg/mortbay/jetty/servlet/FilterMapping;
    invoke-virtual {v4, p1}, Lorg/mortbay/jetty/servlet/FilterMapping;->appliesTo(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 577
    invoke-virtual {v4}, Lorg/mortbay/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "filters":Ljava/lang/Object;
    move-object v6, v1

    .line 573
    .end local v1    # "filters":Ljava/lang/Object;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 582
    .end local v2    # "i":I
    .end local v4    # "mapping":Lorg/mortbay/jetty/servlet/FilterMapping;
    .end local v5    # "o":Ljava/lang/Object;
    :cond_8
    if-nez v6, :cond_9

    .line 583
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 585
    :cond_9
    const/4 v0, 0x0

    .line 586
    .local v0, "chain":Ljavax/servlet/FilterChain;
    iget-boolean v7, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    if-eqz v7, :cond_c

    .line 588
    invoke-static {v6}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_a

    .line 589
    new-instance v0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;

    .end local v0    # "chain":Ljavax/servlet/FilterChain;
    invoke-direct {v0, p0, v6, p3}, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/mortbay/jetty/servlet/ServletHolder;)V

    .line 590
    .restart local v0    # "chain":Ljavax/servlet/FilterChain;
    :cond_a
    monitor-enter p0

    .line 592
    :try_start_2
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    aget-object v6, v6, p1

    invoke-virtual {v6, v3, v0}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    monitor-exit p0

    :cond_b
    :goto_6
    move-object v6, v0

    .line 598
    goto/16 :goto_1

    .line 593
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 595
    :cond_c
    invoke-static {v6}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_b

    .line 596
    new-instance v0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;

    .end local v0    # "chain":Ljavax/servlet/FilterChain;
    invoke-direct {v0, p0, v6, p3}, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/mortbay/jetty/servlet/ServletHolder;)V

    .restart local v0    # "chain":Ljavax/servlet/FilterChain;
    goto :goto_6

    .end local v0    # "chain":Ljavax/servlet/FilterChain;
    .restart local v1    # "filters":Ljava/lang/Object;
    :cond_d
    move-object v6, v1

    goto/16 :goto_3
.end method

.method private invalidateChainsCache()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 630
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v4, v0, v1

    const/4 v1, 0x6

    aput-object v4, v0, v1

    const/4 v1, 0x7

    aput-object v4, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    .line 640
    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .param p3, "dispatches"    # I

    .prologue
    .line 965
    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/jetty/servlet/ServletHandler;->addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    return-object v0
.end method

.method public addFilter(Lorg/mortbay/jetty/servlet/FilterHolder;)V
    .locals 2
    .param p1, "filter"    # Lorg/mortbay/jetty/servlet/FilterHolder;

    .prologue
    .line 988
    if-eqz p1, :cond_0

    .line 989
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilters()[Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "org.mortbay.jetty.servlet.FilterHolder"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterHolder;

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 990
    :cond_0
    return-void

    .line 989
    :cond_1
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    goto :goto_0
.end method

.method public addFilter(Lorg/mortbay/jetty/servlet/FilterHolder;Lorg/mortbay/jetty/servlet/FilterMapping;)V
    .locals 2
    .param p1, "filter"    # Lorg/mortbay/jetty/servlet/FilterHolder;
    .param p2, "filterMapping"    # Lorg/mortbay/jetty/servlet/FilterMapping;

    .prologue
    .line 976
    if-eqz p1, :cond_0

    .line 977
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilters()[Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "org.mortbay.jetty.servlet.FilterHolder"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterHolder;

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 978
    :cond_0
    if-eqz p2, :cond_1

    .line 979
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/mortbay/jetty/servlet/FilterMapping;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "org.mortbay.jetty.servlet.FilterMapping"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    :goto_1
    invoke-static {v1, p2, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterMapping;

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/mortbay/jetty/servlet/FilterMapping;)V

    .line 980
    :cond_1
    return-void

    .line 977
    :cond_2
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    goto :goto_0

    .line 979
    :cond_3
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    goto :goto_1
.end method

.method public addFilterMapping(Lorg/mortbay/jetty/servlet/FilterMapping;)V
    .locals 2
    .param p1, "mapping"    # Lorg/mortbay/jetty/servlet/FilterMapping;

    .prologue
    .line 998
    if-eqz p1, :cond_0

    .line 999
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/mortbay/jetty/servlet/FilterMapping;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "org.mortbay.jetty.servlet.FilterMapping"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterMapping;

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/mortbay/jetty/servlet/FilterMapping;)V

    .line 1000
    :cond_0
    return-void

    .line 999
    :cond_1
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    goto :goto_0
.end method

.method public addFilterWithMapping(Ljava/lang/Class;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 1
    .param p1, "filter"    # Ljava/lang/Class;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .param p3, "dispatches"    # I

    .prologue
    .line 894
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->newFilterHolder(Ljava/lang/Class;)Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 895
    .local v0, "holder":Lorg/mortbay/jetty/servlet/FilterHolder;
    invoke-virtual {p0, v0, p2, p3}, Lorg/mortbay/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/mortbay/jetty/servlet/FilterHolder;Ljava/lang/String;I)V

    .line 897
    return-object v0
.end method

.method public addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .param p3, "dispatches"    # I

    .prologue
    .line 910
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->newFilterHolder(Ljava/lang/Class;)Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 911
    .local v0, "holder":Lorg/mortbay/jetty/servlet/FilterHolder;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p0, v0, p2, p3}, Lorg/mortbay/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/mortbay/jetty/servlet/FilterHolder;Ljava/lang/String;I)V

    .line 915
    return-object v0
.end method

.method public addFilterWithMapping(Lorg/mortbay/jetty/servlet/FilterHolder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "holder"    # Lorg/mortbay/jetty/servlet/FilterHolder;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .param p3, "dispatches"    # I

    .prologue
    .line 928
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilters()[Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 929
    .local v1, "holders":[Lorg/mortbay/jetty/servlet/FilterHolder;
    if-eqz v1, :cond_0

    .line 930
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/mortbay/jetty/servlet/FilterHolder;

    move-object v1, v3

    check-cast v1, [Lorg/mortbay/jetty/servlet/FilterHolder;

    .line 934
    :cond_0
    :try_start_0
    sget-object v3, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "org.mortbay.jetty.servlet.FilterHolder"

    invoke-static {v3}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v3}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/mortbay/jetty/servlet/FilterHolder;

    check-cast v3, [Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 936
    new-instance v2, Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-direct {v2}, Lorg/mortbay/jetty/servlet/FilterMapping;-><init>()V

    .line 937
    .local v2, "mapping":Lorg/mortbay/jetty/servlet/FilterMapping;
    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    .line 938
    invoke-virtual {v2, p2}, Lorg/mortbay/jetty/servlet/FilterMapping;->setPathSpec(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v2, p3}, Lorg/mortbay/jetty/servlet/FilterMapping;->setDispatches(I)V

    .line 940
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/mortbay/jetty/servlet/FilterMapping;

    move-result-object v4

    sget-object v3, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    if-nez v3, :cond_2

    const-string v3, "org.mortbay.jetty.servlet.FilterMapping"

    invoke-static {v3}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    :goto_1
    invoke-static {v4, v2, v3}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/mortbay/jetty/servlet/FilterMapping;

    check-cast v3, [Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-virtual {p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/mortbay/jetty/servlet/FilterMapping;)V

    .line 953
    return-void

    .line 934
    .end local v2    # "mapping":Lorg/mortbay/jetty/servlet/FilterMapping;
    :cond_1
    sget-object v3, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    goto :goto_0

    .line 940
    .restart local v2    # "mapping":Lorg/mortbay/jetty/servlet/FilterMapping;
    :cond_2
    sget-object v3, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 942
    .end local v2    # "mapping":Lorg/mortbay/jetty/servlet/FilterMapping;
    :catch_0
    move-exception v0

    .line 944
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 945
    throw v0

    .line 947
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 950
    throw v0
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 841
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    return-object v0
.end method

.method public addServlet(Lorg/mortbay/jetty/servlet/ServletHolder;)V
    .locals 2
    .param p1, "holder"    # Lorg/mortbay/jetty/servlet/ServletHolder;

    .prologue
    .line 851
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.jetty.servlet.ServletHolder"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletHolder;

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V

    .line 852
    return-void

    .line 851
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    goto :goto_0
.end method

.method public addServletMapping(Lorg/mortbay/jetty/servlet/ServletMapping;)V
    .locals 2
    .param p1, "mapping"    # Lorg/mortbay/jetty/servlet/ServletMapping;

    .prologue
    .line 860
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/mortbay/jetty/servlet/ServletMapping;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.jetty.servlet.ServletMapping"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletMapping;

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServletMappings([Lorg/mortbay/jetty/servlet/ServletMapping;)V

    .line 861
    return-void

    .line 860
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    goto :goto_0
.end method

.method public addServletWithMapping(Ljava/lang/Class;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 3
    .param p1, "servlet"    # Ljava/lang/Class;
    .param p2, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 793
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->newServletHolder(Ljava/lang/Class;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 794
    .local v0, "holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v2

    sget-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.mortbay.jetty.servlet.ServletHolder"

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    :goto_0
    invoke-static {v2, v0, v1}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/mortbay/jetty/servlet/ServletHolder;

    check-cast v1, [Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V

    .line 796
    invoke-virtual {p0, v0, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Lorg/mortbay/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    .line 798
    return-object v0

    .line 794
    :cond_0
    sget-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    goto :goto_0
.end method

.method public addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 778
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->newServletHolder(Ljava/lang/Class;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 779
    .local v0, "holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p0, v0, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Lorg/mortbay/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    .line 784
    return-object v0
.end method

.method public addServletWithMapping(Lorg/mortbay/jetty/servlet/ServletHolder;Ljava/lang/String;)V
    .locals 5
    .param p1, "servlet"    # Lorg/mortbay/jetty/servlet/ServletHolder;
    .param p2, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 810
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 811
    .local v1, "holders":[Lorg/mortbay/jetty/servlet/ServletHolder;
    if-eqz v1, :cond_0

    .line 812
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/mortbay/jetty/servlet/ServletHolder;

    move-object v1, v3

    check-cast v1, [Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 816
    :cond_0
    :try_start_0
    sget-object v3, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "org.mortbay.jetty.servlet.ServletHolder"

    invoke-static {v3}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v3}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/mortbay/jetty/servlet/ServletHolder;

    check-cast v3, [Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V

    .line 818
    new-instance v2, Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-direct {v2}, Lorg/mortbay/jetty/servlet/ServletMapping;-><init>()V

    .line 819
    .local v2, "mapping":Lorg/mortbay/jetty/servlet/ServletMapping;
    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v2, p2}, Lorg/mortbay/jetty/servlet/ServletMapping;->setPathSpec(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/mortbay/jetty/servlet/ServletMapping;

    move-result-object v4

    sget-object v3, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    if-nez v3, :cond_2

    const-string v3, "org.mortbay.jetty.servlet.ServletMapping"

    invoke-static {v3}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    :goto_1
    invoke-static {v4, v2, v3}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/mortbay/jetty/servlet/ServletMapping;

    check-cast v3, [Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-virtual {p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServletMappings([Lorg/mortbay/jetty/servlet/ServletMapping;)V

    .line 830
    return-void

    .line 816
    .end local v2    # "mapping":Lorg/mortbay/jetty/servlet/ServletMapping;
    :cond_1
    sget-object v3, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    goto :goto_0

    .line 821
    .restart local v2    # "mapping":Lorg/mortbay/jetty/servlet/ServletMapping;
    :cond_2
    sget-object v3, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 823
    .end local v2    # "mapping":Lorg/mortbay/jetty/servlet/ServletMapping;
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V

    .line 826
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    .line 827
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 828
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public customizeFilter(Ljavax/servlet/Filter;)Ljavax/servlet/Filter;
    .locals 0
    .param p1, "filter"    # Ljavax/servlet/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1359
    return-object p1
.end method

.method public customizeFilterDestroy(Ljavax/servlet/Filter;)Ljavax/servlet/Filter;
    .locals 0
    .param p1, "filter"    # Ljavax/servlet/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1366
    return-object p1
.end method

.method public customizeServlet(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;
    .locals 0
    .param p1, "servlet"    # Ljavax/servlet/Servlet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1334
    return-object p1
.end method

.method public customizeServletDestroy(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;
    .locals 0
    .param p1, "servlet"    # Ljavax/servlet/Servlet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1341
    return-object p1
.end method

.method protected declared-synchronized doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 141
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/mortbay/jetty/handler/ContextHandler;->getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletContext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .line 142
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletContext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-nez v1, :cond_3

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    .line 144
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->updateNameMappings()V

    .line 145
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->updateMappings()V

    .line 147
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    if-eqz v0, :cond_0

    .line 148
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    .line 159
    :cond_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->doStart()V

    .line 161
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    instance-of v0, v0, Lorg/mortbay/jetty/servlet/Context;

    if-nez v0, :cond_2

    .line 162
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->initialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_2
    monitor-exit p0

    return-void

    .line 142
    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletContext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized doStop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->doStop()V

    .line 172
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    array-length v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_0

    .line 176
    :try_start_1
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/mortbay/jetty/servlet/FilterHolder;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "EXCEPTION "

    invoke-static {v3, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eqz v3, :cond_1

    .line 183
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    array-length v1, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v1    # "i":I
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_1

    .line 185
    :try_start_3
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/mortbay/jetty/servlet/ServletHolder;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "EXCEPTION "

    invoke-static {v3, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    .line 190
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    .line 192
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/mortbay/jetty/servlet/PathMap;

    .line 193
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getContextLog()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilter(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 881
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/FilterHolder;

    return-object v0
.end method

.method public getFilterMappings()[Lorg/mortbay/jetty/servlet/FilterMapping;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    return-object v0
.end method

.method public getFilters()[Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    return-object v0
.end method

.method public getHolderEntry(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;
    .locals 1
    .param p1, "pathInContext"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/mortbay/jetty/servlet/PathMap;

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/mortbay/jetty/servlet/PathMap;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->getMatch(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public getMaxFilterChainsCacheSize()I
    .locals 1

    .prologue
    .line 1298
    iget v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    return v0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 8
    .param p1, "uriInContext"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 251
    if-nez p1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-object v5

    .line 254
    :cond_1
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 259
    const/4 v3, 0x0

    .line 260
    .local v3, "query":Ljava/lang/String;
    const/4 v2, 0x0

    .line 261
    .local v2, "q":I
    const/16 v6, 0x3f

    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_2

    .line 263
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 264
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 266
    :cond_2
    const/16 v6, 0x3b

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_3

    .line 267
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 269
    :cond_3
    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "pathInContext":Ljava/lang/String;
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v6}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "uri":Ljava/lang/String;
    new-instance v6, Lorg/mortbay/jetty/servlet/Dispatcher;

    iget-object v7, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-direct {v6, v7, v4, v1, v3}, Lorg/mortbay/jetty/servlet/Dispatcher;-><init>(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    .line 273
    .end local v1    # "pathInContext":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getServlet(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 306
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/ServletHolder;

    return-object v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletContext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    return-object v0
.end method

.method public getServletMappings()[Lorg/mortbay/jetty/servlet/ServletMapping;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    return-object v0
.end method

.method public getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 28
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p3, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->isStarted()Z

    move-result v26

    if-nez v26, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mortbay/jetty/Request;

    move/from16 v26, v0

    if-eqz v26, :cond_5

    move-object/from16 v26, p2

    check-cast v26, Lorg/mortbay/jetty/Request;

    move-object/from16 v4, v26

    .line 321
    .local v4, "base_request":Lorg/mortbay/jetty/Request;
    :goto_1
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getServletName()Ljava/lang/String;

    move-result-object v14

    .line 322
    .local v14, "old_servlet_name":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getServletPath()Ljava/lang/String;

    move-result-object v15

    .line 323
    .local v15, "old_servlet_path":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v12

    .line 324
    .local v12, "old_path_info":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getRoleMap()Ljava/util/Map;

    move-result-object v13

    .line 325
    .local v13, "old_role_map":Ljava/util/Map;
    const/16 v19, 0x0

    .line 326
    .local v19, "request_listeners":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 330
    .local v17, "request_event":Ljavax/servlet/ServletRequestEvent;
    const/16 v21, 0x0

    .line 331
    .local v21, "servlet_holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    const/4 v6, 0x0

    .line 334
    .local v6, "chain":Ljavax/servlet/FilterChain;
    :try_start_0
    const-string v26, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 337
    invoke-virtual/range {p0 .. p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v8

    .line 338
    .local v8, "entry":Lorg/mortbay/jetty/servlet/PathMap$Entry;
    if-eqz v8, :cond_3

    .line 340
    invoke-virtual {v8}, Lorg/mortbay/jetty/servlet/PathMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Lorg/mortbay/jetty/servlet/ServletHolder;

    move-object/from16 v21, v0

    .line 341
    invoke-virtual/range {v21 .. v21}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/mortbay/jetty/Request;->setServletName(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {v21 .. v21}, Lorg/mortbay/jetty/servlet/ServletHolder;->getRoleMap()Ljava/util/Map;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/mortbay/jetty/Request;->setRoleMap(Ljava/util/Map;)V

    .line 343
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v26

    if-eqz v26, :cond_2

    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "servlet="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 345
    :cond_2
    invoke-virtual {v8}, Lorg/mortbay/jetty/servlet/PathMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 346
    .local v23, "servlet_path_spec":Ljava/lang/String;
    invoke-virtual {v8}, Lorg/mortbay/jetty/servlet/PathMap$Entry;->getMapped()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_6

    invoke-virtual {v8}, Lorg/mortbay/jetty/servlet/PathMap$Entry;->getMapped()Ljava/lang/String;

    move-result-object v22

    .line 347
    .local v22, "servlet_path":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/mortbay/jetty/servlet/PathMap;->pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 349
    .local v16, "path_info":Ljava/lang/String;
    const/16 v26, 0x4

    move/from16 v0, p4

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 351
    const-string v26, "javax.servlet.include.servlet_path"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    const-string v26, "javax.servlet.include.path_info"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    :goto_3
    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_3

    .line 361
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilterChain(ILjava/lang/String;Lorg/mortbay/jetty/servlet/ServletHolder;)Ljavax/servlet/FilterChain;

    move-result-object v6

    .line 375
    .end local v8    # "entry":Lorg/mortbay/jetty/servlet/PathMap$Entry;
    .end local v16    # "path_info":Ljava/lang/String;
    .end local v22    # "servlet_path":Ljava/lang/String;
    .end local v23    # "servlet_path_spec":Ljava/lang/String;
    :cond_3
    :goto_4
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 377
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "chain="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 378
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "servlet holder="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 382
    :cond_4
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->takeRequestListeners()Ljava/lang/Object;

    move-result-object v19

    .line 383
    if-eqz v19, :cond_a

    .line 385
    new-instance v18, Ljavax/servlet/ServletRequestEvent;

    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V
    :try_end_0
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/mortbay/jetty/EofException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    .end local v17    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .local v18, "request_event":Ljavax/servlet/ServletRequestEvent;
    :try_start_1
    invoke-static/range {v19 .. v19}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v20

    .line 387
    .local v20, "s":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5
    move/from16 v0, v20

    if-ge v9, v0, :cond_9

    .line 389
    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/servlet/ServletRequestListener;

    .line 390
    .local v11, "listener":Ljavax/servlet/ServletRequestListener;
    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljavax/servlet/ServletRequestListener;->requestInitialized(Ljavax/servlet/ServletRequestEvent;)V
    :try_end_1
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/mortbay/jetty/EofException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 387
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 320
    .end local v4    # "base_request":Lorg/mortbay/jetty/Request;
    .end local v6    # "chain":Ljavax/servlet/FilterChain;
    .end local v9    # "i":I
    .end local v11    # "listener":Ljavax/servlet/ServletRequestListener;
    .end local v12    # "old_path_info":Ljava/lang/String;
    .end local v13    # "old_role_map":Ljava/util/Map;
    .end local v14    # "old_servlet_name":Ljava/lang/String;
    .end local v15    # "old_servlet_path":Ljava/lang/String;
    .end local v18    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .end local v19    # "request_listeners":Ljava/lang/Object;
    .end local v20    # "s":I
    .end local v21    # "servlet_holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    :cond_5
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v4

    goto/16 :goto_1

    .line 346
    .restart local v4    # "base_request":Lorg/mortbay/jetty/Request;
    .restart local v6    # "chain":Ljavax/servlet/FilterChain;
    .restart local v8    # "entry":Lorg/mortbay/jetty/servlet/PathMap$Entry;
    .restart local v12    # "old_path_info":Ljava/lang/String;
    .restart local v13    # "old_role_map":Ljava/util/Map;
    .restart local v14    # "old_servlet_name":Ljava/lang/String;
    .restart local v15    # "old_servlet_path":Ljava/lang/String;
    .restart local v17    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .restart local v19    # "request_listeners":Ljava/lang/Object;
    .restart local v21    # "servlet_holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    .restart local v23    # "servlet_path_spec":Ljava/lang/String;
    :cond_6
    :try_start_2
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/mortbay/jetty/servlet/PathMap;->pathMatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_2

    .line 356
    .restart local v16    # "path_info":Ljava/lang/String;
    .restart local v22    # "servlet_path":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 357
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/mortbay/jetty/EofException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 406
    .end local v8    # "entry":Lorg/mortbay/jetty/servlet/PathMap$Entry;
    .end local v16    # "path_info":Ljava/lang/String;
    .end local v19    # "request_listeners":Ljava/lang/Object;
    .end local v22    # "servlet_path":Ljava/lang/String;
    .end local v23    # "servlet_path_spec":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 408
    .local v7, "e":Lorg/mortbay/jetty/RetryRequest;
    :goto_6
    const/16 v26, 0x0

    :try_start_3
    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 409
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 510
    .end local v7    # "e":Lorg/mortbay/jetty/RetryRequest;
    :catchall_0
    move-exception v26

    :goto_7
    if-eqz v19, :cond_24

    .line 512
    invoke-static/range {v19 .. v19}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v9

    .restart local v9    # "i":I
    move v10, v9

    .end local v9    # "i":I
    .local v10, "i":I
    :goto_8
    add-int/lit8 v9, v10, -0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    if-lez v10, :cond_24

    .line 514
    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/servlet/ServletRequestListener;

    .line 515
    .restart local v11    # "listener":Ljavax/servlet/ServletRequestListener;
    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move v10, v9

    .line 516
    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_8

    .line 367
    .end local v10    # "i":I
    .end local v11    # "listener":Ljavax/servlet/ServletRequestListener;
    .restart local v19    # "request_listeners":Ljava/lang/Object;
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Lorg/mortbay/jetty/servlet/ServletHolder;

    move-object/from16 v21, v0

    .line 368
    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_3

    .line 370
    invoke-virtual/range {v21 .. v21}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/mortbay/jetty/Request;->setServletName(Ljava/lang/String;)V

    .line 371
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, v26

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilterChain(ILjava/lang/String;Lorg/mortbay/jetty/servlet/ServletHolder;)Ljavax/servlet/FilterChain;

    move-result-object v6

    goto/16 :goto_4

    .end local v17    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .restart local v9    # "i":I
    .restart local v18    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .restart local v20    # "s":I
    :cond_9
    move-object/from16 v17, v18

    .line 395
    .end local v9    # "i":I
    .end local v18    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .end local v20    # "s":I
    .restart local v17    # "request_event":Ljavax/servlet/ServletRequestEvent;
    :cond_a
    if-eqz v21, :cond_c

    .line 397
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 398
    if-eqz v6, :cond_b

    .line 399
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v6, v0, v1}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_4
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/mortbay/jetty/EofException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 510
    :goto_9
    if-eqz v19, :cond_d

    .line 512
    invoke-static/range {v19 .. v19}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v9

    .restart local v9    # "i":I
    move v10, v9

    .end local v9    # "i":I
    .restart local v10    # "i":I
    :goto_a
    add-int/lit8 v9, v10, -0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    if-lez v10, :cond_d

    .line 514
    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/servlet/ServletRequestListener;

    .line 515
    .restart local v11    # "listener":Ljavax/servlet/ServletRequestListener;
    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move v10, v9

    .line 516
    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_a

    .line 401
    .end local v10    # "i":I
    .end local v11    # "listener":Ljavax/servlet/ServletRequestListener;
    :cond_b
    :try_start_5
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->handle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_5
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/mortbay/jetty/EofException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    .line 411
    .end local v19    # "request_listeners":Ljava/lang/Object;
    :catch_1
    move-exception v7

    .line 413
    .local v7, "e":Lorg/mortbay/jetty/EofException;
    :goto_b
    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 404
    .end local v7    # "e":Lorg/mortbay/jetty/EofException;
    .restart local v19    # "request_listeners":Ljava/lang/Object;
    :cond_c
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/servlet/ServletHandler;->notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_7
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/mortbay/jetty/EofException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_9

    .line 415
    .end local v19    # "request_listeners":Ljava/lang/Object;
    :catch_2
    move-exception v7

    .line 417
    .local v7, "e":Lorg/mortbay/io/RuntimeIOException;
    :goto_c
    :try_start_8
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 519
    .end local v7    # "e":Lorg/mortbay/io/RuntimeIOException;
    .restart local v19    # "request_listeners":Ljava/lang/Object;
    :cond_d
    invoke-virtual {v4, v14}, Lorg/mortbay/jetty/Request;->setServletName(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v4, v13}, Lorg/mortbay/jetty/Request;->setRoleMap(Ljava/util/Map;)V

    .line 521
    const/16 v26, 0x4

    move/from16 v0, p4

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 523
    invoke-virtual {v4, v15}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v4, v12}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 419
    .end local v19    # "request_listeners":Ljava/lang/Object;
    :catch_3
    move-exception v7

    .line 421
    .local v7, "e":Ljava/lang/Exception;
    :goto_d
    const/16 v26, 0x1

    move/from16 v0, p4

    move/from16 v1, v26

    if-eq v0, v1, :cond_10

    .line 423
    :try_start_9
    instance-of v0, v7, Ljava/io/IOException;

    move/from16 v26, v0

    if-eqz v26, :cond_e

    .line 424
    check-cast v7, Ljava/io/IOException;

    .end local v7    # "e":Ljava/lang/Exception;
    throw v7

    .line 425
    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_e
    instance-of v0, v7, Ljava/lang/RuntimeException;

    move/from16 v26, v0

    if-eqz v26, :cond_f

    .line 426
    check-cast v7, Ljava/lang/RuntimeException;

    .end local v7    # "e":Ljava/lang/Exception;
    throw v7

    .line 427
    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_f
    instance-of v0, v7, Ljavax/servlet/ServletException;

    move/from16 v26, v0

    if-eqz v26, :cond_10

    .line 428
    check-cast v7, Ljavax/servlet/ServletException;

    .end local v7    # "e":Ljava/lang/Exception;
    throw v7

    .line 433
    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_10
    move-object/from16 v24, v7

    .line 434
    .local v24, "th":Ljava/lang/Throwable;
    move-object/from16 v0, v24

    instance-of v0, v0, Ljavax/servlet/UnavailableException;

    move/from16 v26, v0

    if-eqz v26, :cond_12

    .line 436
    invoke-static/range {v24 .. v24}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 447
    :cond_11
    :goto_e
    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/mortbay/jetty/RetryRequest;

    move/from16 v26, v0

    if-eqz v26, :cond_13

    .line 449
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 450
    check-cast v24, Lorg/mortbay/jetty/RetryRequest;

    .end local v24    # "th":Ljava/lang/Throwable;
    throw v24

    .line 438
    .restart local v24    # "th":Ljava/lang/Throwable;
    :cond_12
    move-object/from16 v0, v24

    instance-of v0, v0, Ljavax/servlet/ServletException;

    move/from16 v26, v0

    if-eqz v26, :cond_11

    .line 440
    invoke-static/range {v24 .. v24}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 441
    move-object/from16 v0, v24

    check-cast v0, Ljavax/servlet/ServletException;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 442
    .local v5, "cause":Ljava/lang/Throwable;
    move-object/from16 v0, v24

    if-eq v5, v0, :cond_11

    if-eqz v5, :cond_11

    .line 443
    move-object/from16 v24, v5

    goto :goto_e

    .line 452
    .end local v5    # "cause":Ljava/lang/Throwable;
    :cond_13
    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/mortbay/jetty/HttpException;

    move/from16 v26, v0

    if-eqz v26, :cond_14

    .line 453
    check-cast v24, Lorg/mortbay/jetty/HttpException;

    .end local v24    # "th":Ljava/lang/Throwable;
    throw v24

    .line 454
    .restart local v24    # "th":Ljava/lang/Throwable;
    :cond_14
    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/mortbay/io/RuntimeIOException;

    move/from16 v26, v0

    if-eqz v26, :cond_15

    .line 455
    check-cast v24, Lorg/mortbay/io/RuntimeIOException;

    .end local v24    # "th":Ljava/lang/Throwable;
    throw v24

    .line 456
    .restart local v24    # "th":Ljava/lang/Throwable;
    :cond_15
    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/mortbay/jetty/EofException;

    move/from16 v26, v0

    if-eqz v26, :cond_16

    .line 457
    check-cast v24, Lorg/mortbay/jetty/EofException;

    .end local v24    # "th":Ljava/lang/Throwable;
    throw v24

    .line 458
    .restart local v24    # "th":Ljava/lang/Throwable;
    :cond_16
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v26

    if-eqz v26, :cond_18

    .line 460
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 473
    :goto_f
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v26

    if-nez v26, :cond_1d

    .line 475
    const-string v26, "javax.servlet.error.exception_type"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 476
    const-string v26, "javax.servlet.error.exception"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 477
    move-object/from16 v0, v24

    instance-of v0, v0, Ljavax/servlet/UnavailableException;

    move/from16 v26, v0

    if-eqz v26, :cond_1c

    .line 479
    move-object/from16 v0, v24

    check-cast v0, Ljavax/servlet/UnavailableException;

    move-object/from16 v25, v0

    .line 480
    .local v25, "ue":Ljavax/servlet/UnavailableException;
    invoke-virtual/range {v25 .. v25}, Ljavax/servlet/UnavailableException;->isPermanent()Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 481
    const/16 v26, 0x194

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p3

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 510
    .end local v25    # "ue":Ljavax/servlet/UnavailableException;
    :cond_17
    :goto_10
    if-eqz v19, :cond_1e

    .line 512
    invoke-static/range {v19 .. v19}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v9

    .restart local v9    # "i":I
    move v10, v9

    .end local v9    # "i":I
    .restart local v10    # "i":I
    :goto_11
    add-int/lit8 v9, v10, -0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    if-lez v10, :cond_1e

    .line 514
    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/servlet/ServletRequestListener;

    .line 515
    .restart local v11    # "listener":Ljavax/servlet/ServletRequestListener;
    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move v10, v9

    .line 516
    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_11

    .line 463
    .end local v10    # "i":I
    .end local v11    # "listener":Ljavax/servlet/ServletRequestListener;
    :cond_18
    :try_start_a
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/io/IOException;

    move/from16 v26, v0

    if-nez v26, :cond_19

    move-object/from16 v0, v24

    instance-of v0, v0, Ljavax/servlet/UnavailableException;

    move/from16 v26, v0

    if-eqz v26, :cond_1a

    .line 465
    :cond_19
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, ": "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 469
    :cond_1a
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 483
    .restart local v25    # "ue":Ljavax/servlet/UnavailableException;
    :cond_1b
    const/16 v26, 0x1f7

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p3

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_10

    .line 486
    .end local v25    # "ue":Ljavax/servlet/UnavailableException;
    :cond_1c
    const/16 v26, 0x1f4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p3

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_10

    .line 489
    :cond_1d
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v26

    if-eqz v26, :cond_17

    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "Response already committed for handling "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_10

    .line 519
    :cond_1e
    invoke-virtual {v4, v14}, Lorg/mortbay/jetty/Request;->setServletName(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v4, v13}, Lorg/mortbay/jetty/Request;->setRoleMap(Ljava/util/Map;)V

    .line 521
    const/16 v26, 0x4

    move/from16 v0, p4

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 523
    invoke-virtual {v4, v15}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v4, v12}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v24    # "th":Ljava/lang/Throwable;
    :catch_4
    move-exception v7

    .line 493
    .local v7, "e":Ljava/lang/Error;
    :goto_12
    const/16 v26, 0x1

    move/from16 v0, p4

    move/from16 v1, v26

    if-eq v0, v1, :cond_1f

    .line 494
    :try_start_b
    throw v7

    .line 495
    :cond_1f
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "Error for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v0, v7}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v26

    if-eqz v26, :cond_20

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 499
    :cond_20
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v26

    if-nez v26, :cond_22

    .line 501
    const-string v26, "javax.servlet.error.exception_type"

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 502
    const-string v26, "javax.servlet.error.exception"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v7}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    const/16 v26, 0x1f4

    invoke-virtual {v7}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p3

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 510
    :cond_21
    :goto_13
    if-eqz v19, :cond_23

    .line 512
    invoke-static/range {v19 .. v19}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v9

    .restart local v9    # "i":I
    move v10, v9

    .end local v9    # "i":I
    .restart local v10    # "i":I
    :goto_14
    add-int/lit8 v9, v10, -0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    if-lez v10, :cond_23

    .line 514
    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/servlet/ServletRequestListener;

    .line 515
    .restart local v11    # "listener":Ljavax/servlet/ServletRequestListener;
    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move v10, v9

    .line 516
    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_14

    .line 506
    .end local v10    # "i":I
    .end local v11    # "listener":Ljavax/servlet/ServletRequestListener;
    :cond_22
    :try_start_c
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v26

    if-eqz v26, :cond_21

    const-string v26, "Response already committed for handling "

    move-object/from16 v0, v26

    invoke-static {v0, v7}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_13

    .line 519
    :cond_23
    invoke-virtual {v4, v14}, Lorg/mortbay/jetty/Request;->setServletName(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v4, v13}, Lorg/mortbay/jetty/Request;->setRoleMap(Ljava/util/Map;)V

    .line 521
    const/16 v26, 0x4

    move/from16 v0, p4

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 523
    invoke-virtual {v4, v15}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v4, v12}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 519
    .end local v7    # "e":Ljava/lang/Error;
    :cond_24
    invoke-virtual {v4, v14}, Lorg/mortbay/jetty/Request;->setServletName(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v4, v13}, Lorg/mortbay/jetty/Request;->setRoleMap(Ljava/util/Map;)V

    .line 521
    const/16 v27, 0x4

    move/from16 v0, p4

    move/from16 v1, v27

    if-eq v0, v1, :cond_25

    .line 523
    invoke-virtual {v4, v15}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v4, v12}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    :cond_25
    throw v26

    .line 510
    .end local v17    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .restart local v18    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .restart local v19    # "request_listeners":Ljava/lang/Object;
    :catchall_1
    move-exception v26

    move-object/from16 v17, v18

    .end local v18    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .restart local v17    # "request_event":Ljavax/servlet/ServletRequestEvent;
    goto/16 :goto_7

    .line 491
    .end local v17    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .restart local v18    # "request_event":Ljavax/servlet/ServletRequestEvent;
    :catch_5
    move-exception v7

    move-object/from16 v17, v18

    .end local v18    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .restart local v17    # "request_event":Ljavax/servlet/ServletRequestEvent;
    goto/16 :goto_12

    .line 419
    .end local v17    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .restart local v18    # "request_event":Ljavax/servlet/ServletRequestEvent;
    :catch_6
    move-exception v7

    move-object/from16 v17, v18

    .end local v18    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .restart local v17    # "request_event":Ljavax/servlet/ServletRequestEvent;
    goto/16 :goto_d

    .line 415
    .end local v17    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .restart local v18    # "request_event":Ljavax/servlet/ServletRequestEvent;
    :catch_7
    move-exception v7

    move-object/from16 v17, v18

    .end local v18    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .restart local v17    # "request_event":Ljavax/servlet/ServletRequestEvent;
    goto/16 :goto_c

    .line 411
    .end local v17    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .restart local v18    # "request_event":Ljavax/servlet/ServletRequestEvent;
    :catch_8
    move-exception v7

    move-object/from16 v17, v18

    .end local v18    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .restart local v17    # "request_event":Ljavax/servlet/ServletRequestEvent;
    goto/16 :goto_b

    .line 406
    .end local v17    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .restart local v18    # "request_event":Ljavax/servlet/ServletRequestEvent;
    :catch_9
    move-exception v7

    move-object/from16 v17, v18

    .end local v18    # "request_event":Ljavax/servlet/ServletRequestEvent;
    .restart local v17    # "request_event":Ljavax/servlet/ServletRequestEvent;
    goto/16 :goto_6
.end method

.method public initialize()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 707
    new-instance v3, Lorg/mortbay/util/MultiException;

    invoke-direct {v3}, Lorg/mortbay/util/MultiException;-><init>()V

    .line 710
    .local v3, "mx":Lorg/mortbay/util/MultiException;
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    if-eqz v5, :cond_0

    .line 712
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 713
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/mortbay/jetty/servlet/FilterHolder;->start()V

    .line 712
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 716
    .end local v2    # "i":I
    :cond_0
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eqz v5, :cond_5

    .line 719
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/mortbay/jetty/servlet/ServletHolder;

    move-object v4, v5

    check-cast v4, [Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 720
    .local v4, "servlets":[Lorg/mortbay/jetty/servlet/ServletHolder;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 721
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_4

    .line 725
    :try_start_0
    aget-object v5, v4, v2

    invoke-virtual {v5}, Lorg/mortbay/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    aget-object v5, v4, v2

    invoke-virtual {v5}, Lorg/mortbay/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 727
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/mortbay/jetty/servlet/PathMap;

    aget-object v6, v4, v2

    invoke-virtual {v6}, Lorg/mortbay/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/mortbay/jetty/servlet/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 728
    .local v1, "forced_holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 730
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "No forced path servlet for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v7}, Lorg/mortbay/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    .line 721
    .end local v1    # "forced_holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 733
    .restart local v1    # "forced_holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    :cond_2
    aget-object v5, v4, v2

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/mortbay/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 736
    .end local v1    # "forced_holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    :cond_3
    aget-object v5, v4, v2

    invoke-virtual {v5}, Lorg/mortbay/jetty/servlet/ServletHolder;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 738
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "EXCEPTION "

    invoke-static {v5, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 741
    invoke-virtual {v3, v0}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 744
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v3}, Lorg/mortbay/util/MultiException;->ifExceptionThrow()V

    .line 746
    .end local v2    # "i":I
    .end local v4    # "servlets":[Lorg/mortbay/jetty/servlet/ServletHolder;
    :cond_5
    return-void
.end method

.method public isAvailable()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 668
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->isStarted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 677
    :cond_0
    :goto_0
    return v3

    .line 670
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 671
    .local v1, "holders":[Lorg/mortbay/jetty/servlet/ServletHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 673
    aget-object v0, v1, v2

    .line 674
    .local v0, "holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 671
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 677
    .end local v0    # "holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isFilterChainsCached()Z
    .locals 1

    .prologue
    .line 754
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    return v0
.end method

.method public isInitializeAtStart()Z
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x0

    return v0
.end method

.method public isStartWithUnavailable()Z
    .locals 1

    .prologue
    .line 695
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_startWithUnavailable:Z

    return v0
.end method

.method public matchesPath(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pathInContext"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/mortbay/jetty/servlet/PathMap;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->containsMatch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public newFilterHolder()Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 1

    .prologue
    .line 875
    new-instance v0, Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/FilterHolder;-><init>()V

    return-object v0
.end method

.method public newFilterHolder(Ljava/lang/Class;)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 1
    .param p1, "filter"    # Ljava/lang/Class;

    .prologue
    .line 866
    new-instance v0, Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-direct {v0, p1}, Lorg/mortbay/jetty/servlet/FilterHolder;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public newServletHolder()Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 1

    .prologue
    .line 763
    new-instance v0, Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;-><init>()V

    return-object v0
.end method

.method public newServletHolder(Ljava/lang/Class;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 1
    .param p1, "servlet"    # Ljava/lang/Class;

    .prologue
    .line 769
    new-instance v0, Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-direct {v0, p1}, Lorg/mortbay/jetty/servlet/ServletHolder;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1118
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Not Found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1119
    :cond_0
    const/16 v0, 0x194

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 1120
    return-void
.end method

.method public setFilterChainsCached(Z)V
    .locals 0
    .param p1, "filterChainsCached"    # Z

    .prologue
    .line 1128
    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    .line 1129
    return-void
.end method

.method public setFilterMappings([Lorg/mortbay/jetty/servlet/FilterMapping;)V
    .locals 6
    .param p1, "filterMappings"    # [Lorg/mortbay/jetty/servlet/FilterMapping;

    .prologue
    .line 1137
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    const-string v4, "filterMapping"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1139
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    .line 1140
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->updateMappings()V

    .line 1141
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->invalidateChainsCache()V

    .line 1142
    return-void
.end method

.method public declared-synchronized setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V
    .locals 6
    .param p1, "holders"    # [Lorg/mortbay/jetty/servlet/FilterHolder;

    .prologue
    .line 1147
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1148
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    const-string v4, "filter"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1149
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    .line 1150
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->updateNameMappings()V

    .line 1151
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->invalidateChainsCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    monitor-exit p0

    return-void

    .line 1147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInitializeAtStart(Z)V
    .locals 0
    .param p1, "initializeAtStart"    # Z

    .prologue
    .line 660
    return-void
.end method

.method public setMaxFilterChainsCacheSize(I)V
    .locals 2
    .param p1, "maxFilterChainsCacheSize"    # I

    .prologue
    .line 1310
    iput p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    .line 1311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1313
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    if-eqz v1, :cond_0

    .line 1315
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->setMaxEntries(I)V

    .line 1311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1318
    :cond_1
    return-void
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 12
    .param p1, "server"    # Lorg/mortbay/jetty/Server;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 118
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    const-string v4, "filter"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 121
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    const-string v4, "filterMapping"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 122
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    const-string v4, "servlet"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 123
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    const-string v4, "servletMapping"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 125
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 127
    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    const-string v10, "filter"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 128
    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    const-string v10, "filterMapping"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 129
    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    const-string v10, "servlet"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 130
    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    const-string v10, "servletMapping"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 132
    :cond_1
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/AbstractHandler;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 134
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->invalidateChainsCache()V

    .line 135
    return-void
.end method

.method public setServletMappings([Lorg/mortbay/jetty/servlet/ServletMapping;)V
    .locals 6
    .param p1, "servletMappings"    # [Lorg/mortbay/jetty/servlet/ServletMapping;

    .prologue
    .line 1160
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1161
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    const-string v4, "servletMapping"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1162
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    .line 1163
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->updateMappings()V

    .line 1164
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->invalidateChainsCache()V

    .line 1165
    return-void
.end method

.method public declared-synchronized setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V
    .locals 6
    .param p1, "holders"    # [Lorg/mortbay/jetty/servlet/ServletHolder;

    .prologue
    .line 1173
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    const-string v4, "servlet"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1175
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 1176
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->updateNameMappings()V

    .line 1177
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->invalidateChainsCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1178
    monitor-exit p0

    return-void

    .line 1173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setStartWithUnavailable(Z)V
    .locals 0
    .param p1, "start"    # Z

    .prologue
    .line 686
    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_startWithUnavailable:Z

    .line 687
    return-void
.end method

.method protected declared-synchronized updateMappings()V
    .locals 11

    .prologue
    .line 1033
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    if-nez v8, :cond_4

    .line 1035
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    .line 1036
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    .line 1064
    :cond_0
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    if-nez v8, :cond_9

    .line 1066
    :cond_1
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/mortbay/jetty/servlet/PathMap;

    .line 1092
    :goto_0
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1094
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "filterNameMap="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1095
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "pathFilters="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1096
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "servletFilterMap="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1097
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "servletPathMap="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/mortbay/jetty/servlet/PathMap;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1098
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "servletNameMap="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->isStarted()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1104
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->initialize()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1110
    :cond_3
    monitor-exit p0

    return-void

    .line 1040
    :cond_4
    :try_start_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    .line 1041
    new-instance v8, Lorg/mortbay/util/MultiMap;

    invoke-direct {v8}, Lorg/mortbay/util/MultiMap;-><init>()V

    iput-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    .line 1042
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    array-length v8, v8

    if-ge v2, v8, :cond_0

    .line 1044
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lorg/mortbay/jetty/servlet/FilterMapping;->getFilterName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/servlet/FilterHolder;

    .line 1045
    .local v1, "filter_holder":Lorg/mortbay/jetty/servlet/FilterHolder;
    if-nez v1, :cond_5

    .line 1046
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "No filter named "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lorg/mortbay/jetty/servlet/FilterMapping;->getFilterName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1033
    .end local v1    # "filter_holder":Lorg/mortbay/jetty/servlet/FilterHolder;
    .end local v2    # "i":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1047
    .restart local v1    # "filter_holder":Lorg/mortbay/jetty/servlet/FilterHolder;
    .restart local v2    # "i":I
    :cond_5
    :try_start_3
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v8, v8, v2

    invoke-virtual {v8, v1}, Lorg/mortbay/jetty/servlet/FilterMapping;->setFilterHolder(Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 1048
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lorg/mortbay/jetty/servlet/FilterMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1049
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    :cond_6
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lorg/mortbay/jetty/servlet/FilterMapping;->getServletNames()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 1053
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lorg/mortbay/jetty/servlet/FilterMapping;->getServletNames()[Ljava/lang/String;

    move-result-object v4

    .line 1054
    .local v4, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v8, v4

    if-ge v3, v8, :cond_8

    .line 1056
    aget-object v8, v4, v3

    if-eqz v8, :cond_7

    .line 1057
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    aget-object v9, v4, v3

    iget-object v10, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v10, v10, v2

    invoke-virtual {v8, v9, v10}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1054
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1042
    .end local v3    # "j":I
    .end local v4    # "names":[Ljava/lang/String;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1070
    .end local v1    # "filter_holder":Lorg/mortbay/jetty/servlet/FilterHolder;
    .end local v2    # "i":I
    :cond_9
    new-instance v6, Lorg/mortbay/jetty/servlet/PathMap;

    invoke-direct {v6}, Lorg/mortbay/jetty/servlet/PathMap;-><init>()V

    .line 1073
    .local v6, "pm":Lorg/mortbay/jetty/servlet/PathMap;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    array-length v8, v8

    if-ge v2, v8, :cond_d

    .line 1075
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lorg/mortbay/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 1076
    .local v7, "servlet_holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    if-nez v7, :cond_a

    .line 1077
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "No such servlet: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lorg/mortbay/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1078
    :cond_a
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lorg/mortbay/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 1080
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lorg/mortbay/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v5

    .line 1081
    .local v5, "pathSpecs":[Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_4
    array-length v8, v5

    if-ge v3, v8, :cond_c

    .line 1082
    aget-object v8, v5, v3

    if-eqz v8, :cond_b

    .line 1083
    aget-object v8, v5, v3

    invoke-virtual {v6, v8, v7}, Lorg/mortbay/jetty/servlet/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1073
    .end local v3    # "j":I
    .end local v5    # "pathSpecs":[Ljava/lang/String;
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1087
    .end local v7    # "servlet_holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    :cond_d
    iput-object v6, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/mortbay/jetty/servlet/PathMap;

    goto/16 :goto_0

    .line 1106
    .end local v2    # "i":I
    .end local v6    # "pm":Lorg/mortbay/jetty/servlet/PathMap;
    :catch_0
    move-exception v0

    .line 1108
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected declared-synchronized updateNameMappings()V
    .locals 4

    .prologue
    .line 1006
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1007
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    if-eqz v1, :cond_0

    .line 1009
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1011
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lorg/mortbay/jetty/servlet/FilterHolder;->setServletHandler(Lorg/mortbay/jetty/servlet/ServletHandler;)V

    .line 1009
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1017
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1018
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eqz v1, :cond_1

    .line 1021
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1023
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->setServletHandler(Lorg/mortbay/jetty/servlet/ServletHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1027
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    return-void

    .line 1006
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
