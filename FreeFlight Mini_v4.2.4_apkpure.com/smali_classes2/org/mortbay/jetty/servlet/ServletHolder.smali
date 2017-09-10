.class public Lorg/mortbay/jetty/servlet/ServletHolder;
.super Lorg/mortbay/jetty/servlet/Holder;
.source "ServletHolder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/servlet/ServletHolder$1;,
        Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;,
        Lorg/mortbay/jetty/servlet/ServletHolder$Config;
    }
.end annotation


# static fields
.field static class$javax$servlet$Servlet:Ljava/lang/Class;

.field static class$javax$servlet$SingleThreadModel:Ljava/lang/Class;

.field static class$org$mortbay$jetty$security$SecurityHandler:Ljava/lang/Class;


# instance fields
.field private transient _config:Lorg/mortbay/jetty/servlet/ServletHolder$Config;

.field private _forcedPath:Ljava/lang/String;

.field private _initOnStartup:Z

.field private _initOrder:I

.field private _realm:Lorg/mortbay/jetty/security/UserRealm;

.field private _roleMap:Ljava/util/Map;

.field private _runAs:Ljava/lang/String;

.field private transient _servlet:Ljavax/servlet/Servlet;

.field private transient _unavailable:J

.field private transient _unavailableEx:Ljavax/servlet/UnavailableException;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/Holder;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .param p1, "servlet"    # Ljava/lang/Class;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/servlet/Holder;-><init>(Ljava/lang/Class;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 88
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/Servlet;)V
    .locals 1
    .param p1, "servlet"    # Ljavax/servlet/Servlet;

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/Holder;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 79
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHolder;->setServlet(Ljavax/servlet/Servlet;)V

    .line 80
    return-void
.end method

.method static access$100(Lorg/mortbay/jetty/servlet/ServletHolder;)Lorg/mortbay/jetty/servlet/ServletHolder$Config;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/servlet/ServletHolder;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_config:Lorg/mortbay/jetty/servlet/ServletHolder$Config;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 254
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

