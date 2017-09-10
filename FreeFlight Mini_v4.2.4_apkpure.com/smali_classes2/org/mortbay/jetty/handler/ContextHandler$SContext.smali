.class public Lorg/mortbay/jetty/handler/ContextHandler$SContext;
.super Ljava/lang/Object;
.source "ContextHandler.java"

# interfaces
.implements Ljavax/servlet/ServletContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/handler/ContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SContext"
.end annotation


# instance fields
.field private final this$0:Lorg/mortbay/jetty/handler/ContextHandler;


# direct methods
.method protected constructor <init>(Lorg/mortbay/jetty/handler/ContextHandler;)V
    .locals 0

    .prologue
    .line 1205
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1206
    return-void
.end method


# virtual methods
.method public declared-synchronized getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1451
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v1, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1452
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->access$200(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1453
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->access$200(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mortbay/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1454
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1451
    .end local v0    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAttributeNames()Ljava/util/Enumeration;
    .locals 3

    .prologue
    .line 1463
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1464
    .local v1, "set":Ljava/util/HashSet;
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v2}, Lorg/mortbay/jetty/handler/ContextHandler;->access$200(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1466
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v2}, Lorg/mortbay/jetty/handler/ContextHandler;->access$200(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 1467
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1468
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1463
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "set":Ljava/util/HashSet;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1470
    .restart local v1    # "set":Ljava/util/HashSet;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v2}, Lorg/mortbay/jetty/handler/ContextHandler;->access$300(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 1471
    .restart local v0    # "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1472
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1474
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2
.end method

.method public getContext(Ljava/lang/String;)Ljavax/servlet/ServletContext;
    .locals 7
    .param p1, "uripath"    # Ljava/lang/String;

    .prologue
    .line 1223
    const/4 v1, 0x0

    .line 1224
    .local v1, "context":Lorg/mortbay/jetty/handler/ContextHandler;
    iget-object v5, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v5}, Lorg/mortbay/jetty/handler/ContextHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v6

    sget-object v5, Lorg/mortbay/jetty/handler/ContextHandler;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    if-nez v5, :cond_1

    const-string v5, "org.mortbay.jetty.handler.ContextHandler"

    invoke-static {v5}, Lorg/mortbay/jetty/handler/ContextHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/mortbay/jetty/handler/ContextHandler;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v6, v5}, Lorg/mortbay/jetty/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;

    move-result-object v3

    .line 1225
    .local v3, "handlers":[Lorg/mortbay/jetty/Handler;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_5

    .line 1227
    aget-object v5, v3, v4

    if-eqz v5, :cond_0

    aget-object v5, v3, v4

    invoke-interface {v5}, Lorg/mortbay/jetty/Handler;->isStarted()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1225
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1224
    .end local v3    # "handlers":[Lorg/mortbay/jetty/Handler;
    .end local v4    # "i":I
    :cond_1
    sget-object v5, Lorg/mortbay/jetty/handler/ContextHandler;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    goto :goto_0

    .line 1229
    .restart local v3    # "handlers":[Lorg/mortbay/jetty/Handler;
    .restart local v4    # "i":I
    :cond_2
    aget-object v0, v3, v4

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler;

    .line 1230
    .local v0, "ch":Lorg/mortbay/jetty/handler/ContextHandler;
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v2

    .line 1231
    .local v2, "context_path":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_0

    .line 1233
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 1234
    :cond_4
    move-object v1, v0

    goto :goto_2

    .line 1238
    .end local v0    # "ch":Lorg/mortbay/jetty/handler/ContextHandler;
    .end local v2    # "context_path":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_6

    .line 1239
    iget-object v5, v1, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .line 1240
    :goto_3
    return-object v5

    :cond_6
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    return-object v0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1566
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->access$600(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->access$600(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1567
    const-string v0, ""

    .line 1569
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->access$600(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1433
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 1249
    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1258
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v2}, Lorg/mortbay/jetty/handler/ContextHandler;->access$000(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/jetty/MimeTypes;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1263
    :cond_0
    :goto_0
    return-object v1

    .line 1260
    :cond_1
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v2}, Lorg/mortbay/jetty/handler/ContextHandler;->access$000(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/jetty/MimeTypes;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/mortbay/jetty/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 1261
    .local v0, "mime":Lorg/mortbay/io/Buffer;
    if-eqz v0, :cond_0

    .line 1262
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 1272
    const/4 v0, 0x5

    return v0
.end method

.method public getNamedDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1281
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1290
    if-nez p1, :cond_1

    .line 1312
    :cond_0
    :goto_0
    return-object v3

    .line 1292
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 1293
    const-string p1, "/"

    .line 1299
    :cond_2
    :goto_1
    :try_start_0
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v4, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v2

    .line 1300
    .local v2, "resource":Lorg/mortbay/resource/Resource;
    if-eqz v2, :cond_0

    .line 1302
    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    .line 1303
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 1304
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1294
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "resource":Lorg/mortbay/resource/Resource;
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_2

    .line 1295
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1307
    :catch_0
    move-exception v0

    .line 1309
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 1
    .param p1, "uriInContext"    # Ljava/lang/String;

    .prologue
    .line 1321
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1329
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v1, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 1330
    .local v0, "resource":Lorg/mortbay/resource/Resource;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1331
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 1332
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1343
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 1344
    .local v1, "url":Ljava/net/URL;
    if-nez v1, :cond_0

    .line 1351
    .end local v1    # "url":Ljava/net/URL;
    :goto_0
    return-object v2

    .line 1346
    .restart local v1    # "url":Ljava/net/URL;
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1348
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 1350
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getResourcePaths(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1361
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->getResourcePaths(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getServerInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1370
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "jetty/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lorg/mortbay/jetty/Server;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServlet(Ljava/lang/String;)Ljavax/servlet/Servlet;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 1379
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServletContextName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1554
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1555
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1556
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v0

    .line 1557
    :cond_0
    return-object v0
.end method

.method public getServletNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 1388
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getServlets()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 1397
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public log(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1406
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->access$100(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/log/Logger;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1407
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1415
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->access$100(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/log/Logger;

    move-result-object v0

    invoke-interface {v0, p1, v1, v1}, Lorg/mortbay/log/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1416
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1424
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->access$100(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/log/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1425
    return-void
.end method

.method public declared-synchronized removeAttribute(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1524
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lorg/mortbay/jetty/handler/ContextHandler;->access$400(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1526
    iget-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->access$200(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1529
    iget-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->access$300(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/mortbay/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1546
    :cond_0
    monitor-exit p0

    return-void

    .line 1533
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->access$200(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/mortbay/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1534
    .local v2, "old_value":Ljava/lang/Object;
    iget-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->access$200(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/mortbay/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 1535
    if-eqz v2, :cond_0

    .line 1537
    iget-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->access$500(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1539
    new-instance v0, Ljavax/servlet/ServletContextAttributeEvent;

    iget-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    iget-object v3, v3, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-direct {v0, v3, p1, v2}, Ljavax/servlet/ServletContextAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1542
    .local v0, "event":Ljavax/servlet/ServletContextAttributeEvent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->access$500(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1543
    iget-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->access$500(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/ServletContextAttributeListener;

    invoke-interface {v3, v0}, Ljavax/servlet/ServletContextAttributeListener;->attributeRemoved(Ljavax/servlet/ServletContextAttributeEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1542
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1524
    .end local v0    # "event":Ljavax/servlet/ServletContextAttributeEvent;
    .end local v1    # "i":I
    .end local v2    # "old_value":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1484
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v4}, Lorg/mortbay/jetty/handler/ContextHandler;->access$200(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1487
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v4, p1, p2}, Lorg/mortbay/jetty/handler/ContextHandler;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1516
    :cond_0
    monitor-exit p0

    return-void

    .line 1491
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v4, p1, p2}, Lorg/mortbay/jetty/handler/ContextHandler;->access$400(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1492
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v4}, Lorg/mortbay/jetty/handler/ContextHandler;->access$200(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/mortbay/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1494
    .local v3, "old_value":Ljava/lang/Object;
    if-nez p2, :cond_2

    .line 1495
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v4}, Lorg/mortbay/jetty/handler/ContextHandler;->access$200(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/mortbay/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 1499
    :goto_0
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v4}, Lorg/mortbay/jetty/handler/ContextHandler;->access$500(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1501
    new-instance v0, Ljavax/servlet/ServletContextAttributeEvent;

    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    iget-object v5, v4, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-nez v3, :cond_3

    move-object v4, p2

    :goto_1
    invoke-direct {v0, v5, p1, v4}, Ljavax/servlet/ServletContextAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1504
    .local v0, "event":Ljavax/servlet/ServletContextAttributeEvent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v4}, Lorg/mortbay/jetty/handler/ContextHandler;->access$500(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1506
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v4}, Lorg/mortbay/jetty/handler/ContextHandler;->access$500(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/ServletContextAttributeListener;

    .line 1508
    .local v2, "l":Ljavax/servlet/ServletContextAttributeListener;
    if-nez v3, :cond_4

    .line 1509
    invoke-interface {v2, v0}, Ljavax/servlet/ServletContextAttributeListener;->attributeAdded(Ljavax/servlet/ServletContextAttributeEvent;)V

    .line 1504
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1497
    .end local v0    # "event":Ljavax/servlet/ServletContextAttributeEvent;
    .end local v1    # "i":I
    .end local v2    # "l":Ljavax/servlet/ServletContextAttributeListener;
    :cond_2
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v4}, Lorg/mortbay/jetty/handler/ContextHandler;->access$200(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lorg/mortbay/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1484
    .end local v3    # "old_value":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v3    # "old_value":Ljava/lang/Object;
    :cond_3
    move-object v4, v3

    .line 1501
    goto :goto_1

    .line 1510
    .restart local v0    # "event":Ljavax/servlet/ServletContextAttributeEvent;
    .restart local v1    # "i":I
    .restart local v2    # "l":Ljavax/servlet/ServletContextAttributeListener;
    :cond_4
    if-nez p2, :cond_5

    .line 1511
    :try_start_2
    invoke-interface {v2, v0}, Ljavax/servlet/ServletContextAttributeListener;->attributeRemoved(Ljavax/servlet/ServletContextAttributeEvent;)V

    goto :goto_3

    .line 1513
    :cond_5
    invoke-interface {v2, v0}, Ljavax/servlet/ServletContextAttributeListener;->attributeReplaced(Ljavax/servlet/ServletContextAttributeEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1575
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ServletContext@"

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

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->this$0:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
