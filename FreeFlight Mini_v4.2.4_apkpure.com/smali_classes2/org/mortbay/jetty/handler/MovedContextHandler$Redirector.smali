.class Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "MovedContextHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/handler/MovedContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Redirector"
.end annotation


# instance fields
.field private final this$0:Lorg/mortbay/jetty/handler/MovedContextHandler;


# direct methods
.method private constructor <init>(Lorg/mortbay/jetty/handler/MovedContextHandler;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;->this$0:Lorg/mortbay/jetty/handler/MovedContextHandler;

    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/mortbay/jetty/handler/MovedContextHandler;Lorg/mortbay/jetty/handler/MovedContextHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mortbay/jetty/handler/MovedContextHandler;
    .param p2, "x1"    # Lorg/mortbay/jetty/handler/MovedContextHandler$1;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;-><init>(Lorg/mortbay/jetty/handler/MovedContextHandler;)V

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
    .line 100
    iget-object v2, p0, Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;->this$0:Lorg/mortbay/jetty/handler/MovedContextHandler;

    iget-object v2, v2, Lorg/mortbay/jetty/handler/MovedContextHandler;->_newContextURL:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 116
    :goto_0
    return-void

    .line 103
    :cond_0
    instance-of v2, p2, Lorg/mortbay/jetty/Request;

    if-eqz v2, :cond_4

    move-object v2, p2

    check-cast v2, Lorg/mortbay/jetty/Request;

    move-object v0, v2

    .line 105
    .local v0, "base_request":Lorg/mortbay/jetty/Request;
    :goto_1
    iget-object v2, p0, Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;->this$0:Lorg/mortbay/jetty/handler/MovedContextHandler;

    iget-object v1, v2, Lorg/mortbay/jetty/handler/MovedContextHandler;->_newContextURL:Ljava/lang/String;

    .line 106
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;->this$0:Lorg/mortbay/jetty/handler/MovedContextHandler;

    iget-boolean v2, v2, Lorg/mortbay/jetty/handler/MovedContextHandler;->_discardPathInfo:Z

    if-nez v2, :cond_1

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 107
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    :cond_1
    iget-object v2, p0, Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;->this$0:Lorg/mortbay/jetty/handler/MovedContextHandler;

    iget-boolean v2, v2, Lorg/mortbay/jetty/handler/MovedContextHandler;->_discardQuery:Z

    if-nez v2, :cond_2

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 109
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    :cond_2
    invoke-interface {p3, v1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;->this$0:Lorg/mortbay/jetty/handler/MovedContextHandler;

    iget-boolean v2, v2, Lorg/mortbay/jetty/handler/MovedContextHandler;->_permanent:Z

    if-eqz v2, :cond_3

    .line 113
    const/16 v2, 0x12d

    invoke-interface {p3, v2}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 115
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    goto :goto_0

    .line 103
    .end local v0    # "base_request":Lorg/mortbay/jetty/Request;
    .end local v1    # "url":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    goto :goto_1
.end method
