.class public Lorg/mortbay/jetty/deployer/ContextDeployer;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "ContextDeployer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/deployer/ContextDeployer$ScannerListener;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "ConfiguredDeployer"


# instance fields
.field private _configMgr:Lorg/mortbay/jetty/deployer/ConfigurationManager;

.field private _configurationDir:Lorg/mortbay/resource/Resource;

.field private _contexts:Lorg/mortbay/jetty/handler/ContextHandlerCollection;

.field private _currentDeployments:Ljava/util/Map;

.field private _recursive:Z

.field private _scanInterval:I

.field private _scanner:Lorg/mortbay/util/Scanner;

.field private _scannerListener:Lorg/mortbay/jetty/deployer/ContextDeployer$ScannerListener;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 70
    const/16 v0, 0xa

    iput v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_scanInterval:I

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_currentDeployments:Ljava/util/Map;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_recursive:Z

    .line 124
    new-instance v0, Lorg/mortbay/util/Scanner;

    invoke-direct {v0}, Lorg/mortbay/util/Scanner;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_scanner:Lorg/mortbay/util/Scanner;

    .line 125
    return-void
.end method

.method static access$000(Lorg/mortbay/jetty/deployer/ContextDeployer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/jetty/deployer/ContextDeployer;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->deploy(Ljava/lang/String;)V

    return-void
.end method

.method static access$100(Lorg/mortbay/jetty/deployer/ContextDeployer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/jetty/deployer/ContextDeployer;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->redeploy(Ljava/lang/String;)V

    return-void
.end method

.method static access$200(Lorg/mortbay/jetty/deployer/ContextDeployer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/jetty/deployer/ContextDeployer;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->undeploy(Ljava/lang/String;)V

    return-void
.end method

.method private createContext(Ljava/lang/String;)Lorg/mortbay/jetty/handler/ContextHandler;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 358
    invoke-static {p1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v2

    .line 359
    .local v2, "resource":Lorg/mortbay/resource/Resource;
    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 360
    const/4 v0, 0x0

    .line 370
    :goto_0
    return-object v0

    .line 362
    :cond_0
    new-instance v3, Lorg/mortbay/xml/XmlConfiguration;

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/mortbay/xml/XmlConfiguration;-><init>(Ljava/net/URL;)V

    .line 363
    .local v3, "xmlConfiguration":Lorg/mortbay/xml/XmlConfiguration;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 364
    .local v1, "properties":Ljava/util/HashMap;
    const-string v4, "Server"

    iget-object v5, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_contexts:Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-virtual {v5}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v4, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_configMgr:Lorg/mortbay/jetty/deployer/ConfigurationManager;

    if-eqz v4, :cond_1

    .line 366
    iget-object v4, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_configMgr:Lorg/mortbay/jetty/deployer/ConfigurationManager;

    invoke-interface {v4}, Lorg/mortbay/jetty/deployer/ConfigurationManager;->getProperties()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 368
    :cond_1
    invoke-virtual {v3, v1}, Lorg/mortbay/xml/XmlConfiguration;->setProperties(Ljava/util/Map;)V

    .line 369
    invoke-virtual {v3}, Lorg/mortbay/xml/XmlConfiguration;->configure()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler;

    .line 370
    .local v0, "context":Lorg/mortbay/jetty/handler/ContextHandler;
    goto :goto_0
.end method

.method private deploy(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->createContext(Ljava/lang/String;)Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v0

    .line 264
    .local v0, "context":Lorg/mortbay/jetty/handler/ContextHandler;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Deploy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_contexts:Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->addHandler(Lorg/mortbay/jetty/Handler;)V

    .line 266
    iget-object v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_currentDeployments:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_contexts:Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->start()V

    .line 269
    :cond_0
    return-void
.end method

.method private redeploy(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->undeploy(Ljava/lang/String;)V

    .line 287
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->deploy(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method private undeploy(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_currentDeployments:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler;

    .line 275
    .local v0, "context":Lorg/mortbay/jetty/handler/ContextHandler;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Undeploy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    .line 276
    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->stop()V

    .line 279
    iget-object v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_contexts:Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->removeHandler(Lorg/mortbay/jetty/Handler;)V

    .line 280
    iget-object v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_currentDeployments:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_configurationDir:Lorg/mortbay/resource/Resource;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No configuraition dir specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_contexts:Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    if-nez v0, :cond_1

    .line 302
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No context handler collection specified for deployer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_scanner:Lorg/mortbay/util/Scanner;

    iget-object v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_configurationDir:Lorg/mortbay/resource/Resource;

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/util/Scanner;->setScanDir(Ljava/io/File;)V

    .line 305
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_scanner:Lorg/mortbay/util/Scanner;

    invoke-virtual {p0}, Lorg/mortbay/jetty/deployer/ContextDeployer;->getScanInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mortbay/util/Scanner;->setScanInterval(I)V

    .line 306
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_scanner:Lorg/mortbay/util/Scanner;

    iget-boolean v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_recursive:Z

    invoke-virtual {v0, v1}, Lorg/mortbay/util/Scanner;->setRecursive(Z)V

    .line 308
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_scanner:Lorg/mortbay/util/Scanner;

    new-instance v1, Lorg/mortbay/jetty/deployer/ContextDeployer$1;

    invoke-direct {v1, p0}, Lorg/mortbay/jetty/deployer/ContextDeployer$1;-><init>(Lorg/mortbay/jetty/deployer/ContextDeployer;)V

    invoke-virtual {v0, v1}, Lorg/mortbay/util/Scanner;->setFilenameFilter(Ljava/io/FilenameFilter;)V

    .line 325
    new-instance v0, Lorg/mortbay/jetty/deployer/ContextDeployer$ScannerListener;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/deployer/ContextDeployer$ScannerListener;-><init>(Lorg/mortbay/jetty/deployer/ContextDeployer;)V

    iput-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_scannerListener:Lorg/mortbay/jetty/deployer/ContextDeployer$ScannerListener;

    .line 326
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_scanner:Lorg/mortbay/util/Scanner;

    iget-object v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_scannerListener:Lorg/mortbay/jetty/deployer/ContextDeployer$ScannerListener;

    invoke-virtual {v0, v1}, Lorg/mortbay/util/Scanner;->addListener(Lorg/mortbay/util/Scanner$Listener;)V

    .line 327
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_scanner:Lorg/mortbay/util/Scanner;

    invoke-virtual {v0}, Lorg/mortbay/util/Scanner;->scan()V

    .line 328
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_scanner:Lorg/mortbay/util/Scanner;

    invoke-virtual {v0}, Lorg/mortbay/util/Scanner;->start()V

    .line 329
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_contexts:Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_scanner:Lorg/mortbay/util/Scanner;

    invoke-virtual {v0, v1}, Lorg/mortbay/component/Container;->addBean(Ljava/lang/Object;)V

    .line 330
    return-void
.end method

.method protected doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_scanner:Lorg/mortbay/util/Scanner;

    iget-object v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_scannerListener:Lorg/mortbay/jetty/deployer/ContextDeployer$ScannerListener;

    invoke-virtual {v0, v1}, Lorg/mortbay/util/Scanner;->removeListener(Lorg/mortbay/util/Scanner$Listener;)V

    .line 341
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_scanner:Lorg/mortbay/util/Scanner;

    invoke-virtual {v0}, Lorg/mortbay/util/Scanner;->stop()V

    .line 342
    return-void
.end method

.method public getConfigurationDir()Lorg/mortbay/resource/Resource;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_configurationDir:Lorg/mortbay/resource/Resource;

    return-object v0
.end method

.method public getConfigurationManager()Lorg/mortbay/jetty/deployer/ConfigurationManager;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_configMgr:Lorg/mortbay/jetty/deployer/ConfigurationManager;

    return-object v0
.end method

.method public getContexts()Lorg/mortbay/jetty/handler/ContextHandlerCollection;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_contexts:Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    return-object v0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lorg/mortbay/jetty/deployer/ContextDeployer;->getConfigurationDir()Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecursive()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_recursive:Z

    return v0
.end method

.method public getScanInterval()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_scanInterval:I

    return v0
.end method

.method public isRecursive()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_recursive:Z

    return v0
.end method

.method public setConfigurationDir(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p1}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/net/URL;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/deployer/ContextDeployer;->setConfigurationDir(Lorg/mortbay/resource/Resource;)V

    .line 187
    return-void
.end method

.method public setConfigurationDir(Ljava/lang/String;)V
    .locals 1
    .param p1, "dir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {p1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/deployer/ContextDeployer;->setConfigurationDir(Lorg/mortbay/resource/Resource;)V

    .line 177
    return-void
.end method

.method public setConfigurationDir(Lorg/mortbay/resource/Resource;)V
    .locals 2
    .param p1, "resource"    # Lorg/mortbay/resource/Resource;

    .prologue
    .line 195
    invoke-virtual {p0}, Lorg/mortbay/jetty/deployer/ContextDeployer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/deployer/ContextDeployer;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change hot deploy dir after deployer start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    iput-object p1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_configurationDir:Lorg/mortbay/resource/Resource;

    .line 198
    return-void
.end method

.method public setConfigurationManager(Lorg/mortbay/jetty/deployer/ConfigurationManager;)V
    .locals 0
    .param p1, "configMgr"    # Lorg/mortbay/jetty/deployer/ConfigurationManager;

    .prologue
    .line 233
    iput-object p1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_configMgr:Lorg/mortbay/jetty/deployer/ConfigurationManager;

    .line 234
    return-void
.end method

.method public setContexts(Lorg/mortbay/jetty/handler/ContextHandlerCollection;)V
    .locals 2
    .param p1, "contexts"    # Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/mortbay/jetty/deployer/ContextDeployer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/deployer/ContextDeployer;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set Contexts after deployer start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    iput-object p1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_contexts:Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    .line 148
    return-void
.end method

.method public setDirectory(Ljava/lang/String;)V
    .locals 0
    .param p1, "directory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->setConfigurationDir(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public setRecursive(Z)V
    .locals 0
    .param p1, "recursive"    # Z

    .prologue
    .line 248
    iput-boolean p1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_recursive:Z

    .line 249
    return-void
.end method

.method public setScanInterval(I)V
    .locals 2
    .param p1, "seconds"    # I

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/mortbay/jetty/deployer/ContextDeployer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/deployer/ContextDeployer;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change scan interval after deployer start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    iput p1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->_scanInterval:I

    .line 161
    return-void
.end method
