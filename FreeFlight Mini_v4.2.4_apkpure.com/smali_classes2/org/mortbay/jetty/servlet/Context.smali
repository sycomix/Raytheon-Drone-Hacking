.class public Lorg/mortbay/jetty/servlet/Context;
.super Lorg/mortbay/jetty/handler/ContextHandler;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/servlet/Context$SContext;
    }
.end annotation


# static fields
.field public static final NO_SECURITY:I = 0x0

.field public static final NO_SESSIONS:I = 0x0

.field public static final SECURITY:I = 0x2

.field public static final SESSIONS:I = 0x1


# instance fields
.field protected _securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

.field protected _servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

.field protected _sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 54
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/mortbay/jetty/servlet/Context;-><init>(Lorg/mortbay/jetty/HandlerContainer;Lorg/mortbay/jetty/servlet/SessionHandler;Lorg/mortbay/jetty/security/SecurityHandler;Lorg/mortbay/jetty/servlet/ServletHandler;Lorg/mortbay/jetty/handler/ErrorHandler;)V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0, v0, p1}, Lorg/mortbay/jetty/servlet/Context;-><init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;)V
    .locals 7
    .param p1, "parent"    # Lorg/mortbay/jetty/HandlerContainer;
    .param p2, "contextPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/mortbay/jetty/servlet/Context;-><init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Lorg/mortbay/jetty/servlet/SessionHandler;Lorg/mortbay/jetty/security/SecurityHandler;Lorg/mortbay/jetty/servlet/ServletHandler;Lorg/mortbay/jetty/handler/ErrorHandler;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;I)V
    .locals 7
    .param p1, "parent"    # Lorg/mortbay/jetty/HandlerContainer;
    .param p2, "contextPath"    # Ljava/lang/String;
    .param p3, "options"    # I

    .prologue
    const/4 v5, 0x0

    .line 72
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    new-instance v3, Lorg/mortbay/jetty/servlet/SessionHandler;

    invoke-direct {v3}, Lorg/mortbay/jetty/servlet/SessionHandler;-><init>()V

    :goto_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    new-instance v4, Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-direct {v4}, Lorg/mortbay/jetty/security/SecurityHandler;-><init>()V

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/mortbay/jetty/servlet/Context;-><init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Lorg/mortbay/jetty/servlet/SessionHandler;Lorg/mortbay/jetty/security/SecurityHandler;Lorg/mortbay/jetty/servlet/ServletHandler;Lorg/mortbay/jetty/handler/ErrorHandler;)V

    .line 73
    return-void

    :cond_0
    move-object v3, v5

    .line 72
    goto :goto_0

    :cond_1
    move-object v4, v5

    goto :goto_1
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Lorg/mortbay/jetty/servlet/SessionHandler;Lorg/mortbay/jetty/security/SecurityHandler;Lorg/mortbay/jetty/servlet/ServletHandler;Lorg/mortbay/jetty/handler/ErrorHandler;)V
    .locals 2
    .param p1, "parent"    # Lorg/mortbay/jetty/HandlerContainer;
    .param p2, "contextPath"    # Ljava/lang/String;
    .param p3, "sessionHandler"    # Lorg/mortbay/jetty/servlet/SessionHandler;
    .param p4, "securityHandler"    # Lorg/mortbay/jetty/security/SecurityHandler;
    .param p5, "servletHandler"    # Lorg/mortbay/jetty/servlet/ServletHandler;
    .param p6, "errorHandler"    # Lorg/mortbay/jetty/handler/ErrorHandler;

    .prologue
    .line 90
    const/4 v0, 0x0

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-direct {p0, v0}, Lorg/mortbay/jetty/handler/ContextHandler;-><init>(Lorg/mortbay/jetty/handler/ContextHandler$SContext;)V

    .line 91
    new-instance v0, Lorg/mortbay/jetty/servlet/Context$SContext;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/servlet/Context$SContext;-><init>(Lorg/mortbay/jetty/servlet/Context;)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .line 92
    iput-object p3, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    .line 93
    iput-object p4, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    .line 94
    if-eqz p5, :cond_3

    .end local p5    # "servletHandler":Lorg/mortbay/jetty/servlet/ServletHandler;
    :goto_0
    iput-object p5, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    .line 96
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    if-eqz v0, :cond_5

    .line 98
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/Context;->setHandler(Lorg/mortbay/jetty/Handler;)V

    .line 100
    if-eqz p4, :cond_4

    .line 102
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/SessionHandler;->setHandler(Lorg/mortbay/jetty/Handler;)V

    .line 103
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/security/SecurityHandler;->setHandler(Lorg/mortbay/jetty/Handler;)V

    .line 120
    :goto_1
    if-eqz p6, :cond_0

    .line 121
    invoke-virtual {p0, p6}, Lorg/mortbay/jetty/servlet/Context;->setErrorHandler(Lorg/mortbay/jetty/handler/ErrorHandler;)V

    .line 123
    :cond_0
    if-eqz p2, :cond_1

    .line 124
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/servlet/Context;->setContextPath(Ljava/lang/String;)V

    .line 126
    :cond_1
    if-eqz p1, :cond_2

    .line 127
    invoke-interface {p1, p0}, Lorg/mortbay/jetty/HandlerContainer;->addHandler(Lorg/mortbay/jetty/Handler;)V

    .line 128
    :cond_2
    return-void

    .line 94
    .restart local p5    # "servletHandler":Lorg/mortbay/jetty/servlet/ServletHandler;
    :cond_3
    new-instance p5, Lorg/mortbay/jetty/servlet/ServletHandler;

    .end local p5    # "servletHandler":Lorg/mortbay/jetty/servlet/ServletHandler;
    invoke-direct {p5}, Lorg/mortbay/jetty/servlet/ServletHandler;-><init>()V

    goto :goto_0

    .line 107
    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/SessionHandler;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_1

    .line 110
    :cond_5
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    if-eqz v0, :cond_6

    .line 112
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/Context;->setHandler(Lorg/mortbay/jetty/Handler;)V

    .line 113
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/security/SecurityHandler;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_1

    .line 117
    :cond_6
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/Context;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_1
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "parent"    # Lorg/mortbay/jetty/HandlerContainer;
    .param p2, "contextPath"    # Ljava/lang/String;
    .param p3, "sessions"    # Z
    .param p4, "security"    # Z

    .prologue
    const/4 v0, 0x0

    .line 78
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz p4, :cond_0

    const/4 v0, 0x2

    :cond_0
    or-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/mortbay/jetty/servlet/Context;-><init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;I)V

    .line 79
    return-void

    :cond_1
    move v1, v0

    .line 78
    goto :goto_0
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HandlerContainer;Lorg/mortbay/jetty/servlet/SessionHandler;Lorg/mortbay/jetty/security/SecurityHandler;Lorg/mortbay/jetty/servlet/ServletHandler;Lorg/mortbay/jetty/handler/ErrorHandler;)V
    .locals 7
    .param p1, "parent"    # Lorg/mortbay/jetty/HandlerContainer;
    .param p2, "sessionHandler"    # Lorg/mortbay/jetty/servlet/SessionHandler;
    .param p3, "securityHandler"    # Lorg/mortbay/jetty/security/SecurityHandler;
    .param p4, "servletHandler"    # Lorg/mortbay/jetty/servlet/ServletHandler;
    .param p5, "errorHandler"    # Lorg/mortbay/jetty/handler/ErrorHandler;

    .prologue
    .line 84
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/mortbay/jetty/servlet/Context;-><init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Lorg/mortbay/jetty/servlet/SessionHandler;Lorg/mortbay/jetty/security/SecurityHandler;Lorg/mortbay/jetty/servlet/ServletHandler;Lorg/mortbay/jetty/handler/ErrorHandler;)V

    .line 85
    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/Class;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 1
    .param p1, "filterClass"    # Ljava/lang/Class;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .param p3, "dispatches"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mortbay/jetty/servlet/ServletHandler;->addFilterWithMapping(Ljava/lang/Class;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    return-object v0
