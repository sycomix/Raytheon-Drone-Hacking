.class public Lorg/mortbay/servlet/RestFilter;
.super Ljava/lang/Object;
.source "RestFilter.java"

# interfaces
.implements Ljavax/servlet/Filter;


# static fields
.field private static final HTTP_METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field private static final HTTP_METHOD_GET:Ljava/lang/String; = "GET"

.field private static final HTTP_METHOD_PUT:Ljava/lang/String; = "PUT"


# instance fields
.field private _maxPutSize:J

.field private filterConfig:Ljavax/servlet/FilterConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private locateFile(Ljavax/servlet/http/HttpServletRequest;)Ljava/io/File;
    .locals 4
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 80
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/mortbay/servlet/RestFilter;->filterConfig:Ljavax/servlet/FilterConfig;

    invoke-interface {v1}, Ljavax/servlet/FilterConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/servlet/ServletContext;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method protected doDelete(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 3
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lorg/mortbay/servlet/RestFilter;->locateFile(Ljavax/servlet/http/HttpServletRequest;)Ljava/io/File;

    move-result-object v0

    .line 171
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    const/16 v2, 0x194

    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 187
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-static {v0}, Lorg/mortbay/util/IO;->delete(Ljava/io/File;)Z

    move-result v1

    .line 179
    .local v1, "success":Z
    if-eqz v1, :cond_1

    .line 181
    const/16 v2, 0xcc

    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    goto :goto_0

    .line 185
    :cond_1
    const/16 v2, 0x1f4

    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_0
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 4
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "chain"    # Ljavax/servlet/FilterChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 89
    instance-of v2, p1, Ljavax/servlet/http/HttpServletRequest;

    if-eqz v2, :cond_0

    instance-of v2, p2, Ljavax/servlet/http/HttpServletResponse;

    if-nez v2, :cond_1

    .line 91
    :cond_0
    invoke-interface {p3, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 114
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 95
    check-cast v0, Ljavax/servlet/http/HttpServletRequest;

    .local v0, "httpRequest":Ljavax/servlet/http/HttpServletRequest;
    move-object v1, p2

    .line 96
    check-cast v1, Ljavax/servlet/http/HttpServletResponse;

    .line 98
    .local v1, "httpResponse":Ljavax/servlet/http/HttpServletResponse;
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    invoke-interface {p3, v0, v1}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PUT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    invoke-virtual {p0, v0, v1}, Lorg/mortbay/servlet/RestFilter;->doPut(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 106
    :cond_3
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DELETE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 108
    invoke-virtual {p0, v0, v1}, Lorg/mortbay/servlet/RestFilter;->doDelete(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 112
    :cond_4
    invoke-interface {p3, v0, v1}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_0
.end method

.method protected doPut(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 8
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x193

    .line 124
    invoke-direct {p0, p1}, Lorg/mortbay/servlet/RestFilter;->locateFile(Ljavax/servlet/http/HttpServletRequest;)Ljava/io/File;

    move-result-object v0

    .line 126
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 129
    .local v3, "success":Z
    if-nez v3, :cond_0

    .line 131
    invoke-interface {p2, v5}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 158
    .end local v3    # "success":Z
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 139
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    iget-wide v4, p0, Lorg/mortbay/servlet/RestFilter;->_maxPutSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 141
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getContentLength()I

    move-result v1

    .line 142
    .local v1, "length":I
    int-to-long v4, v1

    iget-wide v6, p0, Lorg/mortbay/servlet/RestFilter;->_maxPutSize:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 144
    const/16 v4, 0x193

    invoke-interface {p2, v4}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 147
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v4

    iget-wide v6, p0, Lorg/mortbay/servlet/RestFilter;->_maxPutSize:J

    invoke-static {v4, v2, v6, v7}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .end local v1    # "length":I
    :goto_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 157
    const/16 v4, 0xcc

    invoke-interface {p2, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    goto :goto_0

    .line 150
    :cond_2
    :try_start_2
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 154
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v4
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 4
    .param p1, "filterConfig"    # Ljavax/servlet/FilterConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/UnavailableException;
        }
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lorg/mortbay/servlet/RestFilter;->filterConfig:Ljavax/servlet/FilterConfig;

    .line 68
    const-string v1, "maxPutSize"

    invoke-interface {p1, v1}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "tmp":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 70
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mortbay/servlet/RestFilter;->_maxPutSize:J

    .line 71
    :cond_0
    return-void
.end method
