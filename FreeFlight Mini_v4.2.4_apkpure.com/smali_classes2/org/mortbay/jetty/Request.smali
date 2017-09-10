.class public Lorg/mortbay/jetty/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletRequest;


# static fields
.field private static final _STREAM:I = 0x1

.field private static final __NONE:I = 0x0

.field private static final __READER:I = 0x2

.field private static final __defaultLocale:Ljava/util/Collection;


# instance fields
.field private _attributes:Lorg/mortbay/util/Attributes;

.field private _authType:Ljava/lang/String;

.field private _baseParameters:Lorg/mortbay/util/MultiMap;

.field private _characterEncoding:Ljava/lang/String;

.field private _connection:Lorg/mortbay/jetty/HttpConnection;

.field private _context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

.field private _contextPath:Ljava/lang/String;

.field private _continuation:Lorg/mortbay/util/ajax/Continuation;

.field private _cookies:[Ljavax/servlet/http/Cookie;

.field private _cookiesExtracted:Z

.field private _dns:Z

.field private _endp:Lorg/mortbay/io/EndPoint;

.field private _handled:Z

.field private _inputState:I

.field private _method:Ljava/lang/String;

.field private _parameters:Lorg/mortbay/util/MultiMap;

.field private _paramsExtracted:Z

.field private _pathInfo:Ljava/lang/String;

.field private _port:I

.field private _protocol:Ljava/lang/String;

.field private _queryEncoding:Ljava/lang/String;

.field private _queryString:Ljava/lang/String;

.field private _reader:Ljava/io/BufferedReader;

.field private _readerEncoding:Ljava/lang/String;

.field private _remoteAddr:Ljava/lang/String;

.field private _remoteHost:Ljava/lang/String;

.field private _requestAttributeListeners:Ljava/lang/Object;

.field private _requestListeners:Ljava/lang/Object;

.field private _requestURI:Ljava/lang/String;

.field private _requestedSessionId:Ljava/lang/String;

.field private _requestedSessionIdFromCookie:Z

.field private _roleMap:Ljava/util/Map;

.field private _savedNewSessions:Ljava/util/Map;

.field private _scheme:Ljava/lang/String;

.field private _serverName:Ljava/lang/String;

.field private _servletName:Ljava/lang/String;

.field private _servletPath:Ljava/lang/String;

.field private _session:Ljavax/servlet/http/HttpSession;

.field private _sessionManager:Lorg/mortbay/jetty/SessionManager;

.field private _timeStamp:J

.field private _timeStampBuffer:Lorg/mortbay/io/Buffer;

.field private _unparsedCookies:[Ljava/lang/String;

.field private _uri:Lorg/mortbay/jetty/HttpURI;

.field private _userPrincipal:Ljava/security/Principal;

.field private _userRealm:Lorg/mortbay/jetty/security/UserRealm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/Request;->__defaultLocale:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v1, p0, Lorg/mortbay/jetty/Request;->_handled:Z

    .line 124
    const-string v0, "HTTP/1.1"

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_protocol:Ljava/lang/String;

    .line 127
    iput-boolean v1, p0, Lorg/mortbay/jetty/Request;->_requestedSessionIdFromCookie:Z

    .line 129
    const-string v0, "http"

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_scheme:Ljava/lang/String;

    .line 138
    iput v1, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    .line 141
    iput-boolean v1, p0, Lorg/mortbay/jetty/Request;->_dns:Z

    .line 145
    iput-boolean v1, p0, Lorg/mortbay/jetty/Request;->_cookiesExtracted:Z

    .line 162
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/mortbay/jetty/HttpConnection;

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v1, p0, Lorg/mortbay/jetty/Request;->_handled:Z

    .line 124
    const-string v0, "HTTP/1.1"

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_protocol:Ljava/lang/String;

    .line 127
    iput-boolean v1, p0, Lorg/mortbay/jetty/Request;->_requestedSessionIdFromCookie:Z

    .line 129
    const-string v0, "http"

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_scheme:Ljava/lang/String;

    .line 138
    iput v1, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    .line 141
    iput-boolean v1, p0, Lorg/mortbay/jetty/Request;->_dns:Z

    .line 145
    iput-boolean v1, p0, Lorg/mortbay/jetty/Request;->_cookiesExtracted:Z

    .line 170
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    .line 171
    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getEndPoint()Lorg/mortbay/io/EndPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    .line 172
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResolveNames()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/jetty/Request;->_dns:Z

    .line 173
    return-void
.end method

.method private extractParameters()V
    .locals 15

    .prologue
    .line 1498
    iget-object v12, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    if-nez v12, :cond_0

    .line 1499
    new-instance v12, Lorg/mortbay/util/MultiMap;

    const/16 v13, 0x10

    invoke-direct {v12, v13}, Lorg/mortbay/util/MultiMap;-><init>(I)V

    iput-object v12, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    .line 1501
    :cond_0
    iget-boolean v12, p0, Lorg/mortbay/jetty/Request;->_paramsExtracted:Z

    if-eqz v12, :cond_2

    .line 1503
    iget-object v12, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    if-nez v12, :cond_1

    .line 1504
    iget-object v12, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    iput-object v12, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    .line 1594
    :cond_1
    :goto_0
    return-void

    .line 1508
    :cond_2
    const/4 v12, 0x1

    iput-boolean v12, p0, Lorg/mortbay/jetty/Request;->_paramsExtracted:Z

    .line 1511
    iget-object v12, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v12}, Lorg/mortbay/jetty/HttpURI;->hasQuery()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1513
    iget-object v12, p0, Lorg/mortbay/jetty/Request;->_queryEncoding:Ljava/lang/String;

    if-nez v12, :cond_7

    .line 1514
    iget-object v12, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    iget-object v13, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v12, v13}, Lorg/mortbay/jetty/HttpURI;->decodeQueryTo(Lorg/mortbay/util/MultiMap;)V

    .line 1534
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v3

    .line 1535
    .local v3, "encoding":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 1536
    .local v1, "content_type":Ljava/lang/String;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_6

    .line 1538
    const/4 v12, 0x0

    invoke-static {v1, v12}, Lorg/mortbay/jetty/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 1540
    const-string v12, "application/x-www-form-urlencoded"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget v12, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    if-nez v12, :cond_6

    const-string v12, "POST"

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "PUT"

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1543
    :cond_4
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getContentLength()I

    move-result v0

    .line 1544
    .local v0, "content_length":I
    if-eqz v0, :cond_6

    .line 1548
    const/4 v8, -0x1

    .line 1550
    .local v8, "maxFormContentSize":I
    :try_start_0
    iget-object v12, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-eqz v12, :cond_9

    .line 1551
    iget-object v12, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v12}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v12

    invoke-virtual {v12}, Lorg/mortbay/jetty/handler/ContextHandler;->getMaxFormContentSize()I

    move-result v8

    .line 1559
    :cond_5
    :goto_2
    if-le v0, v8, :cond_a

    if-lez v8, :cond_a

    .line 1561
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Form too large"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, ">"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1568
    :catch_0
    move-exception v2

    .line 1570
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1571
    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    .line 1579
    .end local v0    # "content_length":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "maxFormContentSize":I
    :cond_6
    :goto_3
    iget-object v12, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    if-nez v12, :cond_d

    .line 1580
    iget-object v12, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    iput-object v12, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    goto/16 :goto_0

    .line 1519
    .end local v1    # "content_type":Ljava/lang/String;
    .end local v3    # "encoding":Ljava/lang/String;
    :cond_7
    :try_start_1
    iget-object v12, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    iget-object v13, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    iget-object v14, p0, Lorg/mortbay/jetty/Request;->_queryEncoding:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lorg/mortbay/jetty/HttpURI;->decodeQueryTo(Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1522
    :catch_1
    move-exception v2

    .line 1524
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1525
    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1527
    :cond_8
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1554
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "content_length":I
    .restart local v1    # "content_type":Ljava/lang/String;
    .restart local v3    # "encoding":Ljava/lang/String;
    .restart local v8    # "maxFormContentSize":I
    :cond_9
    :try_start_2
    iget-object v12, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v12}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v12

    invoke-interface {v12}, Lorg/mortbay/jetty/Connector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v12

    const-string v13, "org.mortbay.jetty.Request.maxFormContentSize"

    invoke-virtual {v12, v13}, Lorg/mortbay/jetty/Server;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1555
    .local v10, "size":Ljava/lang/Integer;
    if-eqz v10, :cond_5

    .line 1556
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_2

    .line 1563
    .end local v10    # "size":Ljava/lang/Integer;
    :cond_a
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v6

    .line 1566
    .local v6, "in":Ljava/io/InputStream;
    iget-object v13, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    if-gez v0, :cond_b

    move v12, v8

    :goto_4
    invoke-static {v6, v13, v3, v12}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_b
    const/4 v12, -0x1

    goto :goto_4

    .line 1573
    .end local v6    # "in":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/IOException;
    :cond_c
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_3

    .line 1581
    .end local v0    # "content_length":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "maxFormContentSize":I
    :cond_d
    iget-object v12, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    iget-object v13, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    if-eq v12, v13, :cond_1

    .line 1584
    iget-object v12, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v12}, Lorg/mortbay/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1585
    .local v7, "iter":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1587
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1588
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1589
    .local v9, "name":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 1590
    .local v11, "values":Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    invoke-static {v11}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v12

    if-ge v5, v12, :cond_e

    .line 1591
    iget-object v12, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    invoke-static {v11, v5}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1590
    add-int/lit8 v5, v5, 0x1

    goto :goto_5
