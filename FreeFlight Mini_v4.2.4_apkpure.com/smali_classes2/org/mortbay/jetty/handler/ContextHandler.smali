.class public Lorg/mortbay/jetty/handler/ContextHandler;
.super Lorg/mortbay/jetty/handler/HandlerWrapper;
.source "ContextHandler.java"

# interfaces
.implements Lorg/mortbay/util/Attributes;
.implements Lorg/mortbay/jetty/Server$Graceful;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    }
.end annotation


# static fields
.field public static final MANAGED_ATTRIBUTES:Ljava/lang/String; = "org.mortbay.jetty.servlet.ManagedAttributes"

.field private static __context:Ljava/lang/ThreadLocal;

.field static class$java$util$EventListener:Ljava/lang/Class;

.field static class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

.field static class$org$mortbay$jetty$handler$ContextHandlerCollection:Ljava/lang/Class;


# instance fields
.field private _allowNullPathInfo:Z

.field private _attributes:Lorg/mortbay/util/AttributesMap;

.field private _baseResource:Lorg/mortbay/resource/Resource;

.field private _classLoader:Ljava/lang/ClassLoader;

.field private _compactPath:Z

.field private _connectors:Ljava/util/Set;

.field private _contextAttributeListeners:Ljava/lang/Object;

.field private _contextAttributes:Lorg/mortbay/util/AttributesMap;

.field private _contextListeners:Ljava/lang/Object;

.field private _contextPath:Ljava/lang/String;

.field private _displayName:Ljava/lang/String;

.field private _errorHandler:Lorg/mortbay/jetty/handler/ErrorHandler;

