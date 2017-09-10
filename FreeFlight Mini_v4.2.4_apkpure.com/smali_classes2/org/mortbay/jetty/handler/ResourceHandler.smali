.class public Lorg/mortbay/jetty/handler/ResourceHandler;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "ResourceHandler.java"


# instance fields
.field _aliases:Z

.field _baseResource:Lorg/mortbay/resource/Resource;

.field _cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

.field _context:Lorg/mortbay/jetty/handler/ContextHandler;

.field _mimeTypes:Lorg/mortbay/jetty/MimeTypes;

.field _welcomeFiles:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "index.html"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    .line 59
    new-instance v0, Lorg/mortbay/jetty/MimeTypes;

    invoke-direct {v0}, Lorg/mortbay/jetty/MimeTypes;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    .line 66
    return-void
.end method


# virtual methods
.method protected doResponseHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Ljava/lang/String;)V
    .locals 6
    .param p1, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p2, "resource"    # Lorg/mortbay/resource/Resource;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 344
    if-eqz p3, :cond_0

    .line 345
    invoke-interface {p1, p3}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 347
    :cond_0
    invoke-virtual {p2}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v2

    .line 349
    .local v2, "length":J
    instance-of v1, p1, Lorg/mortbay/jetty/Response;

    if-eqz v1, :cond_3

    .line 351
    check-cast p1, Lorg/mortbay/jetty/Response;

    .end local p1    # "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-virtual {p1}, Lorg/mortbay/jetty/Response;->getHttpFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    .line 353
    .local v0, "fields":Lorg/mortbay/jetty/HttpFields;
    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 354
    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1, v2, v3}, Lorg/mortbay/jetty/HttpFields;->putLongField(Lorg/mortbay/io/Buffer;J)V

    .line 356
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    if-eqz v1, :cond_2

    .line 357
    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CACHE_CONTROL_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v4, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0, v1, v4}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 368
    .end local v0    # "fields":Lorg/mortbay/jetty/HttpFields;
    :cond_2
    :goto_0
    return-void

    .line 361
    .restart local p1    # "response":Ljavax/servlet/http/HttpServletResponse;
    :cond_3
    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    .line 362
    const-string v1, "Content-Length"

    invoke-static {v2, v3}, Lorg/mortbay/util/TypeUtil;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_4
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    if-eqz v1, :cond_2

    .line 365
    const-string v1, "Cache-Control"

    iget-object v4, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v4}, Lorg/mortbay/io/ByteArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Lorg/mortbay/jetty/handler/ContextHandler;->getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v0

    .line 105
    .local v0, "scontext":Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_context:Lorg/mortbay/jetty/handler/ContextHandler;

    .line 107
    iget-boolean v1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_aliases:Z

    if-nez v1, :cond_1

    invoke-static {}, Lorg/mortbay/resource/FileResource;->getCheckAliases()Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Alias checking disabled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v1

    goto :goto_0

    .line 110
    :cond_1
    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->doStart()V

    .line 111
    return-void
.end method

