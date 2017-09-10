.class public Lorg/mortbay/jetty/handler/RewriteHandler;
.super Lorg/mortbay/jetty/handler/HandlerWrapper;
.source "RewriteHandler.java"


# instance fields
.field private _originalPathAttribute:Ljava/lang/String;

.field private _rewrite:Lorg/mortbay/jetty/servlet/PathMap;

.field private _rewritePathInfo:Z

.field private _rewriteRequestURI:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    .line 64
    iput-boolean v1, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_rewriteRequestURI:Z

    .line 65
    iput-boolean v1, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_rewritePathInfo:Z

    .line 67
    new-instance v0, Lorg/mortbay/jetty/servlet/PathMap;

    invoke-direct {v0, v1}, Lorg/mortbay/jetty/servlet/PathMap;-><init>(Z)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_rewrite:Lorg/mortbay/jetty/servlet/PathMap;

    return-void
.end method


# virtual methods
.method public addRewriteRule(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 158
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 160
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_rewrite:Lorg/mortbay/jetty/servlet/PathMap;

    if-nez v0, :cond_2

    .line 161
    new-instance v0, Lorg/mortbay/jetty/servlet/PathMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mortbay/jetty/servlet/PathMap;-><init>(Z)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_rewrite:Lorg/mortbay/jetty/servlet/PathMap;

    .line 162
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_rewrite:Lorg/mortbay/jetty/servlet/PathMap;

    invoke-virtual {v0, p1, p2}, Lorg/mortbay/jetty/servlet/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method

.method public getOriginalPathAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_originalPathAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getRewrite()Lorg/mortbay/jetty/servlet/PathMap;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_rewrite:Lorg/mortbay/jetty/servlet/PathMap;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 3
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
    .line 171
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/RewriteHandler;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_rewrite:Lorg/mortbay/jetty/servlet/PathMap;

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_rewrite:Lorg/mortbay/jetty/servlet/PathMap;

    invoke-virtual {v1, p1}, Lorg/mortbay/jetty/servlet/PathMap;->getMatch(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v0

    .line 175
    .local v0, "rewrite":Ljava/util/Map$Entry;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 177
    iget-object v1, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_originalPathAttribute:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_originalPathAttribute:Ljava/lang/String;

    invoke-interface {p2, v1, p1}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/mortbay/jetty/servlet/PathMap;->pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 183
    iget-boolean v1, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_rewriteRequestURI:Z

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 184
    check-cast v1, Lorg/mortbay/jetty/Request;

    invoke-virtual {v1, p1}, Lorg/mortbay/jetty/Request;->setRequestURI(Ljava/lang/String;)V

    .line 186
    :cond_1
    iget-boolean v1, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_rewritePathInfo:Z

    if-eqz v1, :cond_2

    move-object v1, p2

    .line 187
    check-cast v1, Lorg/mortbay/jetty/Request;

    invoke-virtual {v1, p1}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    .line 190
    .end local v0    # "rewrite":Ljava/util/Map$Entry;
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/handler/HandlerWrapper;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 192
    return-void
.end method

.method public isRewritePathInfo()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_rewritePathInfo:Z

    return v0
.end method

.method public isRewriteRequestURI()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_rewriteRequestURI:Z

    return v0
.end method

.method public setOriginalPathAttribute(Ljava/lang/String;)V
    .locals 0
    .param p1, "originalPathAttribte"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_originalPathAttribute:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setRewrite(Lorg/mortbay/jetty/servlet/PathMap;)V
    .locals 0
    .param p1, "rewrite"    # Lorg/mortbay/jetty/servlet/PathMap;

    .prologue
    .line 146
    iput-object p1, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_rewrite:Lorg/mortbay/jetty/servlet/PathMap;

    .line 147
    return-void
.end method

.method public setRewritePathInfo(Z)V
    .locals 0
    .param p1, "rewritePathInfo"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_rewritePathInfo:Z

    .line 108
    return-void
.end method

.method public setRewriteRequestURI(Z)V
    .locals 0
    .param p1, "rewriteRequestURI"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->_rewriteRequestURI:Z

    .line 88
    return-void
.end method
