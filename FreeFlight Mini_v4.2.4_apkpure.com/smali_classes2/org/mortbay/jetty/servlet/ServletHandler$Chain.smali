.class Lorg/mortbay/jetty/servlet/ServletHandler$Chain;
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
    name = "Chain"
.end annotation


# instance fields
.field _chain:Ljava/lang/Object;

.field _filter:I

.field _servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

.field private final this$0:Lorg/mortbay/jetty/servlet/ServletHandler;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/mortbay/jetty/servlet/ServletHolder;)V
    .locals 1
    .param p2, "filters"    # Ljava/lang/Object;
    .param p3, "servletHolder"    # Lorg/mortbay/jetty/servlet/ServletHolder;

    .prologue
    .line 1247
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->this$0:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1241
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_filter:I

    .line 1248
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    .line 1249
    iput-object p3, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 1250
    return-void
.end method


# virtual methods
.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 5
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 1256
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "doFilter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_filter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1259
    :cond_0
    iget v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_filter:I

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    invoke-static {v3}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1261
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_filter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_filter:I

    invoke-static {v2, v3}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/servlet/FilterHolder;

    .line 1262
    .local v1, "holder":Lorg/mortbay/jetty/servlet/FilterHolder;
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "call filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1263
    :cond_1
    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/FilterHolder;->getFilter()Ljavax/servlet/Filter;

    move-result-object v0

    .line 1264
    .local v0, "filter":Ljavax/servlet/Filter;
    invoke-interface {v0, p1, p2, p0}, Ljavax/servlet/Filter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    .line 1276
    .end local v0    # "filter":Ljavax/servlet/Filter;
    .end local v1    # "holder":Lorg/mortbay/jetty/servlet/FilterHolder;
    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    :goto_0
    return-void

    .line 1269
    .restart local p1    # "request":Ljavax/servlet/ServletRequest;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eqz v2, :cond_4

    .line 1271
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "call servlet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1272
    :cond_3
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v2, p1, p2}, Lorg/mortbay/jetty/servlet/ServletHolder;->handle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_0

    .line 1275
    :cond_4
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->this$0:Lorg/mortbay/jetty/servlet/ServletHandler;

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    invoke-virtual {v2, p1, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1281
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1282
    .local v0, "b":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    invoke-static {v2}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1284
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1285
    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1287
    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1288
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
