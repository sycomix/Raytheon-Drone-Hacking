.class public Lorg/mortbay/jetty/servlet/SessionHandler;
.super Lorg/mortbay/jetty/handler/HandlerWrapper;
.source "SessionHandler.java"


# instance fields
.field private _sessionManager:Lorg/mortbay/jetty/SessionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/HashSessionManager;-><init>()V

    invoke-direct {p0, v0}, Lorg/mortbay/jetty/servlet/SessionHandler;-><init>(Lorg/mortbay/jetty/SessionManager;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/SessionManager;)V
    .locals 0
    .param p1, "manager"    # Lorg/mortbay/jetty/SessionManager;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/SessionHandler;->setSessionManager(Lorg/mortbay/jetty/SessionManager;)V

    .line 64
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/util/EventListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 297
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v0, p1}, Lorg/mortbay/jetty/SessionManager;->addEventListener(Ljava/util/EventListener;)V

    .line 299
    :cond_0
    return-void
.end method

.method public clearEventListeners()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v0}, Lorg/mortbay/jetty/SessionManager;->clearEventListeners()V

    .line 306
    :cond_0
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
    .line 116
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v0}, Lorg/mortbay/jetty/SessionManager;->start()V

    .line 117
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStart()V

    .line 118
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
    .line 125
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStop()V

    .line 126
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v0}, Lorg/mortbay/jetty/SessionManager;->stop()V

    .line 127
    return-void
.end method

.method public getSessionManager()Lorg/mortbay/jetty/SessionManager;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 9
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
    const/4 v8, 0x0

    .line 136
    invoke-virtual {p0, p2, p4}, Lorg/mortbay/jetty/servlet/SessionHandler;->setRequestedId(Ljavax/servlet/http/HttpServletRequest;I)V

    .line 138
    instance-of v6, p2, Lorg/mortbay/jetty/Request;

    if-eqz v6, :cond_5

    move-object v6, p2

    check-cast v6, Lorg/mortbay/jetty/Request;

    move-object v0, v6

    .line 139
    .local v0, "base_request":Lorg/mortbay/jetty/Request;
    :goto_0
    const/4 v3, 0x0

    .line 140
    .local v3, "old_session_manager":Lorg/mortbay/jetty/SessionManager;
    const/4 v2, 0x0

    .line 144
    .local v2, "old_session":Ljavax/servlet/http/HttpSession;
    :try_start_0
    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getSessionManager()Lorg/mortbay/jetty/SessionManager;

    move-result-object v3

    .line 145
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v2

    .line 147
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-eq v3, v6, :cond_0

    .line 150
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-virtual {v0, v6}, Lorg/mortbay/jetty/Request;->setSessionManager(Lorg/mortbay/jetty/SessionManager;)V

    .line 151
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/mortbay/jetty/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    .line 155
    :cond_0
    const/4 v5, 0x0

    .line 156
    .local v5, "session":Ljavax/servlet/http/HttpSession;
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-eqz v6, :cond_1

    .line 158
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v5

    .line 159
    if-eqz v5, :cond_6

    .line 161
    if-eq v5, v2, :cond_1

    .line 163
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v7

    invoke-interface {v6, v5, v7}, Lorg/mortbay/jetty/SessionManager;->access(Ljavax/servlet/http/HttpSession;Z)Ljavax/servlet/http/Cookie;

    move-result-object v1

    .line 164
    .local v1, "cookie":Ljavax/servlet/http/Cookie;
    if-eqz v1, :cond_1

    .line 165
    invoke-interface {p3, v1}, Ljavax/servlet/http/HttpServletResponse;->addCookie(Ljavax/servlet/http/Cookie;)V

    .line 176
    .end local v1    # "cookie":Ljavax/servlet/http/Cookie;
    :cond_1
    :goto_1
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 178
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "sessionManager="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 179
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "session="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 182
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/SessionHandler;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v6

    invoke-interface {v6, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_0
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-interface {p2, v8}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v5

    .line 195
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-eq v3, v6, :cond_4

    .line 198
    if-eqz v5, :cond_3

    .line 199
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v6, v5}, Lorg/mortbay/jetty/SessionManager;->complete(Ljavax/servlet/http/HttpSession;)V

    .line 202
    :cond_3
    if-eqz v3, :cond_4

    .line 204
    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/Request;->setSessionManager(Lorg/mortbay/jetty/SessionManager;)V

    .line 205
    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    .line 209
    :cond_4
    return-void

    .line 138
    .end local v0    # "base_request":Lorg/mortbay/jetty/Request;
    .end local v2    # "old_session":Ljavax/servlet/http/HttpSession;
    .end local v3    # "old_session_manager":Lorg/mortbay/jetty/SessionManager;
    .end local v5    # "session":Ljavax/servlet/http/HttpSession;
    :cond_5
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    goto/16 :goto_0

    .line 170
    .restart local v0    # "base_request":Lorg/mortbay/jetty/Request;
    .restart local v2    # "old_session":Ljavax/servlet/http/HttpSession;
    .restart local v3    # "old_session_manager":Lorg/mortbay/jetty/SessionManager;
    .restart local v5    # "session":Ljavax/servlet/http/HttpSession;
    :cond_6
    :try_start_1
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-virtual {v0, v6}, Lorg/mortbay/jetty/Request;->recoverNewSession(Ljava/lang/Object;)Ljavax/servlet/http/HttpSession;

    move-result-object v5

    .line 171
    if-eqz v5, :cond_1

    .line 172
    invoke-virtual {v0, v5}, Lorg/mortbay/jetty/Request;->setSession(Ljavax/servlet/http/HttpSession;)V
    :try_end_1
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 184
    .end local v5    # "session":Ljavax/servlet/http/HttpSession;
    :catch_0
    move-exception v4

    .line 186
    .local v4, "r":Lorg/mortbay/jetty/RetryRequest;
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v0, v6}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v5

    .line 187
    .restart local v5    # "session":Ljavax/servlet/http/HttpSession;
    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljavax/servlet/http/HttpSession;->isNew()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 188
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-virtual {v0, v6, v5}, Lorg/mortbay/jetty/Request;->saveNewSession(Ljava/lang/Object;Ljavax/servlet/http/HttpSession;)V

    .line 189
    :cond_7
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    .end local v4    # "r":Lorg/mortbay/jetty/RetryRequest;
    .end local v5    # "session":Ljavax/servlet/http/HttpSession;
    :catchall_0
    move-exception v6

    invoke-interface {p2, v8}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v5

    .line 195
    .restart local v5    # "session":Ljavax/servlet/http/HttpSession;
    iget-object v7, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-eq v3, v7, :cond_9

    .line 198
    if-eqz v5, :cond_8

    .line 199
    iget-object v7, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v7, v5}, Lorg/mortbay/jetty/SessionManager;->complete(Ljavax/servlet/http/HttpSession;)V

    .line 202
    :cond_8
    if-eqz v3, :cond_9

    .line 204
    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/Request;->setSessionManager(Lorg/mortbay/jetty/SessionManager;)V

    .line 205
    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    .line 208
    :cond_9
    throw v6
