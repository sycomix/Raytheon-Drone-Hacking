.class public Lorg/mortbay/servlet/ProxyServlet;
.super Ljava/lang/Object;
.source "ProxyServlet.java"

# interfaces
.implements Ljavax/servlet/Servlet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/servlet/ProxyServlet$Transparent;
    }
.end annotation


# instance fields
.field protected _DontProxyHeaders:Ljava/util/HashSet;

.field protected _config:Ljavax/servlet/ServletConfig;

.field protected _context:Ljavax/servlet/ServletContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    .line 56
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string v1, "proxy-connection"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string v1, "connection"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string v1, "keep-alive"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string v1, "transfer-encoding"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string v1, "te"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string v1, "trailer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string v1, "proxy-authorization"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string v1, "proxy-authenticate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string v1, "upgrade"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 333
    return-void
.end method

.method public getServletConfig()Ljavax/servlet/ServletConfig;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_config:Ljavax/servlet/ServletConfig;

    return-object v0
.end method

.method public getServletInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    const-string v0, "Proxy Servlet"

    return-object v0
.end method

.method public handleConnect(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 10
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2f

    .line 277
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v7

    .line 279
    .local v7, "uri":Ljava/lang/String;
    const-string v5, ""

    .line 280
    .local v5, "port":Ljava/lang/String;
    const-string v1, ""

    .line 282
    .local v1, "host":Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 283
    .local v0, "c":I
    if-ltz v0, :cond_0

    .line 285
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 286
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_0

    .line 288
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    :cond_0
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v3, v1, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 302
    .local v3, "inetAddress":Ljava/net/InetSocketAddress;
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v2

    .line 303
    .local v2, "in":Ljava/io/InputStream;
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v4

    .line 305
    .local v4, "out":Ljava/io/OutputStream;
    new-instance v6, Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    invoke-direct {v6, v8, v9}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 307
    .local v6, "socket":Ljava/net/Socket;
    const/16 v8, 0xc8

    invoke-interface {p2, v8}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 308
    const-string v8, "Connection"

    const-string v9, "close"

    invoke-interface {p2, v8, v9}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 311
    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8, v4}, Lorg/mortbay/util/IO;->copyThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 312
    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-static {v2, v8}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 314
    return-void
.end method

.method public init(Ljavax/servlet/ServletConfig;)V
    .locals 1
    .param p1, "config"    # Ljavax/servlet/ServletConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lorg/mortbay/servlet/ProxyServlet;->_config:Ljavax/servlet/ServletConfig;

    .line 76
    invoke-interface {p1}, Ljavax/servlet/ServletConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_context:Ljavax/servlet/ServletContext;

    .line 77
    return-void
.end method

