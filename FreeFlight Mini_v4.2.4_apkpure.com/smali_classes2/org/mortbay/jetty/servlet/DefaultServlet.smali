.class public Lorg/mortbay/jetty/servlet/DefaultServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "DefaultServlet.java"

# interfaces
.implements Lorg/mortbay/resource/ResourceFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;,
        Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;
    }
.end annotation


# static fields
.field static class$org$mortbay$jetty$servlet$ServletHandler:Ljava/lang/Class;


# instance fields
.field private _acceptRanges:Z

.field private _aliases:Z

.field private _bioCache:Lorg/mortbay/jetty/ResourceCache;

.field _cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

.field private _context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

.field private _defaultHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

.field private _dirAllowed:Z

.field private _gzip:Z

.field private _mimeTypes:Lorg/mortbay/jetty/MimeTypes;

.field private _nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

.field private _redirectWelcome:Z

.field private _resourceBase:Lorg/mortbay/resource/Resource;

.field private _servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

.field private _useFileMappedBuffer:Z

.field private _welcomeServlets:Z

.field private _welcomes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 130
    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    .line 131
    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    .line 132
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    .line 133
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    .line 134
    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_gzip:Z

    .line 142
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    .line 143
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    .line 995
    return-void
.end method

.method static access$000(Lorg/mortbay/jetty/servlet/DefaultServlet;)Lorg/mortbay/jetty/MimeTypes;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/servlet/DefaultServlet;

    .prologue
    .line 126
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    return-object v0
.end method

.method static access$100(Lorg/mortbay/jetty/servlet/DefaultServlet;)Z
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/servlet/DefaultServlet;

    .prologue
    .line 126
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    return v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 258
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

.method private getInitBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dft"    # Z

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, p2

    .line 282
    :goto_0
    return v1

    :cond_1
    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getInitInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dft"    # I

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 296
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 297
    .end local p2    # "dft":I
    :cond_1
    return p2
.end method