.end method

.method protected setRequestedId(Ljavax/servlet/http/HttpServletRequest;I)V
    .locals 13
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "dispatch"    # I

    .prologue
    .line 218
    instance-of v11, p1, Lorg/mortbay/jetty/Request;

    if-eqz v11, :cond_1

    move-object v11, p1

    check-cast v11, Lorg/mortbay/jetty/Request;

    move-object v0, v11

    .line 219
    .local v0, "base_request":Lorg/mortbay/jetty/Request;
    :goto_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "requested_session_id":Ljava/lang/String;
    const/4 v11, 0x1

    if-ne p2, v11, :cond_0

    if-eqz v5, :cond_2

    .line 289
    :cond_0
    :goto_1
    return-void

    .line 218
    .end local v0    # "base_request":Lorg/mortbay/jetty/Request;
    .end local v5    # "requested_session_id":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v11

    invoke-virtual {v11}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    goto :goto_0

    .line 225
    .restart local v0    # "base_request":Lorg/mortbay/jetty/Request;
    .restart local v5    # "requested_session_id":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/SessionHandler;->getSessionManager()Lorg/mortbay/jetty/SessionManager;

    move-result-object v9

    .line 226
    .local v9, "sessionManager":Lorg/mortbay/jetty/SessionManager;
    const/4 v6, 0x0

    .line 227
    .local v6, "requested_session_id_from_cookie":Z
    const/4 v8, 0x0

    .line 229
    .local v8, "session":Ljavax/servlet/http/HttpSession;
    iget-object v11, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v11}, Lorg/mortbay/jetty/SessionManager;->isUsingCookies()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 231
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v2

    .line 232
    .local v2, "cookies":[Ljavax/servlet/http/Cookie;
    if-eqz v2, :cond_3

    array-length v11, v2

    if-lez v11, :cond_3

    .line 234
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v11, v2

    if-ge v3, v11, :cond_3

    .line 236
    invoke-interface {v9}, Lorg/mortbay/jetty/SessionManager;->getSessionCookie()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v2, v3

    invoke-virtual {v12}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 238
    if-eqz v5, :cond_7

    .line 243
    invoke-interface {v9, v5}, Lorg/mortbay/jetty/SessionManager;->getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 259
    .end local v2    # "cookies":[Ljavax/servlet/http/Cookie;
    .end local v3    # "i":I
    :cond_3
    if-eqz v5, :cond_4

    if-nez v8, :cond_6

    .line 261
    :cond_4
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v10

    .line 263
    .local v10, "uri":Ljava/lang/String;
    invoke-interface {v9}, Lorg/mortbay/jetty/SessionManager;->getSessionURLPrefix()Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "prefix":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 266
    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 267
    .local v7, "s":I
    if-ltz v7, :cond_6

    .line 269
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v7, v11

    .line 270
    move v3, v7

    .line 271
    .restart local v3    # "i":I
    :goto_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v3, v11, :cond_5

    .line 273
    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 274
    .local v1, "c":C
    const/16 v11, 0x3b

    if-eq v1, v11, :cond_5

    const/16 v11, 0x23

    if-eq v1, v11, :cond_5

    const/16 v11, 0x3f

    if-eq v1, v11, :cond_5

    const/16 v11, 0x2f

    if-ne v1, v11, :cond_a

    .line 279
    .end local v1    # "c":C
    :cond_5
    invoke-virtual {v10, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 280
    const/4 v6, 0x0

    .line 281
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 282
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Got Session ID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " from URL"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 287
    .end local v3    # "i":I
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v7    # "s":I
    .end local v10    # "uri":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0, v5}, Lorg/mortbay/jetty/Request;->setRequestedSessionId(Ljava/lang/String;)V

    .line 288
    if-eqz v5, :cond_b

    if-eqz v6, :cond_b

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v0, v11}, Lorg/mortbay/jetty/Request;->setRequestedSessionIdFromCookie(Z)V

    goto/16 :goto_1

    .line 247
    .restart local v2    # "cookies":[Ljavax/servlet/http/Cookie;
    .restart local v3    # "i":I
    :cond_7
    aget-object v11, v2, v3

    invoke-virtual {v11}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 248
    const/4 v6, 0x1

    .line 249
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_8

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Got Session ID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " from cookie"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 251
    :cond_8
    invoke-interface {v9, v5}, Lorg/mortbay/jetty/SessionManager;->getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    move-result-object v8

    .line 252
    if-eqz v8, :cond_9

    .line 253
    invoke-virtual {v0, v8}, Lorg/mortbay/jetty/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    .line 234
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 276
    .end local v2    # "cookies":[Ljavax/servlet/http/Cookie;
    .restart local v1    # "c":C
    .restart local v4    # "prefix":Ljava/lang/String;
    .restart local v7    # "s":I
    .restart local v10    # "uri":Ljava/lang/String;
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 277
    goto/16 :goto_3

    .line 288
    .end local v1    # "c":C
    .end local v3    # "i":I
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v7    # "s":I
    .end local v10    # "uri":Ljava/lang/String;
    :cond_b
    const/4 v11, 0x0

    goto :goto_4
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 13
    .param p1, "server"    # Lorg/mortbay/jetty/Server;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 101
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/SessionHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v12

    .line 102
    .local v12, "old_server":Lorg/mortbay/jetty/Server;
    if-eqz v12, :cond_0

    if-eq v12, p1, :cond_0

    .line 103
    invoke-virtual {v12}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    const-string v4, "sessionManager"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 104
    :cond_0
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 105
    if-eqz p1, :cond_1

    if-eq p1, v12, :cond_1

    .line 106
    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    const-string v10, "sessionManager"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 107
    :cond_1
    return-void
.end method

.method public setSessionManager(Lorg/mortbay/jetty/SessionManager;)V
    .locals 6
    .param p1, "sessionManager"    # Lorg/mortbay/jetty/SessionManager;

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/SessionHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 83
    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    .line 85
    .local v2, "old_session_manager":Lorg/mortbay/jetty/SessionManager;
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/SessionHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/SessionHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    const-string v4, "sessionManager"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 88
    :cond_1
    if-eqz p1, :cond_2

    .line 89
    invoke-interface {p1, p0}, Lorg/mortbay/jetty/SessionManager;->setSessionHandler(Lorg/mortbay/jetty/servlet/SessionHandler;)V

    .line 91
    :cond_2
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    .line 93
    if-eqz v2, :cond_3

    .line 94
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lorg/mortbay/jetty/SessionManager;->setSessionHandler(Lorg/mortbay/jetty/servlet/SessionHandler;)V

    .line 95
    :cond_3
    return-void
.end method
