.class public Lorg/mortbay/jetty/webapp/WebInfConfiguration;
.super Ljava/lang/Object;
.source "WebInfConfiguration.java"

# interfaces
.implements Lorg/mortbay/jetty/webapp/Configuration;


# instance fields
.field protected _context:Lorg/mortbay/jetty/webapp/WebAppContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public configureClassLoader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v3}, Lorg/mortbay/jetty/webapp/WebAppContext;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Cannot configure webapp after it is started"

    invoke-static {v3}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v3}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWebInf()Lorg/mortbay/resource/Resource;

    move-result-object v2

    .line 65
    .local v2, "web_inf":Lorg/mortbay/resource/Resource;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v3}, Lorg/mortbay/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    instance-of v3, v3, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    if-eqz v3, :cond_0

    .line 68
    const-string v3, "classes/"

    invoke-virtual {v2, v3}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 69
    .local v0, "classes":Lorg/mortbay/resource/Resource;
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v3}, Lorg/mortbay/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    check-cast v3, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->addClassPath(Ljava/lang/String;)V

    .line 73
    :cond_2
    const-string v3, "lib/"

    invoke-virtual {v2, v3}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 74
    .local v1, "lib":Lorg/mortbay/resource/Resource;
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    :cond_3
    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v3}, Lorg/mortbay/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    check-cast v3, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    invoke-virtual {v3, v1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->addJars(Lorg/mortbay/resource/Resource;)V

    goto :goto_0
.end method

.method public configureDefaults()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    return-void
.end method

.method public configureWebApp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    return-void
.end method

.method public deconfigureWebApp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    return-void
.end method

.method public getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    return-object v0
.end method

.method public setWebAppContext(Lorg/mortbay/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p1, "context"    # Lorg/mortbay/jetty/webapp/WebAppContext;

    .prologue
    .line 35
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    .line 36
    return-void
.end method
