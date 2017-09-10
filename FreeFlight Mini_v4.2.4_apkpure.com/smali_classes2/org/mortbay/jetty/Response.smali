.class public Lorg/mortbay/jetty/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/Response$1;,
        Lorg/mortbay/jetty/Response$NullOutput;
    }
.end annotation


# static fields
.field public static final DISABLED:I = -0x1

.field public static final NONE:I = 0x0

.field public static final STREAM:I = 0x1

.field public static final WRITER:I = 0x2

.field private static __nullPrintWriter:Ljava/io/PrintWriter;

.field private static __nullServletOut:Ljavax/servlet/ServletOutputStream;


# instance fields
.field private _cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private _characterEncoding:Ljava/lang/String;

.field private _connection:Lorg/mortbay/jetty/HttpConnection;

.field private _contentType:Ljava/lang/String;

.field private _explicitEncoding:Z

.field private _locale:Ljava/util/Locale;

.field private _mimeType:Ljava/lang/String;

.field private _outputState:I

.field private _reason:Ljava/lang/String;

.field private _status:I

.field private _writer:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    invoke-static {}, Lorg/mortbay/util/IO;->getNullWriter()Ljava/io/Writer;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v1, Lorg/mortbay/jetty/Response;->__nullPrintWriter:Ljava/io/PrintWriter;

    .line 64
    new-instance v1, Lorg/mortbay/jetty/Response$NullOutput;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/mortbay/jetty/Response$NullOutput;-><init>(Lorg/mortbay/jetty/Response$1;)V

    sput-object v1, Lorg/mortbay/jetty/Response;->__nullServletOut:Ljavax/servlet/ServletOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 68
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/mortbay/jetty/HttpConnection;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/16 v0, 0xc8

    iput v0, p0, Lorg/mortbay/jetty/Response;->_status:I

    .line 90
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    .line 91
    return-void
.end method


# virtual methods
.method public addCookie(Ljavax/servlet/http/Cookie;)V
    .locals 1
    .param p1, "cookie"    # Ljavax/servlet/http/Cookie;

    .prologue
    .line 118
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpFields;->addSetCookie(Ljavax/servlet/http/Cookie;)V

    .line 119
    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 452
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/mortbay/jetty/HttpFields;->addDateField(Ljava/lang/String;J)V

    .line 454
    :cond_0
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 500
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/mortbay/jetty/HttpFields;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    .line 506
    :cond_0
    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 528
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lorg/mortbay/jetty/HttpFields;->addLongField(Ljava/lang/String;J)V

    .line 531
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    int-to-long v2, p2

    invoke-interface {v0, v2, v3}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    .line 534
    :cond_0
    return-void
.end method

