.class public Lorg/mortbay/jetty/deployer/FileConfigurationManager;
.super Ljava/lang/Object;
.source "FileConfigurationManager.java"

# interfaces
.implements Lorg/mortbay/jetty/deployer/ConfigurationManager;


# instance fields
.field private _file:Lorg/mortbay/resource/Resource;

.field private _properties:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/deployer/FileConfigurationManager;->_properties:Ljava/util/Properties;

    .line 38
    return-void
.end method

.method private loadProperties()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/FileConfigurationManager;->_properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/FileConfigurationManager;->_properties:Ljava/util/Properties;

    iget-object v1, p0, Lorg/mortbay/jetty/deployer/FileConfigurationManager;->_file:Lorg/mortbay/resource/Resource;

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public getProperties()Ljava/util/Map;
    .locals 2

    .prologue
    .line 55
    :try_start_0
    invoke-direct {p0}, Lorg/mortbay/jetty/deployer/FileConfigurationManager;->loadProperties()V

    .line 56
    iget-object v1, p0, Lorg/mortbay/jetty/deployer/FileConfigurationManager;->_properties:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/deployer/FileConfigurationManager;->_file:Lorg/mortbay/resource/Resource;

    .line 45
    return-void
.end method