.method private getWelcomeFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pathInContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 564
    const/4 v4, 0x0

    .line 581
    :cond_0
    :goto_0
    return-object v4

    .line 566
    :cond_1
    const/4 v4, 0x0

    .line 567
    .local v4, "welcome_servlet":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 569
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {p1, v5}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 570
    .local v3, "welcome_in_context":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v2

    .line 571
    .local v2, "welcome":Lorg/mortbay/resource/Resource;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 572
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    aget-object v4, v5, v1

    goto :goto_0

    .line 574
    :cond_2
    iget-boolean v5, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    .line 576
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v5, v3}, Lorg/mortbay/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v0

    .line 577
    .local v0, "entry":Ljava/util/Map$Entry;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_defaultHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eq v5, v6, :cond_3

    .line 578
    move-object v4, v3

    .line 567
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 911
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    if-eqz v1, :cond_0

    .line 912
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 922
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    if-eqz v1, :cond_1

    .line 923
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    invoke-virtual {v1}, Lorg/mortbay/jetty/ResourceCache;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 931
    :cond_1
    :goto_0
    invoke-super {p0}, Ljavax/servlet/http/HttpServlet;->destroy()V

    .line 934
    return-void

    .line 914
    :catch_0
    move-exception v0

    .line 916
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 922
    :try_start_3
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    if-eqz v1, :cond_1

    .line 923
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    invoke-virtual {v1}, Lorg/mortbay/jetty/ResourceCache;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 925
    :catch_1
    move-exception v0

    .line 927
    :try_start_4
    const-string v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 931
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljavax/servlet/http/HttpServlet;->destroy()V

    throw v1

    .line 920
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    .line 922
    :try_start_5
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    if-eqz v2, :cond_2

    .line 923
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    invoke-virtual {v2}, Lorg/mortbay/jetty/ResourceCache;->stop()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 931
    :cond_2
    :goto_1
    invoke-super {p0}, Ljavax/servlet/http/HttpServlet;->destroy()V

    .line 920
    throw v1

    .line 925
    :catch_2
    move-exception v0

    .line 927
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v2, "EXCEPTION "

    invoke-static {v2, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .line 931
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v1

    invoke-super {p0}, Ljavax/servlet/http/HttpServlet;->destroy()V

    throw v1

    .line 925
    :catch_3
    move-exception v0

    .line 927
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_0

    .line 931
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v1

    invoke-super {p0}, Ljavax/servlet/http/HttpServlet;->destroy()V

    throw v1
.end method

.method protected doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 28
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    const/16 v26, 0x0

    .line 336
    .local v26, "servletPath":Ljava/lang/String;
    const/16 v24, 0x0

    .line 337
    .local v24, "pathInfo":Ljava/lang/String;
    const/4 v9, 0x0

    .line 338
    .local v9, "reqRanges":Ljava/util/Enumeration;
    const-string v3, "org.mortbay.jetty.included"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    .line 339
    .local v19, "included":Ljava/lang/Boolean;
    if-eqz v19, :cond_b

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 341
    const-string v3, "javax.servlet.include.servlet_path"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "servletPath":Ljava/lang/String;
    check-cast v26, Ljava/lang/String;

    .line 342
    .restart local v26    # "servletPath":Ljava/lang/String;
    const-string v3, "javax.servlet.include.path_info"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "pathInfo":Ljava/lang/String;
    check-cast v24, Ljava/lang/String;

    .line 343
    .restart local v24    # "pathInfo":Ljava/lang/String;
    if-nez v26, :cond_0

    .line 345
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v26

    .line 346
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v24

    .line 361
    :cond_0
    :goto_0
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 362
    .local v22, "pathInContext":Ljava/lang/String;
    const-string v3, "/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    .line 365
    .local v17, "endsWithSlash":Z
    const/16 v23, 0x0

    .line 366
    .local v23, "pathInContextGz":Ljava/lang/String;
    const/16 v18, 0x0

    .line 367
    .local v18, "gzip":Z
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_gzip:Z

    if-eqz v3, :cond_1

    if-nez v9, :cond_1

    if-nez v17, :cond_1

    .line 369
    const-string v3, "Accept-Encoding"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 370
    .local v10, "accept":Ljava/lang/String;
    if-eqz v10, :cond_1

    const-string v3, "gzip"

    invoke-virtual {v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 371
    const/16 v18, 0x1

    .line 375
    .end local v10    # "accept":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    .line 376
    .local v7, "resource":Lorg/mortbay/resource/Resource;
    const/4 v8, 0x0

    .line 378
    .local v8, "content":Lorg/mortbay/jetty/HttpContent;
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v13

    .line 379
    .local v13, "connector":Lorg/mortbay/jetty/Connector;
    instance-of v3, v13, Lorg/mortbay/jetty/nio/NIOConnector;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    .line 383
    .local v12, "cache":Lorg/mortbay/jetty/ResourceCache;
    :goto_1
    if-eqz v18, :cond_5

    .line 385
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ".gz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    .line 386
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v7

    .line 388
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v7}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 390
    :cond_2
    const/16 v18, 0x0

    .line 391
    const/16 v23, 0x0

    .line 400
    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v7}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 402
    :cond_4
    const/16 v18, 0x0

    .line 403
    const/16 v23, 0x0

    .line 408
    :cond_5
    if-nez v18, :cond_27

    .line 410
    if-nez v12, :cond_e

    .line 411
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    move-object v14, v8

    .line 423
    .end local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    .local v14, "content":Lorg/mortbay/jetty/HttpContent;
    :goto_3
    :try_start_1
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 424
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "resource="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    if-eqz v14, :cond_10

    const-string v3, " content"

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 427
    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v3

    if-nez v3, :cond_11

    .line 428
    :cond_7
    const/16 v3, 0x194

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v14

    .line 524
    .end local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    :cond_8
    :goto_5
    if-eqz v8, :cond_25

    .line 525
    :cond_9
    invoke-interface {v8}, Lorg/mortbay/jetty/HttpContent;->release()V

    .line 530
    :cond_a
    :goto_6
    return-void

    .line 351
    .end local v7    # "resource":Lorg/mortbay/resource/Resource;
    .end local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    .end local v12    # "cache":Lorg/mortbay/jetty/ResourceCache;
    .end local v13    # "connector":Lorg/mortbay/jetty/Connector;
    .end local v17    # "endsWithSlash":Z
    .end local v18    # "gzip":Z
    .end local v22    # "pathInContext":Ljava/lang/String;
    .end local v23    # "pathInContextGz":Ljava/lang/String;
    :cond_b
    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 352
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v26

    .line 353
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v24

    .line 356
    const-string v3, "Range"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletRequest;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v9

    .line 357
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_0

    .line 358
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 379
    .restart local v7    # "resource":Lorg/mortbay/resource/Resource;
    .restart local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v13    # "connector":Lorg/mortbay/jetty/Connector;
    .restart local v17    # "endsWithSlash":Z
    .restart local v18    # "gzip":Z
    .restart local v22    # "pathInContext":Ljava/lang/String;
    .restart local v23    # "pathInContextGz":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    goto/16 :goto_1

    .line 393
    .restart local v12    # "cache":Lorg/mortbay/jetty/ResourceCache;
    :cond_d
    if-eqz v12, :cond_3

    .line 395
    :try_start_2
    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v7}, Lorg/mortbay/jetty/ResourceCache;->lookup(Ljava/lang/String;Lorg/mortbay/resource/Resource;)Lorg/mortbay/jetty/ResourceCache$Content;

    move-result-object v8

    .line 396
    if-eqz v8, :cond_3

    .line 397
    invoke-interface {v8}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v7

    goto/16 :goto_2

    .line 414
    :cond_e
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v12, v0, v1}, Lorg/mortbay/jetty/ResourceCache;->lookup(Ljava/lang/String;Lorg/mortbay/resource/ResourceFactory;)Lorg/mortbay/jetty/ResourceCache$Content;

    move-result-object v8

    .line 416
    if-eqz v8, :cond_f

    .line 417
    invoke-interface {v8}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v7

    move-object v14, v8

    .end local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    goto :goto_3

    .line 419
    .end local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v7

    move-object v14, v8

    .end local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    goto/16 :goto_3

    .line 424
    :cond_10
    :try_start_3
    const-string v3, ""

    goto :goto_4

    .line 429
    :cond_11
    invoke-virtual {v7}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_17

    .line 431
    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    if-eqz v3, :cond_13

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_13

    .line 433
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v25

    .line 434
    .local v25, "q":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 435
    if-eqz v25, :cond_12

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    .line 436
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    .line 437
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    move-object v8, v14

    .line 438
    .end local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    goto/16 :goto_5

    .line 442
    .end local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    .end local v25    # "q":Ljava/lang/String;
    .restart local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    :cond_13
    if-nez v14, :cond_26

    .line 443
    new-instance v8, Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v7}, Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;-><init>(Lorg/mortbay/jetty/servlet/DefaultServlet;Lorg/mortbay/resource/Resource;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 445
    .end local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    :goto_7
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v7, v8}, Lorg/mortbay/jetty/servlet/DefaultServlet;->passConditionalHeaders(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Lorg/mortbay/jetty/HttpContent;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 447
    :cond_14
    if-eqz v18, :cond_15

    .line 449
    const-string v3, "Content-Encoding"

    const-string v4, "gzip"

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 451
    .local v20, "mt":Ljava/lang/String;
    if-eqz v20, :cond_15

    .line 452
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 454
    .end local v20    # "mt":Ljava/lang/String;
    :cond_15
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v3 .. v9}, Lorg/mortbay/jetty/servlet/DefaultServlet;->sendData(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;ZLorg/mortbay/resource/Resource;Lorg/mortbay/jetty/HttpContent;Ljava/util/Enumeration;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_5

    .line 516
    :catch_0
    move-exception v16

    .line 518
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    :goto_8
    :try_start_5
    const-string v3, "EXCEPTION "

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 519
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v3

    if-nez v3, :cond_16

    .line 520
    const/16 v3, 0x1f4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 524
    :cond_16
    if-nez v8, :cond_9

    .line 526
    if-eqz v7, :cond_a

    .line 527
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    :goto_9
    invoke-virtual {v7}, Lorg/mortbay/resource/Resource;->release()V

    goto/16 :goto_6

    .line 460
    .end local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    :cond_17
    const/16 v27, 0x0

    .line 462
    .local v27, "welcome":Ljava/lang/String;
    if-eqz v17, :cond_18

    :try_start_6
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    const-string v3, "org.mortbay.jetty.nullPathInfo"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 464
    :cond_18
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v11

    .line 465
    .local v11, "buf":Ljava/lang/StringBuffer;
    const-string v3, ";"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    .line 466
    .local v21, "param":I
    if-gez v21, :cond_1a

    .line 467
    const/16 v3, 0x2f

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 470
    :goto_a
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v25

    .line 471
    .restart local v25    # "q":Ljava/lang/String;
    if-eqz v25, :cond_19

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_19

    .line 473
    const/16 v3, 0x3f

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 474
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    :cond_19
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 477
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    move-object v8, v14

    .line 478
    .end local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    goto/16 :goto_5

    .line 469
    .end local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    .end local v25    # "q":Ljava/lang/String;
    .restart local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    :cond_1a
    const/16 v3, 0x2f

    move/from16 v0, v21

    invoke-virtual {v11, v0, v3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 516
    .end local v11    # "buf":Ljava/lang/StringBuffer;
    .end local v21    # "param":I
    .end local v27    # "welcome":Ljava/lang/String;
    :catch_1
    move-exception v16

    move-object v8, v14

    .end local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    goto :goto_8

    .line 480
    .end local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v27    # "welcome":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getWelcomeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_21

    .line 482
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    if-eqz v3, :cond_1e

    .line 485
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 486
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v25

    .line 487
    .restart local v25    # "q":Ljava/lang/String;
    if-eqz v25, :cond_1c

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1c

    .line 488
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v4}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    :goto_b
    move-object v8, v14

    .line 491
    .end local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    goto/16 :goto_5

    .line 490
    .end local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_b

    .line 524
    .end local v25    # "q":Ljava/lang/String;
    .end local v27    # "welcome":Ljava/lang/String;
    :catchall_0
    move-exception v3

    move-object v8, v14

    .end local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    :goto_c
    if-eqz v8, :cond_24

    .line 525
    invoke-interface {v8}, Lorg/mortbay/jetty/HttpContent;->release()V

    .line 524
    :cond_1d
    :goto_d
    throw v3

    .line 495
    .end local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v27    # "welcome":Ljava/lang/String;
    :cond_1e
    :try_start_7
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v15

    .line 496
    .local v15, "dispatcher":Ljavax/servlet/RequestDispatcher;
    if-eqz v15, :cond_1f

    .line 498
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 499
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v15, v0, v1}, Ljavax/servlet/RequestDispatcher;->include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    :cond_1f
    :goto_e
    move-object v8, v14

    .line 506
    .end local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    goto/16 :goto_5

    .line 502
    .end local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    :cond_20
    const-string v3, "org.mortbay.jetty.welcome"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v3, v1}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v15, v0, v1}, Ljavax/servlet/RequestDispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_e

    .line 510
    .end local v15    # "dispatcher":Ljavax/servlet/RequestDispatcher;
    :cond_21
    new-instance v8, Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v7}, Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;-><init>(Lorg/mortbay/jetty/servlet/DefaultServlet;Lorg/mortbay/resource/Resource;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 511
    .end local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v7, v8}, Lorg/mortbay/jetty/servlet/DefaultServlet;->passConditionalHeaders(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Lorg/mortbay/jetty/HttpContent;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 512
    :cond_22
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_23

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v7, v3}, Lorg/mortbay/jetty/servlet/DefaultServlet;->sendDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Z)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_5

    .line 524
    .end local v27    # "welcome":Ljava/lang/String;
    :catchall_1
    move-exception v3

    goto :goto_c

    .line 512
    .restart local v27    # "welcome":Ljava/lang/String;
    :cond_23
    const/4 v3, 0x0

    goto :goto_f

    .line 526
    .end local v27    # "welcome":Ljava/lang/String;
    :cond_24
    if-eqz v7, :cond_1d

    .line 527
    invoke-virtual {v7}, Lorg/mortbay/resource/Resource;->release()V

    goto :goto_d

    .line 526
    :cond_25
    if-eqz v7, :cond_a

    goto/16 :goto_9

    .end local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    :cond_26
    move-object v8, v14

    .end local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    goto/16 :goto_7

    :cond_27
    move-object v14, v8

    .end local v8    # "content":Lorg/mortbay/jetty/HttpContent;
    .restart local v14    # "content":Lorg/mortbay/jetty/HttpContent;
    goto/16 :goto_3
