.class public Lorg/mortbay/jetty/deployer/WebAppDeployer;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "WebAppDeployer.java"


# static fields
.field static class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

.field static class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;


# instance fields
.field private _allowDuplicates:Z

.field private _configurationClasses:[Ljava/lang/String;

.field private _contexts:Lorg/mortbay/jetty/HandlerContainer;

.field private _defaultsDescriptor:Ljava/lang/String;

.field private _deployed:Ljava/util/ArrayList;

.field private _extract:Z

.field private _parentLoaderPriority:Z

.field private _webAppDir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 191
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


# virtual methods
.method public doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_deployed:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {p0}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->scan()V

    .line 141
    return-void
.end method

.method public doStop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v3, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_deployed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 258
    iget-object v3, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_deployed:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mortbay/jetty/handler/ContextHandler;

    .line 259
    .local v2, "wac":Lorg/mortbay/jetty/handler/ContextHandler;
    invoke-virtual {v2}, Lorg/mortbay/jetty/handler/ContextHandler;->stop()V

    move v1, v0

    .line 260
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 261
    .end local v1    # "i":I
    .end local v2    # "wac":Lorg/mortbay/jetty/handler/ContextHandler;
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getAllowDuplicates()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_allowDuplicates:Z

    return v0
.end method

.method public getConfigurationClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_configurationClasses:[Ljava/lang/String;

    return-object v0
.end method

.method public getContexts()Lorg/mortbay/jetty/HandlerContainer;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_contexts:Lorg/mortbay/jetty/HandlerContainer;

    return-object v0
.end method

.method public getDefaultsDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_defaultsDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getWebAppDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_webAppDir:Ljava/lang/String;

    return-object v0
.end method

.method public isExtract()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_extract:Z

    return v0
.end method

.method public isParentLoaderPriority()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_parentLoaderPriority:Z

    return v0
.end method

.method public scan()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 150
    iget-object v12, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_contexts:Lorg/mortbay/jetty/HandlerContainer;

    if-nez v12, :cond_0

    .line 151
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "No HandlerContainer"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 153
    :cond_0
    iget-object v12, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_webAppDir:Ljava/lang/String;

    invoke-static {v12}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v9

    .line 154
    .local v9, "r":Lorg/mortbay/resource/Resource;
    invoke-virtual {v9}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 155
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "No such webapps resource "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 157
    :cond_1
    invoke-virtual {v9}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_2

    .line 158
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Not directory webapps resource "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 160
    :cond_2
    invoke-virtual {v9}, Lorg/mortbay/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "files":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "f":I
    :goto_0
    if-eqz v5, :cond_14

    array-length v12, v5

    if-ge v4, v12, :cond_14

    .line 164
    aget-object v2, v5, v4

    .line 166
    .local v2, "context":Ljava/lang/String;
    const-string v12, "CVS/"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "CVS"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "."

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 162
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    :cond_4
    invoke-virtual {v9, v2}, Lorg/mortbay/resource/Resource;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 171
    .local v0, "app":Lorg/mortbay/resource/Resource;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".war"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".jar"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 173
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-virtual {v2, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {v9, v2}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v10

    .line 175
    .local v10, "unpacked":Lorg/mortbay/resource/Resource;
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v10}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_3

    .line 181
    .end local v10    # "unpacked":Lorg/mortbay/resource/Resource;
    :cond_6
    const-string v12, "root"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "root/"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 182
    :cond_7
    const-string v2, "/"

    .line 185
    :goto_2
    const-string v12, "/"

    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_8

    .line 186
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v2, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 189
    :cond_8
    iget-boolean v12, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_allowDuplicates:Z

    if-nez v12, :cond_f

    .line 191
    iget-object v13, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_contexts:Lorg/mortbay/jetty/HandlerContainer;

    sget-object v12, Lorg/mortbay/jetty/deployer/WebAppDeployer;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    if-nez v12, :cond_d

    const-string v12, "org.mortbay.jetty.handler.ContextHandler"

    invoke-static {v12}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lorg/mortbay/jetty/deployer/WebAppDeployer;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    :goto_3
    invoke-interface {v13, v12}, Lorg/mortbay/jetty/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;

    move-result-object v7

    .line 192
    .local v7, "installed":[Lorg/mortbay/jetty/Handler;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    array-length v12, v7

    if-ge v6, v12, :cond_f

    .line 194
    aget-object v1, v7, v6

    check-cast v1, Lorg/mortbay/jetty/handler/ContextHandler;

    .line 196
    .local v1, "c":Lorg/mortbay/jetty/handler/ContextHandler;
    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 201
    const/4 v8, 0x0

    .line 202
    .local v8, "path":Ljava/lang/String;
    :try_start_0
    instance-of v12, v1, Lorg/mortbay/jetty/webapp/WebAppContext;

    if-eqz v12, :cond_e

    .line 203
    check-cast v1, Lorg/mortbay/jetty/webapp/WebAppContext;

    .end local v1    # "c":Lorg/mortbay/jetty/handler/ContextHandler;
    invoke-virtual {v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWar()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v12

    invoke-virtual {v12}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 207
    :cond_9
    :goto_5
    if-eqz v8, :cond_a

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-nez v12, :cond_3

    .line 192
    :cond_a
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 178
    .end local v6    # "i":I
    .end local v7    # "installed":[Lorg/mortbay/jetty/Handler;
    .end local v8    # "path":Ljava/lang/String;
    :cond_b
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_6

    goto/16 :goto_1

    .line 184
    :cond_c
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 191
    :cond_d
    sget-object v12, Lorg/mortbay/jetty/deployer/WebAppDeployer;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    goto :goto_3

    .line 204
    .restart local v1    # "c":Lorg/mortbay/jetty/handler/ContextHandler;
    .restart local v6    # "i":I
    .restart local v7    # "installed":[Lorg/mortbay/jetty/Handler;
    .restart local v8    # "path":Ljava/lang/String;
    :cond_e
    :try_start_1
    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 205
    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v12

    invoke-virtual {v12}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_5

    .line 210
    .end local v1    # "c":Lorg/mortbay/jetty/handler/ContextHandler;
    :catch_0
    move-exception v3

    .line 212
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 218
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "i":I
    .end local v7    # "installed":[Lorg/mortbay/jetty/Handler;
    .end local v8    # "path":Ljava/lang/String;
    :cond_f
    const/4 v11, 0x0

    .line 219
    .local v11, "wah":Lorg/mortbay/jetty/webapp/WebAppContext;
    iget-object v12, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_contexts:Lorg/mortbay/jetty/HandlerContainer;

    instance-of v12, v12, Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    if-eqz v12, :cond_13

    sget-object v12, Lorg/mortbay/jetty/deployer/WebAppDeployer;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v12, :cond_12

    const-string v12, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v12}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lorg/mortbay/jetty/deployer/WebAppDeployer;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    move-object v13, v12

    :goto_7
    iget-object v12, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_contexts:Lorg/mortbay/jetty/HandlerContainer;

    check-cast v12, Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-virtual {v12}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->getContextClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 224
    :try_start_2
    iget-object v12, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_contexts:Lorg/mortbay/jetty/HandlerContainer;

    check-cast v12, Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-virtual {v12}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->getContextClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "wah":Lorg/mortbay/jetty/webapp/WebAppContext;
    check-cast v11, Lorg/mortbay/jetty/webapp/WebAppContext;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 237
    .restart local v11    # "wah":Lorg/mortbay/jetty/webapp/WebAppContext;
    :goto_8
    invoke-virtual {v11, v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->setContextPath(Ljava/lang/String;)V

    .line 238
    iget-object v12, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_configurationClasses:[Ljava/lang/String;

    if-eqz v12, :cond_10

    .line 239
    iget-object v12, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_configurationClasses:[Ljava/lang/String;

    invoke-virtual {v11, v12}, Lorg/mortbay/jetty/webapp/WebAppContext;->setConfigurationClasses([Ljava/lang/String;)V

    .line 240
    :cond_10
    iget-object v12, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_defaultsDescriptor:Ljava/lang/String;

    if-eqz v12, :cond_11

    .line 241
    iget-object v12, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_defaultsDescriptor:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lorg/mortbay/jetty/webapp/WebAppContext;->setDefaultsDescriptor(Ljava/lang/String;)V

    .line 242
    :cond_11
    iget-boolean v12, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_extract:Z

    invoke-virtual {v11, v12}, Lorg/mortbay/jetty/webapp/WebAppContext;->setExtractWAR(Z)V

    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/mortbay/jetty/webapp/WebAppContext;->setWar(Ljava/lang/String;)V

    .line 244
    iget-boolean v12, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_parentLoaderPriority:Z

    invoke-virtual {v11, v12}, Lorg/mortbay/jetty/webapp/WebAppContext;->setParentLoaderPriority(Z)V

    .line 246
    iget-object v12, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_contexts:Lorg/mortbay/jetty/HandlerContainer;

    invoke-interface {v12, v11}, Lorg/mortbay/jetty/HandlerContainer;->addHandler(Lorg/mortbay/jetty/Handler;)V

    .line 247
    iget-object v12, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_deployed:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v12, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_contexts:Lorg/mortbay/jetty/HandlerContainer;

    invoke-interface {v12}, Lorg/mortbay/jetty/HandlerContainer;->isStarted()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 250
    invoke-virtual {v11}, Lorg/mortbay/jetty/webapp/WebAppContext;->start()V

    goto/16 :goto_1

    .line 219
    :cond_12
    sget-object v12, Lorg/mortbay/jetty/deployer/WebAppDeployer;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    move-object v13, v12

    goto :goto_7

    .line 226
    .end local v11    # "wah":Lorg/mortbay/jetty/webapp/WebAppContext;
    :catch_1
    move-exception v3

    .line 228
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/Error;

    invoke-direct {v12, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 233
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v11    # "wah":Lorg/mortbay/jetty/webapp/WebAppContext;
    :cond_13
    new-instance v11, Lorg/mortbay/jetty/webapp/WebAppContext;

    .end local v11    # "wah":Lorg/mortbay/jetty/webapp/WebAppContext;
    invoke-direct {v11}, Lorg/mortbay/jetty/webapp/WebAppContext;-><init>()V

    .restart local v11    # "wah":Lorg/mortbay/jetty/webapp/WebAppContext;
    goto :goto_8

    .line 252
    .end local v0    # "app":Lorg/mortbay/resource/Resource;
    .end local v2    # "context":Ljava/lang/String;
    .end local v11    # "wah":Lorg/mortbay/jetty/webapp/WebAppContext;
    :cond_14
    return-void
.end method

.method public setAllowDuplicates(Z)V
    .locals 0
    .param p1, "allowDuplicates"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_allowDuplicates:Z

    .line 129
    return-void
.end method

.method public setConfigurationClasses([Ljava/lang/String;)V
    .locals 0
    .param p1, "configurationClasses"    # [Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_configurationClasses:[Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setContexts(Lorg/mortbay/jetty/HandlerContainer;)V
    .locals 0
    .param p1, "contexts"    # Lorg/mortbay/jetty/HandlerContainer;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_contexts:Lorg/mortbay/jetty/HandlerContainer;

    .line 75
    return-void
.end method

.method public setDefaultsDescriptor(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultsDescriptor"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_defaultsDescriptor:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setExtract(Z)V
    .locals 0
    .param p1, "extract"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_extract:Z

    .line 95
    return-void
.end method

.method public setParentLoaderPriority(Z)V
    .locals 0
    .param p1, "parentPriorityClassLoading"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_parentLoaderPriority:Z

    .line 105
    return-void
.end method

.method public setWebAppDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_webAppDir:Ljava/lang/String;

    .line 115
    return-void
.end method
