.class public Lorg/mortbay/jetty/handler/MovedContextHandler;
.super Lorg/mortbay/jetty/handler/ContextHandler;
.source "MovedContextHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/handler/MovedContextHandler$1;,
        Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;
    }
.end annotation


# instance fields
.field _discardPathInfo:Z

.field _discardQuery:Z

.field _newContextURL:Ljava/lang/String;

.field _permanent:Z

.field _redirector:Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/ContextHandler;-><init>()V

    .line 44
    new-instance v0, Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;-><init>(Lorg/mortbay/jetty/handler/MovedContextHandler;Lorg/mortbay/jetty/handler/MovedContextHandler$1;)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->_redirector:Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;

    .line 45
    iget-object v0, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->_redirector:Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/MovedContextHandler;->addHandler(Lorg/mortbay/jetty/Handler;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "parent"    # Lorg/mortbay/jetty/HandlerContainer;
    .param p2, "contextPath"    # Ljava/lang/String;
    .param p3, "newContextURL"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/mortbay/jetty/handler/ContextHandler;-><init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;)V

    .line 51
    iput-object p3, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->_newContextURL:Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;-><init>(Lorg/mortbay/jetty/handler/MovedContextHandler;Lorg/mortbay/jetty/handler/MovedContextHandler$1;)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->_redirector:Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;

    .line 53
    iget-object v0, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->_redirector:Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/MovedContextHandler;->addHandler(Lorg/mortbay/jetty/Handler;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getNewContextURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->_newContextURL:Ljava/lang/String;

    return-object v0
.end method

.method public isDiscardPathInfo()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->_discardPathInfo:Z

    return v0
.end method

.method public isDiscardQuery()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->_discardQuery:Z

    return v0
.end method

.method public isPermanent()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->_permanent:Z

    return v0
.end method

.method public setDiscardPathInfo(Z)V
    .locals 0
    .param p1, "discardPathInfo"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->_discardPathInfo:Z

    .line 64
    return-void
.end method

.method public setDiscardQuery(Z)V
    .locals 0
    .param p1, "discardQuery"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->_discardQuery:Z

    .line 94
    return-void
.end method

.method public setNewContextURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "newContextURL"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->_newContextURL:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPermanent(Z)V
    .locals 0
    .param p1, "permanent"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->_permanent:Z

    .line 84
    return-void
.end method