.end method

.method public addFilter(Ljava/lang/String;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 1
    .param p1, "filterClass"    # Ljava/lang/String;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .param p3, "dispatches"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mortbay/jetty/servlet/ServletHandler;->addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    return-object v0
.end method

.method public addFilter(Lorg/mortbay/jetty/servlet/FilterHolder;Ljava/lang/String;I)V
    .locals 1
    .param p1, "holder"    # Lorg/mortbay/jetty/servlet/FilterHolder;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .param p3, "dispatches"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mortbay/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/mortbay/jetty/servlet/FilterHolder;Ljava/lang/String;I)V

    .line 200
    return-void
.end method

.method public addServlet(Ljava/lang/Class;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 2
    .param p1, "servlet"    # Ljava/lang/Class;
    .param p2, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    return-object v0
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, p1, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    return-object v0
.end method

.method public addServlet(Lorg/mortbay/jetty/servlet/ServletHolder;Ljava/lang/String;)V
    .locals 1
    .param p1, "servlet"    # Lorg/mortbay/jetty/servlet/ServletHolder;
    .param p2, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, p1, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Lorg/mortbay/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    return-object v0
.end method

.method public getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    return-object v0
.end method

.method public getSessionHandler()Lorg/mortbay/jetty/servlet/SessionHandler;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    return-object v0
.end method

.method public setSecurityHandler(Lorg/mortbay/jetty/security/SecurityHandler;)V
    .locals 2
    .param p1, "securityHandler"    # Lorg/mortbay/jetty/security/SecurityHandler;

    .prologue
    .line 250
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    if-ne v0, p1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/security/SecurityHandler;->setHandler(Lorg/mortbay/jetty/Handler;)V

    .line 256
    :cond_2
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    .line 258
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    if-nez v0, :cond_4

    .line 260
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/SessionHandler;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0

    .line 263
    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/Context;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0

    .line 267
    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    if-eqz v0, :cond_5

    .line 268
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/SessionHandler;->setHandler(Lorg/mortbay/jetty/Handler;)V

    .line 272
    :goto_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/security/SecurityHandler;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0

    .line 270
    :cond_5
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/Context;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_1
.end method

.method public setServletHandler(Lorg/mortbay/jetty/servlet/ServletHandler;)V
    .locals 2
    .param p1, "servletHandler"    # Lorg/mortbay/jetty/servlet/ServletHandler;

    .prologue
    .line 283
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    if-ne v0, p1, :cond_0

    .line 295
    :goto_0
    return-void

    .line 286
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    .line 288
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/security/SecurityHandler;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/SessionHandler;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0

    .line 293
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/Context;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0
.end method

.method public setSessionHandler(Lorg/mortbay/jetty/servlet/SessionHandler;)V
    .locals 2
    .param p1, "sessionHandler"    # Lorg/mortbay/jetty/servlet/SessionHandler;

    .prologue
    .line 226
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    if-ne v0, p1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/SessionHandler;->setHandler(Lorg/mortbay/jetty/Handler;)V

    .line 232
    :cond_2
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    .line 234
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/Context;->setHandler(Lorg/mortbay/jetty/Handler;)V

    .line 236
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/SessionHandler;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0

    .line 238
    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/SessionHandler;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0
.end method

.method protected startContext()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    invoke-super {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->startContext()V

    .line 139
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->initialize()V

    .line 141
    :cond_0
    return-void
.end method
