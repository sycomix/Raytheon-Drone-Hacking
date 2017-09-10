.class public Lorg/mortbay/jetty/handler/RequestLogHandler;
.super Lorg/mortbay/jetty/handler/HandlerWrapper;
.source "RequestLogHandler.java"


# instance fields
.field private _requestLog:Lorg/mortbay/jetty/RequestLog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStart()V

    .line 116
    iget-object v0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->_requestLog:Lorg/mortbay/jetty/RequestLog;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->_requestLog:Lorg/mortbay/jetty/RequestLog;

    invoke-interface {v0}, Lorg/mortbay/jetty/RequestLog;->start()V

    .line 118
    :cond_0
    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStop()V

    .line 127
    iget-object v0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->_requestLog:Lorg/mortbay/jetty/RequestLog;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->_requestLog:Lorg/mortbay/jetty/RequestLog;

    invoke-interface {v0}, Lorg/mortbay/jetty/RequestLog;->stop()V

    .line 129
    :cond_0
    return-void
.end method

.method public getRequestLog()Lorg/mortbay/jetty/RequestLog;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->_requestLog:Lorg/mortbay/jetty/RequestLog;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 1
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
    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/handler/HandlerWrapper;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 50
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->_requestLog:Lorg/mortbay/jetty/RequestLog;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->_requestLog:Lorg/mortbay/jetty/RequestLog;

    check-cast p2, Lorg/mortbay/jetty/Request;

    .end local p2    # "request":Ljavax/servlet/http/HttpServletRequest;
    check-cast p3, Lorg/mortbay/jetty/Response;

    .end local p3    # "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-interface {v0, p2, p3}, Lorg/mortbay/jetty/RequestLog;->log(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)V

    .line 52
    :cond_0
    return-void
.end method

.method public setRequestLog(Lorg/mortbay/jetty/RequestLog;)V
    .locals 7
    .param p1, "requestLog"    # Lorg/mortbay/jetty/RequestLog;

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->_requestLog:Lorg/mortbay/jetty/RequestLog;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->_requestLog:Lorg/mortbay/jetty/RequestLog;

    invoke-interface {v0}, Lorg/mortbay/jetty/RequestLog;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/RequestLogHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/RequestLogHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->_requestLog:Lorg/mortbay/jetty/RequestLog;

    const-string v4, "logimpl"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 71
    :cond_1
    iput-object p1, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->_requestLog:Lorg/mortbay/jetty/RequestLog;

    .line 76
    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/RequestLogHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->_requestLog:Lorg/mortbay/jetty/RequestLog;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->_requestLog:Lorg/mortbay/jetty/RequestLog;

    invoke-interface {v0}, Lorg/mortbay/jetty/RequestLog;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    :cond_2
    return-void

    .line 63
    :catch_0
    move-exception v6

    .line 65
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 79
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 81
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 12
    .param p1, "server"    # Lorg/mortbay/jetty/Server;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 91
    iget-object v0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->_requestLog:Lorg/mortbay/jetty/RequestLog;

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/RequestLogHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/RequestLogHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/RequestLogHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->_requestLog:Lorg/mortbay/jetty/RequestLog;

    const-string v4, "logimpl"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 95
    :cond_0
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 96
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/RequestLogHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 97
    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->_requestLog:Lorg/mortbay/jetty/RequestLog;

    const-string v10, "logimpl"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setServer(Lorg/mortbay/jetty/Server;)V

    goto :goto_0
.end method