.method protected proxyHttpURL(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "serverName"    # Ljava/lang/String;
    .param p3, "serverPort"    # I
    .param p4, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 28
    .param p1, "req"    # Ljavax/servlet/ServletRequest;
    .param p2, "res"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    move-object/from16 v18, p1

    check-cast v18, Ljavax/servlet/http/HttpServletRequest;

    .local v18, "request":Ljavax/servlet/http/HttpServletRequest;
    move-object/from16 v19, p2

    .line 94
    check-cast v19, Ljavax/servlet/http/HttpServletResponse;

    .line 95
    .local v19, "response":Ljavax/servlet/http/HttpServletResponse;
    const-string v25, "CONNECT"

    invoke-interface/range {v18 .. v18}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/servlet/ProxyServlet;->handleConnect(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v20

    .line 102
    .local v20, "uri":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_2

    .line 103
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string v26, "?"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-interface/range {v18 .. v18}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    .line 105
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljavax/servlet/http/HttpServletRequest;->getScheme()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v18 .. v18}, Ljavax/servlet/http/HttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v18 .. v18}, Ljavax/servlet/http/HttpServletRequest;->getServerPort()I

    move-result v27

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mortbay/servlet/ProxyServlet;->proxyHttpURL(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/net/URL;

    move-result-object v21

    .line 111
    .local v21, "url":Ljava/net/URL;
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .line 112
    .local v7, "connection":Ljava/net/URLConnection;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 115
    const/4 v14, 0x0

    .line 116
    .local v14, "http":Ljava/net/HttpURLConnection;
    instance-of v0, v7, Ljava/net/HttpURLConnection;

    move/from16 v25, v0

    if-eqz v25, :cond_3

    move-object v14, v7

    .line 118
    check-cast v14, Ljava/net/HttpURLConnection;

    .line 119
    invoke-interface/range {v18 .. v18}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 120
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 124
    :cond_3
    const-string v25, "Connection"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, "connectionHdr":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 127
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 128
    const-string v25, "keep-alive"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    const-string v25, "close"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 130
    :cond_4
    const/4 v8, 0x0

    .line 134
    :cond_5
    const/16 v24, 0x0

    .line 135
    .local v24, "xForwardedFor":Z
    const/4 v12, 0x0

    .line 136
    .local v12, "hasContent":Z
    invoke-interface/range {v18 .. v18}, Ljavax/servlet/http/HttpServletRequest;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v10

    .line 137
    .local v10, "enm":Ljava/util/Enumeration;
    :cond_6
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 140
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 141
    .local v13, "hdr":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 143
    .local v16, "lhdr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 145
    if-eqz v8, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    if-gez v25, :cond_6

    .line 148
    :cond_7
    const-string v25, "content-type"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 149
    const/4 v12, 0x1

    .line 151
    :cond_8
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljavax/servlet/http/HttpServletRequest;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v23

    .line 152
    .local v23, "vals":Ljava/util/Enumeration;
    :cond_9
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 154
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 155
    .local v22, "val":Ljava/lang/String;
    if-eqz v22, :cond_9

    .line 157
    move-object/from16 v0, v22

    invoke-virtual {v7, v13, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v25, "X-Forwarded-For"

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    or-int v24, v24, v25

    goto :goto_1

    .line 164
    .end local v13    # "hdr":Ljava/lang/String;
    .end local v16    # "lhdr":Ljava/lang/String;
    .end local v22    # "val":Ljava/lang/String;
    .end local v23    # "vals":Ljava/util/Enumeration;
    :cond_a
    const-string v25, "Via"

    const-string v26, "1.1 (jetty)"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    if-nez v24, :cond_b

    .line 167
    const-string v25, "X-Forwarded-For"

    invoke-interface/range {v18 .. v18}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v25, "X-Forwarded-Proto"

    invoke-interface/range {v18 .. v18}, Ljavax/servlet/http/HttpServletRequest;->getScheme()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v25, "X-Forwarded-Host"

    invoke-interface/range {v18 .. v18}, Ljavax/servlet/http/HttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v25, "X-Forwarded-Server"

    invoke-interface/range {v18 .. v18}, Ljavax/servlet/http/HttpServletRequest;->getLocalName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_b
    const-string v25, "Cache-Control"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, "cache_control":Ljava/lang/String;
    if-eqz v5, :cond_d

    const-string v25, "no-cache"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    if-gez v25, :cond_c

    const-string v25, "no-store"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    if-ltz v25, :cond_d

    .line 182
    :cond_c
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 188
    :cond_d
    const/16 v25, 0x1

    :try_start_0
    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 191
    invoke-interface/range {v18 .. v18}, Ljavax/servlet/http/HttpServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v15

    .line 192
    .local v15, "in":Ljava/io/InputStream;
    if-eqz v12, :cond_e

    .line 194
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 195
    invoke-virtual {v7}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v15, v0}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 199
    :cond_e
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v15    # "in":Ljava/io/InputStream;
    :goto_2
    const/16 v17, 0x0

    .line 209
    .local v17, "proxy_in":Ljava/io/InputStream;
    const/16 v6, 0x1f4

    .line 210
    .local v6, "code":I
    if-eqz v14, :cond_f

    .line 212
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v17

    .line 214
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 215
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v6, v1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(ILjava/lang/String;)V

    .line 218
    :cond_f
    if-nez v17, :cond_10

    .line 220
    :try_start_1
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 229
    :cond_10
    :goto_3
    const-string v25, "Date"

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v25, "Server"

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/4 v11, 0x0

    .line 234
    .local v11, "h":I
    invoke-virtual {v7, v11}, Ljava/net/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v13

    .line 235
    .restart local v13    # "hdr":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v22

    .line 236
    .restart local v22    # "val":Ljava/lang/String;
    :goto_4
    if-nez v13, :cond_11

    if-eqz v22, :cond_14

    .line 238
    :cond_11
    if-eqz v13, :cond_13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 239
    .restart local v16    # "lhdr":Ljava/lang/String;
    :goto_5
    if-eqz v13, :cond_12

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_12

    .line 240
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v13, v1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 243
    invoke-virtual {v7, v11}, Ljava/net/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v13

    .line 244
    invoke-virtual {v7, v11}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v22

    .line 245
    goto :goto_4

    .line 201
    .end local v6    # "code":I
    .end local v11    # "h":I
    .end local v13    # "hdr":Ljava/lang/String;
    .end local v16    # "lhdr":Ljava/lang/String;
    .end local v17    # "proxy_in":Ljava/io/InputStream;
    .end local v22    # "val":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 203
    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/servlet/ProxyServlet;->_context:Ljavax/servlet/ServletContext;

    move-object/from16 v25, v0

    const-string v26, "proxy"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v9}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 221
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "code":I
    .restart local v17    # "proxy_in":Ljava/io/InputStream;
    :catch_1
    move-exception v9

    .line 223
    .restart local v9    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/servlet/ProxyServlet;->_context:Ljavax/servlet/ServletContext;

    move-object/from16 v25, v0

    const-string v26, "stream"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v9}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v17

    goto :goto_3

    .line 238
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v11    # "h":I
    .restart local v13    # "hdr":Ljava/lang/String;
    .restart local v22    # "val":Ljava/lang/String;
    :cond_13
    const/16 v16, 0x0

    goto :goto_5

    .line 246
    :cond_14
    const-string v25, "Via"

    const-string v26, "1.1 (jetty)"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    if-eqz v17, :cond_0

    .line 250
    invoke-interface/range {v19 .. v19}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto/16 :goto_0
.end method
