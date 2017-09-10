.class public Lorg/mortbay/jetty/servlet/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Ljavax/servlet/RequestDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;,
        Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;
    }
.end annotation


# static fields
.field public static final __FORWARD_CONTEXT_PATH:Ljava/lang/String; = "javax.servlet.forward.context_path"

.field public static final __FORWARD_JETTY:Ljava/lang/String; = "org.mortbay.jetty.forwarded"

.field public static final __FORWARD_PATH_INFO:Ljava/lang/String; = "javax.servlet.forward.path_info"

.field public static final __FORWARD_PREFIX:Ljava/lang/String; = "javax.servlet.forward."

.field public static final __FORWARD_QUERY_STRING:Ljava/lang/String; = "javax.servlet.forward.query_string"

.field public static final __FORWARD_REQUEST_URI:Ljava/lang/String; = "javax.servlet.forward.request_uri"

.field public static final __FORWARD_SERVLET_PATH:Ljava/lang/String; = "javax.servlet.forward.servlet_path"

.field public static final __INCLUDE_CONTEXT_PATH:Ljava/lang/String; = "javax.servlet.include.context_path"

.field public static final __INCLUDE_JETTY:Ljava/lang/String; = "org.mortbay.jetty.included"

.field public static final __INCLUDE_PATH_INFO:Ljava/lang/String; = "javax.servlet.include.path_info"

.field public static final __INCLUDE_PREFIX:Ljava/lang/String; = "javax.servlet.include."

.field public static final __INCLUDE_QUERY_STRING:Ljava/lang/String; = "javax.servlet.include.query_string"

.field public static final __INCLUDE_REQUEST_URI:Ljava/lang/String; = "javax.servlet.include.request_uri"

.field public static final __INCLUDE_SERVLET_PATH:Ljava/lang/String; = "javax.servlet.include.servlet_path"

.field public static final __JSP_FILE:Ljava/lang/String; = "org.apache.catalina.jsp_file"


# instance fields
.field private _contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

.field private _dQuery:Ljava/lang/String;

.field private _named:Ljava/lang/String;

.field private _path:Ljava/lang/String;

.field private _uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "contextHandler"    # Lorg/mortbay/jetty/handler/ContextHandler;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    .line 117
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_named:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "contextHandler"    # Lorg/mortbay/jetty/handler/ContextHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "pathInContext"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    .line 102
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_uri:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_path:Ljava/lang/String;

    .line 104
    iput-object p4, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_dQuery:Ljava/lang/String;

    .line 105
    return-void
.end method

.method static access$000(Lorg/mortbay/jetty/servlet/Dispatcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/servlet/Dispatcher;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_named:Ljava/lang/String;

    return-object v0
.end method

.method public static type(Ljava/lang/String;)I
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v0, "request"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    .line 75
    :cond_0
    const-string v0, "forward"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x2

    goto :goto_0

    .line 77
    :cond_1
    const-string v0, "include"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    const/4 v0, 0x4

    goto :goto_0

    .line 79
    :cond_2
    const-string v0, "error"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    const/16 v0, 0x8

    goto :goto_0

    .line 81
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public error(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, v0}, Lorg/mortbay/jetty/servlet/Dispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;I)V

    .line 136
    return-void
.end method

.method public forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lorg/mortbay/jetty/servlet/Dispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;I)V

    .line 127
    return-void
.end method

