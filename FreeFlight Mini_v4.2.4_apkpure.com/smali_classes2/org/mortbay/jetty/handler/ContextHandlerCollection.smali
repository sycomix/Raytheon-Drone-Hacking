.class public Lorg/mortbay/jetty/handler/ContextHandlerCollection;
.super Lorg/mortbay/jetty/handler/HandlerCollection;
.source "ContextHandlerCollection.java"


# static fields
.field static class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;


# instance fields
.field private _contextClass:Ljava/lang/Class;

.field private _contextMap:Lorg/mortbay/jetty/servlet/PathMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;-><init>()V

    .line 48
    sget-object v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.jetty.handler.ContextHandler"

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    return-void

    :cond_0
    sget-object v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 48
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

.method private normalizeHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 300
    if-nez p1, :cond_1

    .line 301
    const/4 p1, 0x0

    .line 306
    .end local p1    # "host":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 303
    .restart local p1    # "host":Ljava/lang/String;
    :cond_1
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public addContext(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/handler/ContextHandler;
    .locals 3
    .param p1, "contextPath"    # Ljava/lang/String;
    .param p2, "resourceBase"    # Ljava/lang/String;

    .prologue
    .line 261
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler;

    .line 262
    .local v0, "context":Lorg/mortbay/jetty/handler/ContextHandler;
    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0, p2}, Lorg/mortbay/jetty/handler/ContextHandler;->setResourceBase(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->addHandler(Lorg/mortbay/jetty/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    return-object v0

    .line 267
    .end local v0    # "context":Lorg/mortbay/jetty/handler/ContextHandler;
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 270
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->mapContexts()V

    .line 156
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->doStart()V

    .line 157
    return-void
.end method

.method public getContextClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 17
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
    .line 166
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v8

    .line 167
    .local v8, "handlers":[Lorg/mortbay/jetty/Handler;
    if-eqz v8, :cond_0

    array-length v15, v8

    if-nez v15, :cond_1

    .line 247
    :cond_0
    return-void

    .line 170
    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v15

    invoke-virtual {v15}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v4

    .line 177
    .local v4, "base_request":Lorg/mortbay/jetty/Request;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->_contextMap:Lorg/mortbay/jetty/servlet/PathMap;

    .line 178
    .local v14, "map":Lorg/mortbay/jetty/servlet/PathMap;
    if-eqz v14, :cond_6

    if-eqz p1, :cond_6

    const-string v15, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 181
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/mortbay/jetty/servlet/PathMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 183
    .local v5, "contexts":Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-static {v5}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v15

    if-ge v11, v15, :cond_0

    .line 186
    invoke-static {v5, v11}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 187
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 189
    .local v13, "list":Ljava/lang/Object;
    instance-of v15, v13, Ljava/util/Map;

    if-eqz v15, :cond_4

    move-object v10, v13

    .line 191
    check-cast v10, Ljava/util/Map;

    .line 192
    .local v10, "hosts":Ljava/util/Map;
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 195
    .local v9, "host":Ljava/lang/String;
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 196
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    invoke-static {v13}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v15

    if-ge v12, v15, :cond_2

    .line 198
    invoke-static {v13, v12}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mortbay/jetty/Handler;

    .line 199
    .local v7, "handler":Lorg/mortbay/jetty/Handler;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v7, v0, v1, v2, v3}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 200
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v15

    if-nez v15, :cond_0

    .line 196
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 205
    .end local v7    # "handler":Lorg/mortbay/jetty/Handler;
    :cond_2
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "*."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 206
    const/4 v12, 0x0

    :goto_2
    invoke-static {v13}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v15

    if-ge v12, v15, :cond_3

    .line 208
    invoke-static {v13, v12}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mortbay/jetty/Handler;

    .line 209
    .restart local v7    # "handler":Lorg/mortbay/jetty/Handler;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v7, v0, v1, v2, v3}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 210
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v15

    if-nez v15, :cond_0

    .line 206
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 216
    .end local v7    # "handler":Lorg/mortbay/jetty/Handler;
    :cond_3
    const-string v15, "*"

    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 217
    const/4 v12, 0x0

    :goto_3
    invoke-static {v13}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v15

    if-ge v12, v15, :cond_5

    .line 219
    invoke-static {v13, v12}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mortbay/jetty/Handler;

    .line 220
    .restart local v7    # "handler":Lorg/mortbay/jetty/Handler;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v7, v0, v1, v2, v3}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 221
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v15

    if-nez v15, :cond_0

    .line 217
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 227
    .end local v7    # "handler":Lorg/mortbay/jetty/Handler;
    .end local v9    # "host":Ljava/lang/String;
    .end local v10    # "hosts":Ljava/util/Map;
    .end local v12    # "j":I
    :cond_4
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_4
    invoke-static {v13}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v15

    if-ge v12, v15, :cond_5

    .line 229
    invoke-static {v13, v12}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mortbay/jetty/Handler;

    .line 230
    .restart local v7    # "handler":Lorg/mortbay/jetty/Handler;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v7, v0, v1, v2, v3}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 231
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v15

    if-nez v15, :cond_0

    .line 227
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 183
    .end local v7    # "handler":Lorg/mortbay/jetty/Handler;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 240
    .end local v5    # "contexts":Ljava/lang/Object;
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v11    # "i":I
    .end local v12    # "j":I
    .end local v13    # "list":Ljava/lang/Object;
    :cond_6
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5
    array-length v15, v8

    if-ge v11, v15, :cond_0

    .line 242
    aget-object v15, v8, v11

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v15, v0, v1, v2, v3}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 243
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v15

    if-nez v15, :cond_0

    .line 240
    add-int/lit8 v11, v11, 0x1

    goto :goto_5
.end method

.method public mapContexts()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 56
    new-instance v2, Lorg/mortbay/jetty/servlet/PathMap;

    invoke-direct {v2}, Lorg/mortbay/jetty/servlet/PathMap;-><init>()V

    .line 57
    .local v2, "contextMap":Lorg/mortbay/jetty/servlet/PathMap;
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v1

    .line 60
    .local v1, "branches":[Lorg/mortbay/jetty/Handler;
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_0
    if-eqz v1, :cond_c

    array-length v12, v1

    if-ge v0, v12, :cond_c

    .line 62
    const/4 v6, 0x0

    .line 64
    .local v6, "handlers":[Lorg/mortbay/jetty/Handler;
    aget-object v12, v1, v0

    instance-of v12, v12, Lorg/mortbay/jetty/handler/ContextHandler;

    if-eqz v12, :cond_1

    .line 66
    new-array v6, v14, [Lorg/mortbay/jetty/Handler;

    .end local v6    # "handlers":[Lorg/mortbay/jetty/Handler;
    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v6, v12

    .line 75
    .restart local v6    # "handlers":[Lorg/mortbay/jetty/Handler;
    :goto_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v12, v6

    if-ge v8, v12, :cond_b

    .line 77
    aget-object v5, v6, v8

    check-cast v5, Lorg/mortbay/jetty/handler/ContextHandler;

    .line 79
    .local v5, "handler":Lorg/mortbay/jetty/handler/ContextHandler;
    invoke-virtual {v5}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "contextPath":Ljava/lang/String;
    if-eqz v3, :cond_0

    const/16 v12, 0x2c

    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-gez v12, :cond_0

    const-string v12, "*"

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 82
    :cond_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Illegal context spec:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 68
    .end local v3    # "contextPath":Ljava/lang/String;
    .end local v5    # "handler":Lorg/mortbay/jetty/handler/ContextHandler;
    .end local v8    # "i":I
    :cond_1
    aget-object v12, v1, v0

    instance-of v12, v12, Lorg/mortbay/jetty/HandlerContainer;

    if-eqz v12, :cond_b

    .line 70
    aget-object v12, v1, v0

    check-cast v12, Lorg/mortbay/jetty/HandlerContainer;

    sget-object v13, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    if-nez v13, :cond_2

    const-string v13, "org.mortbay.jetty.handler.ContextHandler"

    invoke-static {v13}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    :goto_3
    invoke-interface {v12, v13}, Lorg/mortbay/jetty/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;

    move-result-object v6

    goto :goto_1

    :cond_2
    sget-object v13, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    goto :goto_3

    .line 84
    .restart local v3    # "contextPath":Ljava/lang/String;
    .restart local v5    # "handler":Lorg/mortbay/jetty/handler/ContextHandler;
    .restart local v8    # "i":I
    :cond_3
    const-string v12, "/"

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 85
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v14, :cond_5

    .line 89
    const-string v12, "/"

    invoke-virtual {v3, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 90
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    :cond_5
    :goto_4
    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/servlet/PathMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 96
    .local v4, "contexts":Ljava/lang/Object;
    invoke-virtual {v5}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v11

    .line 99
    .local v11, "vhosts":[Ljava/lang/String;
    if-eqz v11, :cond_8

    array-length v12, v11

    if-lez v12, :cond_8

    .line 103
    instance-of v12, v4, Ljava/util/Map;

    if-eqz v12, :cond_7

    move-object v7, v4

    .line 104
    check-cast v7, Ljava/util/Map;

    .line 112
    .local v7, "hosts":Ljava/util/Map;
    :goto_5
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_6
    array-length v12, v11

    if-ge v9, v12, :cond_9

    .line 114
    aget-object v10, v11, v9

    .line 115
    .local v10, "vhost":Ljava/lang/String;
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 116
    aget-object v12, v1, v0

    invoke-static {v4, v12}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 117
    invoke-interface {v7, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 91
    .end local v4    # "contexts":Ljava/lang/Object;
    .end local v7    # "hosts":Ljava/util/Map;
    .end local v9    # "j":I
    .end local v10    # "vhost":Ljava/lang/String;
    .end local v11    # "vhosts":[Ljava/lang/String;
    :cond_6
    const-string v12, "/*"

    invoke-virtual {v3, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 92
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "/*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 107
    .restart local v4    # "contexts":Ljava/lang/Object;
    .restart local v11    # "vhosts":[Ljava/lang/String;
    :cond_7
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 108
    .restart local v7    # "hosts":Ljava/util/Map;
    const-string v12, "*"

    invoke-interface {v7, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v2, v3, v7}, Lorg/mortbay/jetty/servlet/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 120
    .end local v7    # "hosts":Ljava/util/Map;
    :cond_8
    instance-of v12, v4, Ljava/util/Map;

    if-eqz v12, :cond_a

    move-object v7, v4

    .line 122
    check-cast v7, Ljava/util/Map;

    .line 123
    .restart local v7    # "hosts":Ljava/util/Map;
    const-string v12, "*"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 124
    aget-object v12, v1, v0

    invoke-static {v4, v12}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 125
    const-string v12, "*"

    invoke-interface {v7, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v7    # "hosts":Ljava/util/Map;
    :cond_9
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 129
    :cond_a
    aget-object v12, v1, v0

    invoke-static {v4, v12}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 130
    invoke-virtual {v2, v3, v4}, Lorg/mortbay/jetty/servlet/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 60
    .end local v3    # "contextPath":Ljava/lang/String;
    .end local v4    # "contexts":Ljava/lang/Object;
    .end local v5    # "handler":Lorg/mortbay/jetty/handler/ContextHandler;
    .end local v8    # "i":I
    .end local v11    # "vhosts":[Ljava/lang/String;
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 134
    .end local v6    # "handlers":[Lorg/mortbay/jetty/Handler;
    :cond_c
    iput-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->_contextMap:Lorg/mortbay/jetty/servlet/PathMap;

    .line 136
    return-void
.end method

.method public setContextClass(Ljava/lang/Class;)V
    .locals 1
    .param p1, "contextClass"    # Ljava/lang/Class;

    .prologue
    .line 292
    if-eqz p1, :cond_0

    sget-object v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "org.mortbay.jetty.handler.ContextHandler"

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 293
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 292
    :cond_1
    sget-object v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    goto :goto_0

    .line 294
    :cond_2
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    .line 295
    return-void
.end method

.method public setHandlers([Lorg/mortbay/jetty/Handler;)V
    .locals 1
    .param p1, "handlers"    # [Lorg/mortbay/jetty/Handler;

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->_contextMap:Lorg/mortbay/jetty/servlet/PathMap;

    .line 147
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/HandlerCollection;->setHandlers([Lorg/mortbay/jetty/Handler;)V

    .line 148
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->mapContexts()V

    .line 150
    :cond_0
    return-void
.end method
