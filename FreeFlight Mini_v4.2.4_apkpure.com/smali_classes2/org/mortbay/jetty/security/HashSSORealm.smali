.class public Lorg/mortbay/jetty/security/HashSSORealm;
.super Ljava/lang/Object;
.source "HashSSORealm.java"

# interfaces
.implements Lorg/mortbay/jetty/security/SSORealm;


# static fields
.field public static final SSO_COOKIE_NAME:Ljava/lang/String; = "SSO_ID"


# instance fields
.field private transient _random:Ljava/util/Random;

.field private _ssoId2Principal:Ljava/util/HashMap;

.field private _ssoPrincipal2Credential:Ljava/util/HashMap;

.field private _ssoUsername2Id:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoUsername2Id:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoPrincipal2Credential:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public clearSingleSignOn(Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v3, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    monitor-enter v3

    .line 128
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoUsername2Id:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 129
    .local v1, "ssoID":Ljava/lang/Object;
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "principal":Ljava/lang/Object;
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoPrincipal2Credential:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    monitor-exit v3

    .line 132
    return-void

    .line 131
    .end local v0    # "principal":Ljava/lang/Object;
    .end local v1    # "ssoID":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Lorg/mortbay/jetty/security/Credential;
    .locals 11
    .param p1, "request"    # Lorg/mortbay/jetty/Request;
    .param p2, "response"    # Lorg/mortbay/jetty/Response;

    .prologue
    .line 45
    const/4 v7, 0x0

    .line 46
    .local v7, "ssoID":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v2

    .line 47
    .local v2, "cookies":[Ljavax/servlet/http/Cookie;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-eqz v2, :cond_0

    array-length v8, v2

    if-ge v4, v8, :cond_0

    .line 49
    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SSO_ID"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 51
    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 55
    :cond_0
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "get ssoID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 57
    :cond_1
    const/4 v5, 0x0

    .line 58
    .local v5, "principal":Ljava/security/Principal;
    const/4 v3, 0x0

    .line 59
    .local v3, "credential":Lorg/mortbay/jetty/security/Credential;
    iget-object v9, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    monitor-enter v9

    .line 61
    :try_start_0
    iget-object v8, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/security/Principal;

    move-object v5, v0

    .line 62
    iget-object v8, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoPrincipal2Credential:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lorg/mortbay/jetty/security/Credential;

    move-object v3, v0

    .line 63
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "SSO principal="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 67
    :cond_2
    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    .line 70
    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v8

    check-cast v8, Lorg/mortbay/jetty/webapp/WebAppContext;

    check-cast v8, Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v8}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v6

    .line 71
    .local v6, "realm":Lorg/mortbay/jetty/security/UserRealm;
    invoke-interface {v5}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v3, p1}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object v1

    .line 72
    .local v1, "authPrincipal":Ljava/security/Principal;
    if-eqz v1, :cond_4

    .line 74
    invoke-virtual {p1, v1}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    .line 87
    .end local v1    # "authPrincipal":Ljava/security/Principal;
    .end local v3    # "credential":Lorg/mortbay/jetty/security/Credential;
    .end local v6    # "realm":Lorg/mortbay/jetty/security/UserRealm;
    :goto_1
    return-object v3

    .line 47
    .end local v5    # "principal":Ljava/security/Principal;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 63
    .restart local v3    # "credential":Lorg/mortbay/jetty/security/Credential;
    .restart local v5    # "principal":Ljava/security/Principal;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 79
    .restart local v1    # "authPrincipal":Ljava/security/Principal;
    .restart local v6    # "realm":Lorg/mortbay/jetty/security/UserRealm;
    :cond_4
    iget-object v9, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    monitor-enter v9

    .line 81
    :try_start_2
    iget-object v8, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v8, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoPrincipal2Credential:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v8, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoUsername2Id:Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    monitor-exit v9

    .line 87
    .end local v1    # "authPrincipal":Ljava/security/Principal;
    .end local v6    # "realm":Lorg/mortbay/jetty/security/UserRealm;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 84
    .restart local v1    # "authPrincipal":Ljava/security/Principal;
    .restart local v6    # "realm":Lorg/mortbay/jetty/security/UserRealm;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8
.end method

.method public setSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Ljava/security/Principal;Lorg/mortbay/jetty/security/Credential;)V
    .locals 10
    .param p1, "request"    # Lorg/mortbay/jetty/Request;
    .param p2, "response"    # Lorg/mortbay/jetty/Response;
    .param p3, "principal"    # Ljava/security/Principal;
    .param p4, "credential"    # Lorg/mortbay/jetty/security/Credential;

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, "ssoID":Ljava/lang/String;
    iget-object v3, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    monitor-enter v3

    .line 105
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x7

    rem-long/2addr v6, v8

    long-to-int v2, v6

    add-int/lit8 v2, v2, 0x1e

    invoke-static {v4, v5, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "set ssoID="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 112
    :cond_1
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoId2Principal:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoPrincipal2Credential:Ljava/util/HashMap;

    invoke-virtual {v2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->_ssoUsername2Id:Ljava/util/HashMap;

    invoke-interface {p3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    new-instance v0, Ljavax/servlet/http/Cookie;

    const-string v2, "SSO_ID"

    invoke-direct {v0, v2, v1}, Ljavax/servlet/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v0, "cookie":Ljavax/servlet/http/Cookie;
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljavax/servlet/http/Cookie;->setPath(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2, v0}, Lorg/mortbay/jetty/Response;->addCookie(Ljavax/servlet/http/Cookie;)V

    .line 120
    return-void

    .line 115
    .end local v0    # "cookie":Ljavax/servlet/http/Cookie;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
