.class public Lorg/mortbay/jetty/handler/HandlerCollection;
.super Lorg/mortbay/jetty/handler/AbstractHandlerContainer;
.source "HandlerCollection.java"


# static fields
.field static class$org$mortbay$jetty$Handler:Ljava/lang/Class;


# instance fields
.field private _handlers:[Lorg/mortbay/jetty/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;-><init>()V

    .line 46
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 197
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public addHandler(Lorg/mortbay/jetty/Handler;)V
    .locals 2
    .param p1, "handler"    # Lorg/mortbay/jetty/Handler;

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/handler/HandlerCollection;->class$org$mortbay$jetty$Handler:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.jetty.Handler"

    invoke-static {v0}, Lorg/mortbay/jetty/handler/HandlerCollection;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/handler/HandlerCollection;->class$org$mortbay$jetty$Handler:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/Handler;

    check-cast v0, [Lorg/mortbay/jetty/Handler;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/HandlerCollection;->setHandlers([Lorg/mortbay/jetty/Handler;)V

    .line 198
    return-void

    .line 197
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/handler/HandlerCollection;->class$org$mortbay$jetty$Handler:Ljava/lang/Class;

    goto :goto_0
.end method

.method protected doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v2, Lorg/mortbay/util/MultiException;

    invoke-direct {v2}, Lorg/mortbay/util/MultiException;-><init>()V

    .line 149
    .local v2, "mex":Lorg/mortbay/util/MultiException;
    iget-object v3, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    if-eqz v3, :cond_0

    .line 151
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 152
    :try_start_0
    iget-object v3, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/mortbay/jetty/Handler;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v2, v0}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 154
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "i":I
    :cond_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->doStart()V

    .line 155
    invoke-virtual {v2}, Lorg/mortbay/util/MultiException;->ifExceptionThrow()V

    .line 156
    return-void
.end method

.method protected doStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v3, Lorg/mortbay/util/MultiException;

    invoke-direct {v3}, Lorg/mortbay/util/MultiException;-><init>()V

    .line 165
    .local v3, "mex":Lorg/mortbay/util/MultiException;
    :try_start_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->doStop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    iget-object v4, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    if-eqz v4, :cond_0

    .line 168
    iget-object v4, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    array-length v1, v4

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_0

    .line 169
    :try_start_1
    iget-object v4, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    aget-object v4, v4, v1

    invoke-interface {v4}, Lorg/mortbay/jetty/Handler;->stop()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 165
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v3, v0}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 169
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "i":I
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v3, v0}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 171
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v3}, Lorg/mortbay/util/MultiException;->ifExceptionThrow()V

    .line 172
    return-void
.end method