.method public complete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1125
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->completeResponse()V

    .line 1126
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpFields;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/Response;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/Response;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 136
    iget-object v7, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v7}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v2

    .line 137
    .local v2, "request":Lorg/mortbay/jetty/Request;
    invoke-virtual {v2}, Lorg/mortbay/jetty/Request;->getSessionManager()Lorg/mortbay/jetty/SessionManager;

    move-result-object v4

    .line 138
    .local v4, "sessionManager":Lorg/mortbay/jetty/SessionManager;
    if-nez v4, :cond_1

    .line 197
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 140
    .restart local p1    # "url":Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Lorg/mortbay/jetty/SessionManager;->getSessionURLPrefix()Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "sessionURLPrefix":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 145
    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/mortbay/jetty/Request;->isRequestedSessionIdFromCookie()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 147
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 148
    .local v1, "prefix":I
    if-eq v1, v8, :cond_0

    .line 150
    const-string v7, "?"

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 151
    .local v6, "suffix":I
    if-gez v6, :cond_3

    .line 152
    const-string v7, "#"

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 154
    :cond_3
    if-gt v6, v1, :cond_4

    .line 155
    invoke-virtual {p1, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 156
    :cond_4
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 162
    .end local v1    # "prefix":I
    .end local v6    # "suffix":I
    :cond_5
    invoke-virtual {v2, v9}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v3

    .line 165
    .local v3, "session":Ljavax/servlet/http/HttpSession;
    if-eqz v3, :cond_0

    .line 170
    invoke-interface {v4, v3}, Lorg/mortbay/jetty/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 173
    invoke-interface {v4, v3}, Lorg/mortbay/jetty/SessionManager;->getNodeId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 179
    .restart local v1    # "prefix":I
    if-eq v1, v8, :cond_8

    .line 181
    const-string v7, "?"

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 182
    .restart local v6    # "suffix":I
    if-gez v6, :cond_6

    .line 183
    const-string v7, "#"

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 185
    :cond_6
    if-gt v6, v1, :cond_7

    .line 186
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 187
    :cond_7
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 192
    .end local v6    # "suffix":I
    :cond_8
    const/16 v7, 0x3f

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 193
    .restart local v6    # "suffix":I
    if-gez v6, :cond_9

    .line 194
    const/16 v7, 0x23

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 195
    :cond_9
    if-gez v6, :cond_a

    .line 196
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 197
    :cond_a
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/Response;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public flushBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 958
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->flushResponse()V

    .line 959
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getGenerator()Lorg/mortbay/jetty/Generator;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->getContentBufferSize()I

    move-result v0

    return v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 565
    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 566
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentCount()J
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getGenerator()Lorg/mortbay/jetty/Generator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1135
    :cond_0
    const-wide/16 v0, -0x1

    .line 1136
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getGenerator()Lorg/mortbay/jetty/Generator;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->getContentWritten()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 480
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 488
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mortbay/jetty/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 489
    .local v0, "e":Ljava/util/Enumeration;
    if-nez v0, :cond_0

    .line 490
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 491
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_0
    return-object v0
.end method

.method public getHttpFields()Lorg/mortbay/jetty/HttpFields;
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 1091
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1092
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_locale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 590
    iget v0, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 591
    sget-object v0, Lorg/mortbay/jetty/Response;->__nullServletOut:Ljavax/servlet/ServletOutputStream;

    .line 597
    :goto_0
    return-object v0

    .line 593
    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    if-eq v0, v2, :cond_1

    .line 594
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WRITER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_1
    iput v2, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    .line 597
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_reason:Ljava/lang/String;

    return-object v0
.end method

.method getSetCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1102
    iget v0, p0, Lorg/mortbay/jetty/Response;->_status:I

    return v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 612
    iget v1, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 613
    sget-object v1, Lorg/mortbay/jetty/Response;->__nullPrintWriter:Ljava/io/PrintWriter;

    .line 640
    :goto_0
    return-object v1

    .line 615
    :cond_0
    iget v1, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    if-eq v1, v3, :cond_1

    .line 616
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "STREAM"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 619
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_writer:Ljava/io/PrintWriter;

    if-nez v1, :cond_5

    .line 622
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 624
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 627
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 628
    const/4 v0, 0x0

    .line 630
    :cond_2
    if-nez v0, :cond_3

    .line 631
    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    .line 633
    :cond_3
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Response;->setCharacterEncoding(Ljava/lang/String;)V

    .line 637
    :cond_4
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/HttpConnection;->getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_writer:Ljava/io/PrintWriter;

    .line 639
    .end local v0    # "encoding":Ljava/lang/String;
    :cond_5
    iput v3, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    .line 640
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_writer:Ljava/io/PrintWriter;

    goto :goto_0
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isResponseCommitted()Z

    move-result v0

    return v0
.end method

.method public isWriting()Z
    .locals 2

    .prologue
    .line 603
    iget v0, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    const/16 v0, 0xc8

    iput v0, p0, Lorg/mortbay/jetty/Response;->_status:I

    .line 101
    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_reason:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_locale:Ljava/util/Locale;

    .line 103
    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 105
    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 106
    iput-boolean v2, p0, Lorg/mortbay/jetty/Response;->_explicitEncoding:Z

    .line 107
    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 108
    iput v2, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    .line 109
    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_writer:Ljava/io/PrintWriter;

    .line 110
    return-void
.end method

.method public reset()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 967
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->resetBuffer()V

    .line 969
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v3

    .line 970
    .local v3, "response_fields":Lorg/mortbay/jetty/HttpFields;
    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpFields;->clear()V

    .line 971
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v5, v6}, Lorg/mortbay/jetty/HttpFields;->getStringField(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v1

    .line 972
    .local v1, "connection":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 974
    new-instance v4, Lorg/mortbay/util/QuotedStringTokenizer;

    const-string v5, ","

    invoke-direct {v4, v1, v5}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    .local v4, "tok":Lorg/mortbay/util/QuotedStringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 977
    sget-object v5, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v4}, Lorg/mortbay/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/mortbay/jetty/HttpHeaderValues;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 978
    .local v0, "cb":Lorg/mortbay/io/BufferCache$CachedBuffer;
    if-eqz v0, :cond_0

    .line 980
    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 983
    :sswitch_0
    sget-object v5, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CLOSE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v3, v5, v6}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_0

    .line 987
    :sswitch_1
    const-string v5, "HTTP/1.0"

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v6}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mortbay/jetty/Request;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 988
    sget-object v5, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    const-string v6, "keep-alive"

    invoke-virtual {v3, v5, v6}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto :goto_0

    .line 991
    :sswitch_2
    sget-object v5, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    const-string v6, "TE"

    invoke-virtual {v3, v5, v6}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto :goto_0

    .line 998
    .end local v0    # "cb":Lorg/mortbay/io/BufferCache$CachedBuffer;
    .end local v4    # "tok":Lorg/mortbay/util/QuotedStringTokenizer;
    :cond_1
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v5

    invoke-interface {v5}, Lorg/mortbay/jetty/Connector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mortbay/jetty/Server;->getSendDateHeader()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1000
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v2

    .line 1001
    .local v2, "request":Lorg/mortbay/jetty/Request;
    sget-object v5, Lorg/mortbay/jetty/HttpHeaders;->DATE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v2}, Lorg/mortbay/jetty/Request;->getTimeStampBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v6

    invoke-virtual {v2}, Lorg/mortbay/jetty/Request;->getTimeStamp()J

    move-result-wide v8

    invoke-virtual {v3, v5, v6, v8, v9}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    .line 1004
    .end local v2    # "request":Lorg/mortbay/jetty/Request;
    :cond_2
    const/16 v5, 0xc8

    iput v5, p0, Lorg/mortbay/jetty/Response;->_status:I

    .line 1005
    iput-object v7, p0, Lorg/mortbay/jetty/Response;->_reason:Ljava/lang/String;

    .line 1006
    iput-object v7, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    .line 1007
    iput-object v7, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 1008
    iput-object v7, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 1009
    iput-object v7, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 1010
    iput-boolean v10, p0, Lorg/mortbay/jetty/Response;->_explicitEncoding:Z

    .line 1011
    iput-object v7, p0, Lorg/mortbay/jetty/Response;->_locale:Ljava/util/Locale;

    .line 1012
    iput v10, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    .line 1013
    iput-object v7, p0, Lorg/mortbay/jetty/Response;->_writer:Ljava/io/PrintWriter;

    .line 1014
    return-void

    .line 980
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public resetBuffer()V
    .locals 2

    .prologue
    .line 1022
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1024
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getGenerator()Lorg/mortbay/jetty/Generator;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->resetBuffer()V

    .line 1025
    return-void
