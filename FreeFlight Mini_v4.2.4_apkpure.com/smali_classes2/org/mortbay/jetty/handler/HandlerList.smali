.class public Lorg/mortbay/jetty/handler/HandlerList;
.super Lorg/mortbay/jetty/handler/HandlerCollection;
.source "HandlerList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 4
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
    .line 42
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerList;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v1

    .line 44
    .local v1, "handlers":[Lorg/mortbay/jetty/Handler;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerList;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    .line 47
    .local v0, "base_request":Lorg/mortbay/jetty/Request;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 49
    aget-object v3, v1, v2

    invoke-interface {v3, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 50
    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    .end local v0    # "base_request":Lorg/mortbay/jetty/Request;
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 47
    .restart local v0    # "base_request":Lorg/mortbay/jetty/Request;
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