.method private initServlet()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 424
    const/4 v1, 0x0

    .line 427
    .local v1, "user":Ljava/security/Principal;
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    if-nez v2, :cond_0

    .line 428
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/Servlet;

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 429
    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_config:Lorg/mortbay/jetty/servlet/ServletHolder$Config;

    if-nez v2, :cond_1

    .line 430
    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHolder$Config;

    invoke-direct {v2, p0}, Lorg/mortbay/jetty/servlet/ServletHolder$Config;-><init>(Lorg/mortbay/jetty/servlet/ServletHolder;)V

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_config:Lorg/mortbay/jetty/servlet/ServletHolder$Config;

    .line 433
    :cond_1
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    instance-of v2, v2, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;

    if-nez v2, :cond_2

    .line 434
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/servlet/ServletHandler;->customizeServlet(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 437
    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v2, :cond_3

    .line 438
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/mortbay/jetty/security/UserRealm;->pushRole(Ljava/security/Principal;Ljava/lang/String;)Ljava/security/Principal;

    move-result-object v1

    .line 440
    :cond_3
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_config:Lorg/mortbay/jetty/servlet/ServletHolder$Config;

    invoke-interface {v2, v3}, Ljavax/servlet/Servlet;->init(Ljavax/servlet/ServletConfig;)V
    :try_end_0
    .catch Ljavax/servlet/UnavailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 467
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-interface {v2, v1}, Lorg/mortbay/jetty/security/UserRealm;->popRole(Ljava/security/Principal;)Ljava/security/Principal;

    .line 469
    :cond_4
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljavax/servlet/UnavailableException;
    :try_start_1
    invoke-direct {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    .line 445
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 446
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_config:Lorg/mortbay/jetty/servlet/ServletHolder$Config;

    .line 447
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    .end local v0    # "e":Ljavax/servlet/UnavailableException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 467
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-interface {v3, v1}, Lorg/mortbay/jetty/security/UserRealm;->popRole(Ljava/security/Principal;)Ljava/security/Principal;

    :cond_5
    throw v2

    .line 449
    :catch_1
    move-exception v0

    .line 451
    .local v0, "e":Ljavax/servlet/ServletException;
    :try_start_2
    invoke-virtual {v0}, Ljavax/servlet/ServletException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_6

    move-object v2, v0

    :goto_0
    invoke-direct {p0, v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->makeUnavailable(Ljava/lang/Throwable;)V

    .line 452
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 453
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_config:Lorg/mortbay/jetty/servlet/ServletHolder$Config;

    .line 454
    throw v0

    .line 451
    :cond_6
    invoke-virtual {v0}, Ljavax/servlet/ServletException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    .line 456
    .end local v0    # "e":Ljavax/servlet/ServletException;
    :catch_2
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->makeUnavailable(Ljava/lang/Throwable;)V

    .line 459
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 460
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_config:Lorg/mortbay/jetty/servlet/ServletHolder$Config;

    .line 461
    new-instance v2, Ljavax/servlet/ServletException;

    invoke-direct {v2, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private makeUnavailable(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 410
    instance-of v0, p1, Ljavax/servlet/UnavailableException;

    if-eqz v0, :cond_0

    .line 411
    check-cast p1, Ljavax/servlet/UnavailableException;

    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    .line 418
    :goto_0
    return-void

    .line 414
    .restart local p1    # "e":Ljava/lang/Throwable;
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    const-string v1, "unavailable"

    invoke-interface {v0, v1, p1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    new-instance v0, Ljavax/servlet/UnavailableException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    .line 416
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0
.end method

.method private makeUnavailable(Ljavax/servlet/UnavailableException;)V
    .locals 6
    .param p1, "e"    # Ljavax/servlet/UnavailableException;

    .prologue
    const-wide/16 v4, -0x1

    .line 389
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    if-ne v0, p1, :cond_0

    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 405
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unavailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    .line 394
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    .line 395
    iput-wide v4, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    .line 396
    invoke-virtual {p1}, Ljavax/servlet/UnavailableException;->isPermanent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iput-wide v4, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0

    .line 400
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    invoke-virtual {v0}, Ljavax/servlet/UnavailableException;->getUnavailableSeconds()I

    move-result v0

    if-lez v0, :cond_2

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    invoke-virtual {v2}, Ljavax/servlet/UnavailableException;->getUnavailableSeconds()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0

    .line 403
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0
.end method


# virtual methods
.method public checkServletType()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/UnavailableException;
        }
    .end annotation

    .prologue
    .line 360
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHolder;->class$javax$servlet$Servlet:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "javax.servlet.Servlet"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHolder;->class$javax$servlet$Servlet:Ljava/lang/Class;

    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    new-instance v0, Ljavax/servlet/UnavailableException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Servlet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is not a javax.servlet.Servlet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHolder;->class$javax$servlet$Servlet:Ljava/lang/Class;

    goto :goto_0

    .line 364
    :cond_1
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 135
    instance-of v4, p1, Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 137
    check-cast v1, Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 138
    .local v1, "sh":Lorg/mortbay/jetty/servlet/ServletHolder;
    if-ne v1, p0, :cond_1

    move v2, v0

    .line 152
    .end local v1    # "sh":Lorg/mortbay/jetty/servlet/ServletHolder;
    :cond_0
    :goto_0
    return v2

    .line 140
    .restart local v1    # "sh":Lorg/mortbay/jetty/servlet/ServletHolder;
    :cond_1
    iget v4, v1, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOrder:I

    iget v5, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOrder:I

    if-lt v4, v5, :cond_0

    .line 142
    iget v4, v1, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOrder:I

    iget v5, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOrder:I

    if-le v4, v5, :cond_2

    move v2, v3

    .line 143
    goto :goto_0

    .line 145
    :cond_2
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lorg/mortbay/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    iget-object v5, v1, Lorg/mortbay/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, "c":I
    :cond_3
    if-nez v0, :cond_4

    .line 147
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    iget-object v5, v1, Lorg/mortbay/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 148
    :cond_4
    if-nez v0, :cond_5

    .line 149
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->hashCode()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    if-le v4, v5, :cond_6

    move v0, v2

    :cond_5
    :goto_1
    move v2, v0

    .line 150
    goto :goto_0

    :cond_6
    move v0, v3

    .line 149
    goto :goto_1
.end method

.method public destroyInstance(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 315
    if-nez p1, :cond_0

    .line 320
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 317
    check-cast v0, Ljavax/servlet/Servlet;

    .line 318
    .local v0, "servlet":Ljavax/servlet/Servlet;
    invoke-interface {v0}, Ljavax/servlet/Servlet;->destroy()V

    .line 319
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->customizeServletDestroy(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;

    goto :goto_0
.end method

.method public doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 239
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    .line 242
    :try_start_0
    invoke-super {p0}, Lorg/mortbay/jetty/servlet/Holder;->doStart()V

    .line 243
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->checkServletType()V
    :try_end_0
    .catch Ljavax/servlet/UnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHolder$Config;

    invoke-direct {v2, p0}, Lorg/mortbay/jetty/servlet/ServletHolder$Config;-><init>(Lorg/mortbay/jetty/servlet/ServletHolder;)V

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_config:Lorg/mortbay/jetty/servlet/ServletHolder$Config;

    .line 252
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 253
    invoke-static {}, Lorg/mortbay/jetty/handler/ContextHandler;->getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v3

    sget-object v2, Lorg/mortbay/jetty/servlet/ServletHolder;->class$org$mortbay$jetty$security$SecurityHandler:Ljava/lang/Class;

    if-nez v2, :cond_4

    const-string v2, "org.mortbay.jetty.security.SecurityHandler"

    invoke-static {v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/jetty/servlet/ServletHolder;->class$org$mortbay$jetty$security$SecurityHandler:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v3, v2}, Lorg/mortbay/jetty/handler/ContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/mortbay/jetty/Handler;

    move-result-object v2

    check-cast v2, Lorg/mortbay/jetty/security/SecurityHandler;

    check-cast v2, Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-virtual {v2}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    .line 256
    :cond_0
    sget-object v2, Lorg/mortbay/jetty/servlet/ServletHolder;->class$javax$servlet$SingleThreadModel:Ljava/lang/Class;

    if-nez v2, :cond_5

    const-string v2, "javax.servlet.SingleThreadModel"

    invoke-static {v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/jetty/servlet/ServletHolder;->class$javax$servlet$SingleThreadModel:Ljava/lang/Class;

    :goto_2
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;-><init>(Lorg/mortbay/jetty/servlet/ServletHolder;Lorg/mortbay/jetty/servlet/ServletHolder$1;)V

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 259
    :cond_1
    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_extInstance:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOnStartup:Z

    if-eqz v2, :cond_3

    .line 263
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->initServlet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 273
    :cond_3
    :goto_3
    return-void

    .line 245
    :catch_0
    move-exception v1

    .line 247
    .local v1, "ue":Ljavax/servlet/UnavailableException;
    invoke-direct {p0, v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    goto :goto_0

    .line 253
    .end local v1    # "ue":Ljavax/servlet/UnavailableException;
    :cond_4
    sget-object v2, Lorg/mortbay/jetty/servlet/ServletHolder;->class$org$mortbay$jetty$security$SecurityHandler:Ljava/lang/Class;

    goto :goto_1

    .line 256
    :cond_5
    sget-object v2, Lorg/mortbay/jetty/servlet/ServletHolder;->class$javax$servlet$SingleThreadModel:Ljava/lang/Class;

    goto :goto_2

    .line 265
    :catch_1
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/ServletHandler;->isStartWithUnavailable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 268
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 270
    :cond_6
    throw v0
.end method

.method public doStop()V
    .locals 5

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 282
    .local v1, "user":Ljava/security/Principal;
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/mortbay/jetty/security/UserRealm;->pushRole(Ljava/security/Principal;Ljava/lang/String;)Ljava/security/Principal;

    move-result-object v1

    .line 285
    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 289
    :try_start_1
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->destroyInstance(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :cond_1
    :goto_0
    :try_start_2
    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_extInstance:Z

    if-nez v2, :cond_2

    .line 298
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 300
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_config:Lorg/mortbay/jetty/servlet/ServletHolder$Config;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    invoke-super {p0}, Lorg/mortbay/jetty/servlet/Holder;->doStop()V

    .line 306
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 307
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-interface {v2, v1}, Lorg/mortbay/jetty/security/UserRealm;->popRole(Ljava/security/Principal;)Ljava/security/Principal;

    .line 309
    :cond_3
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-super {p0}, Lorg/mortbay/jetty/servlet/Holder;->doStop()V

    .line 306
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 307
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-interface {v3, v1}, Lorg/mortbay/jetty/security/UserRealm;->popRole(Ljava/security/Principal;)Ljava/security/Principal;

    :cond_4
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHolder;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getForcedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getInitOrder()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOrder:I

    return v0
.end method

.method public getRoleMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRunAs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getServlet()Ljavax/servlet/Servlet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 330
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 332
    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 333
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 334
    :cond_1
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    .line 338
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    if-nez v0, :cond_3

    .line 339
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->initServlet()V

    .line 340
    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getServletInstance()Ljavax/servlet/Servlet;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    return-object v0
.end method

.method public getUnavailableException()Ljavax/servlet/UnavailableException;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    return-object v0
.end method

.method public getUserRoleLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 192
    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 191
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    .local v0, "link":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0
.end method

.method public handle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 10
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljavax/servlet/UnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    if-nez v5, :cond_0

    .line 481
    new-instance v5, Ljavax/servlet/UnavailableException;

    const-string v6, "Servlet Not Initialized"

    invoke-direct {v5, v6}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 483
    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 484
    .local v2, "servlet":Ljavax/servlet/Servlet;
    monitor-enter p0

    .line 486
    :try_start_0
    iget-wide v6, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOnStartup:Z

    if-nez v5, :cond_2

    .line 487
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;

    move-result-object v2

    .line 488
    :cond_2
    if-nez v2, :cond_3

    .line 489
    new-instance v5, Ljavax/servlet/UnavailableException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Could not instantiate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 490
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    const/4 v3, 0x1

    .line 494
    .local v3, "servlet_error":Z
    const/4 v4, 0x0

    .line 495
    .local v4, "user":Ljava/security/Principal;
    const/4 v0, 0x0

    .line 499
    .local v0, "base_request":Lorg/mortbay/jetty/Request;
    :try_start_2
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 501
    const-string v5, "org.apache.catalina.jsp_file"

    iget-object v6, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    :cond_4
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v5, :cond_5

    .line 506
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    .line 507
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v6

    iget-object v7, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lorg/mortbay/jetty/security/UserRealm;->pushRole(Ljava/security/Principal;Ljava/lang/String;)Ljava/security/Principal;

    move-result-object v4

    .line 508
    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    .line 511
    :cond_5
    invoke-interface {v2, p1, p2}, Ljavax/servlet/Servlet;->service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_2
    .catch Ljavax/servlet/UnavailableException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 512
    const/4 v3, 0x0

    .line 522
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    .line 524
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-interface {v5, v4}, Lorg/mortbay/jetty/security/UserRealm;->popRole(Ljava/security/Principal;)Ljava/security/Principal;

    move-result-object v4

    .line 525
    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    .line 529
    :cond_6
    if-eqz v3, :cond_7

    .line 530
    const-string v5, "javax.servlet.error.servlet_name"

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 532
    :cond_7
    return-void

    .line 514
    :catch_0
    move-exception v1

    .line 516
    .local v1, "e":Ljavax/servlet/UnavailableException;
    :try_start_3
    invoke-direct {p0, v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    .line 517
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 522
    .end local v1    # "e":Ljavax/servlet/UnavailableException;
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v6, :cond_8

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    .line 524
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-interface {v6, v4}, Lorg/mortbay/jetty/security/UserRealm;->popRole(Ljava/security/Principal;)Ljava/security/Principal;

    move-result-object v4

    .line 525
    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    .line 529
    :cond_8
    if-eqz v3, :cond_9

    .line 530
    const-string v6, "javax.servlet.error.servlet_name"

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    throw v5
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 372
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 383
    :cond_0
    :goto_0
    return v1

    .line 376
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setForcedPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "forcedPath"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setInitOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 127
    iput p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOrder:I

    .line 128
    return-void
.end method

.method public setRunAs(Ljava/lang/String;)V
    .locals 0
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public declared-synchronized setServlet(Ljavax/servlet/Servlet;)V
    .locals 2
    .param p1, "servlet"    # Ljavax/servlet/Servlet;

    .prologue
    .line 102
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    instance-of v0, p1, Ljavax/servlet/SingleThreadModel;

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 105
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_extInstance:Z

    .line 106
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 108
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setUserRoleLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "link"    # Ljava/lang/String;

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
