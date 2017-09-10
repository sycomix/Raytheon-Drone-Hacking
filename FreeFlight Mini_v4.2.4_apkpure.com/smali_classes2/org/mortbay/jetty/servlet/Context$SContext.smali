.class public Lorg/mortbay/jetty/servlet/Context$SContext;
.super Lorg/mortbay/jetty/handler/ContextHandler$SContext;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SContext"
.end annotation


# instance fields
.field private final this$0:Lorg/mortbay/jetty/servlet/Context;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/Context;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Context$SContext;->this$0:Lorg/mortbay/jetty/servlet/Context;

    invoke-direct {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;-><init>(Lorg/mortbay/jetty/handler/ContextHandler;)V

    return-void
.end method


# virtual methods
.method public getNamedDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context$SContext;->this$0:Lorg/mortbay/jetty/servlet/Context;

    .line 308
    .local v0, "context":Lorg/mortbay/jetty/handler/ContextHandler;
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Context$SContext;->this$0:Lorg/mortbay/jetty/servlet/Context;

    iget-object v1, v1, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Context$SContext;->this$0:Lorg/mortbay/jetty/servlet/Context;

    iget-object v1, v1, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v1, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 309
    :cond_0
    const/4 v1, 0x0

    .line 310
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lorg/mortbay/jetty/servlet/Dispatcher;

    invoke-direct {v1, v0, p1}, Lorg/mortbay/jetty/servlet/Dispatcher;-><init>(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 8
    .param p1, "uriInContext"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 319
    if-nez p1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-object v6

    .line 322
    :cond_1
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 327
    const/4 v4, 0x0

    .line 328
    .local v4, "query":Ljava/lang/String;
    const/4 v3, 0x0

    .line 329
    .local v3, "q":I
    const/16 v7, 0x3f

    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 331
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 332
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 334
    :cond_2
    const/16 v7, 0x3b

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_3

    .line 335
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 337
    :cond_3
    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "pathInContext":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Context$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "uri":Ljava/lang/String;
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context$SContext;->this$0:Lorg/mortbay/jetty/servlet/Context;

    .line 340
    .local v0, "context":Lorg/mortbay/jetty/handler/ContextHandler;
    new-instance v7, Lorg/mortbay/jetty/servlet/Dispatcher;

    invoke-direct {v7, v0, v5, v2, v4}, Lorg/mortbay/jetty/servlet/Dispatcher;-><init>(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_0

    .line 342
    .end local v0    # "context":Lorg/mortbay/jetty/handler/ContextHandler;
    .end local v2    # "pathInContext":Ljava/lang/String;
    .end local v5    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
