.class public Lorg/mortbay/jetty/security/HashUserRealm;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "HashUserRealm.java"

# interfaces
.implements Lorg/mortbay/jetty/security/UserRealm;
.implements Lorg/mortbay/jetty/security/SSORealm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/security/HashUserRealm$WrappedUser;,
        Lorg/mortbay/jetty/security/HashUserRealm$KnownUser;,
        Lorg/mortbay/jetty/security/HashUserRealm$User;
    }
.end annotation


# static fields
.field public static final __SSO:Ljava/lang/String; = "org.mortbay.http.SSO"


# instance fields
.field private _config:Ljava/lang/String;

.field private _configResource:Lorg/mortbay/resource/Resource;

.field private _realmName:Ljava/lang/String;

.field private _refreshInterval:I

.field protected _roles:Ljava/util/HashMap;

.field private _scanner:Lorg/mortbay/util/Scanner;

.field private _ssoRealm:Lorg/mortbay/jetty/security/SSORealm;

.field protected _users:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_roles:Ljava/util/HashMap;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_refreshInterval:I

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_roles:Ljava/util/HashMap;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_refreshInterval:I

    .line 94
    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_realmName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_roles:Ljava/util/HashMap;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_refreshInterval:I

    .line 105
    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_realmName:Ljava/lang/String;

    .line 106
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/security/HashUserRealm;->setConfig(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method static access$200(Lorg/mortbay/jetty/security/HashUserRealm;)Lorg/mortbay/resource/Resource;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/security/HashUserRealm;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_configResource:Lorg/mortbay/resource/Resource;

    return-object v0
.end method

.method static access$300(Lorg/mortbay/jetty/security/HashUserRealm;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/security/HashUserRealm;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_config:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addUserToRole(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "roleName"    # Ljava/lang/String;

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_roles:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 278
    .local v0, "userSet":Ljava/util/HashSet;
    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "userSet":Ljava/util/HashSet;
    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 281
    .restart local v0    # "userSet":Ljava/util/HashSet;
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_roles:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    .line 277
    .end local v0    # "userSet":Ljava/util/HashSet;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "credentials"    # Ljava/lang/Object;
    .param p3, "request"    # Lorg/mortbay/jetty/Request;

    .prologue
    const/4 v1, 0x0

    .line 217
    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/security/HashUserRealm$KnownUser;

    .line 220
    .local v0, "user":Lorg/mortbay/jetty/security/HashUserRealm$KnownUser;
    monitor-exit p0

    .line 221
    if-nez v0, :cond_1

    move-object v0, v1

    .line 227
    .end local v0    # "user":Lorg/mortbay/jetty/security/HashUserRealm$KnownUser;
    :cond_0
    :goto_0
    return-object v0

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 224
    .restart local v0    # "user":Lorg/mortbay/jetty/security/HashUserRealm$KnownUser;
    :cond_1
    invoke-virtual {v0, p2}, Lorg/mortbay/jetty/security/HashUserRealm$KnownUser;->authenticate(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 227
    goto :goto_0
.end method

.method public clearSingleSignOn(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 365
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_ssoRealm:Lorg/mortbay/jetty/security/SSORealm;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_ssoRealm:Lorg/mortbay/jetty/security/SSORealm;

    invoke-interface {v0, p1}, Lorg/mortbay/jetty/security/SSORealm;->clearSingleSignOn(Ljava/lang/String;)V

    .line 367
    :cond_0
    return-void
.end method

.method public disassociate(Ljava/security/Principal;)V
    .locals 0
    .param p1, "user"    # Ljava/security/Principal;

    .prologue
    .line 233
    return-void
.end method

.method protected doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 378
    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStart()V

    .line 379
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_scanner:Lorg/mortbay/util/Scanner;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_scanner:Lorg/mortbay/util/Scanner;

    invoke-virtual {v1}, Lorg/mortbay/util/Scanner;->stop()V

    .line 382
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/HashUserRealm;->getRefreshInterval()I

    move-result v1

    if-lez v1, :cond_1

    .line 384
    new-instance v1, Lorg/mortbay/util/Scanner;

    invoke-direct {v1}, Lorg/mortbay/util/Scanner;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_scanner:Lorg/mortbay/util/Scanner;

    .line 385
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_scanner:Lorg/mortbay/util/Scanner;

    invoke-virtual {p0}, Lorg/mortbay/jetty/security/HashUserRealm;->getRefreshInterval()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mortbay/util/Scanner;->setScanInterval(I)V

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 387
    .local v0, "dirList":Ljava/util/List;
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_configResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_scanner:Lorg/mortbay/util/Scanner;

    invoke-virtual {v1, v0}, Lorg/mortbay/util/Scanner;->setScanDirs(Ljava/util/List;)V

    .line 389
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_scanner:Lorg/mortbay/util/Scanner;

    new-instance v2, Lorg/mortbay/jetty/security/HashUserRealm$1;

    invoke-direct {v2, p0}, Lorg/mortbay/jetty/security/HashUserRealm$1;-><init>(Lorg/mortbay/jetty/security/HashUserRealm;)V

    invoke-virtual {v1, v2}, Lorg/mortbay/util/Scanner;->setFilenameFilter(Ljava/io/FilenameFilter;)V

    .line 408
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_scanner:Lorg/mortbay/util/Scanner;

    new-instance v2, Lorg/mortbay/jetty/security/HashUserRealm$2;

    invoke-direct {v2, p0}, Lorg/mortbay/jetty/security/HashUserRealm$2;-><init>(Lorg/mortbay/jetty/security/HashUserRealm;)V

    invoke-virtual {v1, v2}, Lorg/mortbay/util/Scanner;->addListener(Lorg/mortbay/util/Scanner$Listener;)V

    .line 425
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_scanner:Lorg/mortbay/util/Scanner;

    invoke-virtual {v1, v3}, Lorg/mortbay/util/Scanner;->setReportExistingFilesOnStartup(Z)V

    .line 426
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_scanner:Lorg/mortbay/util/Scanner;

    invoke-virtual {v1, v3}, Lorg/mortbay/util/Scanner;->setRecursive(Z)V

    .line 427
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_scanner:Lorg/mortbay/util/Scanner;

    invoke-virtual {v1}, Lorg/mortbay/util/Scanner;->start()V

    .line 429
    .end local v0    # "dirList":Ljava/util/List;
    :cond_1
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
    .line 436
    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStop()V

    .line 437
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_scanner:Lorg/mortbay/util/Scanner;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_scanner:Lorg/mortbay/util/Scanner;

    invoke-virtual {v0}, Lorg/mortbay/util/Scanner;->stop()V

    .line 439
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_scanner:Lorg/mortbay/util/Scanner;

    .line 440
    return-void
.end method

.method public dump(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 324
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_roles:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 326
    return-void
.end method

.method public getConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_config:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigResource()Lorg/mortbay/resource/Resource;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_configResource:Lorg/mortbay/resource/Resource;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_realmName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipal(Ljava/lang/String;)Ljava/security/Principal;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Principal;

    return-object v0
.end method

.method public getRefreshInterval()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_refreshInterval:I

    return v0
.end method

.method public getSSORealm()Lorg/mortbay/jetty/security/SSORealm;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_ssoRealm:Lorg/mortbay/jetty/security/SSORealm;

    return-object v0
.end method

.method public getSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Lorg/mortbay/jetty/security/Credential;
    .locals 1
    .param p1, "request"    # Lorg/mortbay/jetty/Request;
    .param p2, "response"    # Lorg/mortbay/jetty/Response;

    .prologue
    .line 350
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_ssoRealm:Lorg/mortbay/jetty/security/SSORealm;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_ssoRealm:Lorg/mortbay/jetty/security/SSORealm;

    invoke-interface {v0, p1, p2}, Lorg/mortbay/jetty/security/SSORealm;->getSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Lorg/mortbay/jetty/security/Credential;

    move-result-object v0

    .line 352
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isUserInRole(Ljava/security/Principal;Ljava/lang/String;)Z
    .locals 4
    .param p1, "user"    # Ljava/security/Principal;
    .param p2, "roleName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 300
    monitor-enter p0

    :try_start_0
    instance-of v2, p1, Lorg/mortbay/jetty/security/HashUserRealm$WrappedUser;

    if-eqz v2, :cond_0

    .line 301
    check-cast p1, Lorg/mortbay/jetty/security/HashUserRealm$WrappedUser;

    .end local p1    # "user":Ljava/security/Principal;
    invoke-virtual {p1, p2}, Lorg/mortbay/jetty/security/HashUserRealm$WrappedUser;->isUserInRole(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 307
    :goto_0
    monitor-exit p0

    return v2

    .line 303
    .restart local p1    # "user":Ljava/security/Principal;
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    instance-of v2, p1, Lorg/mortbay/jetty/security/HashUserRealm$User;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/mortbay/jetty/security/HashUserRealm$User;

    move-object v2, v0

    invoke-static {v2}, Lorg/mortbay/jetty/security/HashUserRealm$User;->access$100(Lorg/mortbay/jetty/security/HashUserRealm$User;)Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v2

    if-eq v2, p0, :cond_2

    :cond_1
    move v2, v3

    .line 304
    goto :goto_0

    .line 306
    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_roles:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 307
    .local v1, "userSet":Ljava/util/HashSet;
    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0

    .line 300
    .end local v1    # "userSet":Ljava/util/HashSet;
    .end local p1    # "user":Ljava/security/Principal;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected loadConfig()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v8, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 153
    iget-object v8, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_roles:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 155
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Load "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_config:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 156
    :cond_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 157
    .local v4, "properties":Ljava/util/Properties;
    iget-object v8, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_configResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v8}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 159
    invoke-virtual {v4}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 160
    .local v3, "iter":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 162
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 164
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "username":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "credentials":Ljava/lang/String;
    const/4 v5, 0x0

    .line 167
    .local v5, "roles":Ljava/lang/String;
    const/16 v8, 0x2c

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 168
    .local v0, "c":I
    if-lez v0, :cond_2

    .line 170
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 171
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 174
    :cond_2
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 177
    invoke-virtual {p0, v7, v1}, Lorg/mortbay/jetty/security/HashUserRealm;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 180
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v8, ", "

    invoke-direct {v6, v5, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v6, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 182
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lorg/mortbay/jetty/security/HashUserRealm;->addUserToRole(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    .end local v0    # "c":I
    .end local v1    # "credentials":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v4    # "properties":Ljava/util/Properties;
    .end local v5    # "roles":Ljava/lang/String;
    .end local v6    # "tok":Ljava/util/StringTokenizer;
    .end local v7    # "username":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v3    # "iter":Ljava/util/Iterator;
    .restart local v4    # "properties":Ljava/util/Properties;
    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    return-void
.end method

.method public logout(Ljava/security/Principal;)V
    .locals 0
    .param p1, "user"    # Ljava/security/Principal;

    .prologue
    .line 312
    return-void
.end method

.method public popRole(Ljava/security/Principal;)Ljava/security/Principal;
    .locals 2
    .param p1, "user"    # Ljava/security/Principal;

    .prologue
    .line 247
    move-object v0, p1

    check-cast v0, Lorg/mortbay/jetty/security/HashUserRealm$WrappedUser;

    .line 248
    .local v0, "wu":Lorg/mortbay/jetty/security/HashUserRealm$WrappedUser;
    invoke-virtual {v0}, Lorg/mortbay/jetty/security/HashUserRealm$WrappedUser;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v1

    return-object v1
.end method

.method public pushRole(Ljava/security/Principal;Ljava/lang/String;)Ljava/security/Principal;
    .locals 1
    .param p1, "user"    # Ljava/security/Principal;
    .param p2, "role"    # Ljava/lang/String;

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 239
    new-instance p1, Lorg/mortbay/jetty/security/HashUserRealm$User;

    .end local p1    # "user":Ljava/security/Principal;
    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/mortbay/jetty/security/HashUserRealm$User;-><init>(Lorg/mortbay/jetty/security/HashUserRealm;Lorg/mortbay/jetty/security/HashUserRealm$1;)V

    .line 241
    .restart local p1    # "user":Ljava/security/Principal;
    :cond_0
    new-instance v0, Lorg/mortbay/jetty/security/HashUserRealm$WrappedUser;

    invoke-direct {v0, p0, p1, p2}, Lorg/mortbay/jetty/security/HashUserRealm$WrappedUser;-><init>(Lorg/mortbay/jetty/security/HashUserRealm;Ljava/security/Principal;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "credentials"    # Ljava/lang/Object;

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    instance-of v0, p2, Ljava/security/Principal;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 267
    .end local p2    # "credentials":Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 263
    .restart local p2    # "credentials":Ljava/lang/Object;
    :cond_0
    :try_start_1
    instance-of v0, p2, Lorg/mortbay/jetty/security/Password;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    new-instance v1, Lorg/mortbay/jetty/security/HashUserRealm$KnownUser;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p2, Lorg/mortbay/jetty/security/Password;

    .end local p2    # "credentials":Ljava/lang/Object;
    invoke-direct {v1, p0, v2, p2}, Lorg/mortbay/jetty/security/HashUserRealm$KnownUser;-><init>(Lorg/mortbay/jetty/security/HashUserRealm;Ljava/lang/String;Lorg/mortbay/jetty/security/Credential;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 265
    .restart local p2    # "credentials":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_2

    .line 266
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    new-instance v1, Lorg/mortbay/jetty/security/HashUserRealm$KnownUser;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/jetty/security/Credential;->getCredential(Ljava/lang/String;)Lorg/mortbay/jetty/security/Credential;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lorg/mortbay/jetty/security/HashUserRealm$KnownUser;-><init>(Lorg/mortbay/jetty/security/HashUserRealm;Ljava/lang/String;Lorg/mortbay/jetty/security/Credential;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 260
    .end local p2    # "credentials":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reauthenticate(Ljava/security/Principal;)Z
    .locals 1
    .param p1, "user"    # Ljava/security/Principal;

    .prologue
    .line 289
    check-cast p1, Lorg/mortbay/jetty/security/HashUserRealm$User;

    .end local p1    # "user":Ljava/security/Principal;
    invoke-virtual {p1}, Lorg/mortbay/jetty/security/HashUserRealm$User;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_config:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_config:Ljava/lang/String;

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_configResource:Lorg/mortbay/resource/Resource;

    .line 132
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/HashUserRealm;->loadConfig()V

    .line 134
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_realmName:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 0
    .param p1, "msec"    # I

    .prologue
    .line 139
    iput p1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_refreshInterval:I

    .line 140
    return-void
.end method

.method public setSSORealm(Lorg/mortbay/jetty/security/SSORealm;)V
    .locals 0
    .param p1, "ssoRealm"    # Lorg/mortbay/jetty/security/SSORealm;

    .prologue
    .line 344
    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_ssoRealm:Lorg/mortbay/jetty/security/SSORealm;

    .line 345
    return-void
.end method

.method public setSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Ljava/security/Principal;Lorg/mortbay/jetty/security/Credential;)V
    .locals 1
    .param p1, "request"    # Lorg/mortbay/jetty/Request;
    .param p2, "response"    # Lorg/mortbay/jetty/Response;
    .param p3, "principal"    # Ljava/security/Principal;
    .param p4, "credential"    # Lorg/mortbay/jetty/security/Credential;

    .prologue
    .line 358
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_ssoRealm:Lorg/mortbay/jetty/security/SSORealm;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_ssoRealm:Lorg/mortbay/jetty/security/SSORealm;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mortbay/jetty/security/SSORealm;->setSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Ljava/security/Principal;Lorg/mortbay/jetty/security/Credential;)V

    .line 360
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Realm["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_realmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
