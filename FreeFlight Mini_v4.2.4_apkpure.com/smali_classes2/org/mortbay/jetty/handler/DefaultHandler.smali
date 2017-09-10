.class public Lorg/mortbay/jetty/handler/DefaultHandler;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "DefaultHandler.java"


# static fields
.field static class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;


# instance fields
.field _favicon:[B

.field _faviconModified:J

.field _serveIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 57
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->_faviconModified:J

    .line 54
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->_serveIcon:Z

    .line 60
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "org/mortbay/jetty/favicon.ico"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 61
    .local v1, "fav":Ljava/net/URL;
    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/util/IO;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->_favicon:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1    # "fav":Ljava/net/URL;
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 123
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


# virtual methods
.method public getServeIcon()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->_serveIcon:Z

    return v0
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
    .line 76
    move-object/from16 v0, p2

    instance-of v11, v0, Lorg/mortbay/jetty/Request;

    if-eqz v11, :cond_1

    move-object/from16 v11, p2

    check-cast v11, Lorg/mortbay/jetty/Request;

    move-object v2, v11

    .line 78
    .local v2, "base_request":Lorg/mortbay/jetty/Request;
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v2}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 170
    :cond_0
    :goto_1
    return-void

    .line 76
    .end local v2    # "base_request":Lorg/mortbay/jetty/Request;
    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v11

    invoke-virtual {v11}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v2

    goto :goto_0

    .line 80
    .restart local v2    # "base_request":Lorg/mortbay/jetty/Request;
    :cond_2
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 82
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "method":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/mortbay/jetty/handler/DefaultHandler;->_serveIcon:Z

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mortbay/jetty/handler/DefaultHandler;->_favicon:[B

    if-eqz v11, :cond_4

    const-string v11, "GET"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v11

    const-string v12, "/favicon.ico"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 87
    const-string v11, "If-Modified-Since"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mortbay/jetty/handler/DefaultHandler;->_faviconModified:J

    cmp-long v11, v12, v14

    if-nez v11, :cond_3

    .line 88
    const/16 v11, 0x130

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    goto :goto_1

    .line 91
    :cond_3
    const/16 v11, 0xc8

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 92
    const-string v11, "image/x-icon"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mortbay/jetty/handler/DefaultHandler;->_favicon:[B

    array-length v11, v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 94
    const-string v11, "Last-Modified"

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mortbay/jetty/handler/DefaultHandler;->_faviconModified:J

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v12, v13}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 95
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mortbay/jetty/handler/DefaultHandler;->_favicon:[B

    invoke-virtual {v11, v12}, Ljavax/servlet/ServletOutputStream;->write([B)V

    goto :goto_1

    .line 101
    :cond_4
    const-string v11, "GET"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 103
    :cond_5
    const/16 v11, 0x194

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto/16 :goto_1

    .line 107
    :cond_6
    const/16 v11, 0x194

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 108
    const-string v11, "text/html"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 110
    new-instance v10, Lorg/mortbay/util/ByteArrayISO8859Writer;

    const/16 v11, 0x5dc

    invoke-direct {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;-><init>(I)V

    .line 112
    .local v10, "writer":Lorg/mortbay/util/ByteArrayISO8859Writer;
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v9

    .line 113
    .local v9, "uri":Ljava/lang/String;
    const-string v11, "<"

    const-string v12, "&lt;"

    invoke-static {v9, v11, v12}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 114
    const-string v11, ">"

    const-string v12, "&gt;"

    invoke-static {v9, v11, v12}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 116
    const-string v11, "<HTML>\n<HEAD>\n<TITLE>Error 404 - Not Found"

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 117
    const-string v11, "</TITLE>\n<BODY>\n<H2>Error 404 - Not Found.</H2>\n"

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 118
    const-string v11, "No context on this server matched or handled this request.<BR>"

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 119
    const-string v11, "Contexts known to this server are: <ul>"

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/handler/DefaultHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v8

    .line 123
    .local v8, "server":Lorg/mortbay/jetty/Server;
    if-nez v8, :cond_a

    const/4 v4, 0x0

    .line 125
    .local v4, "handlers":[Lorg/mortbay/jetty/Handler;
    :goto_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-eqz v4, :cond_10

    array-length v11, v4

    if-ge v5, v11, :cond_10

    .line 127
    aget-object v3, v4, v5

    check-cast v3, Lorg/mortbay/jetty/handler/ContextHandler;

    .line 128
    .local v3, "context":Lorg/mortbay/jetty/handler/ContextHandler;
    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->isRunning()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 130
    const-string v11, "<li><a href=\""

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    if-lez v11, :cond_7

    .line 132
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "http://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getLocalPort()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 133
    :cond_7
    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_8

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 135
    const-string v11, "/"

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 136
    :cond_8
    const-string v11, "\">"

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    if-lez v11, :cond_9

    .line 139
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "&nbsp;@&nbsp;"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getLocalPort()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 140
    :cond_9
    const-string v11, "&nbsp;--->&nbsp;"

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 142
    const-string v11, "</a></li>\n"

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 125
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 123
    .end local v3    # "context":Lorg/mortbay/jetty/handler/ContextHandler;
    .end local v4    # "handlers":[Lorg/mortbay/jetty/Handler;
    .end local v5    # "i":I
    :cond_a
    sget-object v11, Lorg/mortbay/jetty/handler/DefaultHandler;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    if-nez v11, :cond_b

    const-string v11, "org.mortbay.jetty.handler.ContextHandler"

    invoke-static {v11}, Lorg/mortbay/jetty/handler/DefaultHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sput-object v11, Lorg/mortbay/jetty/handler/DefaultHandler;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    :goto_5
    invoke-virtual {v8, v11}, Lorg/mortbay/jetty/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;

    move-result-object v4

    goto/16 :goto_2

    :cond_b
    sget-object v11, Lorg/mortbay/jetty/handler/DefaultHandler;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    goto :goto_5

    .line 146
    .restart local v3    # "context":Lorg/mortbay/jetty/handler/ContextHandler;
    .restart local v4    # "handlers":[Lorg/mortbay/jetty/Handler;
    .restart local v5    # "i":I
    :cond_c
    const-string v11, "<li>"

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    if-lez v11, :cond_d

    .line 149
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "&nbsp;@&nbsp;"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getLocalPort()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 150
    :cond_d
    const-string v11, "&nbsp;--->&nbsp;"

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->isFailed()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 153
    const-string v11, " [failed]"

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 154
    :cond_e
    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->isStopped()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 155
    const-string v11, " [stopped]"

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 156
    :cond_f
    const-string v11, "</li>\n"

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 160
    .end local v3    # "context":Lorg/mortbay/jetty/handler/ContextHandler;
    :cond_10
    const/4 v5, 0x0

    :goto_6
    const/16 v11, 0xa

    if-ge v5, v11, :cond_11

    .line 161
    const-string v11, "\n<!-- Padding for IE                  -->"

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 160
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 163
    :cond_11
    const-string v11, "\n</BODY>\n</HTML>\n"

    invoke-virtual {v10, v11}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v10}, Lorg/mortbay/util/ByteArrayISO8859Writer;->flush()V

    .line 165
    invoke-virtual {v10}, Lorg/mortbay/util/ByteArrayISO8859Writer;->size()I

    move-result v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 166
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v7

    .line 167
    .local v7, "out":Ljava/io/OutputStream;
    invoke-virtual {v10, v7}, Lorg/mortbay/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    .line 168
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_1
.end method

.method public setServeIcon(Z)V
    .locals 0
    .param p1, "serveIcon"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->_serveIcon:Z

    .line 189
    return-void
.end method
