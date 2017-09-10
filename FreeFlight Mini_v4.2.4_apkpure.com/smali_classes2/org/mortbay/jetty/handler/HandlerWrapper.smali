.class public Lorg/mortbay/jetty/handler/HandlerWrapper;
.super Lorg/mortbay/jetty/handler/AbstractHandlerContainer;
.source "HandlerWrapper.java"


# instance fields
.field private _handler:Lorg/mortbay/jetty/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public addHandler(Lorg/mortbay/jetty/Handler;)V
    .locals 3
    .param p1, "handler"    # Lorg/mortbay/jetty/Handler;

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    .line 103
    .local v0, "old":Lorg/mortbay/jetty/Handler;
    if-eqz v0, :cond_0

    instance-of v1, p1, Lorg/mortbay/jetty/HandlerContainer;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot add"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    .line 106
    if-eqz v0, :cond_1

    .line 107
    check-cast p1, Lorg/mortbay/jetty/HandlerContainer;

    .end local p1    # "handler":Lorg/mortbay/jetty/Handler;
    invoke-interface {p1, v0}, Lorg/mortbay/jetty/HandlerContainer;->addHandler(Lorg/mortbay/jetty/Handler;)V

    .line 108
    :cond_1
    return-void
.end method

.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->_handler:Lorg/mortbay/jetty/Handler;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->_handler:Lorg/mortbay/jetty/Handler;

    invoke-interface {v0}, Lorg/mortbay/jetty/Handler;->start()V

    .line 131
    :cond_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->doStart()V

    .line 132
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
    .line 140
    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->doStop()V

    .line 141
    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->_handler:Lorg/mortbay/jetty/Handler;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->_handler:Lorg/mortbay/jetty/Handler;

    invoke-interface {v0}, Lorg/mortbay/jetty/Handler;->stop()V

    .line 143
    :cond_0
    return-void
.end method

.method protected expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "list"    # Ljava/lang/Object;
    .param p2, "byClass"    # Ljava/lang/Class;

    .prologue
    .line 175
    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->_handler:Lorg/mortbay/jetty/Handler;

    invoke-virtual {p0, v0, p1, p2}, Lorg/mortbay/jetty/handler/HandlerWrapper;->expandHandler(Lorg/mortbay/jetty/Handler;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Lorg/mortbay/jetty/Handler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->_handler:Lorg/mortbay/jetty/Handler;

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
    .line 151
    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->_handler:Lorg/mortbay/jetty/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->_handler:Lorg/mortbay/jetty/Handler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 153
    :cond_0
    return-void
.end method

.method public removeHandler(Lorg/mortbay/jetty/Handler;)V
    .locals 3
    .param p1, "handler"    # Lorg/mortbay/jetty/Handler;

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    .line 114
    .local v0, "old":Lorg/mortbay/jetty/Handler;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/mortbay/jetty/HandlerContainer;

    if-eqz v1, :cond_0

    .line 115
    check-cast v0, Lorg/mortbay/jetty/HandlerContainer;

    .end local v0    # "old":Lorg/mortbay/jetty/Handler;
    invoke-interface {v0, p1}, Lorg/mortbay/jetty/HandlerContainer;->removeHandler(Lorg/mortbay/jetty/Handler;)V

    .line 120
    :goto_0
    return-void

    .line 116
    .restart local v0    # "old":Lorg/mortbay/jetty/Handler;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0

    .line 119
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot remove"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setHandler(Lorg/mortbay/jetty/Handler;)V
    .locals 5
    .param p1, "handler"    # Lorg/mortbay/jetty/Handler;

    .prologue
    .line 64
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->_handler:Lorg/mortbay/jetty/Handler;

    .line 66
    .local v2, "old_handler":Lorg/mortbay/jetty/Handler;
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v3

    const-string v4, "handler"

    invoke-virtual {v3, p0, v2, p1, v4}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    :cond_0
    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/mortbay/jetty/Handler;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 74
    :cond_1
    iput-object p1, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->_handler:Lorg/mortbay/jetty/Handler;

    .line 76
    if-eqz v2, :cond_2

    .line 78
    invoke-interface {v2}, Lorg/mortbay/jetty/Handler;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    invoke-interface {v2}, Lorg/mortbay/jetty/Handler;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_2
    return-void

    .line 82
    .end local v2    # "old_handler":Lorg/mortbay/jetty/Handler;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 85
    .local v1, "ise":Ljava/lang/IllegalStateException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 86
    throw v1
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 6
    .param p1, "server"    # Lorg/mortbay/jetty/Server;

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    .line 161
    .local v1, "old_server":Lorg/mortbay/jetty/Server;
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 163
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    .line 164
    .local v0, "h":Lorg/mortbay/jetty/Handler;
    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0, p1}, Lorg/mortbay/jetty/Handler;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 167
    :cond_0
    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    .line 168
    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->_handler:Lorg/mortbay/jetty/Handler;

    const-string v5, "handler"

    invoke-virtual {v2, p0, v3, v4, v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    :cond_1
    return-void
.end method