.end method

.method public sendError(I)V
    .locals 1
    .param p1, "sc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->sendProcessing()V

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 10
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xce

    const/4 v8, 0x0

    .line 234
    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v6}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 331
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 238
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Committed before "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 240
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->resetBuffer()V

    .line 241
    iput-object v8, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 242
    const-string v6, "Expires"

    invoke-virtual {p0, v6, v8}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v6, "Last-Modified"

    invoke-virtual {p0, v6, v8}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v6, "Cache-Control"

    invoke-virtual {p0, v6, v8}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v6, "Content-Type"

    invoke-virtual {p0, v6, v8}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v6, "Content-Length"

    invoke-virtual {p0, v6, v8}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v6, 0x0

    iput v6, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    .line 249
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/Response;->setStatus(ILjava/lang/String;)V

    .line 251
    if-nez p2, :cond_2

    .line 252
    invoke-static {p1}, Lorg/mortbay/jetty/HttpGenerator;->getReason(I)Ljava/lang/String;

    move-result-object p2

    .line 255
    :cond_2
    const/16 v6, 0xcc

    if-eq p1, v6, :cond_a

    const/16 v6, 0x130

    if-eq p1, v6, :cond_a

    if-eq p1, v9, :cond_a

    const/16 v6, 0xc8

    if-lt p1, v6, :cond_a

    .line 260
    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v6}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v3

    .line 262
    .local v3, "request":Lorg/mortbay/jetty/Request;
    const/4 v1, 0x0

    .line 263
    .local v1, "error_handler":Lorg/mortbay/jetty/handler/ErrorHandler;
    invoke-virtual {v3}, Lorg/mortbay/jetty/Request;->getContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v0

    .line 264
    .local v0, "context":Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    if-eqz v0, :cond_3

    .line 265
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mortbay/jetty/handler/ContextHandler;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object v1

    .line 266
    :cond_3
    if-eqz v1, :cond_5

    .line 269
    const-string v6, "javax.servlet.error.status_code"

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v6, v7}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    const-string v6, "javax.servlet.error.message"

    invoke-virtual {v3, v6, p2}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    const-string v6, "javax.servlet.error.request_uri"

    invoke-virtual {v3}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    const-string v6, "javax.servlet.error.servlet_name"

    invoke-virtual {v3}, Lorg/mortbay/jetty/Request;->getServletName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v6}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v1, v8, v6, p0, v7}, Lorg/mortbay/jetty/handler/ErrorHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 330
    .end local v0    # "context":Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    .end local v1    # "error_handler":Lorg/mortbay/jetty/handler/ErrorHandler;
    .end local v3    # "request":Lorg/mortbay/jetty/Request;
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->complete()V

    goto/16 :goto_0

    .line 278
    .restart local v0    # "context":Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    .restart local v1    # "error_handler":Lorg/mortbay/jetty/handler/ErrorHandler;
    .restart local v3    # "request":Lorg/mortbay/jetty/Request;
    :cond_5
    const-string v6, "Cache-Control"

    const-string v7, "must-revalidate,no-cache,no-store"

    invoke-virtual {p0, v6, v7}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v6, "text/html; charset=iso-8859-1"

    invoke-virtual {p0, v6}, Lorg/mortbay/jetty/Response;->setContentType(Ljava/lang/String;)V

    .line 280
    new-instance v5, Lorg/mortbay/util/ByteArrayISO8859Writer;

    const/16 v6, 0x800

    invoke-direct {v5, v6}, Lorg/mortbay/util/ByteArrayISO8859Writer;-><init>(I)V

    .line 281
    .local v5, "writer":Lorg/mortbay/util/ByteArrayISO8859Writer;
    if-eqz p2, :cond_6

    .line 283
    const-string v6, "&"

    const-string v7, "&amp;"

    invoke-static {p2, v6, v7}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 284
    const-string v6, "<"

    const-string v7, "&lt;"

    invoke-static {p2, v6, v7}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 285
    const-string v6, ">"

    const-string v7, "&gt;"

    invoke-static {p2, v6, v7}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 287
    :cond_6
    invoke-virtual {v3}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, "uri":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 290
    const-string v6, "&"

    const-string v7, "&amp;"

    invoke-static {v4, v6, v7}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 291
    const-string v6, "<"

    const-string v7, "&lt;"

    invoke-static {v4, v6, v7}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 292
    const-string v6, ">"

    const-string v7, "&gt;"

    invoke-static {v4, v6, v7}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 295
    :cond_7
    const-string v6, "<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"/>\n"

    invoke-virtual {v5, v6}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 296
    const-string v6, "<title>Error "

    invoke-virtual {v5, v6}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 298
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(C)V

    .line 299
    if-nez p2, :cond_8

    .line 300
    invoke-static {p1}, Lorg/mortbay/jetty/HttpGenerator;->getReason(I)Ljava/lang/String;

    move-result-object p2

    .line 301
    :cond_8
    invoke-virtual {v5, p2}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 302
    const-string v6, "</title>\n</head>\n<body>\n<h2>HTTP ERROR: "

    invoke-virtual {v5, v6}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 303
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 304
    const-string v6, "</h2>\n<p>Problem accessing "

    invoke-virtual {v5, v6}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v5, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 306
    const-string v6, ". Reason:\n<pre>    "

    invoke-virtual {v5, v6}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v5, p2}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 308
    const-string v6, "</pre>"

    invoke-virtual {v5, v6}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 309
    const-string v6, "</p>\n<hr /><i><small>Powered by Jetty://</small></i>"

    invoke-virtual {v5, v6}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 311
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/16 v6, 0x14

    if-ge v2, v6, :cond_9

    .line 312
    const-string v6, "\n                                                "

    invoke-virtual {v5, v6}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 313
    :cond_9
    const-string v6, "\n</body>\n</html>\n"

    invoke-virtual {v5, v6}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v5}, Lorg/mortbay/util/ByteArrayISO8859Writer;->flush()V

    .line 316
    invoke-virtual {v5}, Lorg/mortbay/util/ByteArrayISO8859Writer;->size()I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/mortbay/jetty/Response;->setContentLength(I)V

    .line 317
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/mortbay/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    .line 318
    invoke-virtual {v5}, Lorg/mortbay/util/ByteArrayISO8859Writer;->destroy()V

    goto/16 :goto_1

    .line 321
    .end local v0    # "context":Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    .end local v1    # "error_handler":Lorg/mortbay/jetty/handler/ErrorHandler;
    .end local v2    # "i":I
    .end local v3    # "request":Lorg/mortbay/jetty/Request;
    .end local v4    # "uri":Ljava/lang/String;
    .end local v5    # "writer":Lorg/mortbay/util/ByteArrayISO8859Writer;
    :cond_a
    if-eq p1, v9, :cond_4

    .line 323
    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v6}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v6

    sget-object v7, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v6, v7}, Lorg/mortbay/jetty/HttpFields;->remove(Lorg/mortbay/io/Buffer;)V

    .line 324
    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v6}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v6

    sget-object v7, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v6, v7}, Lorg/mortbay/jetty/HttpFields;->remove(Lorg/mortbay/io/Buffer;)V

    .line 325
    iput-object v8, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 326
    iput-object v8, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    .line 327
    iput-object v8, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    goto/16 :goto_1
