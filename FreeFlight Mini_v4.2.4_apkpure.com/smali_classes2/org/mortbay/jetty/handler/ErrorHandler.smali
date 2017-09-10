.class public Lorg/mortbay/jetty/handler/ErrorHandler;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "ErrorHandler.java"


# instance fields
.field _cacheControl:Ljava/lang/String;

.field _showStacks:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->_showStacks:Z

    .line 43
    const-string v0, "must-revalidate,no-cache,no-store"

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 5
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p3, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p4, "dispatch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    .line 52
    .local v0, "connection":Lorg/mortbay/jetty/HttpConnection;
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 53
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "method":Ljava/lang/String;
    const-string v3, "GET"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "POST"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "HEAD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v3, "text/html; charset=iso-8859-1"

    invoke-interface {p3, v3}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 57
    iget-object v3, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 58
    const-string v3, "Cache-Control"

    iget-object v4, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    invoke-interface {p3, v3, v4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    new-instance v2, Lorg/mortbay/util/ByteArrayISO8859Writer;

    const/16 v3, 0x1000

    invoke-direct {v2, v3}, Lorg/mortbay/util/ByteArrayISO8859Writer;-><init>(I)V

    .line 60
    .local v2, "writer":Lorg/mortbay/util/ByteArrayISO8859Writer;
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result v3

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mortbay/jetty/Response;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v2, v3, v4}, Lorg/mortbay/jetty/handler/ErrorHandler;->handleErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Lorg/mortbay/util/ByteArrayISO8859Writer;->flush()V

    .line 62
    invoke-virtual {v2}, Lorg/mortbay/util/ByteArrayISO8859Writer;->size()I

    move-result v3

    invoke-interface {p3, v3}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 63
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mortbay/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    .line 64
    invoke-virtual {v2}, Lorg/mortbay/util/ByteArrayISO8859Writer;->destroy()V

    goto :goto_0
.end method

.method protected handleErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V
    .locals 6
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "code"    # I
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-boolean v5, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->_showStacks:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/jetty/handler/ErrorHandler;->writeErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V

    .line 72
    return-void
.end method

.method public isShowStacks()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->_showStacks:Z

    return v0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheControl"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setShowStacks(Z)V
    .locals 0
    .param p1, "showStacks"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->_showStacks:Z

    .line 182
    return-void
.end method

.method protected write(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    if-nez p2, :cond_1

    .line 214
    :cond_0
    return-void

    .line 191
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 193
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 195
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 208
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 209
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 191
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :sswitch_0
    const-string v2, "&amp;"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 201
    :sswitch_1
    const-string v2, "&lt;"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :sswitch_2
    const-string v2, "&gt;"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method protected writeErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "code"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "showStacks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    if-nez p4, :cond_0

    .line 79
    invoke-static {p3}, Lorg/mortbay/jetty/HttpGenerator;->getReason(I)Ljava/lang/String;

    move-result-object p4

    .line 81
    :cond_0
    const-string v0, "<html>\n<head>\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/handler/ErrorHandler;->writeErrorPageHead(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V

    .line 83
    const-string v0, "</head>\n<body>"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p0 .. p5}, Lorg/mortbay/jetty/handler/ErrorHandler;->writeErrorPageBody(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V

    .line 85
    const-string v0, "\n</body>\n</html>\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected writeErrorPageBody(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V
    .locals 7
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "code"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "showStacks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v5

    .local v5, "uri":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 106
    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/jetty/handler/ErrorHandler;->writeErrorPageMessage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    if-eqz p5, :cond_0

    .line 108
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/handler/ErrorHandler;->writeErrorPageStacks(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V

    .line 109
    :cond_0
    const-string v0, "<hr /><i><small>Powered by Jetty://</small></i>"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 110
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v0, 0x14

    if-ge v6, v0, :cond_1

    .line 111
    const-string v0, "<br/>                                                \n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 110
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 112
    :cond_1
    return-void
.end method

.method protected writeErrorPageHead(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "code"    # I
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const-string v0, "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"/>\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 93
    const-string v0, "<title>Error "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 94
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 95
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 96
    invoke-virtual {p0, p2, p4}, Lorg/mortbay/jetty/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 97
    const-string v0, "</title>\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method protected writeErrorPageMessage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "code"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const-string v0, "<h2>HTTP ERROR "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 119
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 120
    const-string v0, "</h2>\n<p>Problem accessing "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p2, p5}, Lorg/mortbay/jetty/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 122
    const-string v0, ". Reason:\n<pre>    "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p2, p4}, Lorg/mortbay/jetty/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 124
    const-string v0, "</pre></p>"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method protected writeErrorPageStacks(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V
    .locals 4
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const-string v3, "javax.servlet.error.exception"

    invoke-interface {p1, v3}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 132
    .local v2, "th":Ljava/lang/Throwable;
    :goto_0
    if-eqz v2, :cond_0

    .line 134
    const-string v3, "<h3>Caused by:</h3><pre>"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 135
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 136
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 137
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 138
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 139
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lorg/mortbay/jetty/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 140
    const-string v3, "</pre>\n"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 143
    goto :goto_0

    .line 144
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v1    # "sw":Ljava/io/StringWriter;
    :cond_0
    return-void
.end method