.end method

.method public static getRequest(Ljavax/servlet/http/HttpServletRequest;)Lorg/mortbay/jetty/Request;
    .locals 1
    .param p0, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 1940
    instance-of v0, p0, Lorg/mortbay/jetty/Request;

    if-eqz v0, :cond_0

    .line 1941
    check-cast p0, Lorg/mortbay/jetty/Request;

    .line 1949
    .end local p0    # "request":Ljavax/servlet/http/HttpServletRequest;
    :goto_0
    return-object p0

    .line 1943
    .restart local p0    # "request":Ljavax/servlet/http/HttpServletRequest;
    :cond_0
    :goto_1
    instance-of v0, p0, Ljavax/servlet/ServletRequestWrapper;

    if-eqz v0, :cond_1

    .line 1944
    check-cast p0, Ljavax/servlet/ServletRequestWrapper;

    .end local p0    # "request":Ljavax/servlet/http/HttpServletRequest;
    invoke-virtual {p0}, Ljavax/servlet/ServletRequestWrapper;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object p0

    check-cast p0, Ljavax/servlet/http/HttpServletRequest;

    .restart local p0    # "request":Ljavax/servlet/http/HttpServletRequest;
    goto :goto_1

    .line 1946
    :cond_1
    instance-of v0, p0, Lorg/mortbay/jetty/Request;

    if-eqz v0, :cond_2

    .line 1947
    check-cast p0, Lorg/mortbay/jetty/Request;

    goto :goto_0

    .line 1949
    :cond_2
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public addEventListener(Ljava/util/EventListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 1955
    instance-of v0, p1, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v0, :cond_0

    .line 1956
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    .line 1957
    :cond_0
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 290
    const-string v0, "org.mortbay.jetty.ajax.Continuation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Request;->getContinuation(Z)Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    .line 293
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    if-nez v0, :cond_1

    .line 294
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    invoke-interface {v0, p1}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    if-nez v0, :cond_0

    .line 305
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    invoke-static {v0}, Lorg/mortbay/util/AttributesMap;->getAttributeNamesCopy(Lorg/mortbay/util/Attributes;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributes()Lorg/mortbay/util/Attributes;
    .locals 1

    .prologue
    .line 1877
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    if-nez v0, :cond_0

    .line 1878
    new-instance v0, Lorg/mortbay/util/AttributesMap;

    invoke-direct {v0}, Lorg/mortbay/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    .line 1879
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    return-object v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_authType:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Lorg/mortbay/jetty/HttpConnection;
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    return-object v0
.end method

.method public getContentLength()I
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpFields;->getLongField(Lorg/mortbay/io/Buffer;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getContentRead()J
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getParser()Lorg/mortbay/jetty/Parser;

    move-result-object v0

    if-nez v0, :cond_1

    .line 330
    :cond_0
    const-wide/16 v0, -0x1

    .line 332
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getParser()Lorg/mortbay/jetty/Parser;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->getContentRead()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpFields;->getStringField(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    .locals 1

    .prologue
    .line 1836
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    return-object v0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_contextPath:Ljava/lang/String;

    return-object v0
.end method

.method public getContinuation()Lorg/mortbay/util/ajax/Continuation;
    .locals 1

    .prologue
    .line 1893
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_continuation:Lorg/mortbay/util/ajax/Continuation;

    return-object v0
.end method

.method public getContinuation(Z)Lorg/mortbay/util/ajax/Continuation;
    .locals 1
    .param p1, "create"    # Z

    .prologue
    .line 1899
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_continuation:Lorg/mortbay/util/ajax/Continuation;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1900
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/jetty/Connector;->newContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_continuation:Lorg/mortbay/util/ajax/Continuation;

    .line 1901
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_continuation:Lorg/mortbay/util/ajax/Continuation;

    return-object v0
.end method

.method public getCookies()[Ljavax/servlet/http/Cookie;
    .locals 25

    .prologue
    .line 378
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mortbay/jetty/Request;->_cookiesExtracted:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    move-object/from16 v23, v0

    .line 669
    :goto_0
    return-object v23

    .line 382
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v23

    sget-object v24, Lorg/mortbay/jetty/HttpHeaders;->COOKIE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual/range {v23 .. v24}, Lorg/mortbay/jetty/HttpFields;->containsKey(Lorg/mortbay/io/Buffer;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 384
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 385
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/Request;->_cookiesExtracted:Z

    .line 386
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    move-object/from16 v23, v0

    goto :goto_0

    .line 391
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 393
    const/4 v13, 0x0

    .line 394
    .local v13, "last":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v23

    sget-object v24, Lorg/mortbay/jetty/HttpHeaders;->COOKIE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual/range {v23 .. v24}, Lorg/mortbay/jetty/HttpFields;->getValues(Lorg/mortbay/io/Buffer;)Ljava/util/Enumeration;

    move-result-object v7

    .line 395
    .local v7, "enm":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 397
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 398
    .local v2, "c":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v13

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 400
    :cond_2
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    .line 405
    .end local v2    # "c":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v0, v13, :cond_5

    .line 407
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/Request;->_cookiesExtracted:Z

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    move-object/from16 v23, v0

    goto/16 :goto_0

    .line 403
    .restart local v2    # "c":Ljava/lang/String;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 404
    goto :goto_1

    .line 413
    .end local v2    # "c":Ljava/lang/String;
    .end local v7    # "enm":Ljava/util/Enumeration;
    .end local v13    # "last":I
    :cond_5
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 414
    const/4 v5, 0x0

    .line 415
    .local v5, "cookies":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 417
    .local v14, "lastCookies":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 420
    .local v22, "version":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v23

    sget-object v24, Lorg/mortbay/jetty/HttpHeaders;->COOKIE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual/range {v23 .. v24}, Lorg/mortbay/jetty/HttpFields;->getValues(Lorg/mortbay/io/Buffer;)Ljava/util/Enumeration;

    move-result-object v7

    .line 421
    .end local v5    # "cookies":Ljava/lang/Object;
    .end local v14    # "lastCookies":Ljava/lang/Object;
    .restart local v7    # "enm":Ljava/util/Enumeration;
    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_19

    .line 426
    :try_start_0
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 427
    .local v9, "hdr":Ljava/lang/String;
    invoke-static {v14, v9}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 430
    .restart local v14    # "lastCookies":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 431
    .local v17, "name":Ljava/lang/String;
    const/16 v21, 0x0

    .line 433
    .local v21, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .line 435
    .local v3, "cookie":Ljavax/servlet/http/Cookie;
    const/4 v11, 0x0

    .line 436
    .local v11, "invalue":Z
    const/16 v18, 0x0

    .line 437
    .local v18, "quoted":Z
    const/4 v8, 0x0

    .line 438
    .local v8, "escaped":Z
    const/16 v20, -0x1

    .line 439
    .local v20, "tokenstart":I
    const/16 v19, -0x1

    .line 440
    .local v19, "tokenend":I
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    .local v15, "length":I
    add-int/lit8 v13, v15, -0x1

    .restart local v13    # "last":I
    move-object v4, v3

    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .local v4, "cookie":Ljavax/servlet/http/Cookie;
    :goto_3
    if-ge v10, v15, :cond_6

    .line 442
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 445
    .local v2, "c":C
    if-eqz v18, :cond_b

    .line 447
    if-eqz v8, :cond_7

    .line 449
    const/4 v8, 0x0

    move-object v3, v4

    .line 440
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object v4, v3

    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    goto :goto_3

    .line 453
    :cond_7
    sparse-switch v2, :sswitch_data_0

    move-object v3, v4

    .line 476
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    goto :goto_4

    .line 456
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :sswitch_0
    move/from16 v19, v10

    .line 457
    const/16 v18, 0x0

    .line 460
    if-ne v10, v13, :cond_8

    .line 462
    if-eqz v11, :cond_a

    .line 463
    add-int/lit8 v23, v19, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 584
    :cond_8
    :goto_5
    if-eqz v21, :cond_21

    if-eqz v17, :cond_21

    .line 587
    invoke-static/range {v17 .. v17}, Lorg/mortbay/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 588
    invoke-static/range {v21 .. v21}, Lorg/mortbay/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v21

    .line 592
    :try_start_1
    const-string v23, "$"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 594
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 595
    .local v16, "lowercaseName":Ljava/lang/String;
    const-string v23, "$path"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 597
    if-eqz v4, :cond_9

    .line 598
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljavax/servlet/http/Cookie;->setPath(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    :goto_6
    move-object v3, v4

    .line 629
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .end local v16    # "lowercaseName":Ljava/lang/String;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    :goto_7
    const/16 v17, 0x0

    .line 630
    const/16 v21, 0x0

    goto :goto_4

    .line 466
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :cond_a
    add-int/lit8 v23, v19, 0x1

    :try_start_2
    move/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 467
    const-string v21, ""

    goto :goto_5

    .line 473
    :sswitch_1
    const/4 v8, 0x1

    move-object v3, v4

    .line 474
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    goto :goto_4

    .line 482
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :cond_b
    if-eqz v11, :cond_f

    .line 485
    sparse-switch v2, :sswitch_data_1

    .line 516
    if-gez v20, :cond_c

    .line 517
    move/from16 v20, v10

    .line 518
    :cond_c
    move/from16 v19, v10

    .line 519
    if-ne v10, v13, :cond_21

    .line 521
    add-int/lit8 v23, v19, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 522
    goto :goto_5

    :sswitch_2
    move-object v3, v4

    .line 489
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    goto :goto_4

    .line 492
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :sswitch_3
    if-gez v20, :cond_d

    .line 494
    const/16 v18, 0x1

    .line 495
    move/from16 v20, v10

    .line 497
    :cond_d
    move/from16 v19, v10

    .line 498
    if-ne v10, v13, :cond_21

    .line 500
    add-int/lit8 v23, v19, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 501
    goto :goto_5

    .line 507
    :sswitch_4
    if-ltz v20, :cond_e

    .line 508
    add-int/lit8 v23, v19, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 511
    :goto_8
    const/16 v20, -0x1

    .line 512
    const/4 v11, 0x0

    .line 513
    goto/16 :goto_5

    .line 510
    :cond_e
    const-string v21, ""

    goto :goto_8

    .line 530
    :cond_f
    sparse-switch v2, :sswitch_data_2

    .line 569
    if-gez v20, :cond_10

    .line 570
    move/from16 v20, v10

    .line 571
    :cond_10
    move/from16 v19, v10

    .line 572
    if-ne v10, v13, :cond_21

    .line 574
    add-int/lit8 v23, v19, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 575
    const-string v21, ""

    goto/16 :goto_5

    :sswitch_5
    move-object v3, v4

    .line 534
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    goto/16 :goto_4

    .line 537
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :sswitch_6
    if-gez v20, :cond_11

    .line 539
    const/16 v18, 0x1

    .line 540
    move/from16 v20, v10

    .line 542
    :cond_11
    move/from16 v19, v10

    .line 543
    if-ne v10, v13, :cond_21

    .line 545
    add-int/lit8 v23, v19, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 546
    const-string v21, ""

    .line 547
    goto/16 :goto_5

    .line 553
    :sswitch_7
    if-ltz v20, :cond_12

    .line 555
    add-int/lit8 v23, v19, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 556
    const-string v21, ""

    .line 558
    :cond_12
    const/16 v20, -0x1

    .line 559
    goto/16 :goto_5

    .line 562
    :sswitch_8
    if-ltz v20, :cond_13

    .line 563
    add-int/lit8 v23, v19, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v17

    .line 564
    :cond_13
    const/16 v20, -0x1

    .line 565
    const/4 v11, 0x1

    move-object v3, v4

    .line 566
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    goto/16 :goto_4

    .line 600
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v16    # "lowercaseName":Ljava/lang/String;
    :cond_14
    :try_start_3
    const-string v23, "$domain"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 602
    if-eqz v4, :cond_9

    .line 603
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljavax/servlet/http/Cookie;->setDomain(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .line 623
    .end local v16    # "lowercaseName":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 625
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .local v6, "e":Ljava/lang/Exception;
    :goto_9
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 626
    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_7

    .line 635
    .end local v2    # "c":C
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "escaped":Z
    .end local v9    # "hdr":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "invalue":Z
    .end local v13    # "last":I
    .end local v14    # "lastCookies":Ljava/lang/Object;
    .end local v15    # "length":I
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "quoted":Z
    .end local v19    # "tokenend":I
    .end local v20    # "tokenstart":I
    .end local v21    # "value":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 637
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 605
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "c":C
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v8    # "escaped":Z
    .restart local v9    # "hdr":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v11    # "invalue":Z
    .restart local v13    # "last":I
    .restart local v14    # "lastCookies":Ljava/lang/Object;
    .restart local v15    # "length":I
    .restart local v16    # "lowercaseName":Ljava/lang/String;
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v18    # "quoted":Z
    .restart local v19    # "tokenend":I
    .restart local v20    # "tokenstart":I
    .restart local v21    # "value":Ljava/lang/String;
    :cond_15
    :try_start_5
    const-string v23, "$port"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 607
    if-eqz v4, :cond_9

    .line 608
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    const-string v24, "port="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljavax/servlet/http/Cookie;->setComment(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 610
    :cond_16
    const-string v23, "$version"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 612
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    goto/16 :goto_6

    .line 617
    .end local v16    # "lowercaseName":Ljava/lang/String;
    :cond_17
    new-instance v3, Ljavax/servlet/http/Cookie;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v3, v0, v1}, Ljavax/servlet/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 618
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    if-lez v22, :cond_18

    .line 619
    :try_start_6
    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljavax/servlet/http/Cookie;->setVersion(I)V

    .line 620
    :cond_18
    invoke-static {v5, v3}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v5

    .restart local v5    # "cookies":Ljava/lang/Object;
    goto/16 :goto_7

    .line 642
    .end local v2    # "c":C
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .end local v5    # "cookies":Ljava/lang/Object;
    .end local v8    # "escaped":Z
    .end local v9    # "hdr":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "invalue":Z
    .end local v13    # "last":I
    .end local v14    # "lastCookies":Ljava/lang/Object;
    .end local v15    # "length":I
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "quoted":Z
    .end local v19    # "tokenend":I
    .end local v20    # "tokenstart":I
    .end local v21    # "value":Ljava/lang/String;
    :cond_19
    invoke-static {v5}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v12

    .line 643
    .local v12, "l":I
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/Request;->_cookiesExtracted:Z

    .line 644
    if-lez v12, :cond_1d

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v0, v12, :cond_1b

    .line 648
    :cond_1a
    new-array v0, v12, [Ljavax/servlet/http/Cookie;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 651
    :cond_1b
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_a
    if-ge v10, v12, :cond_1c

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    move-object/from16 v24, v0

    invoke-static {v5, v10}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljavax/servlet/http/Cookie;

    aput-object v23, v24, v10

    .line 651
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 655
    :cond_1c
    invoke-static {v14}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v12

    .line 656
    new-array v0, v12, [Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    .line 657
    const/4 v10, 0x0

    :goto_b
    if-ge v10, v12, :cond_1e

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static {v14, v10}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    aput-object v23, v24, v10

    .line 657
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 662
    .end local v10    # "i":I
    :cond_1d
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 663
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    .line 667
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_20

    .line 668
    :cond_1f
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 669
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    move-object/from16 v23, v0

    goto/16 :goto_0

    .line 623
    .end local v12    # "l":I
    .restart local v2    # "c":C
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v8    # "escaped":Z
    .restart local v9    # "hdr":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v11    # "invalue":Z
    .restart local v13    # "last":I
    .restart local v14    # "lastCookies":Ljava/lang/Object;
    .restart local v15    # "length":I
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v18    # "quoted":Z
    .restart local v19    # "tokenend":I
    .restart local v20    # "tokenstart":I
    .restart local v21    # "value":Ljava/lang/String;
    :catch_2
    move-exception v6

    goto/16 :goto_9

    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :cond_21
    move-object v3, v4

    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    goto/16 :goto_4

    .line 453
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch

    .line 485
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_2
        0x20 -> :sswitch_2
        0x22 -> :sswitch_3
        0x2c -> :sswitch_4
        0x3b -> :sswitch_4
    .end sparse-switch

    .line 530
    :sswitch_data_2
    .sparse-switch
        0x9 -> :sswitch_5
        0x20 -> :sswitch_5
        0x22 -> :sswitch_6
        0x2c -> :sswitch_7
        0x3b -> :sswitch_7
        0x3d -> :sswitch_8
    .end sparse-switch
.end method

.method public getDateHeader(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 678
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpFields;->getDateField(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 687
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields;->getFieldNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 705
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mortbay/jetty/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 706
    .local v0, "e":Ljava/util/Enumeration;
    if-nez v0, :cond_0

    .line 707
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 708
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_0
    return-object v0
.end method

.method public getInputState()I
    .locals 1

    .prologue
    .line 1665
    iget v0, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    return v0
.end method

.method public getInputStream()Ljavax/servlet/ServletInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 717
    iget v0, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    if-eq v0, v1, :cond_0

    .line 718
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_0
    iput v1, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    .line 720
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getIntHeader(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 729
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpFields;->getLongField(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 829
    iget-boolean v1, p0, Lorg/mortbay/jetty/Request;->_dns:Z

    if-eqz v1, :cond_2

    .line 830
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    if-nez v1, :cond_1

    .line 831
    :cond_0
    :goto_0
    return-object v0

    .line 830
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 831
    :cond_2
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 10

    .prologue
    .line 747
    iget-object v7, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v7}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v7

    const-string v8, "Accept-Language"

    const-string v9, ", \t"

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/jetty/HttpFields;->getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    .line 750
    .local v3, "enm":Ljava/util/Enumeration;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-nez v7, :cond_1

    .line 751
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 775
    :goto_0
    return-object v7

    .line 754
    :cond_1
    invoke-static {v3}, Lorg/mortbay/jetty/HttpFields;->qualityList(Ljava/util/Enumeration;)Ljava/util/List;

    move-result-object v0

    .line 755
    .local v0, "acceptLanguage":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 756
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    goto :goto_0

    .line 758
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 761
    .local v6, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    if-ge v4, v6, :cond_4

    .line 763
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 764
    .local v5, "language":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v5, v7}, Lorg/mortbay/jetty/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 765
    const-string v1, ""

    .line 766
    .local v1, "country":Ljava/lang/String;
    const/16 v7, 0x2d

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 767
    .local v2, "dash":I
    const/4 v7, -0x1

    if-le v2, v7, :cond_3

    .line 769
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 770
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 772
    :cond_3
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v5, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 775
    .end local v1    # "country":Ljava/lang/String;
    .end local v2    # "dash":I
    .end local v5    # "language":Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    goto :goto_0
.end method

.method public getLocales()Ljava/util/Enumeration;
    .locals 11

    .prologue
    .line 785
    iget-object v8, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v8}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v8

    const-string v9, "Accept-Language"

    const-string v10, ", \t"

    invoke-virtual {v8, v9, v10}, Lorg/mortbay/jetty/HttpFields;->getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    .line 788
    .local v3, "enm":Ljava/util/Enumeration;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-nez v8, :cond_1

    .line 789
    :cond_0
    sget-object v8, Lorg/mortbay/jetty/Request;->__defaultLocale:Ljava/util/Collection;

    invoke-static {v8}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v8

    .line 820
    :goto_0
    return-object v8

    .line 792
    :cond_1
    invoke-static {v3}, Lorg/mortbay/jetty/HttpFields;->qualityList(Ljava/util/Enumeration;)Ljava/util/List;

    move-result-object v0

    .line 794
    .local v0, "acceptLanguage":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 795
    sget-object v8, Lorg/mortbay/jetty/Request;->__defaultLocale:Ljava/util/Collection;

    invoke-static {v8}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v8

    goto :goto_0

    .line 798
    :cond_2
    const/4 v5, 0x0

    .line 799
    .local v5, "langs":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 802
    .local v7, "size":I
    const/4 v4, 0x0

    .end local v5    # "langs":Ljava/lang/Object;
    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_4

    .line 804
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 805
    .local v6, "language":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lorg/mortbay/jetty/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 806
    const-string v1, ""

    .line 807
    .local v1, "country":Ljava/lang/String;
    const/16 v8, 0x2d

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 808
    .local v2, "dash":I
    const/4 v8, -0x1

    if-le v2, v8, :cond_3

    .line 810
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 811
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 813
    :cond_3
    invoke-static {v5, v7}, Lorg/mortbay/util/LazyList;->ensureSize(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 814
    .restart local v5    # "langs":Ljava/lang/Object;
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v6, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v8}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 802
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 817
    .end local v1    # "country":Ljava/lang/String;
    .end local v2    # "dash":I
    .end local v5    # "langs":Ljava/lang/Object;
    .end local v6    # "language":Ljava/lang/String;
    :cond_4
    invoke-static {v5}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v8

    if-nez v8, :cond_5

    .line 818
    sget-object v8, Lorg/mortbay/jetty/Request;->__defaultLocale:Ljava/util/Collection;

    invoke-static {v8}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v8

    goto :goto_0

    .line 820
    :cond_5
    invoke-static {v5}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v8

    goto :goto_0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 858
    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_paramsExtracted:Z

    if-nez v0, :cond_0

    .line 859
    invoke-direct {p0}, Lorg/mortbay/jetty/Request;->extractParameters()V

    .line 860
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mortbay/util/MultiMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 869
    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_paramsExtracted:Z

    if-nez v0, :cond_0

    .line 870
    invoke-direct {p0}, Lorg/mortbay/jetty/Request;->extractParameters()V

    .line 872
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0}, Lorg/mortbay/util/MultiMap;->toStringArrayMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 881
    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_paramsExtracted:Z

    if-nez v0, :cond_0

    .line 882
    invoke-direct {p0}, Lorg/mortbay/jetty/Request;->extractParameters()V

    .line 883
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0}, Lorg/mortbay/util/MultiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getParameterValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 892
    iget-boolean v1, p0, Lorg/mortbay/jetty/Request;->_paramsExtracted:Z

    if-nez v1, :cond_0

    .line 893
    invoke-direct {p0}, Lorg/mortbay/jetty/Request;->extractParameters()V

    .line 894
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v1, p1}, Lorg/mortbay/util/MultiMap;->getValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 895
    .local v0, "vals":Ljava/util/List;
    if-nez v0, :cond_1

    .line 896
    const/4 v1, 0x0

    .line 897
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getParameters()Lorg/mortbay/util/MultiMap;
    .locals 1

    .prologue
    .line 1916
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    return-object v0
.end method

.method public getPathInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_pathInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPathTranslated()Ljava/lang/String;
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_pathInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-nez v0, :cond_1

    .line 916
    :cond_0
    const/4 v0, 0x0

    .line 917
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_pathInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2021
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_queryEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1291
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_queryString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_queryEncoding:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1294
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_queryString:Ljava/lang/String;

    .line 1298
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_queryString:Ljava/lang/String;

    return-object v0

    .line 1296
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_queryEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpURI;->getQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_queryString:Ljava/lang/String;

    goto :goto_0
.end method

.method public getReader()Ljava/io/BufferedReader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 935
    iget v2, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    if-eq v2, v4, :cond_0

    .line 936
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "STREAMED"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 938
    :cond_0
    iget v2, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    if-ne v2, v4, :cond_1

    .line 939
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_reader:Ljava/io/BufferedReader;

    .line 958
    :goto_0
    return-object v2

    .line 941
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 943
    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    .line 945
    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_reader:Ljava/io/BufferedReader;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_readerEncoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 947
    :cond_3
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v1

    .line 948
    .local v1, "in":Ljavax/servlet/ServletInputStream;
    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_readerEncoding:Ljava/lang/String;

    .line 949
    new-instance v2, Lorg/mortbay/jetty/Request$1;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, p0, v3, v1}, Lorg/mortbay/jetty/Request$1;-><init>(Lorg/mortbay/jetty/Request;Ljava/io/Reader;Ljavax/servlet/ServletInputStream;)V

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_reader:Ljava/io/BufferedReader;

    .line 957
    .end local v1    # "in":Ljavax/servlet/ServletInputStream;
    :cond_4
    iput v4, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    .line 958
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_reader:Ljava/io/BufferedReader;

    goto :goto_0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 967
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-nez v0, :cond_0

    .line 968
    const/4 v0, 0x0

    .line 969
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_remoteAddr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_remoteAddr:Ljava/lang/String;

    .line 980
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 989
    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_dns:Z

    if-eqz v0, :cond_2

    .line 991
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_remoteHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_remoteHost:Ljava/lang/String;

    .line 997
    :goto_0
    return-object v0

    .line 995
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 997
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->getRemotePort()I

    move-result v0

    goto :goto_0
.end method

.method public getRemoteUser()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1015
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 1016
    .local v0, "p":Ljava/security/Principal;
    if-nez v0, :cond_0

    .line 1017
    const/4 v1, 0x0

    .line 1018
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1027
    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-nez v2, :cond_1

    .line 1028
    :cond_0
    const/4 v2, 0x0

    .line 1042
    :goto_0
    return-object v2

    .line 1031
    :cond_1
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1033
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_servletPath:Ljava/lang/String;

    iget-object v3, p0, Lorg/mortbay/jetty/Request;->_pathInfo:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    .local v0, "relTo":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1035
    .local v1, "slash":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 1036
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1039
    :goto_1
    invoke-static {v0, p1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1042
    .end local v0    # "relTo":Ljava/lang/String;
    .end local v1    # "slash":I
    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v2, p1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v2

    goto :goto_0

    .line 1038
    .restart local v0    # "relTo":Ljava/lang/String;
    .restart local v1    # "slash":I
    :cond_3
    const-string v0, "/"

    goto :goto_1
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestURI:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getPathAndParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_requestURI:Ljava/lang/String;

    .line 1062
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestURI:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestURL()Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 1071
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1072
    .local v2, "url":Ljava/lang/StringBuffer;
    monitor-enter v2

    .line 1074
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1075
    .local v1, "scheme":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServerPort()I

    move-result v0

    .line 1077
    .local v0, "port":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1078
    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1079
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1080
    iget v3, p0, Lorg/mortbay/jetty/Request;->_port:I

    if-lez v3, :cond_2

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x50

    if-ne v0, v3, :cond_1

    :cond_0
    const-string v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1bb

    if-eq v0, v3, :cond_2

    .line 1084
    :cond_1
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1085
    iget v3, p0, Lorg/mortbay/jetty/Request;->_port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1088
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1089
    monitor-exit v2

    return-object v2

    .line 1090
    .end local v0    # "port":I
    .end local v1    # "scheme":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getRequestedSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestedSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 2049
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_roleMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRootURL()Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 1853
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1854
    .local v2, "url":Ljava/lang/StringBuffer;
    monitor-enter v2

    .line 1856
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1857
    .local v1, "scheme":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServerPort()I

    move-result v0

    .line 1859
    .local v0, "port":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1860
    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1861
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1863
    if-lez v0, :cond_2

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x50

    if-ne v0, v3, :cond_1

    :cond_0
    const-string v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1bb

    if-eq v0, v3, :cond_2

    .line 1865
    :cond_1
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1866
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1868
    :cond_2
    monitor-exit v2

    return-object v2

    .line 1869
    .end local v0    # "port":I
    .end local v1    # "scheme":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1109
    iget-object v4, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1110
    iget-object v4, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    .line 1158
    :goto_0
    return-object v4

    .line 1113
    :cond_0
    iget-object v4, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v4}, Lorg/mortbay/jetty/HttpURI;->getHost()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    .line 1114
    iget-object v4, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v4}, Lorg/mortbay/jetty/HttpURI;->getPort()I

    move-result v4

    iput v4, p0, Lorg/mortbay/jetty/Request;->_port:I

    .line 1115
    iget-object v4, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1116
    iget-object v4, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    goto :goto_0

    .line 1119
    :cond_1
    iget-object v4, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v4}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v4

    sget-object v5, Lorg/mortbay/jetty/HttpHeaders;->HOST_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v4, v5}, Lorg/mortbay/jetty/HttpFields;->get(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v1

    .line 1120
    .local v1, "hostPort":Lorg/mortbay/io/Buffer;
    if-eqz v1, :cond_5

    .line 1122
    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_2

    .line 1124
    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v4

    add-int/2addr v4, v2

    invoke-interface {v1, v4}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_7

    .line 1126
    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v4

    invoke-interface {v1, v4, v2}, Lorg/mortbay/io/Buffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/io/BufferUtil;->to8859_1_String(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    .line 1127
    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v5

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v1, v4, v5}, Lorg/mortbay/io/Buffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/io/BufferUtil;->toInt(Lorg/mortbay/io/Buffer;)I

    move-result v4

    iput v4, p0, Lorg/mortbay/jetty/Request;->_port:I

    .line 1128
    iget-object v4, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    goto :goto_0

    .line 1131
    :cond_2
    iget-object v4, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget v4, p0, Lorg/mortbay/jetty/Request;->_port:I

    if-gez v4, :cond_4

    .line 1133
    :cond_3
    invoke-static {v1}, Lorg/mortbay/io/BufferUtil;->to8859_1_String(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    .line 1134
    const/4 v4, 0x0

    iput v4, p0, Lorg/mortbay/jetty/Request;->_port:I

    .line 1137
    :cond_4
    iget-object v4, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    goto :goto_0

    .line 1141
    .end local v2    # "i":I
    :cond_5
    iget-object v4, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    if-eqz v4, :cond_6

    .line 1143
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getLocalName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    .line 1144
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getLocalPort()I

    move-result v4

    iput v4, p0, Lorg/mortbay/jetty/Request;->_port:I

    .line 1145
    iget-object v4, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    if-eqz v4, :cond_6

    const-string v4, "0.0.0.0"

    iget-object v5, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1146
    iget-object v4, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1152
    :cond_6
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1158
    :goto_2
    iget-object v4, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1154
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v0    # "e":Ljava/net/UnknownHostException;
    .restart local v2    # "i":I
    :cond_7
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_1
.end method

.method public getServerPort()I
    .locals 2

    .prologue
    .line 1167
    iget v0, p0, Lorg/mortbay/jetty/Request;->_port:I

    if-gtz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1170
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    .line 1172
    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/Request;->_port:I

    if-gtz v0, :cond_1

    .line 1174
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    if-eqz v0, :cond_2

    .line 1175
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/Request;->_port:I

    .line 1181
    :cond_1
    :goto_0
    iget v0, p0, Lorg/mortbay/jetty/Request;->_port:I

    if-gtz v0, :cond_5

    .line 1183
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1184
    const/16 v0, 0x1bb

    .line 1187
    :goto_1
    return v0

    .line 1177
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Lorg/mortbay/jetty/Request;->_port:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->getLocalPort()I

    move-result v0

    goto :goto_2

    .line 1185
    :cond_4
    const/16 v0, 0x50

    goto :goto_1

    .line 1187
    :cond_5
    iget v0, p0, Lorg/mortbay/jetty/Request;->_port:I

    goto :goto_1
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 2055
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    return-object v0
.end method

.method public getServletName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_servletName:Ljava/lang/String;

    return-object v0
.end method

.method public getServletPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_servletPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1197
    const-string v0, ""

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_servletPath:Ljava/lang/String;

    .line 1198
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_servletPath:Ljava/lang/String;

    return-object v0
.end method

.method public getServletResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .prologue
    .line 2061
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Ljavax/servlet/http/HttpSession;
    .locals 1

    .prologue
    .line 1215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Z)Ljavax/servlet/http/HttpSession;
    .locals 6
    .param p1, "create"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1224
    iget-object v3, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 1225
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No SessionHandler or SessionManager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1227
    :cond_0
    iget-object v3, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    iget-object v4, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    invoke-interface {v3, v4}, Lorg/mortbay/jetty/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1228
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 1249
    :cond_1
    :goto_0
    return-object v2

    .line 1230
    :cond_2
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 1232
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v1

    .line 1234
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_3

    iget-object v3, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-eqz v3, :cond_3

    .line 1236
    iget-object v3, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v3, v1}, Lorg/mortbay/jetty/SessionManager;->getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    move-result-object v3

    iput-object v3, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 1237
    iget-object v3, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    if-nez v3, :cond_3

    if-eqz p1, :cond_1

    .line 1241
    :cond_3
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 1243
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v2, p0}, Lorg/mortbay/jetty/SessionManager;->newHttpSession(Ljavax/servlet/http/HttpServletRequest;)Ljavax/servlet/http/HttpSession;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 1244
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    iget-object v3, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->isSecure()Z

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lorg/mortbay/jetty/SessionManager;->getSessionCookie(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Z)Ljavax/servlet/http/Cookie;

    move-result-object v0

    .line 1245
    .local v0, "cookie":Ljavax/servlet/http/Cookie;
    if-eqz v0, :cond_4

    .line 1246
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/mortbay/jetty/Response;->addCookie(Ljavax/servlet/http/Cookie;)V

    .line 1249
    .end local v0    # "cookie":Ljavax/servlet/http/Cookie;
    :cond_4
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    goto :goto_0
.end method

.method public getSessionManager()Lorg/mortbay/jetty/SessionManager;
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 262
    iget-wide v0, p0, Lorg/mortbay/jetty/Request;->_timeStamp:J

    return-wide v0
.end method

.method public getTimeStampBuffer()Lorg/mortbay/io/Buffer;
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_timeStampBuffer:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/mortbay/jetty/Request;->_timeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 250
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__dateCache:Lorg/mortbay/io/BufferDateCache;

    iget-wide v2, p0, Lorg/mortbay/jetty/Request;->_timeStamp:J

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/io/BufferDateCache;->formatBuffer(J)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_timeStampBuffer:Lorg/mortbay/io/Buffer;

    .line 251
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_timeStampBuffer:Lorg/mortbay/io/Buffer;

    return-object v0
.end method

.method public getUri()Lorg/mortbay/jetty/HttpURI;
    .locals 1

    .prologue
    .line 1638
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1258
    iget-object v6, p0, Lorg/mortbay/jetty/Request;->_userPrincipal:Ljava/security/Principal;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/mortbay/jetty/Request;->_userPrincipal:Ljava/security/Principal;

    instance-of v6, v6, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

    if-eqz v6, :cond_0

    .line 1260
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_userPrincipal:Ljava/security/Principal;

    check-cast v2, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

    .line 1261
    .local v2, "not_checked":Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;
    sget-object v6, Lorg/mortbay/jetty/security/SecurityHandler;->__NO_USER:Ljava/security/Principal;

    iput-object v6, p0, Lorg/mortbay/jetty/Request;->_userPrincipal:Ljava/security/Principal;

    .line 1263
    invoke-virtual {v2}, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mortbay/jetty/security/SecurityHandler;->getAuthenticator()Lorg/mortbay/jetty/security/Authenticator;

    move-result-object v0

    .line 1264
    .local v0, "auth":Lorg/mortbay/jetty/security/Authenticator;
    invoke-virtual {v2}, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v4

    .line 1265
    .local v4, "realm":Lorg/mortbay/jetty/security/UserRealm;
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServletPath()Ljava/lang/String;

    move-result-object v3

    .line 1267
    .local v3, "pathInContext":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 1271
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v0, v4, v3, p0, v6}, Lorg/mortbay/jetty/security/Authenticator;->authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1280
    .end local v0    # "auth":Lorg/mortbay/jetty/security/Authenticator;
    .end local v2    # "not_checked":Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;
    .end local v3    # "pathInContext":Ljava/lang/String;
    .end local v4    # "realm":Lorg/mortbay/jetty/security/UserRealm;
    :cond_0
    :goto_1
    iget-object v6, p0, Lorg/mortbay/jetty/Request;->_userPrincipal:Ljava/security/Principal;

    sget-object v7, Lorg/mortbay/jetty/security/SecurityHandler;->__NO_USER:Ljava/security/Principal;

    if-ne v6, v7, :cond_2

    .line 1282
    :goto_2
    return-object v5

    .line 1265
    .restart local v0    # "auth":Lorg/mortbay/jetty/security/Authenticator;
    .restart local v2    # "not_checked":Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;
    .restart local v4    # "realm":Lorg/mortbay/jetty/security/UserRealm;
    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServletPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1273
    .restart local v3    # "pathInContext":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1275
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1282
    .end local v0    # "auth":Lorg/mortbay/jetty/security/Authenticator;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "not_checked":Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;
    .end local v3    # "pathInContext":Ljava/lang/String;
    .end local v4    # "realm":Lorg/mortbay/jetty/security/UserRealm;
    :cond_2
    iget-object v5, p0, Lorg/mortbay/jetty/Request;->_userPrincipal:Ljava/security/Principal;

    goto :goto_2
.end method

.method public getUserRealm()Lorg/mortbay/jetty/security/UserRealm;
    .locals 1

    .prologue
    .line 2006
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    return-object v0
.end method

.method public isHandled()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_handled:Z

    return v0
.end method

.method public isRequestedSessionIdFromCookie()Z
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestedSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_requestedSessionIdFromCookie:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestedSessionIdFromURL()Z
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestedSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_requestedSessionIdFromCookie:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestedSessionIdFromUrl()Z
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestedSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_requestedSessionIdFromCookie:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestedSessionIdValid()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1334
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_requestedSessionId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1338
    :cond_0
    :goto_0
    return v1

    .line 1337
    :cond_1
    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    .line 1338
    .local v0, "session":Ljavax/servlet/http/HttpSession;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v1}, Lorg/mortbay/jetty/SessionManager;->getIdManager()Lorg/mortbay/jetty/SessionIdManager;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_requestedSessionId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/mortbay/jetty/SessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v2, v0}, Lorg/mortbay/jetty/SessionManager;->getClusterId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0, p0}, Lorg/mortbay/jetty/HttpConnection;->isConfidential(Lorg/mortbay/jetty/Request;)Z

    move-result v0

    return v0