.end method

.method protected doPost(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/servlet/DefaultServlet;->doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 537
    return-void
.end method

.method protected doTrace(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    const/16 v0, 0x195

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 546
    return-void
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "org.mortbay.jetty.servlet.Default."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/servlet/ServletContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 272
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_0
    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .locals 5
    .param p1, "pathInContext"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 310
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 328
    :cond_0
    :goto_0
    return-object v1

    .line 312
    :cond_1
    const/4 v1, 0x0

    .line 315
    .local v1, "r":Lorg/mortbay/resource/Resource;
    :try_start_0
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;

    invoke-virtual {v3, p1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 316
    iget-boolean v3, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 318
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Aliased resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    :cond_2
    move-object v1, v2

    .line 320
    goto :goto_0

    .line 322
    :cond_3
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "RESOURCE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public init()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/UnavailableException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v2

    .local v2, "config":Ljavax/servlet/ServletContext;
    move-object v14, v2

    .line 154
    check-cast v14, Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .line 155
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v14}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v14

    invoke-virtual {v14}, Lorg/mortbay/jetty/handler/ContextHandler;->getMimeTypes()Lorg/mortbay/jetty/MimeTypes;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    .line 157
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v14}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v14

    invoke-virtual {v14}, Lorg/mortbay/jetty/handler/ContextHandler;->getWelcomeFiles()[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    .line 158
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    if-nez v14, :cond_0

    .line 159
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "index.jsp"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "index.html"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    .line 161
    :cond_0
    const-string v14, "acceptRanges"

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    .line 162
    const-string v14, "dirAllowed"

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    .line 163
    const-string v14, "welcomeServlets"

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    .line 164
    const-string v14, "redirectWelcome"

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    .line 165
    const-string v14, "gzip"

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_gzip:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_gzip:Z

    .line 167
    const-string v14, "aliases"

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    .line 169
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    if-nez v14, :cond_1

    invoke-static {}, Lorg/mortbay/resource/FileResource;->getCheckAliases()Z

    move-result v14

    if-nez v14, :cond_1

    .line 170
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "Alias checking disabled"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 171
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    if-eqz v14, :cond_2

    .line 172
    const-string v14, "Aliases are enabled"

    invoke-interface {v2, v14}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    .line 174
    :cond_2
    const-string v14, "useFileMappedBuffer"

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    .line 176
    const-string v14, "relativeResourceBase"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 177
    .local v12, "rrb":Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 181
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v14}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Lorg/mortbay/jetty/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v11

    .line 182
    .local v11, "root":Lorg/mortbay/resource/Resource;
    if-nez v11, :cond_3

    .line 183
    new-instance v14, Ljavax/servlet/UnavailableException;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "No base resourceBase for relativeResourceBase in"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v11    # "root":Lorg/mortbay/resource/Resource;
    :catch_0
    move-exception v3

    .line 188
    .local v3, "e":Ljava/lang/Exception;
    const-string v14, "EXCEPTION "

    invoke-static {v14, v3}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    new-instance v14, Ljavax/servlet/UnavailableException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 184
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v11    # "root":Lorg/mortbay/resource/Resource;
    :cond_3
    :try_start_1
    invoke-virtual {v11, v12}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    .end local v11    # "root":Lorg/mortbay/resource/Resource;
    :cond_4
    const-string v14, "resourceBase"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 194
    .local v10, "rb":Ljava/lang/String;
    if-eqz v12, :cond_5

    if-eqz v10, :cond_5

    .line 195
    new-instance v14, Ljavax/servlet/UnavailableException;

    const-string v15, "resourceBase & relativeResourceBase"

    invoke-direct {v14, v15}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 197
    :cond_5
    if-eqz v10, :cond_6

    .line 199
    :try_start_2
    invoke-static {v10}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 207
    :cond_6
    const-string v14, "cacheControl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 208
    .local v13, "t":Ljava/lang/String;
    if-eqz v13, :cond_7

    .line 209
    new-instance v14, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v14, v13}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    .line 213
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;

    if-nez v14, :cond_8

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v14}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Lorg/mortbay/jetty/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;

    .line 216
    :cond_8
    const-string v14, "cacheType"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "cache_type":Ljava/lang/String;
    const-string v14, "maxCacheSize"

    const/4 v15, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v7

    .line 218
    .local v7, "max_cache_size":I
    const-string v14, "maxCachedFileSize"

    const/4 v15, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v8

    .line 219
    .local v8, "max_cached_file_size":I
    const-string v14, "maxCachedFiles"

    const/4 v15, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v9

    .line 221
    .local v9, "max_cached_files":I
    if-eqz v1, :cond_9

    const-string v14, "nio"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string v14, "both"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 223
    :cond_9
    const/4 v14, -0x2

    if-eq v7, v14, :cond_a

    if-lez v7, :cond_e

    .line 225
    :cond_a
    new-instance v14, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;-><init>(Lorg/mortbay/jetty/servlet/DefaultServlet;Lorg/mortbay/jetty/MimeTypes;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    .line 226
    if-lez v7, :cond_b

    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    invoke-virtual {v14, v7}, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;->setMaxCacheSize(I)V

    .line 228
    :cond_b
    const/4 v14, -0x1

    if-lt v8, v14, :cond_c

    .line 229
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    invoke-virtual {v14, v8}, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;->setMaxCachedFileSize(I)V

    .line 230
    :cond_c
    const/4 v14, -0x1

    if-lt v9, v14, :cond_d

    .line 231
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    invoke-virtual {v14, v9}, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;->setMaxCachedFiles(I)V

    .line 232
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    invoke-virtual {v14}, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;->start()V

    .line 235
    :cond_e
    const-string v14, "bio"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    const-string v14, "both"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 237
    :cond_f
    const/4 v14, -0x2

    if-eq v7, v14, :cond_10

    if-lez v7, :cond_14

    .line 239
    :cond_10
    new-instance v14, Lorg/mortbay/jetty/ResourceCache;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    invoke-direct {v14, v15}, Lorg/mortbay/jetty/ResourceCache;-><init>(Lorg/mortbay/jetty/MimeTypes;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    .line 240
    if-lez v7, :cond_11

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    invoke-virtual {v14, v7}, Lorg/mortbay/jetty/ResourceCache;->setMaxCacheSize(I)V

    .line 242
    :cond_11
    const/4 v14, -0x1

    if-lt v8, v14, :cond_12

    .line 243
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    invoke-virtual {v14, v8}, Lorg/mortbay/jetty/ResourceCache;->setMaxCachedFileSize(I)V

    .line 244
    :cond_12
    const/4 v14, -0x1

    if-lt v9, v14, :cond_13

    .line 245
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    invoke-virtual {v14, v9}, Lorg/mortbay/jetty/ResourceCache;->setMaxCachedFiles(I)V

    .line 246
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    invoke-virtual {v14}, Lorg/mortbay/jetty/ResourceCache;->start()V

    .line 249
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    if-nez v14, :cond_15

    .line 250
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 258
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v14}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v15

    sget-object v14, Lorg/mortbay/jetty/servlet/DefaultServlet;->class$org$mortbay$jetty$servlet$ServletHandler:Ljava/lang/Class;

    if-nez v14, :cond_16

    const-string v14, "org.mortbay.jetty.servlet.ServletHandler"

    invoke-static {v14}, Lorg/mortbay/jetty/servlet/DefaultServlet;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    sput-object v14, Lorg/mortbay/jetty/servlet/DefaultServlet;->class$org$mortbay$jetty$servlet$ServletHandler:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v15, v14}, Lorg/mortbay/jetty/handler/ContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/mortbay/jetty/Handler;

    move-result-object v14

    check-cast v14, Lorg/mortbay/jetty/servlet/ServletHandler;

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    .line 259
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v14}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v4

    .line 260
    .local v4, "holders":[Lorg/mortbay/jetty/servlet/ServletHolder;
    array-length v5, v4

    .local v5, "i":I
    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    :goto_1
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    if-lez v6, :cond_17

    .line 261
    aget-object v14, v4, v5

    invoke-virtual {v14}, Lorg/mortbay/jetty/servlet/ServletHolder;->getServletInstance()Ljavax/servlet/Servlet;

    move-result-object v14

    move-object/from16 v0, p0

    if-ne v14, v0, :cond_19

    .line 262
    aget-object v14, v4, v5

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_defaultHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    move v6, v5

    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    .line 200
    .end local v1    # "cache_type":Ljava/lang/String;
    .end local v4    # "holders":[Lorg/mortbay/jetty/servlet/ServletHolder;
    .end local v6    # "i":I
    .end local v7    # "max_cache_size":I
    .end local v8    # "max_cached_file_size":I
    .end local v9    # "max_cached_files":I
    .end local v13    # "t":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 202
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v14, "EXCEPTION "

    invoke-static {v14, v3}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    new-instance v14, Ljavax/servlet/UnavailableException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 252
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v13    # "t":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 254
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v14, "EXCEPTION "

    invoke-static {v14, v3}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    new-instance v14, Ljavax/servlet/UnavailableException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 258
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "cache_type":Ljava/lang/String;
    .restart local v7    # "max_cache_size":I
    .restart local v8    # "max_cached_file_size":I
    .restart local v9    # "max_cached_files":I
    :cond_16
    sget-object v14, Lorg/mortbay/jetty/servlet/DefaultServlet;->class$org$mortbay$jetty$servlet$ServletHandler:Ljava/lang/Class;

    goto :goto_0

    .line 264
    .restart local v4    # "holders":[Lorg/mortbay/jetty/servlet/ServletHolder;
    .restart local v5    # "i":I
    :cond_17
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_18

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "resource base = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 265
    :cond_18
    return-void

    :cond_19
    move v6, v5

    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_1
.end method

.method protected passConditionalHeaders(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Lorg/mortbay/jetty/HttpContent;)Z
    .locals 12
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "resource"    # Lorg/mortbay/resource/Resource;
    .param p4, "content"    # Lorg/mortbay/jetty/HttpContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    :try_start_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string v8, "HEAD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 595
    const-string v7, "If-Modified-Since"

    invoke-interface {p1, v7}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 596
    .local v3, "ifms":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 598
    if-eqz p4, :cond_0

    .line 600
    invoke-interface/range {p4 .. p4}, Lorg/mortbay/jetty/HttpContent;->getLastModified()Lorg/mortbay/io/Buffer;

    move-result-object v6

    .line 601
    .local v6, "mdlm":Lorg/mortbay/io/Buffer;
    if-eqz v6, :cond_0

    .line 603
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 605
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->reset()V

    .line 606
    const/16 v7, 0x130

    invoke-interface {p2, v7}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 607
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 608
    const/4 v7, 0x0

    .line 646
    .end local v3    # "ifms":Ljava/lang/String;
    .end local v6    # "mdlm":Lorg/mortbay/io/Buffer;
    :goto_0
    return v7

    .line 613
    .restart local v3    # "ifms":Ljava/lang/String;
    :cond_0
    const-string v7, "If-Modified-Since"

    invoke-interface {p1, v7}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v4

    .line 614
    .local v4, "ifmsl":J
    const-wide/16 v8, -0x1

    cmp-long v7, v4, v8

    if-eqz v7, :cond_1

    .line 616
    invoke-virtual {p3}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long v10, v4, v10

    cmp-long v7, v8, v10

    if-gtz v7, :cond_1

    .line 618
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->reset()V

    .line 619
    const/16 v7, 0x130

    invoke-interface {p2, v7}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 620
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 621
    const/4 v7, 0x0

    goto :goto_0

    .line 627
    .end local v4    # "ifmsl":J
    :cond_1
    const-string v7, "If-Unmodified-Since"

    invoke-interface {p1, v7}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v0

    .line 629
    .local v0, "date":J
    const-wide/16 v8, -0x1

    cmp-long v7, v0, v8

    if-eqz v7, :cond_3

    .line 631
    invoke-virtual {p3}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long v10, v0, v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_3

    .line 633
    const/16 v7, 0x19c

    invoke-interface {p2, v7}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    const/4 v7, 0x0

    goto :goto_0

    .line 640
    .end local v0    # "date":J
    .end local v3    # "ifms":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 642
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v7

    if-nez v7, :cond_2

    .line 643
    const/16 v7, 0x190

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 644
    :cond_2
    throw v2

    .line 646
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_3
    const/4 v7, 0x1

    goto :goto_0
.end method

.method protected sendData(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;ZLorg/mortbay/resource/Resource;Lorg/mortbay/jetty/HttpContent;Ljava/util/Enumeration;)V
    .locals 36
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "include"    # Z
    .param p4, "resource"    # Lorg/mortbay/resource/Resource;
    .param p5, "content"    # Lorg/mortbay/jetty/HttpContent;
    .param p6, "reqRanges"    # Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    if-nez p5, :cond_1

    invoke-virtual/range {p4 .. p4}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v8

    .line 691
    .local v8, "content_length":J
    :goto_0
    const/4 v5, 0x0

    .line 692
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 695
    :goto_1
    if-eqz p6, :cond_0

    invoke-interface/range {p6 .. p6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v4, v8, v6

    if-gez v4, :cond_6

    .line 698
    :cond_0
    if-eqz p3, :cond_2

    .line 700
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    .line 836
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local p2    # "response":Ljavax/servlet/http/HttpServletResponse;
    :goto_2
    return-void

    .line 688
    .end local v8    # "content_length":J
    .restart local p2    # "response":Ljavax/servlet/http/HttpServletResponse;
    :cond_1
    invoke-interface/range {p5 .. p5}, Lorg/mortbay/jetty/HttpContent;->getContentLength()J

    move-result-wide v8

    goto :goto_0

    .line 693
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v8    # "content_length":J
    :catch_0
    move-exception v23

    .local v23, "e":Ljava/lang/IllegalStateException;
    new-instance v5, Lorg/mortbay/io/WriterOutputStream;

    .end local v5    # "out":Ljava/io/OutputStream;
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/mortbay/io/WriterOutputStream;-><init>(Ljava/io/Writer;)V

    .restart local v5    # "out":Ljava/io/OutputStream;
    goto :goto_1

    .line 705
    .end local v23    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    instance-of v4, v5, Lorg/mortbay/jetty/HttpConnection$Output;

    if-eqz v4, :cond_5

    .line 707
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/mortbay/jetty/Response;

    if-eqz v4, :cond_3

    .line 709
    check-cast p2, Lorg/mortbay/jetty/Response;

    .end local p2    # "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-virtual/range {p2 .. p2}, Lorg/mortbay/jetty/Response;->getHttpFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeOptionHeaders(Lorg/mortbay/jetty/HttpFields;)V

    .line 710
    check-cast v5, Lorg/mortbay/jetty/HttpConnection$Output;

    .end local v5    # "out":Ljava/io/OutputStream;
    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Lorg/mortbay/jetty/HttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto :goto_2

    .line 712
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local p2    # "response":Ljavax/servlet/http/HttpServletResponse;
    :cond_3
    invoke-interface/range {p5 .. p5}, Lorg/mortbay/jetty/HttpContent;->getBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 714
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V

    .line 715
    check-cast v5, Lorg/mortbay/jetty/HttpConnection$Output;

    .end local v5    # "out":Ljava/io/OutputStream;
    invoke-interface/range {p5 .. p5}, Lorg/mortbay/jetty/HttpContent;->getBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/mortbay/jetty/HttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto :goto_2

    .line 719
    .restart local v5    # "out":Ljava/io/OutputStream;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V

    .line 720
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto :goto_2

    .line 726
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V

    .line 727
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto :goto_2

    .line 734
    :cond_6
    move-object/from16 v0, p6

    invoke-static {v0, v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->satisfiableRanges(Ljava/util/Enumeration;J)Ljava/util/List;

    move-result-object v32

    .line 737
    .local v32, "ranges":Ljava/util/List;
    if-eqz v32, :cond_7

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_8

    .line 739
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V

    .line 740
    const/16 v4, 0x1a0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 741
    const-string v4, "Content-Range"

    invoke-static {v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->to416HeaderRangeString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v6}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_2

    .line 749
    :cond_8
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_9

    .line 751
    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/mortbay/jetty/InclusiveByteRange;

    .line 753
    .local v33, "singleSatisfiableRange":Lorg/mortbay/jetty/InclusiveByteRange;
    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->getSize(J)J

    move-result-wide v14

    .line 754
    .local v14, "singleLength":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v14, v15}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V

    .line 755
    const/16 v4, 0xce

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 756
    const-string v4, "Content-Range"

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->toHeaderRangeString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v6}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->getFirst(J)J

    move-result-wide v12

    move-object/from16 v10, p4

    move-object v11, v5

    invoke-virtual/range {v10 .. v15}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_2

    .line 767
    .end local v14    # "singleLength":J
    .end local v33    # "singleSatisfiableRange":Lorg/mortbay/jetty/InclusiveByteRange;
    :cond_9
    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v6, v7}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V

    .line 768
    invoke-interface/range {p5 .. p5}, Lorg/mortbay/jetty/HttpContent;->getContentType()Lorg/mortbay/io/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    .line 769
    .local v29, "mimetype":Ljava/lang/String;
    new-instance v17, Lorg/mortbay/util/MultiPartOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lorg/mortbay/util/MultiPartOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 770
    .local v17, "multi":Lorg/mortbay/util/MultiPartOutputStream;
    const/16 v4, 0xce

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 776
    const-string v4, "Request-Range"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 777
    const-string v22, "multipart/x-byteranges; boundary="

    .line 780
    .local v22, "ctp":Ljava/lang/String;
    :goto_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lorg/mortbay/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 782
    invoke-virtual/range {p4 .. p4}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v27

    .line 783
    .local v27, "in":Ljava/io/InputStream;
    const-wide/16 v30, 0x0

    .line 786
    .local v30, "pos":J
    const/16 v28, 0x0

    .line 787
    .local v28, "length":I
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 788
    .local v24, "header":[Ljava/lang/String;
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_4
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_c

    .line 790
    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/mortbay/jetty/InclusiveByteRange;

    .line 791
    .local v26, "ibr":Lorg/mortbay/jetty/InclusiveByteRange;
    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->toHeaderRangeString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v24, v25

    .line 792
    move/from16 v0, v28

    int-to-long v6, v0

    if-lez v25, :cond_b

    const/4 v4, 0x2

    :goto_5
    add-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v17 .. v17}, Lorg/mortbay/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x2

    const-string v10, "Content-Type"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x2

    const-string v10, "Content-Range"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x2

    aget-object v10, v24, v25

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    int-to-long v10, v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->getLast(J)J

    move-result-wide v12

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->getFirst(J)J

    move-result-wide v34

    sub-long v12, v12, v34

    add-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    add-long/2addr v6, v10

    long-to-int v0, v6

    move/from16 v28, v0

    .line 788
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 779
    .end local v22    # "ctp":Ljava/lang/String;
    .end local v24    # "header":[Ljava/lang/String;
    .end local v25    # "i":I
    .end local v26    # "ibr":Lorg/mortbay/jetty/InclusiveByteRange;
    .end local v27    # "in":Ljava/io/InputStream;
    .end local v28    # "length":I
    .end local v30    # "pos":J
    :cond_a
    const-string v22, "multipart/byteranges; boundary="

    .restart local v22    # "ctp":Ljava/lang/String;
    goto/16 :goto_3

    .line 792
    .restart local v24    # "header":[Ljava/lang/String;
    .restart local v25    # "i":I
    .restart local v26    # "ibr":Lorg/mortbay/jetty/InclusiveByteRange;
    .restart local v27    # "in":Ljava/io/InputStream;
    .restart local v28    # "length":I
    .restart local v30    # "pos":J
    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    .line 800
    .end local v26    # "ibr":Lorg/mortbay/jetty/InclusiveByteRange;
    :cond_c
    invoke-virtual/range {v17 .. v17}, Lorg/mortbay/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int v28, v28, v4

    .line 801
    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 803
    const/16 v25, 0x0

    :goto_6
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_10

    .line 805
    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/mortbay/jetty/InclusiveByteRange;

    .line 806
    .restart local v26    # "ibr":Lorg/mortbay/jetty/InclusiveByteRange;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Content-Range: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    aget-object v10, v24, v25

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Lorg/mortbay/util/MultiPartOutputStream;->startPart(Ljava/lang/String;[Ljava/lang/String;)V

    .line 808
    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->getFirst(J)J

    move-result-wide v18

    .line 809
    .local v18, "start":J
    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->getSize(J)J

    move-result-wide v20

    .line 810
    .local v20, "size":J
    if-eqz v27, :cond_f

    .line 813
    cmp-long v4, v18, v30

    if-gez v4, :cond_d

    .line 815
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V

    .line 816
    invoke-virtual/range {p4 .. p4}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v27

    .line 817
    const-wide/16 v30, 0x0

    .line 819
    :cond_d
    cmp-long v4, v30, v18

    if-gez v4, :cond_e

    .line 821
    sub-long v6, v18, v30

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    .line 822
    move-wide/from16 v30, v18

    .line 824
    :cond_e
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 825
    add-long v30, v30, v20

    .line 803
    :goto_7
    add-int/lit8 v25, v25, 0x1

    goto :goto_6

    :cond_f
    move-object/from16 v16, p4

    .line 829
    invoke-virtual/range {v16 .. v21}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto :goto_7

    .line 832
    .end local v18    # "start":J
    .end local v20    # "size":J
    .end local v26    # "ibr":Lorg/mortbay/jetty/InclusiveByteRange;
    :cond_10
    if-eqz v27, :cond_11

    .line 833
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V

    .line 834
    :cond_11
    invoke-virtual/range {v17 .. v17}, Lorg/mortbay/util/MultiPartOutputStream;->close()V

    goto/16 :goto_2
.end method

.method protected sendDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Z)V
    .locals 6
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "resource"    # Lorg/mortbay/resource/Resource;
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x193

    .line 657
    iget-boolean v3, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    if-nez v3, :cond_0

    .line 659
    invoke-interface {p2, v5}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 677
    :goto_0
    return-void

    .line 663
    :cond_0
    const/4 v1, 0x0

    .line 664
    .local v1, "data":[B
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-static {v3, v4}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "base":Ljava/lang/String;
    invoke-virtual {p3, v0, p4}, Lorg/mortbay/resource/Resource;->getListHTML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 666
    .local v2, "dir":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 668
    const-string v3, "No directory"

    invoke-interface {p2, v5, v3}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_0

    .line 673
    :cond_1
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 674
    const-string v3, "text/html; charset=UTF-8"

    invoke-interface {p2, v3}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 675
    array-length v3, v1

    invoke-interface {p2, v3}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 676
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljavax/servlet/ServletOutputStream;->write([B)V

    goto :goto_0
.end method

.method protected writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V
    .locals 11
    .param p1, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p2, "content"    # Lorg/mortbay/jetty/HttpContent;
    .param p3, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 843
    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getContentType()Lorg/mortbay/io/Buffer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletResponse;->getContentType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 844
    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getContentType()Lorg/mortbay/io/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 846
    :cond_0
    instance-of v4, p1, Lorg/mortbay/jetty/Response;

    if-eqz v4, :cond_4

    move-object v1, p1

    .line 848
    check-cast v1, Lorg/mortbay/jetty/Response;

    .line 849
    .local v1, "r":Lorg/mortbay/jetty/Response;
    invoke-virtual {v1}, Lorg/mortbay/jetty/Response;->getHttpFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    .line 851
    .local v0, "fields":Lorg/mortbay/jetty/HttpFields;
    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getLastModified()Lorg/mortbay/io/Buffer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 852
    sget-object v4, Lorg/mortbay/jetty/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getLastModified()Lorg/mortbay/io/Buffer;

    move-result-object v5

    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    .line 860
    :cond_1
    :goto_0
    cmp-long v4, p3, v8

    if-eqz v4, :cond_2

    .line 861
    invoke-virtual {v1, p3, p4}, Lorg/mortbay/jetty/Response;->setLongContentLength(J)V

    .line 863
    :cond_2
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeOptionHeaders(Lorg/mortbay/jetty/HttpFields;)V

    .line 881
    .end local v0    # "fields":Lorg/mortbay/jetty/HttpFields;
    .end local v1    # "r":Lorg/mortbay/jetty/Response;
    :goto_1
    return-void

    .line 853
    .restart local v0    # "fields":Lorg/mortbay/jetty/HttpFields;
    .restart local v1    # "r":Lorg/mortbay/jetty/Response;
    :cond_3
    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 855
    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v2

    .line 856
    .local v2, "lml":J
    cmp-long v4, v2, v8

    if-eqz v4, :cond_1

    .line 857
    sget-object v4, Lorg/mortbay/jetty/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v4, v2, v3}, Lorg/mortbay/jetty/HttpFields;->putDateField(Lorg/mortbay/io/Buffer;J)V

    goto :goto_0

    .line 867
    .end local v0    # "fields":Lorg/mortbay/jetty/HttpFields;
    .end local v1    # "r":Lorg/mortbay/jetty/Response;
    .end local v2    # "lml":J
    :cond_4
    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v2

    .line 868
    .restart local v2    # "lml":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_5

    .line 869
    const-string v4, "Last-Modified"

    invoke-interface {p1, v4, v2, v3}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 871
    :cond_5
    cmp-long v4, p3, v8

    if-eqz v4, :cond_6

    .line 873
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, p3, v4

    if-gez v4, :cond_7

    .line 874
    long-to-int v4, p3

    invoke-interface {p1, v4}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 879
    :cond_6
    :goto_2
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeOptionHeaders(Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_1

    .line 876
    :cond_7
    const-string v4, "Content-Length"

    invoke-static {p3, p4}, Lorg/mortbay/util/TypeUtil;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected writeOptionHeaders(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .param p1, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 896
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    if-eqz v0, :cond_0

    .line 897
    const-string v0, "Accept-Ranges"

    const-string v1, "bytes"

    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    if-eqz v0, :cond_1

    .line 900
    const-string v0, "Cache-Control"

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/mortbay/io/ByteArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    :cond_1
    return-void
.end method

.method protected writeOptionHeaders(Lorg/mortbay/jetty/HttpFields;)V
    .locals 2
    .param p1, "fields"    # Lorg/mortbay/jetty/HttpFields;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    if-eqz v0, :cond_0

    .line 887
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->ACCEPT_RANGES_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v1, Lorg/mortbay/jetty/HttpHeaderValues;->BYTES_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p1, v0, v1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 889
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    if-eqz v0, :cond_1

    .line 890
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE_CONTROL_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {p1, v0, v1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 891
    :cond_1
    return-void
.end method
