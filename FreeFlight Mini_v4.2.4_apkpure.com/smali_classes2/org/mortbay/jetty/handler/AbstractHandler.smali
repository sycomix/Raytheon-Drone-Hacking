.class public abstract Lorg/mortbay/jetty/handler/AbstractHandler;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "AbstractHandler.java"

# interfaces
.implements Lorg/mortbay/jetty/Handler;


# instance fields
.field private _server:Lorg/mortbay/jetty/Server;

.field protected _string:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!STOPPED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_server:Lorg/mortbay/jetty/Server;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_server:Lorg/mortbay/jetty/Server;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/mortbay/component/Container;->removeBean(Ljava/lang/Object;)V

    .line 97
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
    .line 49
    const-string v0, "starting {}"

    invoke-static {v0, p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
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
    .line 58
    const-string v0, "stopping {}"

    invoke-static {v0, p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public getServer()Lorg/mortbay/jetty/Server;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_server:Lorg/mortbay/jetty/Server;

    return-object v0
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 2
    .param p1, "server"    # Lorg/mortbay/jetty/Server;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_server:Lorg/mortbay/jetty/Server;

    .line 76
    .local v0, "old_server":Lorg/mortbay/jetty/Server;
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 77
    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/mortbay/component/Container;->removeBean(Ljava/lang/Object;)V

    .line 78
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_server:Lorg/mortbay/jetty/Server;

    .line 79
    iget-object v1, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_server:Lorg/mortbay/jetty/Server;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_server:Lorg/mortbay/jetty/Server;

    if-eq v1, v0, :cond_1

    .line 80
    iget-object v1, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_server:Lorg/mortbay/jetty/Server;

    invoke-virtual {v1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/mortbay/component/Container;->addBean(Ljava/lang/Object;)V

    .line 81
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_string:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_string:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_string:Ljava/lang/String;

    iget-object v1, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_string:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_string:Ljava/lang/String;

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_string:Ljava/lang/String;

    return-object v0
.end method