.end method

.method public isUserInRole(Ljava/lang/String;)Z
    .locals 3
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 1356
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_roleMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 1358
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_roleMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1359
    .local v1, "r":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1360
    move-object p1, v1

    .line 1363
    .end local v1    # "r":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 1365
    .local v0, "principal":Ljava/security/Principal;
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1366
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-interface {v2, v0, p1}, Lorg/mortbay/jetty/security/UserRealm;->isUserInRole(Ljava/security/Principal;Ljava/lang/String;)Z

    move-result v2

    .line 1368
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public recoverNewSession(Ljava/lang/Object;)Ljavax/servlet/http/HttpSession;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1995
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_savedNewSessions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1996
    const/4 v0, 0x0

    .line 1997
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_savedNewSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/HttpSession;

    goto :goto_0
.end method

.method protected recycle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 186
    iget v2, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 190
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v1

    .line 191
    .local v1, "r":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 192
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 194
    .end local v1    # "r":I
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 197
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_reader:Ljava/io/BufferedReader;

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iput-boolean v5, p0, Lorg/mortbay/jetty/Request;->_handled:Z

    .line 202
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-eqz v2, :cond_1

    .line 203
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Request in context!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_1
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    if-eqz v2, :cond_2

    .line 205
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    invoke-interface {v2}, Lorg/mortbay/util/Attributes;->clearAttributes()V

    .line 206
    :cond_2
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_authType:Ljava/lang/String;

    .line 207
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_characterEncoding:Ljava/lang/String;

    .line 208
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_queryEncoding:Ljava/lang/String;

    .line 209
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .line 210
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    .line 211
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_method:Ljava/lang/String;

    .line 212
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_pathInfo:Ljava/lang/String;

    .line 213
    iput v5, p0, Lorg/mortbay/jetty/Request;->_port:I

    .line 214
    const-string v2, "HTTP/1.1"

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_protocol:Ljava/lang/String;

    .line 215
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_queryString:Ljava/lang/String;

    .line 216
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_requestedSessionId:Ljava/lang/String;

    .line 217
    iput-boolean v5, p0, Lorg/mortbay/jetty/Request;->_requestedSessionIdFromCookie:Z

    .line 218
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 219
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    .line 220
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_requestURI:Ljava/lang/String;

    .line 221
    const-string v2, "http"

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_scheme:Ljava/lang/String;

    .line 222
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_servletPath:Ljava/lang/String;

    .line 223
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/mortbay/jetty/Request;->_timeStamp:J

    .line 224
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_timeStampBuffer:Lorg/mortbay/io/Buffer;

    .line 225
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    .line 226
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_userPrincipal:Ljava/security/Principal;

    .line 227
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    if-eqz v2, :cond_3

    .line 228
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v2}, Lorg/mortbay/util/MultiMap;->clear()V

    .line 229
    :cond_3
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    .line 230
    iput-boolean v5, p0, Lorg/mortbay/jetty/Request;->_paramsExtracted:Z

    .line 231
    iput v5, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    .line 233
    iput-boolean v5, p0, Lorg/mortbay/jetty/Request;->_cookiesExtracted:Z

    .line 234
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_savedNewSessions:Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 235
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_savedNewSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 236
    :cond_4
    iput-object v4, p0, Lorg/mortbay/jetty/Request;->_savedNewSessions:Ljava/util/Map;

    .line 237
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_continuation:Lorg/mortbay/util/ajax/Continuation;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v2}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 238
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v2}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    .line 239
    :cond_5
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1377
    iget-object v6, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    if-nez v6, :cond_2

    const/4 v4, 0x0

    .line 1379
    .local v4, "old_value":Ljava/lang/Object;
    :goto_0
    iget-object v6, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    if-eqz v6, :cond_0

    .line 1380
    iget-object v6, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    invoke-interface {v6, p1}, Lorg/mortbay/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    .line 1382
    :cond_0
    if-eqz v4, :cond_3

    .line 1384
    iget-object v6, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 1386
    new-instance v0, Ljavax/servlet/ServletRequestAttributeEvent;

    iget-object v6, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-direct {v0, v6, p0, p1, v4}, Ljavax/servlet/ServletRequestAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1388
    .local v0, "event":Ljavax/servlet/ServletRequestAttributeEvent;
    iget-object v6, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v6}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    .line 1389
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 1391
    iget-object v6, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v6, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/ServletRequestAttributeListener;

    .line 1392
    .local v3, "listener":Ljava/util/EventListener;
    instance-of v6, v3, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v6, :cond_1

    move-object v2, v3

    .line 1394
    check-cast v2, Ljavax/servlet/ServletRequestAttributeListener;

    .line 1395
    .local v2, "l":Ljavax/servlet/ServletRequestAttributeListener;
    invoke-interface {v2, v0}, Ljavax/servlet/ServletRequestAttributeListener;->attributeRemoved(Ljavax/servlet/ServletRequestAttributeEvent;)V

    .line 1389
    .end local v2    # "l":Ljavax/servlet/ServletRequestAttributeListener;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1377
    .end local v0    # "event":Ljavax/servlet/ServletRequestAttributeEvent;
    .end local v1    # "i":I
    .end local v3    # "listener":Ljava/util/EventListener;
    .end local v4    # "old_value":Ljava/lang/Object;
    .end local v5    # "size":I
    :cond_2
    iget-object v6, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    invoke-interface {v6, p1}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 1400
    .restart local v4    # "old_value":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public removeEventListener(Ljava/util/EventListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 1962
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    .line 1963
    return-void