.end method

.method public sendProcessing()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 355
    iget-object v4, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v4}, Lorg/mortbay/jetty/HttpConnection;->getGenerator()Lorg/mortbay/jetty/Generator;

    move-result-object v1

    .line 356
    .local v1, "g":Lorg/mortbay/jetty/Generator;
    instance-of v4, v1, Lorg/mortbay/jetty/HttpGenerator;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 358
    check-cast v2, Lorg/mortbay/jetty/HttpGenerator;

    .line 360
    .local v2, "generator":Lorg/mortbay/jetty/HttpGenerator;
    iget-object v4, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v4}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v4

    const-string v5, "Expect"

    invoke-virtual {v4, v5}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "expect":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, "102"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpGenerator;->getVersion()I

    move-result v4

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 364
    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpGenerator;->isPersistent()Z

    move-result v3

    .line 365
    .local v3, "was_persistent":Z
    const/16 v4, 0x66

    invoke-virtual {v2, v4, v7}, Lorg/mortbay/jetty/HttpGenerator;->setResponse(ILjava/lang/String;)V

    .line 366
    invoke-virtual {v2, v7, v6}, Lorg/mortbay/jetty/HttpGenerator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V

    .line 367
    invoke-virtual {v2, v6}, Lorg/mortbay/jetty/HttpGenerator;->setPersistent(Z)V

    .line 368
    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpGenerator;->complete()V

    .line 369
    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpGenerator;->flush()J

    .line 370
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/mortbay/jetty/HttpGenerator;->reset(Z)V

    .line 371
    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/HttpGenerator;->setPersistent(Z)V

    .line 374
    .end local v0    # "expect":Ljava/lang/String;
    .end local v2    # "generator":Lorg/mortbay/jetty/HttpGenerator;
    .end local v3    # "was_persistent":Z
    :cond_0
    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 7
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 434
    :goto_0
    return-void

    .line 385
    :cond_0
    if-nez p1, :cond_1

    .line 386
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 388
    :cond_1
    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->hasScheme(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 390
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mortbay/jetty/Request;->getRootURL()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 391
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 392
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 406
    new-instance v4, Lorg/mortbay/jetty/HttpURI;

    invoke-direct {v4, p1}, Lorg/mortbay/jetty/HttpURI;-><init>(Ljava/lang/String;)V

    .line 407
    .local v4, "uri":Lorg/mortbay/jetty/HttpURI;
    invoke-virtual {v4}, Lorg/mortbay/jetty/HttpURI;->getDecodedPath()Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "canonical":Ljava/lang/String;
    if-nez v1, :cond_6

    .line 410
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 395
    .end local v1    # "canonical":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "uri":Lorg/mortbay/jetty/HttpURI;
    :cond_2
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    .line 396
    .restart local v3    # "path":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v2, v3

    .line 397
    .local v2, "parent":Ljava/lang/String;
    :goto_2
    invoke-static {v2, p1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 398
    if-nez p1, :cond_4

    .line 399
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "path cannot be above root"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 396
    .end local v2    # "parent":Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Lorg/mortbay/util/URIUtil;->parentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 400
    .restart local v2    # "parent":Ljava/lang/String;
    :cond_4
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 401
    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 402
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 411
    .end local v2    # "parent":Ljava/lang/String;
    .restart local v1    # "canonical":Ljava/lang/String;
    .restart local v4    # "uri":Lorg/mortbay/jetty/HttpURI;
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 413
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mortbay/jetty/Request;->getRootURL()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    invoke-virtual {v4}, Lorg/mortbay/jetty/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 417
    const/16 v5, 0x3f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 418
    invoke-virtual {v4}, Lorg/mortbay/jetty/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    :cond_7
    invoke-virtual {v4}, Lorg/mortbay/jetty/HttpURI;->getFragment()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 422
    const/16 v5, 0x23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 423
    invoke-virtual {v4}, Lorg/mortbay/jetty/HttpURI;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 428
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "canonical":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "uri":Lorg/mortbay/jetty/HttpURI;
    :cond_9
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->resetBuffer()V

    .line 430
    const-string v5, "Location"

    invoke-virtual {p0, v5, p1}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/16 v5, 0x12e

    invoke-virtual {p0, v5}, Lorg/mortbay/jetty/Response;->setStatus(I)V

    .line 432
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->complete()V

    goto/16 :goto_0
.end method

.method public setBufferSize(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 938
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->getContentCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 939
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Committed or content written"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getGenerator()Lorg/mortbay/jetty/Generator;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mortbay/jetty/Generator;->increaseContentBufferSize(I)V

    .line 941
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 9
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 649
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget v5, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 654
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/mortbay/jetty/Response;->_explicitEncoding:Z

    .line 656
    if-nez p1, :cond_3

    .line 659
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 661
    iput-object v8, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 662
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_2

    .line 663
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v5, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_0

    .line 665
    :cond_2
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto :goto_0

    .line 671
    :cond_3
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 672
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 674
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 675
    .local v1, "i0":I
    if-gez v1, :cond_5

    .line 677
    iput-object v8, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 678
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_4

    .line 680
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 681
    .local v0, "content_type":Lorg/mortbay/io/BufferCache$CachedBuffer;
    if-eqz v0, :cond_4

    .line 683
    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 684
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v5, v6, v0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 688
    .end local v0    # "content_type":Lorg/mortbay/io/BufferCache$CachedBuffer;
    :cond_4
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 690
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "; charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 691
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 696
    :cond_5
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    const-string v6, "charset="

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 697
    .local v2, "i1":I
    if-gez v2, :cond_6

    .line 699
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "; charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 710
    :goto_1
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 703
    :cond_6
    add-int/lit8 v4, v2, 0x8

    .line 704
    .local v4, "i8":I
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 705
    .local v3, "i2":I
    if-gez v3, :cond_7

    .line 706
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    goto :goto_1

    .line 708
    :cond_7
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    goto :goto_1
.end method

.method public setContentLength(I)V
    .locals 6
    .param p1, "len"    # I

    .prologue
    .line 726
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    iget-object v1, v1, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    .line 729
    if-ltz p1, :cond_0

    .line 731
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v1

    const-string v2, "Content-Length"

    int-to-long v4, p1

    invoke-virtual {v1, v2, v4, v5}, Lorg/mortbay/jetty/HttpFields;->putLongField(Ljava/lang/String;J)V

    .line 732
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    iget-object v1, v1, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v1}, Lorg/mortbay/jetty/Generator;->isContentWritten()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    iget v1, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 735
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_writer:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 736
    :cond_2
    iget v1, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 740
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/servlet/ServletOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 742
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 10
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 772
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 930
    .end local p1    # "contentType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 779
    .restart local p1    # "contentType":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_3

    .line 781
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_locale:Ljava/util/Locale;

    if-nez v5, :cond_2

    .line 782
    iput-object v7, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 783
    :cond_2
    iput-object v7, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    .line 784
    iput-object v7, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 785
    iput-object v7, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 786
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v5, v6}, Lorg/mortbay/jetty/HttpFields;->remove(Lorg/mortbay/io/Buffer;)V

    goto :goto_0

    .line 791
    :cond_3
    const/16 v5, 0x3b

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 793
    .local v1, "i0":I
    if-lez v1, :cond_13

    .line 798
    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    .line 799
    sget-object v5, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 802
    const-string v5, "charset="

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 803
    .local v2, "i1":I
    if-ltz v2, :cond_11

    .line 805
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/mortbay/jetty/Response;->_explicitEncoding:Z

    .line 806
    add-int/lit8 v4, v2, 0x8

    .line 807
    .local v4, "i8":I
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 809
    .local v3, "i2":I
    iget v5, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 812
    add-int/lit8 v5, v1, 0x1

    if-ne v2, v5, :cond_4

    if-ltz v3, :cond_5

    :cond_4
    add-int/lit8 v5, v1, 0x2

    if-ne v2, v5, :cond_8

    if-gez v3, :cond_8

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_8

    .line 814
    :cond_5
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_7

    .line 816
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 817
    .local v0, "content_type":Lorg/mortbay/io/BufferCache$CachedBuffer;
    if-eqz v0, :cond_6

    .line 819
    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 820
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v5, v6, v0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_0

    .line 824
    :cond_6
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "; charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 825
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 830
    .end local v0    # "content_type":Lorg/mortbay/io/BufferCache$CachedBuffer;
    :cond_7
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "; charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 831
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 834
    :cond_8
    if-gez v3, :cond_9

    .line 836
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 837
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 841
    :cond_9
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 842
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 845
    :cond_a
    add-int/lit8 v5, v1, 0x1

    if-ne v2, v5, :cond_b

    if-ltz v3, :cond_c

    :cond_b
    add-int/lit8 v5, v1, 0x2

    if-ne v2, v5, :cond_f

    if-gez v3, :cond_f

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_f

    .line 848
    :cond_c
    sget-object v5, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 849
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 851
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_e

    .line 853
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 854
    .restart local v0    # "content_type":Lorg/mortbay/io/BufferCache$CachedBuffer;
    if-eqz v0, :cond_d

    .line 856
    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 857
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v5, v6, v0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_0

    .line 861
    :cond_d
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 862
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 867
    .end local v0    # "content_type":Lorg/mortbay/io/BufferCache$CachedBuffer;
    :cond_e
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 868
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 871
    :cond_f
    if-lez v3, :cond_10

    .line 873
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 874
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 875
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 879
    :cond_10
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 880
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 881
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 886
    .end local v3    # "i2":I
    .end local v4    # "i8":I
    :cond_11
    iput-object v7, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 887
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    if-nez v5, :cond_12

    .end local p1    # "contentType":Ljava/lang/String;
    :goto_1
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 888
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 887
    .restart local p1    # "contentType":Ljava/lang/String;
    :cond_12
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "; charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 893
    .end local v2    # "i1":I
    :cond_13
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    .line 894
    sget-object v5, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 896
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    if-eqz v5, :cond_16

    .line 898
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_15

    .line 900
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 901
    .restart local v0    # "content_type":Lorg/mortbay/io/BufferCache$CachedBuffer;
    if-eqz v0, :cond_14

    .line 903
    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 904
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v5, v6, v0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_0

    .line 908
    :cond_14
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "; charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 909
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 914
    .end local v0    # "content_type":Lorg/mortbay/io/BufferCache$CachedBuffer;
    :cond_15
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "; charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 915
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 918
    :cond_16
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_17

    .line 920
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v5}, Lorg/mortbay/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 921
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v5, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_0

    .line 925
    :cond_17
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 926
    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 442
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/mortbay/jetty/HttpFields;->putDateField(Ljava/lang/String;J)V

    .line 444
    :cond_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 462
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/mortbay/jetty/HttpFields;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    if-nez p2, :cond_1

    .line 468
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    goto :goto_0
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 514
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lorg/mortbay/jetty/HttpFields;->putLongField(Ljava/lang/String;J)V

    .line 517
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    int-to-long v2, p2

    invoke-interface {v0, v2, v3}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    .line 520
    :cond_0
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 8
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1043
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_locale:Ljava/util/Locale;

    .line 1047
    iget-object v3, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v3

    sget-object v4, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_LANGUAGE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5f

    const/16 v7, 0x2d

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    .line 1049
    iget-boolean v3, p0, Lorg/mortbay/jetty/Response;->_explicitEncoding:Z

    if-nez v3, :cond_0

    iget v3, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    if-nez v3, :cond_0

    .line 1052
    iget-object v3, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/Request;->getContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1055
    iget-object v3, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/Request;->getContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->getLocaleEncoding(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, "charset":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1059
    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 1062
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 1063
    .local v2, "type":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1065
    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 1066
    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1067
    .local v1, "semi":I
    if-gez v1, :cond_2

    .line 1069
    iput-object v2, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    .line 1070
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "; charset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 1078
    :goto_1
    sget-object v3, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v4, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 1079
    iget-object v3, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v3

    sget-object v4, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v5, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1074
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    .line 1075
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "; charset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    iput-object v3, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    goto :goto_1
.end method

.method public setLongContentLength(J)V
    .locals 3
    .param p1, "len"    # J

    .prologue
    .line 760
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0, p1, p2}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    .line 763
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1, p1, p2}, Lorg/mortbay/jetty/HttpFields;->putLongField(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public setStatus(I)V
    .locals 1
    .param p1, "sc"    # I

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/Response;->setStatus(ILjava/lang/String;)V

    .line 543
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1
    .param p1, "sc"    # I
    .param p2, "sm"    # Ljava/lang/String;

    .prologue
    .line 551
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    iput p1, p0, Lorg/mortbay/jetty/Response;->_status:I

    .line 554
    iput-object p2, p0, Lorg/mortbay/jetty/Response;->_reason:Ljava/lang/String;

    .line 556
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "HTTP/1.1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/Response;->_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_reason:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_reason:Ljava/lang/String;

    goto :goto_0
.end method
