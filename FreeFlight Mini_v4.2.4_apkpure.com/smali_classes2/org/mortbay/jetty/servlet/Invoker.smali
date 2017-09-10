.class public Lorg/mortbay/jetty/servlet/Invoker;
.super Ljavax/servlet/http/HttpServlet;
.source "Invoker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/servlet/Invoker$Request;
    }
.end annotation


# static fields
.field static class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;


# instance fields
.field private _contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

.field private _invokerEntry:Ljava/util/Map$Entry;

.field private _nonContextServlets:Z

.field private _parameters:Ljava/util/Map;

.field private _servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

.field private _verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 230
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 144
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

.method private getHolder([Lorg/mortbay/jetty/servlet/ServletHolder;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 3
    .param p1, "holders"    # [Lorg/mortbay/jetty/servlet/ServletHolder;
    .param p2, "servlet"    # Ljava/lang/String;

    .prologue
    .line 286
    if-nez p1, :cond_1

    .line 287
    const/4 v0, 0x0

    .line 297
    :cond_0
    return-object v0

    .line 289
    :cond_1
    const/4 v0, 0x0

    .line 290
    .local v0, "holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-nez v0, :cond_0

    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 292
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    aget-object v0, p1, v1

    .line 290
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 74
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Invoker;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    .line 75
    .local v0, "config":Ljavax/servlet/ServletContext;
    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .end local v0    # "config":Ljavax/servlet/ServletContext;
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v6

    iput-object v6, p0, Lorg/mortbay/jetty/servlet/Invoker;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    .line 77
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/Invoker;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v6}, Lorg/mortbay/jetty/handler/ContextHandler;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v2

    .line 78
    .local v2, "handler":Lorg/mortbay/jetty/Handler;
    :goto_0
    if-eqz v2, :cond_0

    instance-of v6, v2, Lorg/mortbay/jetty/servlet/ServletHandler;

    if-nez v6, :cond_0

    instance-of v6, v2, Lorg/mortbay/jetty/handler/HandlerWrapper;

    if-eqz v6, :cond_0

    .line 79
    check-cast v2, Lorg/mortbay/jetty/handler/HandlerWrapper;

    .end local v2    # "handler":Lorg/mortbay/jetty/Handler;
    invoke-virtual {v2}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v2

    .restart local v2    # "handler":Lorg/mortbay/jetty/Handler;
    goto :goto_0

    .line 80
    :cond_0
    check-cast v2, Lorg/mortbay/jetty/servlet/ServletHandler;

    .end local v2    # "handler":Lorg/mortbay/jetty/Handler;
    iput-object v2, p0, Lorg/mortbay/jetty/servlet/Invoker;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    .line 81
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Invoker;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 82
    .local v1, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 84
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 85
    .local v4, "param":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/mortbay/jetty/servlet/Invoker;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "lvalue":Ljava/lang/String;
    const-string v6, "nonContextServlets"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 89
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    const-string v6, "t"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lorg/mortbay/jetty/servlet/Invoker;->_nonContextServlets:Z

    .line 91
    :cond_1
    const-string v6, "verbose"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 93
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    const-string v6, "t"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lorg/mortbay/jetty/servlet/Invoker;->_verbose:Z

    goto :goto_1

    :cond_2
    move v6, v8

    .line 89
    goto :goto_2

    :cond_3
    move v6, v8

    .line 93
    goto :goto_3

    .line 97
    :cond_4
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    if-nez v6, :cond_5

    .line 98
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/mortbay/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    .line 99
    :cond_5
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 102
    .end local v3    # "lvalue":Ljava/lang/String;
    .end local v4    # "param":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method protected service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 18
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v4, 0x0

    .line 110
    .local v4, "included":Z
    const-string v1, "javax.servlet.include.servlet_path"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 111
    .local v6, "servlet_path":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 112
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v6

    .line 115
    :goto_0
    const-string v1, "javax.servlet.include.path_info"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 116
    .local v7, "path_info":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 117
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v7

    .line 120
    :cond_0
    move-object v5, v7

    .line 121
    .local v5, "servlet":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    .line 123
    :cond_1
    const/16 v1, 0x194

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 227
    :goto_1
    return-void

    .line 114
    .end local v5    # "servlet":Ljava/lang/String;
    .end local v7    # "path_info":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 128
    .restart local v5    # "servlet":Ljava/lang/String;
    .restart local v7    # "path_info":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_4

    const/4 v12, 0x1

    .line 129
    .local v12, "i0":I
    :goto_2
    const/16 v1, 0x2f

    invoke-virtual {v5, v1, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 130
    .local v13, "i1":I
    if-gez v13, :cond_5

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 133
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/servlet/Invoker;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v11

    .line 134
    .local v11, "holders":[Lorg/mortbay/jetty/servlet/ServletHolder;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v5}, Lorg/mortbay/jetty/servlet/Invoker;->getHolder([Lorg/mortbay/jetty/servlet/ServletHolder;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v10

    .line 136
    .local v10, "holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    if-eqz v10, :cond_7

    .line 140
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Adding servlet mapping for named servlet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v6, v5}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 141
    new-instance v14, Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-direct {v14}, Lorg/mortbay/jetty/servlet/ServletMapping;-><init>()V

    .line 142
    .local v14, "mapping":Lorg/mortbay/jetty/servlet/ServletMapping;
    invoke-virtual {v14, v5}, Lorg/mortbay/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 143
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v6, v5}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/mortbay/jetty/servlet/ServletMapping;->setPathSpec(Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/jetty/servlet/Invoker;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/servlet/Invoker;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/mortbay/jetty/servlet/ServletMapping;

    move-result-object v3

    sget-object v1, Lorg/mortbay/jetty/servlet/Invoker;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    if-nez v1, :cond_6

    const-string v1, "org.mortbay.jetty.servlet.ServletMapping"

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/Invoker;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/servlet/Invoker;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    :goto_4
    invoke-static {v3, v14, v1}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/mortbay/jetty/servlet/ServletMapping;

    check-cast v1, [Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-virtual {v2, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServletMappings([Lorg/mortbay/jetty/servlet/ServletMapping;)V

    .line 217
    .end local v14    # "mapping":Lorg/mortbay/jetty/servlet/ServletMapping;
    :goto_5
    if-eqz v10, :cond_f

    .line 218
    new-instance v1, Lorg/mortbay/jetty/servlet/Invoker$Request;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lorg/mortbay/jetty/servlet/Invoker$Request;-><init>(Lorg/mortbay/jetty/servlet/Invoker;Ljavax/servlet/http/HttpServletRequest;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v10, v1, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->handle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto/16 :goto_1

    .line 128
    .end local v10    # "holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    .end local v11    # "holders":[Lorg/mortbay/jetty/servlet/ServletHolder;
    .end local v12    # "i0":I
    .end local v13    # "i1":I
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 130
    .restart local v12    # "i0":I
    .restart local v13    # "i1":I
    :cond_5
    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 144
    .restart local v10    # "holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    .restart local v11    # "holders":[Lorg/mortbay/jetty/servlet/ServletHolder;
    .restart local v14    # "mapping":Lorg/mortbay/jetty/servlet/ServletMapping;
    :cond_6
    sget-object v1, Lorg/mortbay/jetty/servlet/Invoker;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    goto :goto_4

    .line 149
    .end local v14    # "mapping":Lorg/mortbay/jetty/servlet/ServletMapping;
    :cond_7
    const-string v1, ".class"

    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 150
    const/4 v1, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 151
    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 153
    :cond_9
    const/16 v1, 0x194

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto/16 :goto_1

    .line 157
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/jetty/servlet/Invoker;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    monitor-enter v2

    .line 160
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/servlet/Invoker;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v1, v6}, Lorg/mortbay/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/mortbay/jetty/servlet/Invoker;->_invokerEntry:Ljava/util/Map$Entry;

    .line 163
    invoke-static {v6, v5}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 164
    .local v15, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/servlet/Invoker;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v1, v15}, Lorg/mortbay/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v9

    .line 166
    .local v9, "entry":Ljava/util/Map$Entry;
    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/servlet/Invoker;->_invokerEntry:Ljava/util/Map$Entry;

    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 169
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/mortbay/jetty/servlet/ServletHolder;

    move-object v10, v0

    .line 214
    :cond_b
    :goto_6
    monitor-exit v2

    goto :goto_5

    .end local v9    # "entry":Ljava/util/Map$Entry;
    .end local v15    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 174
    .restart local v9    # "entry":Ljava/util/Map$Entry;
    .restart local v15    # "path":Ljava/lang/String;
    :cond_c
    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Making new servlet="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " with path="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "/*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/servlet/Invoker;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v17, "/*"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v10

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    if-eqz v1, :cond_d

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    invoke-virtual {v10, v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->setInitParameters(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :cond_d
    :try_start_2
    invoke-virtual {v10}, Lorg/mortbay/jetty/servlet/ServletHolder;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/mortbay/jetty/servlet/Invoker;->_nonContextServlets:Z

    if-nez v1, :cond_e

    .line 190
    invoke-virtual {v10}, Lorg/mortbay/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;

    move-result-object v16

    .line 192
    .local v16, "s":Ljavax/servlet/Servlet;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/servlet/Invoker;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    if-eq v1, v3, :cond_e

    .line 197
    :try_start_4
    invoke-virtual {v10}, Lorg/mortbay/jetty/servlet/ServletHolder;->stop()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    :goto_7
    :try_start_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Dynamic servlet "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " not loaded from context "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 207
    new-instance v1, Ljavax/servlet/UnavailableException;

    const-string v3, "Not in context"

    invoke-direct {v1, v3}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    .end local v16    # "s":Ljavax/servlet/Servlet;
    :catch_0
    move-exception v8

    .line 183
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v8}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 184
    new-instance v1, Ljavax/servlet/UnavailableException;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v16    # "s":Ljavax/servlet/Servlet;
    :catch_1
    move-exception v8

    .line 201
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-static {v8}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 211
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v16    # "s":Ljavax/servlet/Servlet;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/mortbay/jetty/servlet/Invoker;->_verbose:Z

    if-eqz v1, :cond_b

    .line 212
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Dynamic load \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\' at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_6

    .line 222
    .end local v9    # "entry":Ljava/util/Map$Entry;
    .end local v15    # "path":Ljava/lang/String;
    :cond_f
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t find holder for servlet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    .line 223
    const/16 v1, 0x194

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto/16 :goto_1
.end method
