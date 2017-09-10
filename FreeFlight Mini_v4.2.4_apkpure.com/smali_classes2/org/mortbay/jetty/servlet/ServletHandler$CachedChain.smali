.class Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;
.super Ljava/lang/Object;
.source "ServletHandler.java"

# interfaces
.implements Ljavax/servlet/FilterChain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/ServletHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachedChain"
.end annotation


# instance fields
.field _filterHolder:Lorg/mortbay/jetty/servlet/FilterHolder;

.field _next:Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;

.field _servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

.field private final this$0:Lorg/mortbay/jetty/servlet/ServletHandler;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/mortbay/jetty/servlet/ServletHolder;)V
    .locals 2
    .param p2, "filters"    # Ljava/lang/Object;
    .param p3, "servletHolder"    # Lorg/mortbay/jetty/servlet/ServletHolder;

    .prologue
    const/4 v1, 0x0

    .line 1191
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;->this$0:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1192
    invoke-static {p2}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1194
    invoke-static {p2, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/FilterHolder;

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/mortbay/jetty/servlet/FilterHolder;

    .line 1195
    invoke-static {p2, v1}, Lorg/mortbay/util/LazyList;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    .line 1196
    new-instance v0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;

    invoke-direct {v0, p1, p2, p3}, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/mortbay/jetty/servlet/ServletHolder;)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;->_next:Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;

    .line 1200
    :goto_0
    return-void

    .line 1199
    :cond_0
    iput-object p3, p0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;->_servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    goto :goto_0
.end method


# virtual methods
.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 3
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 1207
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/mortbay/jetty/servlet/FilterHolder;

    if-eqz v1, :cond_1

    .line 1209
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1210
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "call filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1211
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/FilterHolder;->getFilter()Ljavax/servlet/Filter;

    move-result-object v0

    .line 1212
    .local v0, "filter":Ljavax/servlet/Filter;
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;->_next:Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;

    invoke-interface {v0, p1, p2, v1}, Ljavax/servlet/Filter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    .line 1225
    .end local v0    # "filter":Ljavax/servlet/Filter;
    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    :goto_0
    return-void

    .line 1217
    .restart local p1    # "request":Ljavax/servlet/ServletRequest;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;->_servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eqz v1, :cond_3

    .line 1219
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1220
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "call servlet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;->_servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1221
    :cond_2
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;->_servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v1, p1, p2}, Lorg/mortbay/jetty/servlet/ServletHolder;->handle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_0

    .line 1224
    :cond_3
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;->this$0:Lorg/mortbay/jetty/servlet/ServletHandler;

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    invoke-virtual {v1, p1, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1229
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/mortbay/jetty/servlet/FilterHolder;

    if-eqz v0, :cond_0

    .line 1230
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;->_next:Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1233
    :goto_0
    return-object v0

    .line 1231
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;->_servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eqz v0, :cond_1

    .line 1232
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;->_servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1233
    :cond_1
    const-string v0, "null"

    goto :goto_0
.end method