.method protected expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "list"    # Ljava/lang/Object;
    .param p2, "byClass"    # Ljava/lang/Class;

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v0

    .line 213
    .local v0, "handlers":[Lorg/mortbay/jetty/Handler;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 214
    aget-object v2, v0, v1

    invoke-virtual {p0, v2, p1, p2}, Lorg/mortbay/jetty/handler/HandlerCollection;->expandHandler(Lorg/mortbay/jetty/Handler;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_0
    return-object p1
.end method

.method public getHandlers()[Lorg/mortbay/jetty/Handler;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 5
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
    .line 106
    iget-object v3, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    const/4 v2, 0x0

    .line 110
    .local v2, "mex":Lorg/mortbay/util/MultiException;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 114
    :try_start_0
    iget-object v3, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    aget-object v3, v3, v1

    invoke-interface {v3, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 110
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    throw v0

    .line 120
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 124
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    if-nez v2, :cond_0

    .line 127
    new-instance v2, Lorg/mortbay/util/MultiException;

    .end local v2    # "mex":Lorg/mortbay/util/MultiException;
    invoke-direct {v2}, Lorg/mortbay/util/MultiException;-><init>()V

    .line 128
    .restart local v2    # "mex":Lorg/mortbay/util/MultiException;
    :cond_0
    invoke-virtual {v2, v0}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz v2, :cond_3

    .line 133
    invoke-virtual {v2}, Lorg/mortbay/util/MultiException;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 134
    new-instance v3, Ljavax/servlet/ServletException;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/mortbay/util/MultiException;->getThrowable(I)Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 136
    :cond_2
    new-instance v3, Ljavax/servlet/ServletException;

    invoke-direct {v3, v2}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 140
    .end local v1    # "i":I
    .end local v2    # "mex":Lorg/mortbay/util/MultiException;
    :cond_3
    return-void
.end method

.method public removeHandler(Lorg/mortbay/jetty/Handler;)V
    .locals 2
    .param p1, "handler"    # Lorg/mortbay/jetty/Handler;

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v0

    .line 205
    .local v0, "handlers":[Lorg/mortbay/jetty/Handler;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 206
    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->removeFromArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/mortbay/jetty/Handler;

    check-cast v1, [Lorg/mortbay/jetty/Handler;

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/handler/HandlerCollection;->setHandlers([Lorg/mortbay/jetty/Handler;)V

    .line 207
    :cond_0
    return-void
.end method

.method public setHandlers([Lorg/mortbay/jetty/Handler;)V
    .locals 7
    .param p1, "handlers"    # [Lorg/mortbay/jetty/Handler;

    .prologue
    .line 64
    iget-object v5, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    if-nez v5, :cond_2

    const/4 v3, 0x0

    .line 66
    .local v3, "old_handlers":[Lorg/mortbay/jetty/Handler;
    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v5

    const-string v6, "handler"

    invoke-virtual {v5, p0, v3, p1, v6}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v4

    .line 70
    .local v4, "server":Lorg/mortbay/jetty/Server;
    new-instance v2, Lorg/mortbay/util/MultiException;

    invoke-direct {v2}, Lorg/mortbay/util/MultiException;-><init>()V

    .line 71
    .local v2, "mex":Lorg/mortbay/util/MultiException;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-eqz p1, :cond_3

    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 73
    aget-object v5, p1, v1

    invoke-interface {v5}, Lorg/mortbay/jetty/Handler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v5

    if-eq v5, v4, :cond_1

    .line 74
    aget-object v5, p1, v1

    invoke-interface {v5, v4}, Lorg/mortbay/jetty/Handler;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 71
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    .end local v1    # "i":I
    .end local v2    # "mex":Lorg/mortbay/util/MultiException;
    .end local v3    # "old_handlers":[Lorg/mortbay/jetty/Handler;
    .end local v4    # "server":Lorg/mortbay/jetty/Server;
    :cond_2
    iget-object v5, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/mortbay/jetty/Handler;

    check-cast v5, [Lorg/mortbay/jetty/Handler;

    move-object v3, v5

    goto :goto_0

    .line 78
    .restart local v1    # "i":I
    .restart local v2    # "mex":Lorg/mortbay/util/MultiException;
    .restart local v3    # "old_handlers":[Lorg/mortbay/jetty/Handler;
    .restart local v4    # "server":Lorg/mortbay/jetty/Server;
    :cond_3
    iput-object p1, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    .line 80
    const/4 v1, 0x0

    :goto_2
    if-eqz v3, :cond_5

    array-length v5, v3

    if-ge v1, v5, :cond_5

    .line 82
    aget-object v5, v3, v1

    if-eqz v5, :cond_4

    .line 86
    :try_start_0
    aget-object v5, v3, v1

    invoke-interface {v5}, Lorg/mortbay/jetty/Handler;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 87
    aget-object v5, v3, v1

    invoke-interface {v5}, Lorg/mortbay/jetty/Handler;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v2, v0}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 96
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v2}, Lorg/mortbay/util/MultiException;->ifExceptionThrowRuntime()V

    .line 97
    return-void
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 7
    .param p1, "server"    # Lorg/mortbay/jetty/Server;

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v2

    .line 179
    .local v2, "old_server":Lorg/mortbay/jetty/Server;
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 181
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v0

    .line 182
    .local v0, "h":[Lorg/mortbay/jetty/Handler;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v0, :cond_0

    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 183
    aget-object v3, v0, v1

    invoke-interface {v3, p1}, Lorg/mortbay/jetty/Handler;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_1

    .line 186
    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    const-string v6, "handler"

    invoke-virtual {v3, p0, v4, v5, v6}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    :cond_1
    return-void
.end method