.end method

.method public saveNewSession(Ljava/lang/Object;Ljavax/servlet/http/HttpSession;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 1988
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_savedNewSessions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1989
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_savedNewSessions:Ljava/util/Map;

    .line 1990
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_savedNewSessions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1991
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 1415
    iget-object v11, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    if-nez v11, :cond_3

    move-object v8, v10

    .line 1417
    .local v8, "old_value":Ljava/lang/Object;
    :goto_0
    const-string v11, "org.mortbay.jetty.Request.queryEncoding"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1418
    if-nez p2, :cond_4

    :goto_1
    invoke-virtual {p0, v10}, Lorg/mortbay/jetty/Request;->setQueryEncoding(Ljava/lang/String;)V

    .line 1439
    :cond_0
    :goto_2
    iget-object v10, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    if-nez v10, :cond_1

    .line 1440
    new-instance v10, Lorg/mortbay/util/AttributesMap;

    invoke-direct {v10}, Lorg/mortbay/util/AttributesMap;-><init>()V

    iput-object v10, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    .line 1441
    :cond_1
    iget-object v10, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    invoke-interface {v10, p1, p2}, Lorg/mortbay/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1443
    iget-object v10, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v10, :cond_a

    .line 1445
    new-instance v4, Ljavax/servlet/ServletRequestAttributeEvent;

    iget-object v11, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-nez v8, :cond_7

    move-object v10, p2

    :goto_3
    invoke-direct {v4, v11, p0, p1, v10}, Ljavax/servlet/ServletRequestAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1447
    .local v4, "event":Ljavax/servlet/ServletRequestAttributeEvent;
    iget-object v10, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v10}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v9

    .line 1448
    .local v9, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v9, :cond_a

    .line 1450
    iget-object v10, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v10, v5}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/servlet/ServletRequestAttributeListener;

    .line 1451
    .local v7, "listener":Ljava/util/EventListener;
    instance-of v10, v7, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v10, :cond_2

    move-object v6, v7

    .line 1453
    check-cast v6, Ljavax/servlet/ServletRequestAttributeListener;

    .line 1455
    .local v6, "l":Ljavax/servlet/ServletRequestAttributeListener;
    if-nez v8, :cond_8

    .line 1456
    invoke-interface {v6, v4}, Ljavax/servlet/ServletRequestAttributeListener;->attributeAdded(Ljavax/servlet/ServletRequestAttributeEvent;)V

    .line 1448
    .end local v6    # "l":Ljavax/servlet/ServletRequestAttributeListener;
    :cond_2
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1415
    .end local v4    # "event":Ljavax/servlet/ServletRequestAttributeEvent;
    .end local v5    # "i":I
    .end local v7    # "listener":Ljava/util/EventListener;
    .end local v8    # "old_value":Ljava/lang/Object;
    .end local v9    # "size":I
    :cond_3
    iget-object v11, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    invoke-interface {v11, p1}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 1418
    .restart local v8    # "old_value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 1419
    :cond_5
    const-string v10, "org.mortbay.jetty.ResponseBuffer"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1423
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/nio/ByteBuffer;

    move-object v2, v0

    .line 1424
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v10

    if-eqz v10, :cond_6

    new-instance v1, Lorg/mortbay/io/nio/DirectNIOBuffer;

    const/4 v10, 0x1

    invoke-direct {v1, v2, v10}, Lorg/mortbay/io/nio/DirectNIOBuffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 1429
    .local v1, "buffer":Lorg/mortbay/io/nio/NIOBuffer;
    :goto_6
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServletResponse()Ljavax/servlet/ServletResponse;

    move-result-object v10

    invoke-interface {v10}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v10

    check-cast v10, Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-virtual {v10, v1}, Lorg/mortbay/jetty/HttpConnection$Output;->sendResponse(Lorg/mortbay/io/Buffer;)V

    .line 1430
    monitor-exit v2

    goto :goto_2

    .end local v1    # "buffer":Lorg/mortbay/io/nio/NIOBuffer;
    :catchall_0
    move-exception v10

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1432
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v3

    .line 1434
    .local v3, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 1426
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_6
    :try_start_3
    new-instance v1, Lorg/mortbay/io/nio/IndirectNIOBuffer;

    const/4 v10, 0x1

    invoke-direct {v1, v2, v10}, Lorg/mortbay/io/nio/IndirectNIOBuffer;-><init>(Ljava/nio/ByteBuffer;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_7
    move-object v10, v8

    .line 1445
    goto :goto_3

    .line 1457
    .restart local v4    # "event":Ljavax/servlet/ServletRequestAttributeEvent;
    .restart local v5    # "i":I
    .restart local v6    # "l":Ljavax/servlet/ServletRequestAttributeListener;
    .restart local v7    # "listener":Ljava/util/EventListener;
    .restart local v9    # "size":I
    :cond_8
    if-nez p2, :cond_9

    .line 1458
    invoke-interface {v6, v4}, Ljavax/servlet/ServletRequestAttributeListener;->attributeRemoved(Ljavax/servlet/ServletRequestAttributeEvent;)V

    goto :goto_5

    .line 1460
    :cond_9
    invoke-interface {v6, v4}, Ljavax/servlet/ServletRequestAttributeListener;->attributeReplaced(Ljavax/servlet/ServletRequestAttributeEvent;)V

    goto :goto_5

    .line 1464
    .end local v4    # "event":Ljavax/servlet/ServletRequestAttributeEvent;
    .end local v5    # "i":I
    .end local v6    # "l":Ljavax/servlet/ServletRequestAttributeListener;
    .end local v7    # "listener":Ljava/util/EventListener;
    .end local v9    # "size":I
    :cond_a
    return-void
.end method

.method public setAttributes(Lorg/mortbay/util/Attributes;)V
    .locals 0
    .param p1, "attributes"    # Lorg/mortbay/util/Attributes;

    .prologue
    .line 1887
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    .line 1888
    return-void
.end method

.method public setAuthType(Ljava/lang/String;)V
    .locals 0
    .param p1, "authType"    # Ljava/lang/String;

    .prologue
    .line 1674
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_authType:Ljava/lang/String;

    .line 1675
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1472
    iget v0, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    if-eqz v0, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return-void

    .line 1475
    :cond_1
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_characterEncoding:Ljava/lang/String;

    .line 1478
    invoke-static {p1}, Lorg/mortbay/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1479
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    goto :goto_0
.end method

.method public setCharacterEncodingUnchecked(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 1488
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_characterEncoding:Ljava/lang/String;

    .line 1489
    return-void
.end method

.method protected setConnection(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/mortbay/jetty/HttpConnection;

    .prologue
    .line 178
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    .line 179
    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getEndPoint()Lorg/mortbay/io/EndPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    .line 180
    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResolveNames()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/jetty/Request;->_dns:Z

    .line 181
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 359
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1, p1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public setContext(Lorg/mortbay/jetty/handler/ContextHandler$SContext;)V
    .locals 0
    .param p1, "context"    # Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .prologue
    .line 1826
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .line 1827
    return-void
.end method

.method public setContextPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "contextPath"    # Ljava/lang/String;

    .prologue
    .line 1790
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_contextPath:Ljava/lang/String;

    .line 1791
    return-void
.end method

.method setContinuation(Lorg/mortbay/util/ajax/Continuation;)V
    .locals 0
    .param p1, "cont"    # Lorg/mortbay/util/ajax/Continuation;

    .prologue
    .line 1907
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_continuation:Lorg/mortbay/util/ajax/Continuation;

    .line 1908
    return-void
.end method

.method public setCookies([Ljavax/servlet/http/Cookie;)V
    .locals 0
    .param p1, "cookies"    # [Ljavax/servlet/http/Cookie;

    .prologue
    .line 1683
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 1684
    return-void
.end method

.method public setHandled(Z)V
    .locals 0
    .param p1, "h"    # Z

    .prologue
    .line 280
    iput-boolean p1, p0, Lorg/mortbay/jetty/Request;->_handled:Z

    .line 281
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1692
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_method:Ljava/lang/String;

    .line 1693
    return-void
.end method

.method public setParameters(Lorg/mortbay/util/MultiMap;)V
    .locals 1
    .param p1, "parameters"    # Lorg/mortbay/util/MultiMap;

    .prologue
    .line 1925
    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    .end local p1    # "parameters":Lorg/mortbay/util/MultiMap;
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    .line 1926
    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_paramsExtracted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    if-nez v0, :cond_1

    .line 1927
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1928
    :cond_1
    return-void
.end method

.method public setPathInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathInfo"    # Ljava/lang/String;

    .prologue
    .line 1701
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_pathInfo:Ljava/lang/String;

    .line 1702
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 1710
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_protocol:Ljava/lang/String;

    .line 1711
    return-void
.end method

.method public setQueryEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "queryEncoding"    # Ljava/lang/String;

    .prologue
    .line 2036
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_queryEncoding:Ljava/lang/String;

    .line 2037
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_queryString:Ljava/lang/String;

    .line 2038
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 1773
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_queryString:Ljava/lang/String;

    .line 1774
    return-void
.end method

.method public setRemoteAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 1620
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_remoteAddr:Ljava/lang/String;

    .line 1621
    return-void
.end method

.method public setRemoteHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 1629
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_remoteHost:Ljava/lang/String;

    .line 1630
    return-void
.end method

.method public setRequestListeners(Ljava/lang/Object;)V
    .locals 0
    .param p1, "requestListeners"    # Ljava/lang/Object;

    .prologue
    .line 1971
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_requestListeners:Ljava/lang/Object;

    .line 1972
    return-void
.end method

.method public setRequestURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestURI"    # Ljava/lang/String;

    .prologue
    .line 1781
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_requestURI:Ljava/lang/String;

    .line 1782
    return-void
.end method

.method public setRequestedSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestedSessionId"    # Ljava/lang/String;

    .prologue
    .line 1719
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_requestedSessionId:Ljava/lang/String;

    .line 1720
    return-void
.end method

.method public setRequestedSessionIdFromCookie(Z)V
    .locals 0
    .param p1, "requestedSessionIdCookie"    # Z

    .prologue
    .line 1746
    iput-boolean p1, p0, Lorg/mortbay/jetty/Request;->_requestedSessionIdFromCookie:Z

    .line 1747
    return-void
.end method

.method public setRoleMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 2043
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_roleMap:Ljava/util/Map;

    .line 2044
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 1764
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_scheme:Ljava/lang/String;

    .line 1765
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 1602
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    .line 1603
    return-void
.end method

.method public setServerPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 1611
    iput p1, p0, Lorg/mortbay/jetty/Request;->_port:I

    .line 1612
    return-void
.end method

.method public setServletName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1808
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_servletName:Ljava/lang/String;

    .line 1809
    return-void
.end method

.method public setServletPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "servletPath"    # Ljava/lang/String;

    .prologue
    .line 1799
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_servletPath:Ljava/lang/String;

    .line 1800
    return-void
.end method

.method public setSession(Ljavax/servlet/http/HttpSession;)V
    .locals 0
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 1755
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 1756
    return-void
.end method

.method public setSessionManager(Lorg/mortbay/jetty/SessionManager;)V
    .locals 0
    .param p1, "sessionManager"    # Lorg/mortbay/jetty/SessionManager;

    .prologue
    .line 1737
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    .line 1738
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "ts"    # J

    .prologue
    .line 268
    iput-wide p1, p0, Lorg/mortbay/jetty/Request;->_timeStamp:J

    .line 269
    return-void
.end method

.method public setUri(Lorg/mortbay/jetty/HttpURI;)V
    .locals 0
    .param p1, "uri"    # Lorg/mortbay/jetty/HttpURI;

    .prologue
    .line 1647
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    .line 1648
    return-void
.end method

.method public setUserPrincipal(Ljava/security/Principal;)V
    .locals 0
    .param p1, "userPrincipal"    # Ljava/security/Principal;

    .prologue
    .line 1817
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_userPrincipal:Ljava/security/Principal;

    .line 1818
    return-void
.end method

.method public setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V
    .locals 0
    .param p1, "userRealm"    # Lorg/mortbay/jetty/security/UserRealm;

    .prologue
    .line 2015
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    .line 2016
    return-void
.end method

.method public takeRequestListeners()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1980
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestListeners:Ljava/lang/Object;

    .line 1981
    .local v0, "listeners":Ljava/lang/Object;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/jetty/Request;->_requestListeners:Ljava/lang/Object;

    .line 1982
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1933
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
