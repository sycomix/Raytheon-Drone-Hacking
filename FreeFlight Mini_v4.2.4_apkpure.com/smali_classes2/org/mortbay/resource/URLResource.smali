.class public Lorg/mortbay/resource/URLResource;
.super Lorg/mortbay/resource/Resource;
.source "URLResource.java"


# instance fields
.field protected transient _connection:Ljava/net/URLConnection;

.field protected transient _in:Ljava/io/InputStream;

.field protected _url:Ljava/net/URL;

.field protected _urlString:Ljava/lang/String;

.field transient _useCaches:Z


# direct methods
.method protected constructor <init>(Ljava/net/URL;Ljava/net/URLConnection;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "connection"    # Ljava/net/URLConnection;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/mortbay/resource/Resource;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/resource/URLResource;->_in:Ljava/io/InputStream;

    .line 42
    sget-boolean v0, Lorg/mortbay/resource/Resource;->__defaultUseCaches:Z

    iput-boolean v0, p0, Lorg/mortbay/resource/URLResource;->_useCaches:Z

    .line 47
    iput-object p1, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    .line 48
    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/resource/URLResource;->_urlString:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    .line 50
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/URLConnection;Z)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "connection"    # Ljava/net/URLConnection;
    .param p3, "useCaches"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/mortbay/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 55
    iput-boolean p3, p0, Lorg/mortbay/resource/URLResource;->_useCaches:Z

    .line 56
    return-void
.end method


# virtual methods
.method public addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 267
    :goto_0
    return-object v0

    .line 265
    :cond_0
    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 267
    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/resource/URLResource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    goto :goto_0
.end method

.method protected declared-synchronized checkConnection()Z
    .locals 3

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 64
    :try_start_1
    iget-object v1, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    .line 65
    iget-object v1, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    iget-boolean v2, p0, Lorg/mortbay/resource/URLResource;->_useCaches:Z

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 72
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public delete()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 285
    instance-of v0, p1, Lorg/mortbay/resource/URLResource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    check-cast p1, Lorg/mortbay/resource/URLResource;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 98
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/resource/URLResource;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/resource/URLResource;->_in:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/resource/URLResource;->_in:Ljava/io/InputStream;

    .line 102
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :goto_0
    iget-object v1, p0, Lorg/mortbay/resource/URLResource;->_in:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 102
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 104
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFile()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/mortbay/resource/URLResource;->checkConnection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v1

    .line 167
    .local v1, "perm":Ljava/security/Permission;
    instance-of v2, v1, Ljava/io/FilePermission;

    if-eqz v2, :cond_0

    .line 168
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .end local v1    # "perm":Ljava/security/Permission;
    :goto_0
    return-object v2

    .line 172
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 176
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/resource/URLResource;->checkConnection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid resource"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 200
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/mortbay/resource/URLResource;->_in:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 202
    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_in:Ljava/io/InputStream;

    .line 203
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/resource/URLResource;->_in:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 210
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "in":Ljava/io/InputStream;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 206
    :cond_1
    :try_start_3
    iget-object v1, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 210
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lorg/mortbay/resource/URLResource;->_useCaches:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/mortbay/resource/URLResource;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/mortbay/resource/URLResource;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    .line 131
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/mortbay/resource/URLResource;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    .line 143
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public list()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/resource/URLResource;->_in:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 82
    :try_start_1
    iget-object v1, p0, Lorg/mortbay/resource/URLResource;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lorg/mortbay/resource/URLResource;->_in:Ljava/io/InputStream;

    .line 86
    :cond_0
    iget-object v1, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    if-eqz v1, :cond_1

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :cond_1
    monitor-exit p0

    return-void

    .line 82
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 80
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public renameTo(Lorg/mortbay/resource/Resource;)Z
    .locals 2
    .param p1, "dest"    # Lorg/mortbay/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "RenameTo not supported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_urlString:Ljava/lang/String;

    return-object v0
.end method
