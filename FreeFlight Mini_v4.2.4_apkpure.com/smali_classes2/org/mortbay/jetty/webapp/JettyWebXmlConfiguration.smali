.class public Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;
.super Ljava/lang/Object;
.source "JettyWebXmlConfiguration.java"

# interfaces
.implements Lorg/mortbay/jetty/webapp/Configuration;


# instance fields
.field private _context:Lorg/mortbay/jetty/webapp/WebAppContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configureClassLoader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    return-void
.end method

.method public configureDefaults()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    return-void
.end method

.method public configureWebApp()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v4, p0, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v4}, Lorg/mortbay/jetty/webapp/WebAppContext;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Cannot configure webapp after it is started"

    invoke-static {v4}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 80
    const-string v4, "Configuring web-jetty.xml"

    invoke-static {v4}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 82
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWebInf()Lorg/mortbay/resource/Resource;

    move-result-object v3

    .line 84
    .local v3, "web_inf":Lorg/mortbay/resource/Resource;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    const-string v4, "jetty6-web.xml"

    invoke-virtual {v3, v4}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 88
    .local v0, "jetty":Lorg/mortbay/resource/Resource;
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 89
    const-string v4, "jetty-web.xml"

    invoke-virtual {v3, v4}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 90
    :cond_3
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 91
    const-string v4, "web-jetty.xml"

    invoke-virtual {v3, v4}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 93
    :cond_4
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    iget-object v4, p0, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v4}, Lorg/mortbay/jetty/webapp/WebAppContext;->getServerClasses()[Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "old_server_classes":[Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/mortbay/jetty/webapp/WebAppContext;->setServerClasses([Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 101
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Configure: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 102
    :cond_5
    new-instance v1, Lorg/mortbay/xml/XmlConfiguration;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/mortbay/xml/XmlConfiguration;-><init>(Ljava/net/URL;)V

    .line 103
    .local v1, "jetty_config":Lorg/mortbay/xml/XmlConfiguration;
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/mortbay/xml/XmlConfiguration;->configure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object v4, p0, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v4}, Lorg/mortbay/jetty/webapp/WebAppContext;->getServerClasses()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 108
    iget-object v4, p0, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v4, v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->setServerClasses([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    .end local v1    # "jetty_config":Lorg/mortbay/xml/XmlConfiguration;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v5}, Lorg/mortbay/jetty/webapp/WebAppContext;->getServerClasses()[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    .line 108
    iget-object v5, p0, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v5, v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->setServerClasses([Ljava/lang/String;)V

    :cond_6
    throw v4
.end method

.method public deconfigureWebApp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    return-void
.end method

.method public getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    return-object v0
.end method

.method public setWebAppContext(Lorg/mortbay/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p1, "context"    # Lorg/mortbay/jetty/webapp/WebAppContext;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    .line 43
    return-void
.end method