.method public getBaseResource()Lorg/mortbay/resource/Resource;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    goto :goto_0
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/ByteArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypes()Lorg/mortbay/jetty/MimeTypes;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 186
    if-eqz p1, :cond_0

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 187
    :cond_0
    new-instance v3, Ljava/net/MalformedURLException;

    invoke-direct {v3, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 189
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    .line 190
    .local v0, "base":Lorg/mortbay/resource/Resource;
    if-nez v0, :cond_4

    .line 192
    iget-object v3, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_context:Lorg/mortbay/jetty/handler/ContextHandler;

    if-nez v3, :cond_3

    .line 210
    :cond_2
    :goto_0
    return-object v2

    .line 194
    :cond_3
    iget-object v3, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_context:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_2

    .line 201
    :cond_4
    :try_start_0
    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-virtual {v0, p1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 203
    .local v2, "resource":Lorg/mortbay/resource/Resource;
    goto :goto_0

    .line 205
    .end local v2    # "resource":Lorg/mortbay/resource/Resource;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected getResource(Ljavax/servlet/http/HttpServletRequest;)Lorg/mortbay/resource/Resource;
    .locals 2
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "path_info":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 218
    const/4 v1, 0x0

    .line 219
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/ResourceHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    goto :goto_0
.end method

.method public getResourceBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getWelcome(Lorg/mortbay/resource/Resource;)Lorg/mortbay/resource/Resource;
    .locals 3
    .param p1, "directory"    # Lorg/mortbay/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 240
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 241
    .local v1, "welcome":Lorg/mortbay/resource/Resource;
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    .end local v1    # "welcome":Lorg/mortbay/resource/Resource;
    :goto_1
    return-object v1

    .line 238
    .restart local v1    # "welcome":Lorg/mortbay/resource/Resource;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    .end local v1    # "welcome":Lorg/mortbay/resource/Resource;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getWelcomeFiles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 16
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
    .line 254
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/mortbay/jetty/Request;

    if-eqz v4, :cond_1

    move-object/from16 v4, p2

    check-cast v4, Lorg/mortbay/jetty/Request;

    move-object v8, v4

    .line 255
    .local v8, "base_request":Lorg/mortbay/jetty/Request;
    :goto_0
    invoke-virtual {v8}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 332
    :cond_0
    :goto_1
    return-void

    .line 254
    .end local v8    # "base_request":Lorg/mortbay/jetty/Request;
    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v8

    goto :goto_0

    .line 258
    .restart local v8    # "base_request":Lorg/mortbay/jetty/Request;
    :cond_2
    const/4 v15, 0x0

    .line 259
    .local v15, "skipContentBody":Z
    const-string v4, "GET"

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 261
    const-string v4, "HEAD"

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    const/4 v15, 0x1

    .line 266
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/handler/ResourceHandler;->getResource(Ljavax/servlet/http/HttpServletRequest;)Lorg/mortbay/resource/Resource;

    move-result-object v2

    .line 268
    .local v2, "resource":Lorg/mortbay/resource/Resource;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/mortbay/jetty/handler/ResourceHandler;->_aliases:Z

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 272
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " aliased to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :cond_4
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 279
    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 281
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 283
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-static {v4, v5}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 286
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/handler/ResourceHandler;->getWelcome(Lorg/mortbay/resource/Resource;)Lorg/mortbay/resource/Resource;

    move-result-object v2

    .line 288
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 290
    :cond_6
    const/16 v4, 0x193

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto/16 :goto_1

    .line 296
    :cond_7
    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v12

    .line 297
    .local v12, "last_modified":J
    const-wide/16 v4, 0x0

    cmp-long v4, v12, v4

    if-lez v4, :cond_8

    .line 299
    const-string v4, "If-Modified-Since"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v10

    .line 300
    .local v10, "if_modified":J
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-lez v4, :cond_8

    const-wide/16 v4, 0x3e8

    div-long v4, v12, v4

    const-wide/16 v6, 0x3e8

    div-long v6, v10, v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_8

    .line 302
    const/16 v4, 0x130

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    goto/16 :goto_1

    .line 307
    .end local v10    # "if_modified":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mortbay/jetty/handler/ResourceHandler;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mortbay/jetty/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v14

    .line 308
    .local v14, "mime":Lorg/mortbay/io/Buffer;
    if-nez v14, :cond_9

    .line 309
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mortbay/jetty/handler/ResourceHandler;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mortbay/jetty/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v14

    .line 312
    :cond_9
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2, v4}, Lorg/mortbay/jetty/handler/ResourceHandler;->doResponseHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Ljava/lang/String;)V

    .line 313
    const-string v4, "Last-Modified"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v12, v13}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 314
    if-nez v15, :cond_0

    .line 317
    const/4 v3, 0x0

    .line 318
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 322
    :goto_3
    instance-of v4, v3, Lorg/mortbay/jetty/HttpConnection$Output;

    if-eqz v4, :cond_b

    .line 325
    check-cast v3, Lorg/mortbay/jetty/HttpConnection$Output;

    .end local v3    # "out":Ljava/io/OutputStream;
    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/mortbay/jetty/HttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 312
    :cond_a
    const/4 v4, 0x0

    goto :goto_2

    .line 319
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Lorg/mortbay/io/WriterOutputStream;

    .end local v3    # "out":Ljava/io/OutputStream;
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/mortbay/io/WriterOutputStream;-><init>(Ljava/io/Writer;)V

    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 330
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :cond_b
    const-wide/16 v4, 0x0

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_1
.end method

.method public isAliases()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_aliases:Z

    return v0
.end method

.method public setAliases(Z)V
    .locals 0
    .param p1, "aliases"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_aliases:Z

    .line 98
    return-void
.end method

.method public setBaseResource(Lorg/mortbay/resource/Resource;)V
    .locals 0
    .param p1, "base"    # Lorg/mortbay/resource/Resource;

    .prologue
    .line 142
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    .line 143
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 1
    .param p1, "cacheControl"    # Ljava/lang/String;

    .prologue
    .line 178
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    .line 179
    return-void

    .line 178
    :cond_0
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMimeTypes(Lorg/mortbay/jetty/MimeTypes;)V
    .locals 0
    .param p1, "mimeTypes"    # Lorg/mortbay/jetty/MimeTypes;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    .line 78
    return-void
.end method

.method public setResourceBase(Ljava/lang/String;)V
    .locals 2
    .param p1, "resourceBase"    # Ljava/lang/String;

    .prologue
    .line 153
    :try_start_0
    invoke-static {p1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/handler/ResourceHandler;->setBaseResource(Lorg/mortbay/resource/Resource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 158
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 159
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWelcomeFiles([Ljava/lang/String;)V
    .locals 0
    .param p1, "welcomeFiles"    # [Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    .line 233
    return-void
.end method
