.class public abstract Lorg/mortbay/jetty/servlet/AbstractSessionManager;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "AbstractSessionManager.java"

# interfaces
.implements Lorg/mortbay/jetty/SessionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/servlet/AbstractSessionManager$1;,
        Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;,
        Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;,
        Lorg/mortbay/jetty/servlet/AbstractSessionManager$NullSessionContext;
    }
.end annotation


# static fields
.field public static final __distantFuture:I = 0x257da800

.field private static final __nullSessionContext:Ljavax/servlet/http/HttpSessionContext;


# instance fields
.field protected _context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

.field protected _dftMaxIdleSecs:I

.field protected _httpOnly:Z

.field protected _loader:Ljava/lang/ClassLoader;

.field protected _maxCookieAge:I

.field protected _maxSessions:I

.field protected _minSessions:I

.field protected _nodeIdInSessionId:Z

.field protected _refreshCookieAge:I

.field protected _secureCookies:Z

.field protected _sessionAttributeListeners:Ljava/lang/Object;

.field protected _sessionCookie:Ljava/lang/String;

.field protected _sessionDomain:Ljava/lang/String;

.field protected _sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

.field protected _sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

.field protected _sessionListeners:Ljava/lang/Object;

.field protected _sessionPath:Ljava/lang/String;

.field protected _sessionURL:Ljava/lang/String;

.field protected _sessionURLPrefix:Ljava/lang/String;

.field private _usingCookies:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$NullSessionContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$NullSessionContext;-><init>(Lorg/mortbay/jetty/servlet/AbstractSessionManager$1;)V

    sput-object v0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->__nullSessionContext:Ljavax/servlet/http/HttpSessionContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_usingCookies:Z

    .line 74
    iput v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_dftMaxIdleSecs:I

    .line 76
    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_httpOnly:Z

    .line 77
    iput v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxSessions:I

    .line 79
    iput v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_minSessions:I

    .line 81
    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_secureCookies:Z

    .line 87
    const-string v0, "JSESSIONID"

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    .line 88
    const-string v0, "jsessionid"

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURL:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURLPrefix:Ljava/lang/String;

    .line 92
    iput v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxCookieAge:I

    .line 99
    return-void
.end method

.method static access$100()Ljavax/servlet/http/HttpSessionContext;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->__nullSessionContext:Ljavax/servlet/http/HttpSessionContext;

    return-object v0
.end method


# virtual methods
.method public access(Ljavax/servlet/http/HttpSession;Z)Ljavax/servlet/http/Cookie;
    .locals 8
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;
    .param p2, "secure"    # Z

    .prologue
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "now":J
    move-object v4, p1

    .line 106
    check-cast v4, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;

    invoke-interface {v4}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;->getSession()Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-result-object v1

    .line 107
    .local v1, "s":Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
    invoke-virtual {v1, v2, v3}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->access(J)V

    .line 110
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->isUsingCookies()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->isIdChanged()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getMaxCookieAge()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getRefreshCookieAge()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getCookieSetTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getRefreshCookieAge()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 116
    :cond_0
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v4}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4, p2}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getSessionCookie(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Z)Ljavax/servlet/http/Cookie;

    move-result-object v0

    .line 117
    .local v0, "cookie":Ljavax/servlet/http/Cookie;
    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->cookieSet()V

    .line 118
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->setIdChanged(Z)V

    .line 122
    .end local v0    # "cookie":Ljavax/servlet/http/Cookie;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addEventListener(Ljava/util/EventListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 128
    instance-of v0, p1, Ljavax/servlet/http/HttpSessionAttributeListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    .line 130
    :cond_0
    instance-of v0, p1, Ljavax/servlet/http/HttpSessionListener;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    .line 132
    :cond_1
    return-void
.end method

.method protected abstract addSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;)V
.end method