.field private _eventListeners:[Ljava/util/EventListener;

.field private _initParams:Ljava/util/Map;

.field private _localeEncodingMap:Ljava/util/Map;

.field private _logger:Lorg/mortbay/log/Logger;

.field private _managedAttributes:Ljava/util/Set;

.field private _maxFormContentSize:I

.field private _mimeTypes:Lorg/mortbay/jetty/MimeTypes;

.field private _requestAttributeListeners:Ljava/lang/Object;

.field private _requestListeners:Ljava/lang/Object;

.field protected _scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

.field private _shutdown:Z

.field private _vhosts:[Ljava/lang/String;

.field private _welcomeFiles:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    .line 107
    const-string v0, "/"

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    .line 121
    const-string v0, "org.mortbay.jetty.Request.maxFormContentSize"

    const v1, 0x30d40

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_maxFormContentSize:I

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_compactPath:Z

    .line 137
    new-instance v0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;-><init>(Lorg/mortbay/jetty/handler/ContextHandler;)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .line 138
    new-instance v0, Lorg/mortbay/util/AttributesMap;

    invoke-direct {v0}, Lorg/mortbay/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_attributes:Lorg/mortbay/util/AttributesMap;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_initParams:Ljava/util/Map;

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "contextPath"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/ContextHandler;-><init>()V

    .line 161
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;)V
    .locals 0
    .param p1, "parent"    # Lorg/mortbay/jetty/HandlerContainer;
    .param p2, "contextPath"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/ContextHandler;-><init>()V

    .line 171
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 172
    invoke-interface {p1, p0}, Lorg/mortbay/jetty/HandlerContainer;->addHandler(Lorg/mortbay/jetty/Handler;)V

    .line 173
    return-void
.end method

.method protected constructor <init>(Lorg/mortbay/jetty/handler/ContextHandler$SContext;)V
    .locals 2
    .param p1, "context"    # Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .prologue
    .line 148
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    .line 107
    const-string v0, "/"

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    .line 121
    const-string v0, "org.mortbay.jetty.Request.maxFormContentSize"

    const v1, 0x30d40

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_maxFormContentSize:I

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_compactPath:Z

    .line 149
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .line 150
    new-instance v0, Lorg/mortbay/util/AttributesMap;

    invoke-direct {v0}, Lorg/mortbay/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_attributes:Lorg/mortbay/util/AttributesMap;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_initParams:Ljava/util/Map;

    .line 152
    return-void
.end method

.method static access$000(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/jetty/MimeTypes;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/handler/ContextHandler;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    return-object v0
.end method

.method static access$100(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/log/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/handler/ContextHandler;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_logger:Lorg/mortbay/log/Logger;

    return-object v0
.end method

.method static access$200(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/handler/ContextHandler;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextAttributes:Lorg/mortbay/util/AttributesMap;

    return-object v0
.end method

.method static access$300(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/handler/ContextHandler;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_attributes:Lorg/mortbay/util/AttributesMap;

    return-object v0
.end method

.method static access$400(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/jetty/handler/ContextHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lorg/mortbay/jetty/handler/ContextHandler;->setManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static access$500(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/handler/ContextHandler;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    return-object v0
.end method

.method static access$600(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/handler/ContextHandler;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 459
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

.method public static getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    .locals 2

    .prologue
    .line 98
    sget-object v1, Lorg/mortbay/jetty/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .line 99
    .local v0, "context":Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    return-object v0
.end method

.method private normalizeHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 1582
    if-nez p1, :cond_1

    .line 1583
    const/4 p1, 0x0

    .line 1588
    .end local p1    # "host":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1585
    .restart local p1    # "host":Ljava/lang/String;
    :cond_1
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1586
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private setManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 887
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_managedAttributes:Ljava/util/Set;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_managedAttributes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 889
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v1, p1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 890
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 891
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mortbay/component/Container;->removeBean(Ljava/lang/Object;)V

    .line 892
    :cond_0
    if-eqz p2, :cond_1

    .line 893
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/mortbay/component/Container;->addBean(Ljava/lang/Object;)V

    .line 895
    .end local v0    # "o":Ljava/lang/Object;
    :cond_1
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/util/EventListener;)V
    .locals 2
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 459
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getEventListeners()[Ljava/util/EventListener;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/handler/ContextHandler;->class$java$util$EventListener:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.EventListener"

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/handler/ContextHandler;->class$java$util$EventListener:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    check-cast v0, [Ljava/util/EventListener;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/ContextHandler;->setEventListeners([Ljava/util/EventListener;)V

    .line 460
    return-void

    .line 459
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/handler/ContextHandler;->class$java$util$EventListener:Ljava/lang/Class;

    goto :goto_0
.end method

.method public addLocaleEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 1109
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    .line 1111
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    return-void
.end method

.method public clearAttributes()V
    .locals 3

    .prologue
    .line 875
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_attributes:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {v2}, Lorg/mortbay/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 876
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 878
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 879
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/mortbay/jetty/handler/ContextHandler;->setManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 881
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_attributes:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {v2}, Lorg/mortbay/util/AttributesMap;->clearAttributes()V

    .line 882
    return-void
.end method

.method protected doStart()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 488
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 489
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Null contextPath"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 491
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v4}, Lorg/mortbay/log/Log;->getLogger(Ljava/lang/String;)Lorg/mortbay/log/Logger;

    move-result-object v4

    iput-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_logger:Lorg/mortbay/log/Logger;

    .line 492
    const/4 v2, 0x0

    .line 493
    .local v2, "old_classloader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 494
    .local v1, "current_thread":Ljava/lang/Thread;
    const/4 v3, 0x0

    .line 496
    .local v3, "old_context":Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    new-instance v4, Lorg/mortbay/util/AttributesMap;

    invoke-direct {v4}, Lorg/mortbay/util/AttributesMap;-><init>()V

    iput-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextAttributes:Lorg/mortbay/util/AttributesMap;

    .line 501
    :try_start_0
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_1

    .line 503
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 504
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 505
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 509
    :cond_1
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    if-nez v4, :cond_2

    .line 510
    new-instance v4, Lorg/mortbay/jetty/MimeTypes;

    invoke-direct {v4}, Lorg/mortbay/jetty/MimeTypes;-><init>()V

    iput-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    .line 512
    :cond_2
    sget-object v4, Lorg/mortbay/jetty/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-object v3, v0

    .line 513
    sget-object v4, Lorg/mortbay/jetty/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    iget-object v5, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 515
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_errorHandler:Lorg/mortbay/jetty/handler/ErrorHandler;

    if-nez v4, :cond_3

    .line 516
    new-instance v4, Lorg/mortbay/jetty/handler/ErrorHandler;

    invoke-direct {v4}, Lorg/mortbay/jetty/handler/ErrorHandler;-><init>()V

    invoke-virtual {p0, v4}, Lorg/mortbay/jetty/handler/ContextHandler;->setErrorHandler(Lorg/mortbay/jetty/handler/ErrorHandler;)V

    .line 518
    :cond_3
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->startContext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    sget-object v4, Lorg/mortbay/jetty/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 527
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_4

    .line 529
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 532
    :cond_4
    return-void

    .line 491
    .end local v1    # "current_thread":Ljava/lang/Thread;
    .end local v2    # "old_classloader":Ljava/lang/ClassLoader;
    .end local v3    # "old_context":Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    :cond_5
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 524
    .restart local v1    # "current_thread":Ljava/lang/Thread;
    .restart local v2    # "old_classloader":Ljava/lang/ClassLoader;
    .restart local v3    # "old_context":Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    :catchall_0
    move-exception v4

    sget-object v5, Lorg/mortbay/jetty/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 527
    iget-object v5, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v5, :cond_6

    .line 529
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_6
    throw v4
.end method

.method protected doStop()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 577
    const/4 v6, 0x0

    .line 578
    .local v6, "old_classloader":Ljava/lang/ClassLoader;
    const/4 v0, 0x0

    .line 580
    .local v0, "current_thread":Ljava/lang/Thread;
    sget-object v8, Lorg/mortbay/jetty/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .line 581
    .local v7, "old_context":Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    sget-object v8, Lorg/mortbay/jetty/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    iget-object v9, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 585
    :try_start_0
    iget-object v8, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v8, :cond_0

    .line 587
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 588
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 589
    iget-object v8, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v8}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 592
    :cond_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStop()V

    .line 595
    iget-object v8, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    if-eqz v8, :cond_1

    .line 597
    new-instance v2, Ljavax/servlet/ServletContextEvent;

    iget-object v8, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-direct {v2, v8}, Ljavax/servlet/ServletContextEvent;-><init>(Ljavax/servlet/ServletContext;)V

    .line 598
    .local v2, "event":Ljavax/servlet/ServletContextEvent;
    iget-object v8, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v8}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    .local v3, "i":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_1

    .line 600
    iget-object v8, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v8, v3}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/servlet/ServletContextListener;

    invoke-interface {v8, v2}, Ljavax/servlet/ServletContextListener;->contextDestroyed(Ljavax/servlet/ServletContextEvent;)V

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 604
    .end local v2    # "event":Ljavax/servlet/ServletContextEvent;
    .end local v4    # "i":I
    :cond_1
    iget-object v8, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_errorHandler:Lorg/mortbay/jetty/handler/ErrorHandler;

    if-eqz v8, :cond_2

    .line 605
    iget-object v8, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_errorHandler:Lorg/mortbay/jetty/handler/ErrorHandler;

    invoke-virtual {v8}, Lorg/mortbay/jetty/handler/ErrorHandler;->stop()V

    .line 607
    :cond_2
    iget-object v8, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v8}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 608
    .local v1, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 610
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 611
    .local v5, "name":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lorg/mortbay/jetty/handler/ContextHandler;->setManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 616
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v5    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v8

    sget-object v9, Lorg/mortbay/jetty/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v9, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 618
    iget-object v9, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v9, :cond_3

    .line 619
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_3
    throw v8

    .line 616
    .restart local v1    # "e":Ljava/util/Enumeration;
    :cond_4
    sget-object v8, Lorg/mortbay/jetty/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v8, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 618
    iget-object v8, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v8, :cond_5

    .line 619
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 622
    :cond_5
    iget-object v8, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextAttributes:Lorg/mortbay/util/AttributesMap;

    if-eqz v8, :cond_6

    .line 623
    iget-object v8, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextAttributes:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {v8}, Lorg/mortbay/util/AttributesMap;->clearAttributes()V

    .line 624
    :cond_6
    iput-object v10, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextAttributes:Lorg/mortbay/util/AttributesMap;

    .line 625
    return-void
.end method

.method public getAllowNullPathInfo()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_allowNullPathInfo:Z

    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_attributes:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/mortbay/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_attributes:Lorg/mortbay/util/AttributesMap;

    invoke-static {v0}, Lorg/mortbay/util/AttributesMap;->getAttributeNamesCopy(Lorg/mortbay/util/Attributes;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lorg/mortbay/util/Attributes;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_attributes:Lorg/mortbay/util/AttributesMap;

    return-object v0
.end method

.method public getBaseResource()Lorg/mortbay/resource/Resource;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    if-nez v0, :cond_0

    .line 953
    const/4 v0, 0x0

    .line 954
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getClassPath()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 349
    iget-object v8, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    instance-of v8, v8, Ljava/net/URLClassLoader;

    if-nez v8, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-object v7

    .line 351
    :cond_1
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    check-cast v4, Ljava/net/URLClassLoader;

    .line 352
    .local v4, "loader":Ljava/net/URLClassLoader;
    invoke-virtual {v4}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v6

    .line 353
    .local v6, "urls":[Ljava/net/URL;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 354
    .local v0, "classpath":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_4

    .line 358
    :try_start_0
    aget-object v8, v6, v3

    invoke-static {v8}, Lorg/mortbay/resource/Resource;->newResource(Ljava/net/URL;)Lorg/mortbay/resource/Resource;

    move-result-object v5

    .line 359
    .local v5, "resource":Lorg/mortbay/resource/Resource;
    invoke-virtual {v5}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    .line 360
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 363
    sget-char v8, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 364
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "resource":Lorg/mortbay/resource/Resource;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 367
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 372
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 374
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public getConnectorNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_connectors:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 285
    :cond_0
    const/4 v0, 0x0

    .line 287
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_connectors:Ljava/util/Set;

    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_errorHandler:Lorg/mortbay/jetty/handler/ErrorHandler;

    return-object v0
.end method

.method public getEventListeners()[Ljava/util/EventListener;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_eventListeners:[Ljava/util/EventListener;

    return-object v0
.end method

.method public getHosts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getConnectorNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 392
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_initParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_initParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getInitParams()Ljava/util/Map;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_initParams:Ljava/util/Map;

    return-object v0
.end method

.method public getLocaleEncoding(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1126
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 1127
    const/4 v0, 0x0

    .line 1131
    :cond_0
    :goto_0
    return-object v0

    .line 1128
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1129
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1130
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "encoding":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "encoding":Ljava/lang/String;
    goto :goto_0
.end method

.method public getMaxFormContentSize()I
    .locals 1

    .prologue
    .line 1057
    iget v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_maxFormContentSize:I

    return v0
.end method

.method public getMimeTypes()Lorg/mortbay/jetty/MimeTypes;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1139
    if-eqz p1, :cond_0

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1140
    :cond_0
    new-instance v2, Ljava/net/MalformedURLException;

    invoke-direct {v2, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1142
    :cond_1
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    if-nez v2, :cond_2

    .line 1156
    :goto_0
    return-object v1

    .line 1147
    :cond_2
    :try_start_0
    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1148
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v2, p1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1149
    .local v1, "resource":Lorg/mortbay/resource/Resource;
    goto :goto_0

    .line 1151
    .end local v1    # "resource":Lorg/mortbay/resource/Resource;
    :catch_0
    move-exception v0

    .line 1153
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getResourceBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    if-nez v0, :cond_0

    .line 964
    const/4 v0, 0x0

    .line 965
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResourcePaths(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1167
    :try_start_0
    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1168
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v3

    .line 1170
    .local v3, "resource":Lorg/mortbay/resource/Resource;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1172
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1173
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1175
    :cond_0
    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v2

    .line 1176
    .local v2, "l":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1178
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1179
    .local v4, "set":Ljava/util/HashSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_2

    .line 1180
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1185
    .end local v1    # "i":I
    .end local v2    # "l":[Ljava/lang/String;
    .end local v3    # "resource":Lorg/mortbay/resource/Resource;
    .end local v4    # "set":Ljava/util/HashSet;
    :catch_0
    move-exception v0

    .line 1187
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 1189
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_2
    return-object v4
.end method

.method public getServletContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    return-object v0
.end method

.method public getVirtualHosts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    return-object v0
.end method

.method public getWelcomeFiles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_welcomeFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 26
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p3, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p4, "dispatch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 634
    const/16 v19, 0x0

    .line 635
    .local v19, "new_context":Z
    const/16 v21, 0x0

    .line 636
    .local v21, "old_context":Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    const/16 v22, 0x0

    .line 637
    .local v22, "old_context_path":Ljava/lang/String;
    const/16 v24, 0x0

    .line 638
    .local v24, "old_servlet_path":Ljava/lang/String;
    const/16 v23, 0x0

    .line 639
    .local v23, "old_path_info":Ljava/lang/String;
    const/16 v20, 0x0

    .line 640
    .local v20, "old_classloader":Ljava/lang/ClassLoader;
    const/4 v12, 0x0

    .line 642
    .local v12, "current_thread":Ljava/lang/Thread;
    move-object/from16 v0, p2

    instance-of v5, v0, Lorg/mortbay/jetty/Request;

    if-eqz v5, :cond_1

    move-object/from16 v5, p2

    check-cast v5, Lorg/mortbay/jetty/Request;

    move-object v10, v5

    .line 643
    .local v10, "base_request":Lorg/mortbay/jetty/Request;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/handler/ContextHandler;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_shutdown:Z

    if-nez v5, :cond_0

    const/4 v5, 0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_2

    invoke-virtual {v10}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 804
    :cond_0
    :goto_1
    return-void

    .line 642
    .end local v10    # "base_request":Lorg/mortbay/jetty/Request;
    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v10

    goto :goto_0

    .line 646
    .restart local v10    # "base_request":Lorg/mortbay/jetty/Request;
    :cond_2
    invoke-virtual {v10}, Lorg/mortbay/jetty/Request;->getContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v21

    .line 649
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-object/from16 v0, v21

    if-eq v0, v5, :cond_b

    .line 651
    const/16 v19, 0x1

    .line 654
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_6

    .line 656
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/mortbay/jetty/handler/ContextHandler;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 658
    .local v7, "vhost":Ljava/lang/String;
    const/16 v18, 0x0

    .line 661
    .local v18, "match":Z
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    array-length v5, v5

    move/from16 v0, v16

    if-ge v0, v5, :cond_5

    .line 663
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    aget-object v4, v5, v16

    .line 664
    .local v4, "contextVhost":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 661
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 665
    :cond_3
    const-string v5, "*."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 667
    const/4 v5, 0x1

    const/4 v6, 0x2

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v18

    goto :goto_3

    .line 669
    :cond_4
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    goto :goto_3

    .line 671
    .end local v4    # "contextVhost":Ljava/lang/String;
    :cond_5
    if-eqz v18, :cond_0

    .line 676
    .end local v7    # "vhost":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v18    # "match":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_connectors:Ljava/util/Set;

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 678
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v5

    invoke-interface {v5}, Lorg/mortbay/jetty/Connector;->getName()Ljava/lang/String;

    move-result-object v11

    .line 679
    .local v11, "connector":Ljava/lang/String;
    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v5, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 684
    .end local v11    # "connector":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_b

    .line 686
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_compactPath:Z

    if-eqz v5, :cond_8

    .line 687
    invoke-static/range {p1 .. p1}, Lorg/mortbay/util/URIUtil;->compactPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 689
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 691
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_allowNullPathInfo:Z

    if-nez v5, :cond_a

    const-string v5, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 693
    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 694
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 695
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v6

    const-string v8, "/"

    invoke-static {v6, v8}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 697
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-static {v5, v6}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 700
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_b

    .line 702
    const-string p1, "/"

    .line 703
    const-string v5, "org.mortbay.jetty.nullPathInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v5, v1}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 721
    :cond_b
    :goto_4
    :try_start_0
    invoke-virtual {v10}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v22

    .line 722
    invoke-virtual {v10}, Lorg/mortbay/jetty/Request;->getServletPath()Ljava/lang/String;

    move-result-object v24

    .line 723
    invoke-virtual {v10}, Lorg/mortbay/jetty/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v23

    .line 726
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v10, v5}, Lorg/mortbay/jetty/Request;->setContext(Lorg/mortbay/jetty/handler/ContextHandler$SContext;)V

    .line 727
    const/4 v5, 0x4

    move/from16 v0, p4

    if-eq v0, v5, :cond_c

    const-string v5, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 729
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    .line 730
    const-string v5, ""

    invoke-virtual {v10, v5}, Lorg/mortbay/jetty/Request;->setContextPath(Ljava/lang/String;)V

    .line 733
    :goto_5
    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 734
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    .line 737
    :cond_c
    const/4 v14, 0x0

    .line 738
    .local v14, "event":Ljavax/servlet/ServletRequestEvent;
    if-eqz v19, :cond_13

    .line 741
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v5, :cond_d

    .line 743
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    .line 744
    invoke-virtual {v12}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v20

    .line 745
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v12, v5}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 749
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-virtual {v10, v5}, Lorg/mortbay/jetty/Request;->setRequestListeners(Ljava/lang/Object;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v5, :cond_13

    .line 752
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v5}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v25

    .line 753
    .local v25, "s":I
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_6
    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_13

    .line 754
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    move/from16 v0, v16

    invoke-static {v5, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/EventListener;

    invoke-virtual {v10, v5}, Lorg/mortbay/jetty/Request;->addEventListener(Ljava/util/EventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 706
    .end local v14    # "event":Ljavax/servlet/ServletRequestEvent;
    .end local v16    # "i":I
    .end local v25    # "s":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_0

    .line 708
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_b

    .line 709
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 732
    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v10, v5}, Lorg/mortbay/jetty/Request;->setContextPath(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    .line 789
    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-object/from16 v0, v21

    if-eq v0, v6, :cond_12

    .line 792
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v6, :cond_11

    .line 794
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 798
    :cond_11
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/mortbay/jetty/Request;->setContext(Lorg/mortbay/jetty/handler/ContextHandler$SContext;)V

    .line 799
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/mortbay/jetty/Request;->setContextPath(Ljava/lang/String;)V

    .line 800
    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 801
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    :cond_12
    throw v5

    .line 761
    .restart local v14    # "event":Ljavax/servlet/ServletRequestEvent;
    :cond_13
    const/4 v5, 0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_14

    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lorg/mortbay/jetty/handler/ContextHandler;->isProtectedTarget(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 762
    new-instance v5, Lorg/mortbay/jetty/HttpException;

    const/16 v6, 0x194

    invoke-direct {v5, v6}, Lorg/mortbay/jetty/HttpException;-><init>(I)V

    throw v5
    :try_end_2
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 768
    :catch_0
    move-exception v13

    .line 770
    .local v13, "e":Lorg/mortbay/jetty/HttpException;
    :try_start_3
    invoke-static {v13}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 771
    invoke-virtual {v13}, Lorg/mortbay/jetty/HttpException;->getStatus()I

    move-result v5

    invoke-virtual {v13}, Lorg/mortbay/jetty/HttpException;->getReason()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-interface {v0, v5, v6}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 776
    if-eqz v19, :cond_17

    .line 778
    :try_start_4
    invoke-virtual {v10}, Lorg/mortbay/jetty/Request;->takeRequestListeners()Ljava/lang/Object;

    .line 779
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v5, :cond_17

    .line 781
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v5}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v16

    .restart local v16    # "i":I
    move/from16 v17, v16

    .end local v16    # "i":I
    .local v17, "i":I
    :goto_7
    add-int/lit8 v16, v17, -0x1

    .end local v17    # "i":I
    .restart local v16    # "i":I
    if-lez v17, :cond_17

    .line 782
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    move/from16 v0, v16

    invoke-static {v5, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/EventListener;

    invoke-virtual {v10, v5}, Lorg/mortbay/jetty/Request;->removeEventListener(Ljava/util/EventListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v17, v16

    .end local v16    # "i":I
    .restart local v17    # "i":I
    goto :goto_7

    .line 764
    .end local v13    # "e":Lorg/mortbay/jetty/HttpException;
    .end local v17    # "i":I
    :cond_14
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v15

    .line 765
    .local v15, "handler":Lorg/mortbay/jetty/Handler;
    if-eqz v15, :cond_15

    .line 766
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v15, v0, v1, v2, v3}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_5
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 776
    :cond_15
    if-eqz v19, :cond_17

    .line 778
    :try_start_6
    invoke-virtual {v10}, Lorg/mortbay/jetty/Request;->takeRequestListeners()Ljava/lang/Object;

    .line 779
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v5, :cond_17

    .line 781
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v5}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v16

    .restart local v16    # "i":I
    move/from16 v17, v16

    .end local v16    # "i":I
    .restart local v17    # "i":I
    :goto_8
    add-int/lit8 v16, v17, -0x1

    .end local v17    # "i":I
    .restart local v16    # "i":I
    if-lez v17, :cond_17

    .line 782
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    move/from16 v0, v16

    invoke-static {v5, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/EventListener;

    invoke-virtual {v10, v5}, Lorg/mortbay/jetty/Request;->removeEventListener(Ljava/util/EventListener;)V

    move/from16 v17, v16

    .end local v16    # "i":I
    .restart local v17    # "i":I
    goto :goto_8

    .line 776
    .end local v15    # "handler":Lorg/mortbay/jetty/Handler;
    .end local v17    # "i":I
    :catchall_1
    move-exception v5

    move-object v6, v5

    if-eqz v19, :cond_16

    .line 778
    invoke-virtual {v10}, Lorg/mortbay/jetty/Request;->takeRequestListeners()Ljava/lang/Object;

    .line 779
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v5, :cond_16

    .line 781
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v5}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v16

    .restart local v16    # "i":I
    move/from16 v17, v16

    .end local v16    # "i":I
    .restart local v17    # "i":I
    :goto_9
    add-int/lit8 v16, v17, -0x1

    .end local v17    # "i":I
    .restart local v16    # "i":I
    if-lez v17, :cond_16

    .line 782
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    move/from16 v0, v16

    invoke-static {v5, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/EventListener;

    invoke-virtual {v10, v5}, Lorg/mortbay/jetty/Request;->removeEventListener(Ljava/util/EventListener;)V

    move/from16 v17, v16

    .end local v16    # "i":I
    .restart local v17    # "i":I
    goto :goto_9

    .end local v17    # "i":I
    :cond_16
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 789
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-object/from16 v0, v21

    if-eq v0, v5, :cond_0

    .line 792
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v5, :cond_18

    .line 794
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 798
    :cond_18
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/mortbay/jetty/Request;->setContext(Lorg/mortbay/jetty/handler/ContextHandler$SContext;)V

    .line 799
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/mortbay/jetty/Request;->setContextPath(Ljava/lang/String;)V

    .line 800
    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 801
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public isCompactPath()Z
    .locals 1

    .prologue
    .line 1073
    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_compactPath:Z

    return v0
.end method

.method protected isProtectedTarget(Ljava/lang/String;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 816
    const/4 v0, 0x0

    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_shutdown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1096
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1097
    const/4 v0, 0x0

    .line 1102
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1099
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1

    .line 1100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1102
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1096
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 825
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mortbay/jetty/handler/ContextHandler;->setManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 826
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_attributes:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/mortbay/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 827
    return-void
.end method

.method public setAllowNullPathInfo(Z)V
    .locals 0
    .param p1, "allowNullPathInfo"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_allowNullPathInfo:Z

    .line 197
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 838
    invoke-direct {p0, p1, p2}, Lorg/mortbay/jetty/handler/ContextHandler;->setManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 839
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_attributes:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {v0, p1, p2}, Lorg/mortbay/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 840
    return-void
.end method

.method public setAttributes(Lorg/mortbay/util/Attributes;)V
    .locals 4
    .param p1, "attributes"    # Lorg/mortbay/util/Attributes;

    .prologue
    .line 848
    instance-of v3, p1, Lorg/mortbay/util/AttributesMap;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 850
    check-cast v3, Lorg/mortbay/util/AttributesMap;

    iput-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_attributes:Lorg/mortbay/util/AttributesMap;

    .line 851
    iget-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_attributes:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {v3}, Lorg/mortbay/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 852
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 854
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 855
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/mortbay/jetty/handler/ContextHandler;->setManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 860
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    new-instance v3, Lorg/mortbay/util/AttributesMap;

    invoke-direct {v3}, Lorg/mortbay/util/AttributesMap;-><init>()V

    iput-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_attributes:Lorg/mortbay/util/AttributesMap;

    .line 861
    invoke-interface {p1}, Lorg/mortbay/util/Attributes;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 862
    .restart local v0    # "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 864
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 865
    .restart local v1    # "name":Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 866
    .local v2, "value":Ljava/lang/Object;
    invoke-direct {p0, v1, v2}, Lorg/mortbay/jetty/handler/ContextHandler;->setManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 867
    iget-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_attributes:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {v3, v1, v2}, Lorg/mortbay/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 870
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public setBaseResource(Lorg/mortbay/resource/Resource;)V
    .locals 0
    .param p1, "base"    # Lorg/mortbay/resource/Resource;

    .prologue
    .line 974
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    .line 975
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 903
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    .line 904
    return-void
.end method

.method public setCompactPath(Z)V
    .locals 0
    .param p1, "compactPath"    # Z

    .prologue
    .line 1082
    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_compactPath:Z

    .line 1083
    return-void
.end method

.method public setConnectorNames([Ljava/lang/String;)V
    .locals 2
    .param p1, "connectors"    # [Ljava/lang/String;

    .prologue
    .line 300
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 301
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_connectors:Ljava/util/Set;

    .line 304
    :goto_0
    return-void

    .line 303
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_connectors:Ljava/util/Set;

    goto :goto_0
.end method

.method public setContextPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "contextPath"    # Ljava/lang/String;

    .prologue
    .line 912
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 913
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ends with /"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 914
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    .line 916
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/Server;->isStarting()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/Server;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 918
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v3

    sget-object v2, Lorg/mortbay/jetty/handler/ContextHandler;->class$org$mortbay$jetty$handler$ContextHandlerCollection:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "org.mortbay.jetty.handler.ContextHandlerCollection"

    invoke-static {v2}, Lorg/mortbay/jetty/handler/ContextHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/jetty/handler/ContextHandler;->class$org$mortbay$jetty$handler$ContextHandlerCollection:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v3, v2}, Lorg/mortbay/jetty/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;

    move-result-object v0

    .line 919
    .local v0, "contextCollections":[Lorg/mortbay/jetty/Handler;
    const/4 v1, 0x0

    .local v1, "h":I
    :goto_1
    if-eqz v0, :cond_3

    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 920
    aget-object v2, v0, v1

    check-cast v2, Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-virtual {v2}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->mapContexts()V

    .line 919
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 918
    .end local v0    # "contextCollections":[Lorg/mortbay/jetty/Handler;
    .end local v1    # "h":I
    :cond_2
    sget-object v2, Lorg/mortbay/jetty/handler/ContextHandler;->class$org$mortbay$jetty$handler$ContextHandlerCollection:Ljava/lang/Class;

    goto :goto_0

    .line 922
    :cond_3
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "servletContextName"    # Ljava/lang/String;

    .prologue
    .line 941
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_displayName:Ljava/lang/String;

    .line 942
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    instance-of v0, v0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    check-cast v0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->setName(Ljava/lang/String;)V

    .line 944
    :cond_0
    return-void
.end method

.method public setErrorHandler(Lorg/mortbay/jetty/handler/ErrorHandler;)V
    .locals 6
    .param p1, "errorHandler"    # Lorg/mortbay/jetty/handler/ErrorHandler;

    .prologue
    .line 1047
    if-eqz p1, :cond_0

    .line 1048
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/handler/ErrorHandler;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 1049
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1050
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_errorHandler:Lorg/mortbay/jetty/handler/ErrorHandler;

    const-string v4, "errorHandler"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1051
    :cond_1
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_errorHandler:Lorg/mortbay/jetty/handler/ErrorHandler;

    .line 1052
    return-void
.end method

.method public setEventListeners([Ljava/util/EventListener;)V
    .locals 3
    .param p1, "eventListeners"    # [Ljava/util/EventListener;

    .prologue
    const/4 v2, 0x0

    .line 431
    iput-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    .line 432
    iput-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    .line 433
    iput-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    .line 434
    iput-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    .line 436
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_eventListeners:[Ljava/util/EventListener;

    .line 438
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_4

    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 440
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_eventListeners:[Ljava/util/EventListener;

    aget-object v1, v2, v0

    .line 442
    .local v1, "listener":Ljava/util/EventListener;
    instance-of v2, v1, Ljavax/servlet/ServletContextListener;

    if-eqz v2, :cond_0

    .line 443
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    .line 445
    :cond_0
    instance-of v2, v1, Ljavax/servlet/ServletContextAttributeListener;

    if-eqz v2, :cond_1

    .line 446
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    .line 448
    :cond_1
    instance-of v2, v1, Ljavax/servlet/ServletRequestListener;

    if-eqz v2, :cond_2

    .line 449
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    .line 451
    :cond_2
    instance-of v2, v1, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v2, :cond_3

    .line 452
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    .line 438
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    .end local v1    # "listener":Ljava/util/EventListener;
    :cond_4
    return-void
.end method

.method public setHosts([Ljava/lang/String;)V
    .locals 0
    .param p1, "hosts"    # [Ljava/lang/String;

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->setConnectorNames([Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public setInitParams(Ljava/util/Map;)V
    .locals 1
    .param p1, "initParams"    # Ljava/util/Map;

    .prologue
    .line 930
    if-nez p1, :cond_0

    .line 933
    :goto_0
    return-void

    .line 932
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_initParams:Ljava/util/Map;

    goto :goto_0
.end method

.method public setMaxFormContentSize(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 1063
    iput p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_maxFormContentSize:I

    .line 1064
    return-void
.end method

.method public setMimeTypes(Lorg/mortbay/jetty/MimeTypes;)V
    .locals 0
    .param p1, "mimeTypes"    # Lorg/mortbay/jetty/MimeTypes;

    .prologue
    .line 1010
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    .line 1011
    return-void
.end method

.method public setResourceBase(Ljava/lang/String;)V
    .locals 2
    .param p1, "resourceBase"    # Ljava/lang/String;

    .prologue
    .line 985
    :try_start_0
    invoke-static {p1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/handler/ContextHandler;->setBaseResource(Lorg/mortbay/resource/Resource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    return-void

    .line 987
    :catch_0
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 990
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 991
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 13
    .param p1, "server"    # Lorg/mortbay/jetty/Server;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 202
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_errorHandler:Lorg/mortbay/jetty/handler/ErrorHandler;

    if-eqz v0, :cond_2

    .line 204
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v12

    .line 205
    .local v12, "old_server":Lorg/mortbay/jetty/Server;
    if-eqz v12, :cond_0

    if-eq v12, p1, :cond_0

    .line 206
    invoke-virtual {v12}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_errorHandler:Lorg/mortbay/jetty/handler/ErrorHandler;

    const-string v4, "error"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 207
    :cond_0
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 208
    if-eqz p1, :cond_1

    if-eq p1, v12, :cond_1

    .line 209
    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_errorHandler:Lorg/mortbay/jetty/handler/ErrorHandler;

    const-string v10, "error"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 210
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_errorHandler:Lorg/mortbay/jetty/handler/ErrorHandler;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/ErrorHandler;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 214
    .end local v12    # "old_server":Lorg/mortbay/jetty/Server;
    :goto_0
    return-void

    .line 213
    :cond_2
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setServer(Lorg/mortbay/jetty/Server;)V

    goto :goto_0
.end method

.method public setShutdown(Z)V
    .locals 0
    .param p1, "shutdown"    # Z

    .prologue
    .line 479
    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_shutdown:Z

    .line 480
    return-void
.end method

.method public setVirtualHosts([Ljava/lang/String;)V
    .locals 3
    .param p1, "vhosts"    # [Ljava/lang/String;

    .prologue
    .line 230
    if-nez p1, :cond_1

    .line 232
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    .line 240
    :cond_0
    return-void

    .line 236
    :cond_1
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 238
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lorg/mortbay/jetty/handler/ContextHandler;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setWelcomeFiles([Ljava/lang/String;)V
    .locals 0
    .param p1, "files"    # [Ljava/lang/String;

    .prologue
    .line 1018
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_welcomeFiles:[Ljava/lang/String;

    .line 1019
    return-void
.end method

.method protected startContext()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 538
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStart()V

    .line 540
    iget-object v7, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_errorHandler:Lorg/mortbay/jetty/handler/ErrorHandler;

    if-eqz v7, :cond_0

    .line 541
    iget-object v7, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_errorHandler:Lorg/mortbay/jetty/handler/ErrorHandler;

    invoke-virtual {v7}, Lorg/mortbay/jetty/handler/ErrorHandler;->start()V

    .line 544
    :cond_0
    iget-object v7, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 546
    new-instance v1, Ljavax/servlet/ServletContextEvent;

    iget-object v7, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-direct {v1, v7}, Ljavax/servlet/ServletContextEvent;-><init>(Ljavax/servlet/ServletContext;)V

    .line 547
    .local v1, "event":Ljavax/servlet/ServletContextEvent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v7}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 549
    iget-object v7, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v7, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/servlet/ServletContextListener;

    invoke-interface {v7, v1}, Ljavax/servlet/ServletContextListener;->contextInitialized(Ljavax/servlet/ServletContextEvent;)V

    .line 547
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 553
    .end local v1    # "event":Ljavax/servlet/ServletContextEvent;
    .end local v2    # "i":I
    :cond_1
    iget-object v7, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_initParams:Ljava/util/Map;

    const-string v8, "org.mortbay.jetty.servlet.ManagedAttributes"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 554
    .local v3, "managedAttributes":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 556
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_managedAttributes:Ljava/util/Set;

    .line 557
    new-instance v5, Lorg/mortbay/util/QuotedStringTokenizer;

    const-string v7, ","

    invoke-direct {v5, v3, v7}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    .local v5, "tok":Lorg/mortbay/util/QuotedStringTokenizer;
    :goto_1
    invoke-virtual {v5}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 559
    iget-object v7, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_managedAttributes:Ljava/util/Set;

    invoke-virtual {v5}, Lorg/mortbay/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 561
    :cond_2
    iget-object v7, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v7}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 562
    .local v0, "e":Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 564
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 565
    .local v4, "name":Ljava/lang/String;
    iget-object v7, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v7, v4}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 566
    .local v6, "value":Ljava/lang/Object;
    invoke-direct {p0, v4, v6}, Lorg/mortbay/jetty/handler/ContextHandler;->setManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 569
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "tok":Lorg/mortbay/util/QuotedStringTokenizer;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1089
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
