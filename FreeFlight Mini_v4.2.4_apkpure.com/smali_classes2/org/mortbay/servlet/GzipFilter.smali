.class public Lorg/mortbay/servlet/GzipFilter;
.super Lorg/mortbay/servlet/UserAgentFilter;
.source "GzipFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/servlet/GzipFilter$GzipStream;,
        Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;
    }
.end annotation


# instance fields
.field protected _bufferSize:I

.field protected _excluded:Ljava/util/Set;

.field protected _mimeTypes:Ljava/util/Set;

.field protected _minGzipSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/mortbay/servlet/UserAgentFilter;-><init>()V

    .line 66
    const/16 v0, 0x2000

    iput v0, p0, Lorg/mortbay/servlet/GzipFilter;->_bufferSize:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/servlet/GzipFilter;->_minGzipSize:I

    .line 396
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 10
    .param p1, "req"    # Ljavax/servlet/ServletRequest;
    .param p2, "res"    # Ljavax/servlet/ServletResponse;
    .param p3, "chain"    # Ljavax/servlet/FilterChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 108
    move-object v4, p1

    check-cast v4, Ljavax/servlet/http/HttpServletRequest;

    .local v4, "request":Ljavax/servlet/http/HttpServletRequest;
    move-object v5, p2

    .line 109
    check-cast v5, Ljavax/servlet/http/HttpServletResponse;

    .line 111
    .local v5, "response":Ljavax/servlet/http/HttpServletResponse;
    const-string v8, "accept-encoding"

    invoke-interface {v4, v8}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "ae":Ljava/lang/String;
    const-string v8, "GzipFilter"

    invoke-interface {v4, v8}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 113
    .local v3, "gzip":Ljava/lang/Boolean;
    if-eqz v0, :cond_3

    const-string v8, "gzip"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_3

    const-string v8, "Content-Encoding"

    invoke-interface {v5, v8}, Ljavax/servlet/http/HttpServletResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    const-string v8, "HEAD"

    invoke-interface {v4}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 116
    iget-object v8, p0, Lorg/mortbay/servlet/GzipFilter;->_excluded:Ljava/util/Set;

    if-eqz v8, :cond_1

    .line 118
    invoke-virtual {p0, v4}, Lorg/mortbay/servlet/GzipFilter;->getUserAgent(Ljavax/servlet/ServletRequest;)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "ua":Ljava/lang/String;
    iget-object v8, p0, Lorg/mortbay/servlet/GzipFilter;->_excluded:Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 121
    invoke-super {p0, v4, v5, p3}, Lorg/mortbay/servlet/UserAgentFilter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    .line 156
    .end local v6    # "ua":Ljava/lang/String;
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p0, v4, v5}, Lorg/mortbay/servlet/GzipFilter;->newGZIPResponseWrapper(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;

    move-result-object v7

    .line 128
    .local v7, "wrappedResponse":Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;
    const/4 v2, 0x1

    .line 131
    .local v2, "exceptional":Z
    :try_start_0
    invoke-super {p0, v4, v7, p3}, Lorg/mortbay/servlet/UserAgentFilter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    const/4 v2, 0x0

    .line 143
    if-eqz v2, :cond_5

    invoke-interface {v5}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v8

    if-nez v8, :cond_5

    .line 145
    invoke-virtual {v7}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->resetBuffer()V

    .line 146
    invoke-virtual {v7}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->noGzip()V

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v8, "GzipFilter"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v8, v9}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    invoke-interface {v5}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v8

    if-nez v8, :cond_2

    .line 138
    invoke-interface {v5}, Ljavax/servlet/http/HttpServletResponse;->reset()V

    .line 139
    :cond_2
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_4

    invoke-interface {v5}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v9

    if-nez v9, :cond_4

    .line 145
    invoke-virtual {v7}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->resetBuffer()V

    .line 146
    invoke-virtual {v7}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->noGzip()V

    .line 143
    :goto_1
    throw v8

    .line 154
    .end local v2    # "exceptional":Z
    .end local v7    # "wrappedResponse":Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;
    :cond_3
    invoke-super {p0, v4, v5, p3}, Lorg/mortbay/servlet/UserAgentFilter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    goto :goto_0

    .line 149
    .restart local v2    # "exceptional":Z
    .restart local v7    # "wrappedResponse":Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;
    :cond_4
    invoke-virtual {v7}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->finish()V

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->finish()V

    goto :goto_0
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 5
    .param p1, "filterConfig"    # Ljavax/servlet/FilterConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-super {p0, p1}, Lorg/mortbay/servlet/UserAgentFilter;->init(Ljavax/servlet/FilterConfig;)V

    .line 74
    const-string v2, "bufferSize"

    invoke-interface {p1, v2}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "tmp":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/mortbay/servlet/GzipFilter;->_bufferSize:I

    .line 78
    :cond_0
    const-string v2, "minGzipSize"

    invoke-interface {p1, v2}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/mortbay/servlet/GzipFilter;->_minGzipSize:I

    .line 82
    :cond_1
    const-string v2, "mimeTypes"

    invoke-interface {p1, v2}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 85
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/mortbay/servlet/GzipFilter;->_mimeTypes:Ljava/util/Set;

    .line 86
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, v0, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    .local v1, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    iget-object v2, p0, Lorg/mortbay/servlet/GzipFilter;->_mimeTypes:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    :cond_2
    const-string v2, "excludedAgents"

    invoke-interface {p1, v2}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_3

    .line 94
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/mortbay/servlet/GzipFilter;->_excluded:Ljava/util/Set;

    .line 95
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, v0, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    .restart local v1    # "tok":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    iget-object v2, p0, Lorg/mortbay/servlet/GzipFilter;->_excluded:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    :cond_3
    return-void
.end method

.method protected newGZIPResponseWrapper(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 160
    new-instance v0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;

    invoke-direct {v0, p0, p1, p2}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;-><init>(Lorg/mortbay/servlet/GzipFilter;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-object v0
.end method

.method protected newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 168
    if-nez p2, :cond_0

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_0
.end method