.method protected addSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;Z)V
    .locals 5
    .param p1, "session"    # Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
    .param p2, "created"    # Z

    .prologue
    .line 556
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    monitor-enter v3

    .line 558
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    invoke-interface {v2, p1}, Lorg/mortbay/jetty/SessionIdManager;->addSession(Ljavax/servlet/http/HttpSession;)V

    .line 559
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 561
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->addSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;)V

    .line 562
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getSessions()I

    move-result v2

    iget v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxSessions:I

    if-le v2, v4, :cond_0

    .line 563
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getSessions()I

    move-result v2

    iput v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxSessions:I

    .line 564
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 567
    if-nez p2, :cond_2

    .line 569
    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->didActivate()V

    .line 577
    :cond_1
    return-void

    .line 564
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 565
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 571
    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 573
    new-instance v0, Ljavax/servlet/http/HttpSessionEvent;

    invoke-direct {v0, p1}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    .line 574
    .local v0, "event":Ljavax/servlet/http/HttpSessionEvent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    invoke-static {v2}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 575
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/http/HttpSessionListener;

    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpSessionListener;->sessionCreated(Ljavax/servlet/http/HttpSessionEvent;)V

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public clearEventListeners()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    .line 138
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public complete(Ljavax/servlet/http/HttpSession;)V
    .locals 1
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 144
    check-cast p1, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;

    .end local p1    # "session":Ljavax/servlet/http/HttpSession;
    invoke-interface {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;->getSession()Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-result-object v0

    .line 145
    .local v0, "s":Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->complete()V

    .line 146
    return-void
.end method

.method public doStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 151
    invoke-static {}, Lorg/mortbay/jetty/handler/ContextHandler;->getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .line 152
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_loader:Ljava/lang/ClassLoader;

    .line 154
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    if-nez v2, :cond_1

    .line 156
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getSessionHandler()Lorg/mortbay/jetty/servlet/SessionHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/SessionHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    .line 157
    .local v0, "server":Lorg/mortbay/jetty/Server;
    monitor-enter v0

    .line 159
    :try_start_0
    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getSessionIdManager()Lorg/mortbay/jetty/SessionIdManager;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    .line 160
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    if-nez v2, :cond_0

    .line 162
    new-instance v2, Lorg/mortbay/jetty/servlet/HashSessionIdManager;

    invoke-direct {v2}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;-><init>()V

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    .line 163
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/Server;->setSessionIdManager(Lorg/mortbay/jetty/SessionIdManager;)V

    .line 165
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .end local v0    # "server":Lorg/mortbay/jetty/Server;
    :cond_1
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    invoke-interface {v2}, Lorg/mortbay/jetty/SessionIdManager;->isStarted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 168
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    invoke-interface {v2}, Lorg/mortbay/jetty/SessionIdManager;->start()V

    .line 170
    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-eqz v2, :cond_9

    .line 173
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    const-string v4, "org.mortbay.jetty.servlet.SessionCookie"

    invoke-virtual {v2, v4}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "tmp":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 175
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    .line 177
    :cond_3
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    const-string v4, "org.mortbay.jetty.servlet.SessionURL"

    invoke-virtual {v2, v4}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_6

    .line 180
    if-eqz v1, :cond_4

    const-string v2, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_4
    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURL:Ljava/lang/String;

    .line 181
    if-eqz v1, :cond_5

    const-string v2, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_5
    :goto_1
    iput-object v3, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURLPrefix:Ljava/lang/String;

    .line 185
    :cond_6
    iget v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxCookieAge:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 187
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    const-string v3, "org.mortbay.jetty.servlet.MaxAge"

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_7

    .line 189
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxCookieAge:I

    .line 192
    :cond_7
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionDomain:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 195
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    const-string v3, "org.mortbay.jetty.servlet.SessionDomain"

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionDomain:Ljava/lang/String;

    .line 199
    :cond_8
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 202
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    const-string v3, "org.mortbay.jetty.servlet.SessionPath"

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    .line 206
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_9
    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStart()V

    .line 207
    return-void

    .line 165
    .restart local v0    # "server":Lorg/mortbay/jetty/Server;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .end local v0    # "server":Lorg/mortbay/jetty/Server;
    .restart local v1    # "tmp":Ljava/lang/String;
    :cond_a
    move-object v2, v1

    .line 180
    goto :goto_0

    .line 181
    :cond_b
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 212
    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStop()V

    .line 214
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->invalidateSessions()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_loader:Ljava/lang/ClassLoader;

    .line 217
    return-void
.end method

.method public getClusterId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;
    .locals 2
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 394
    check-cast p1, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;

    .end local p1    # "session":Ljavax/servlet/http/HttpSession;
    invoke-interface {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;->getSession()Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-result-object v0

    .line 395
    .local v0, "s":Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHttpOnly()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_httpOnly:Z

    return v0
.end method

.method public getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;
    .locals 3
    .param p1, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getIdManager()Lorg/mortbay/jetty/SessionIdManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/mortbay/jetty/SessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "cluster_id":Ljava/lang/String;
    monitor-enter p0

    .line 235
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getSession(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-result-object v1

    .line 237
    .local v1, "session":Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getNodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->setIdChanged(Z)V

    .line 239
    :cond_0
    monitor-exit p0

    return-object v1

    .line 240
    .end local v1    # "session":Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getIdManager()Lorg/mortbay/jetty/SessionIdManager;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    return-object v0
.end method

.method public getMaxCookieAge()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxCookieAge:I

    return v0
.end method

.method public getMaxInactiveInterval()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_dftMaxIdleSecs:I

    return v0
.end method

.method public getMaxSessions()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxSessions:I

    return v0
.end method

.method public getMetaManager()Lorg/mortbay/jetty/SessionIdManager;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getIdManager()Lorg/mortbay/jetty/SessionIdManager;

    move-result-object v0

    return-object v0
.end method

.method public getMinSessions()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_minSessions:I

    return v0
.end method

.method public getNodeId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;
    .locals 2
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 401
    check-cast p1, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;

    .end local p1    # "session":Ljavax/servlet/http/HttpSession;
    invoke-interface {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;->getSession()Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-result-object v0

    .line 402
    .local v0, "s":Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getNodeId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRefreshCookieAge()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_refreshCookieAge:I

    return v0
.end method

.method public getSecureCookies()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_secureCookies:Z

    return v0
.end method

.method public abstract getSession(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
.end method

.method public getSessionCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionCookie(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Z)Ljavax/servlet/http/Cookie;
    .locals 3
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;
    .param p2, "contextPath"    # Ljava/lang/String;
    .param p3, "requestIsSecure"    # Z

    .prologue
    .line 314
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->isUsingCookies()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 316
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getNodeId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getHttpOnly()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lorg/mortbay/jetty/HttpOnlyCookie;

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lorg/mortbay/jetty/HttpOnlyCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .local v0, "cookie":Ljavax/servlet/http/Cookie;
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string p2, "/"

    .end local p2    # "contextPath":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p2}, Ljavax/servlet/http/Cookie;->setPath(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getMaxCookieAge()I

    move-result v2

    invoke-virtual {v0, v2}, Ljavax/servlet/http/Cookie;->setMaxAge(I)V

    .line 321
    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getSecureCookies()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Ljavax/servlet/http/Cookie;->setSecure(Z)V

    .line 324
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionDomain:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 325
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionDomain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/servlet/http/Cookie;->setDomain(Ljava/lang/String;)V

    .line 326
    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 327
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/servlet/http/Cookie;->setPath(Ljava/lang/String;)V

    .line 331
    .end local v0    # "cookie":Ljavax/servlet/http/Cookie;
    .end local v1    # "id":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v0

    .line 317
    .restart local v1    # "id":Ljava/lang/String;
    .restart local p2    # "contextPath":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljavax/servlet/http/Cookie;

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljavax/servlet/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    .end local p2    # "contextPath":Ljava/lang/String;
    .restart local v0    # "cookie":Ljavax/servlet/http/Cookie;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 331
    .end local v0    # "cookie":Ljavax/servlet/http/Cookie;
    .end local v1    # "id":Ljava/lang/String;
    .restart local p2    # "contextPath":Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getSessionDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionHandler()Lorg/mortbay/jetty/servlet/SessionHandler;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    return-object v0
.end method

.method public abstract getSessionMap()Ljava/util/Map;
.end method

.method public getSessionPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionURLPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURLPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSessions()I
.end method

.method protected abstract invalidateSessions()V
.end method

.method public isNodeIdInSessionId()Z
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_nodeIdInSessionId:Z

    return v0
.end method

.method public isUsingCookies()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_usingCookies:Z

    return v0
.end method

.method public isValid(Ljavax/servlet/http/HttpSession;)Z
    .locals 2
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 387
    check-cast p1, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;

    .end local p1    # "session":Ljavax/servlet/http/HttpSession;
    invoke-interface {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;->getSession()Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-result-object v0

    .line 388
    .local v0, "s":Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->isValid()Z

    move-result v1

    return v1
.end method

.method public newHttpSession(Ljavax/servlet/http/HttpServletRequest;)Ljavax/servlet/http/HttpSession;
    .locals 2
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 411
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->newSession(Ljavax/servlet/http/HttpServletRequest;)Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-result-object v0

    .line 412
    .local v0, "session":Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
    iget v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_dftMaxIdleSecs:I

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->setMaxInactiveInterval(I)V

    .line 413
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->addSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;Z)V

    .line 414
    return-object v0
.end method

.method protected abstract newSession(Ljavax/servlet/http/HttpServletRequest;)Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
.end method

.method public removeEventListener(Ljava/util/EventListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 420
    instance-of v0, p1, Ljavax/servlet/http/HttpSessionAttributeListener;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    .line 422
    :cond_0
    instance-of v0, p1, Ljavax/servlet/http/HttpSessionListener;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    .line 424
    :cond_1
    return-void
.end method

.method protected abstract removeSession(Ljava/lang/String;)V
.end method

.method public removeSession(Ljavax/servlet/http/HttpSession;Z)V
    .locals 1
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;
    .param p2, "invalidate"    # Z

    .prologue
    .line 627
    check-cast p1, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;

    .end local p1    # "session":Ljavax/servlet/http/HttpSession;
    invoke-interface {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;->getSession()Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-result-object v0

    .line 628
    .local v0, "s":Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
    invoke-virtual {p0, v0, p2}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->removeSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;Z)V

    .line 629
    return-void
.end method

.method public removeSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;Z)V
    .locals 6
    .param p1, "session"    # Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
    .param p2, "invalidate"    # Z

    .prologue
    .line 640
    const/4 v3, 0x0

    .line 641
    .local v3, "removed":Z
    monitor-enter p0

    .line 644
    :try_start_0
    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getSession(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 646
    const/4 v3, 0x1

    .line 647
    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->removeSession(Ljava/lang/String;)V

    .line 649
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 654
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    invoke-interface {v4, p1}, Lorg/mortbay/jetty/SessionIdManager;->removeSession(Ljavax/servlet/http/HttpSession;)V

    .line 655
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/mortbay/jetty/SessionIdManager;->invalidateAll(Ljava/lang/String;)V

    .line 658
    :cond_1
    if-eqz p2, :cond_2

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 660
    new-instance v0, Ljavax/servlet/http/HttpSessionEvent;

    invoke-direct {v0, p1}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    .line 661
    .local v0, "event":Ljavax/servlet/http/HttpSessionEvent;
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    invoke-static {v4}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_2

    .line 662
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    invoke-static {v4, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/servlet/http/HttpSessionListener;

    invoke-interface {v4, v0}, Ljavax/servlet/http/HttpSessionListener;->sessionDestroyed(Ljavax/servlet/http/HttpSessionEvent;)V

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 649
    .end local v0    # "event":Ljavax/servlet/http/HttpSessionEvent;
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 664
    :cond_2
    if-nez p2, :cond_3

    .line 666
    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->willPassivate()V

    .line 668
    :cond_3
    return-void
.end method

.method public resetStats()V
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getSessions()I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_minSessions:I

    .line 430
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getSessions()I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxSessions:I

    .line 431
    return-void
.end method

.method public setHttpOnly(Z)V
    .locals 0
    .param p1, "httpOnly"    # Z

    .prologue
    .line 440
    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_httpOnly:Z

    .line 441
    return-void
.end method

.method public setIdManager(Lorg/mortbay/jetty/SessionIdManager;)V
    .locals 0
    .param p1, "metaManager"    # Lorg/mortbay/jetty/SessionIdManager;

    .prologue
    .line 450
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    .line 451
    return-void
.end method

.method public setMaxCookieAge(I)V
    .locals 1
    .param p1, "maxCookieAgeInSeconds"    # I

    .prologue
    .line 456
    iput p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxCookieAge:I

    .line 458
    iget v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxCookieAge:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_refreshCookieAge:I

    if-nez v0, :cond_0

    .line 459
    iget v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxCookieAge:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_refreshCookieAge:I

    .line 461
    :cond_0
    return-void
.end method

.method public setMaxInactiveInterval(I)V
    .locals 0
    .param p1, "seconds"    # I

    .prologue
    .line 469
    iput p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_dftMaxIdleSecs:I

    .line 470
    return-void
.end method

.method public setMetaManager(Lorg/mortbay/jetty/SessionIdManager;)V
    .locals 0
    .param p1, "metaManager"    # Lorg/mortbay/jetty/SessionIdManager;

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->setIdManager(Lorg/mortbay/jetty/SessionIdManager;)V

    .line 479
    return-void
.end method

.method public setNodeIdInSessionId(Z)V
    .locals 0
    .param p1, "nodeIdInSessionId"    # Z

    .prologue
    .line 616
    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_nodeIdInSessionId:Z

    .line 617
    return-void
.end method

.method public setRefreshCookieAge(I)V
    .locals 0
    .param p1, "ageInSeconds"    # I

    .prologue
    .line 484
    iput p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_refreshCookieAge:I

    .line 485
    return-void
.end method

.method public setSecureCookies(Z)V
    .locals 0
    .param p1, "secureCookies"    # Z

    .prologue
    .line 495
    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_secureCookies:Z

    .line 496
    return-void
.end method

.method public setSessionCookie(Ljava/lang/String;)V
    .locals 0
    .param p1, "cookieName"    # Ljava/lang/String;

    .prologue
    .line 501
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    .line 502
    return-void
.end method

.method public setSessionDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 507
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionDomain:Ljava/lang/String;

    .line 508
    return-void
.end method

.method public setSessionHandler(Lorg/mortbay/jetty/servlet/SessionHandler;)V
    .locals 0
    .param p1, "sessionHandler"    # Lorg/mortbay/jetty/servlet/SessionHandler;

    .prologue
    .line 517
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    .line 518
    return-void
.end method

.method public setSessionPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 523
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    .line 524
    return-void
.end method

.method public setSessionURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 532
    if-eqz p1, :cond_0

    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURL:Ljava/lang/String;

    .line 533
    if-eqz p1, :cond_1

    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURLPrefix:Ljava/lang/String;

    .line 534
    return-void

    :cond_2
    move-object v0, p1

    .line 532
    goto :goto_0

    .line 533
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public setUsingCookies(Z)V
    .locals 0
    .param p1, "usingCookies"    # Z

    .prologue
    .line 542
    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_usingCookies:Z

    .line 543
    return-void
.end method