.method protected forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;I)V
    .locals 29
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "dispatch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/mortbay/jetty/Request;

    move/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v26, p1

    check-cast v26, Lorg/mortbay/jetty/Request;

    move-object/from16 v6, v26

    .line 211
    .local v6, "base_request":Lorg/mortbay/jetty/Request;
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->resetBuffer()V

    .line 212
    const-string v26, "org.apache.catalina.jsp_file"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v18

    .line 215
    .local v18, "old_uri":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v13

    .line 216
    .local v13, "old_context_path":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getServletPath()Ljava/lang/String;

    move-result-object v17

    .line 217
    .local v17, "old_servlet_path":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v15

    .line 218
    .local v15, "old_path_info":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v16

    .line 219
    .local v16, "old_query":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getAttributes()Lorg/mortbay/util/Attributes;

    move-result-object v12

    .line 220
    .local v12, "old_attr":Lorg/mortbay/util/Attributes;
    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getParameters()Lorg/mortbay/util/MultiMap;

    move-result-object v14

    .line 223
    .local v14, "old_params":Lorg/mortbay/util/MultiMap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_named:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_named:Ljava/lang/String;

    move-object/from16 v27, v0

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mortbay/jetty/handler/ContextHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/Request;->setRequestURI(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v6, v13}, Lorg/mortbay/jetty/Request;->setContextPath(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v6, v15}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v6, v12}, Lorg/mortbay/jetty/Request;->setAttributes(Lorg/mortbay/util/Attributes;)V

    .line 348
    invoke-virtual {v6, v14}, Lorg/mortbay/jetty/Request;->setParameters(Lorg/mortbay/util/MultiMap;)V

    .line 349
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/Request;->setQueryString(Ljava/lang/String;)V

    .line 351
    return-void

    .line 210
    .end local v6    # "base_request":Lorg/mortbay/jetty/Request;
    .end local v12    # "old_attr":Lorg/mortbay/util/Attributes;
    .end local v13    # "old_context_path":Ljava/lang/String;
    .end local v14    # "old_params":Lorg/mortbay/util/MultiMap;
    .end local v15    # "old_path_info":Ljava/lang/String;
    .end local v16    # "old_query":Ljava/lang/String;
    .end local v17    # "old_servlet_path":Ljava/lang/String;
    .end local v18    # "old_uri":Ljava/lang/String;
    .restart local p1    # "request":Ljavax/servlet/ServletRequest;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_0
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v6

    goto :goto_0

    .line 227
    .restart local v6    # "base_request":Lorg/mortbay/jetty/Request;
    .restart local v12    # "old_attr":Lorg/mortbay/util/Attributes;
    .restart local v13    # "old_context_path":Ljava/lang/String;
    .restart local v14    # "old_params":Lorg/mortbay/util/MultiMap;
    .restart local v15    # "old_path_info":Ljava/lang/String;
    .restart local v16    # "old_query":Ljava/lang/String;
    .restart local v17    # "old_servlet_path":Ljava/lang/String;
    .restart local v18    # "old_uri":Ljava/lang/String;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_dQuery:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 229
    .local v23, "query":Ljava/lang/String;
    if-eqz v23, :cond_9

    .line 231
    new-instance v22, Lorg/mortbay/util/MultiMap;

    invoke-direct/range {v22 .. v22}, Lorg/mortbay/util/MultiMap;-><init>()V

    .line 232
    .local v22, "parameters":Lorg/mortbay/util/MultiMap;
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    .line 234
    const/16 v24, 0x0

    .line 236
    .local v24, "rewrite_old_query":Z
    if-nez v14, :cond_2

    .line 238
    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getParameterNames()Ljava/util/Enumeration;

    .line 239
    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getParameters()Lorg/mortbay/util/MultiMap;

    move-result-object v14

    .line 242
    :cond_2
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lorg/mortbay/util/MultiMap;->size()I

    move-result v26

    if-lez v26, :cond_5

    .line 245
    invoke-virtual {v14}, Lorg/mortbay/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 246
    .local v10, "iter":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5

    .line 248
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 249
    .local v8, "entry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 251
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lorg/mortbay/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 252
    const/16 v24, 0x1

    .line 253
    :cond_4
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    .line 254
    .local v25, "values":Ljava/lang/Object;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-static/range {v25 .. v25}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v26

    move/from16 v0, v26

    if-ge v9, v0, :cond_3

    .line 255
    move-object/from16 v0, v25

    invoke-static {v0, v9}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v11, v1}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 259
    .end local v8    # "entry":Ljava/util/Map$Entry;
    .end local v9    # "i":I
    .end local v10    # "iter":Ljava/util/Iterator;
    .end local v11    # "name":Ljava/lang/String;
    .end local v25    # "values":Ljava/lang/Object;
    :cond_5
    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_8

    .line 261
    if-eqz v24, :cond_a

    .line 263
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    .local v21, "overridden_query_string":Ljava/lang/StringBuffer;
    new-instance v20, Lorg/mortbay/util/MultiMap;

    invoke-direct/range {v20 .. v20}, Lorg/mortbay/util/MultiMap;-><init>()V

    .line 265
    .local v20, "overridden_old_query":Lorg/mortbay/util/MultiMap;
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    .line 267
    new-instance v19, Lorg/mortbay/util/MultiMap;

    invoke-direct/range {v19 .. v19}, Lorg/mortbay/util/MultiMap;-><init>()V

    .line 268
    .local v19, "overridden_new_query":Lorg/mortbay/util/MultiMap;
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {v20 .. v20}, Lorg/mortbay/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 271
    .restart local v10    # "iter":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    .line 273
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 274
    .restart local v8    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 275
    .restart local v11    # "name":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lorg/mortbay/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 277
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    .line 278
    .restart local v25    # "values":Ljava/lang/Object;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    invoke-static/range {v25 .. v25}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v26

    move/from16 v0, v26

    if-ge v9, v0, :cond_6

    .line 280
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "&"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, "="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v25

    invoke-static {v0, v9}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 285
    .end local v8    # "entry":Ljava/util/Map$Entry;
    .end local v9    # "i":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v25    # "values":Ljava/lang/Object;
    :cond_7
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    .line 293
    .end local v10    # "iter":Ljava/util/Iterator;
    .end local v19    # "overridden_new_query":Lorg/mortbay/util/MultiMap;
    .end local v20    # "overridden_old_query":Lorg/mortbay/util/MultiMap;
    .end local v21    # "overridden_query_string":Ljava/lang/StringBuffer;
    :cond_8
    :goto_4
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/Request;->setParameters(Lorg/mortbay/util/MultiMap;)V

    .line 294
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/Request;->setQueryString(Ljava/lang/String;)V

    .line 297
    .end local v22    # "parameters":Lorg/mortbay/util/MultiMap;
    .end local v24    # "rewrite_old_query":Z
    :cond_9
    new-instance v5, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;-><init>(Lorg/mortbay/jetty/servlet/Dispatcher;Lorg/mortbay/util/Attributes;)V

    .line 303
    .local v5, "attr":Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;
    const-string v26, "javax.servlet.forward.request_uri"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    if-eqz v26, :cond_b

    .line 305
    const-string v26, "javax.servlet.forward.path_info"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v0, v5, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_pathInfo:Ljava/lang/String;

    .line 306
    const-string v26, "javax.servlet.forward.query_string"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v0, v5, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_query:Ljava/lang/String;

    .line 307
    const-string v26, "javax.servlet.forward.request_uri"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v0, v5, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_requestURI:Ljava/lang/String;

    .line 308
    const-string v26, "javax.servlet.forward.context_path"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v0, v5, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_contextPath:Ljava/lang/String;

    .line 309
    const-string v26, "javax.servlet.forward.servlet_path"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v0, v5, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_servletPath:Ljava/lang/String;

    .line 322
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_uri:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/Request;->setRequestURI(Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/Request;->setContextPath(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v6, v5}, Lorg/mortbay/jetty/Request;->setAttributes(Lorg/mortbay/util/Attributes;)V

    .line 325
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/Request;->setQueryString(Ljava/lang/String;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_path:Ljava/lang/String;

    move-object/from16 v28, v0

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    move-object/from16 v0, p2

    check-cast v0, Ljavax/servlet/http/HttpServletResponse;

    move-object/from16 v26, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    move-object/from16 v3, v26

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mortbay/jetty/handler/ContextHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 329
    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/mortbay/jetty/Response;->isWriting()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v26

    if-eqz v26, :cond_c

    .line 331
    :try_start_2
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 332
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavax/servlet/ServletOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 343
    .end local v5    # "attr":Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    .end local v23    # "query":Ljava/lang/String;
    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    :catchall_0
    move-exception v26

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/Request;->setRequestURI(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v6, v13}, Lorg/mortbay/jetty/Request;->setContextPath(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v6, v15}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v6, v12}, Lorg/mortbay/jetty/Request;->setAttributes(Lorg/mortbay/util/Attributes;)V

    .line 348
    invoke-virtual {v6, v14}, Lorg/mortbay/jetty/Request;->setParameters(Lorg/mortbay/util/MultiMap;)V

    .line 349
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/Request;->setQueryString(Ljava/lang/String;)V

    throw v26

    .line 289
    .restart local v22    # "parameters":Lorg/mortbay/util/MultiMap;
    .restart local v23    # "query":Ljava/lang/String;
    .restart local v24    # "rewrite_old_query":Z
    .restart local p1    # "request":Ljavax/servlet/ServletRequest;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_a
    :try_start_4
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, "&"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_4

    .line 313
    .end local v22    # "parameters":Lorg/mortbay/util/MultiMap;
    .end local v24    # "rewrite_old_query":Z
    .restart local v5    # "attr":Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;
    :cond_b
    iput-object v15, v5, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_pathInfo:Ljava/lang/String;

    .line 314
    move-object/from16 v0, v16

    iput-object v0, v5, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_query:Ljava/lang/String;

    .line 315
    move-object/from16 v0, v18

    iput-object v0, v5, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_requestURI:Ljava/lang/String;

    .line 316
    iput-object v13, v5, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_contextPath:Ljava/lang/String;

    .line 317
    move-object/from16 v0, v17

    iput-object v0, v5, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_servletPath:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 336
    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    :cond_c
    :try_start_5
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavax/servlet/ServletOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 337
    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/lang/IllegalStateException;
    :try_start_6
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method public include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 16
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    move-object/from16 v0, p1

    instance-of v13, v0, Lorg/mortbay/jetty/Request;

    if-eqz v13, :cond_0

    move-object/from16 v13, p1

    check-cast v13, Lorg/mortbay/jetty/Request;

    move-object v3, v13

    .line 145
    .local v3, "base_request":Lorg/mortbay/jetty/Request;
    :goto_0
    const-string v13, "org.apache.catalina.jsp_file"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3}, Lorg/mortbay/jetty/Request;->getAttributes()Lorg/mortbay/util/Attributes;

    move-result-object v8

    .line 150
    .local v8, "old_attr":Lorg/mortbay/util/Attributes;
    invoke-virtual {v3}, Lorg/mortbay/jetty/Request;->getParameters()Lorg/mortbay/util/MultiMap;

    move-result-object v9

    .line 153
    .local v9, "old_params":Lorg/mortbay/util/MultiMap;
    :try_start_0
    invoke-virtual {v3}, Lorg/mortbay/jetty/Request;->getConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v13

    invoke-virtual {v13}, Lorg/mortbay/jetty/HttpConnection;->include()V

    .line 154
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_named:Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 155
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_named:Ljava/lang/String;

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    const/4 v15, 0x4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v14, v0, v1, v15}, Lorg/mortbay/jetty/handler/ContextHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_1
    invoke-virtual {v3, v8}, Lorg/mortbay/jetty/Request;->setAttributes(Lorg/mortbay/util/Attributes;)V

    .line 198
    invoke-virtual {v3}, Lorg/mortbay/jetty/Request;->getConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v13

    invoke-virtual {v13}, Lorg/mortbay/jetty/HttpConnection;->included()V

    .line 199
    invoke-virtual {v3, v9}, Lorg/mortbay/jetty/Request;->setParameters(Lorg/mortbay/util/MultiMap;)V

    .line 201
    return-void

    .line 144
    .end local v3    # "base_request":Lorg/mortbay/jetty/Request;
    .end local v8    # "old_attr":Lorg/mortbay/util/Attributes;
    .end local v9    # "old_params":Lorg/mortbay/util/MultiMap;
    .restart local p1    # "request":Ljavax/servlet/ServletRequest;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_0
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v13

    invoke-virtual {v13}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v3

    goto :goto_0

    .line 158
    .restart local v3    # "base_request":Lorg/mortbay/jetty/Request;
    .restart local v8    # "old_attr":Lorg/mortbay/util/Attributes;
    .restart local v9    # "old_params":Lorg/mortbay/util/MultiMap;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_dQuery:Ljava/lang/String;

    .line 160
    .local v11, "query":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 162
    new-instance v10, Lorg/mortbay/util/MultiMap;

    invoke-direct {v10}, Lorg/mortbay/util/MultiMap;-><init>()V

    .line 163
    .local v10, "parameters":Lorg/mortbay/util/MultiMap;
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v10, v13}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    .line 165
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lorg/mortbay/util/MultiMap;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 168
    invoke-virtual {v9}, Lorg/mortbay/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 169
    .local v6, "iter":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 171
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 172
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 173
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 174
    .local v12, "values":Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-static {v12}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v13

    if-ge v5, v13, :cond_2

    .line 175
    invoke-static {v12, v5}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v7, v13}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 179
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "i":I
    .end local v6    # "iter":Ljava/util/Iterator;
    .end local v7    # "name":Ljava/lang/String;
    .end local v12    # "values":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v3, v10}, Lorg/mortbay/jetty/Request;->setParameters(Lorg/mortbay/util/MultiMap;)V

    .line 182
    .end local v10    # "parameters":Lorg/mortbay/util/MultiMap;
    :cond_4
    new-instance v2, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8}, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;-><init>(Lorg/mortbay/jetty/servlet/Dispatcher;Lorg/mortbay/util/Attributes;)V

    .line 184
    .local v2, "attr":Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_uri:Ljava/lang/String;

    iput-object v13, v2, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_requestURI:Ljava/lang/String;

    .line 185
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v13}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_contextPath:Ljava/lang/String;

    .line 186
    const/4 v13, 0x0

    iput-object v13, v2, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_servletPath:Ljava/lang/String;

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_path:Ljava/lang/String;

    iput-object v13, v2, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_pathInfo:Ljava/lang/String;

    .line 188
    iput-object v11, v2, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_query:Ljava/lang/String;

    .line 190
    invoke-virtual {v3, v2}, Lorg/mortbay/jetty/Request;->setAttributes(Lorg/mortbay/util/Attributes;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_named:Ljava/lang/String;

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_path:Ljava/lang/String;

    :goto_3
    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    const/4 v15, 0x4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v13, v0, v1, v15}, Lorg/mortbay/jetty/handler/ContextHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 197
    .end local v2    # "attr":Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;
    .end local v11    # "query":Ljava/lang/String;
    :catchall_0
    move-exception v13

    invoke-virtual {v3, v8}, Lorg/mortbay/jetty/Request;->setAttributes(Lorg/mortbay/util/Attributes;)V

    .line 198
    invoke-virtual {v3}, Lorg/mortbay/jetty/Request;->getConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v14

    invoke-virtual {v14}, Lorg/mortbay/jetty/HttpConnection;->included()V

    .line 199
    invoke-virtual {v3, v9}, Lorg/mortbay/jetty/Request;->setParameters(Lorg/mortbay/util/MultiMap;)V

    throw v13

    .line 192
    .restart local v2    # "attr":Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;
    .restart local v11    # "query":Ljava/lang/String;
    .restart local p1    # "request":Ljavax/servlet/ServletRequest;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_named:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method
