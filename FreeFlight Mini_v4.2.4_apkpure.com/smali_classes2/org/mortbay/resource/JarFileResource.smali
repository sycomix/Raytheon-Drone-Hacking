.class Lorg/mortbay/resource/JarFileResource;
.super Lorg/mortbay/resource/JarResource;
.source "JarFileResource.java"


# instance fields
.field transient _directory:Z

.field transient _entry:Ljava/util/jar/JarEntry;

.field transient _exists:Z

.field transient _file:Ljava/io/File;

.field transient _jarFile:Ljava/util/jar/JarFile;

.field transient _jarUrl:Ljava/lang/String;

.field transient _list:[Ljava/lang/String;

.field transient _path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/mortbay/resource/JarResource;-><init>(Ljava/net/URL;)V

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/net/URL;Z)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "useCaches"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/mortbay/resource/JarResource;-><init>(Ljava/net/URL;Z)V

    .line 50
    return-void
.end method

.method public static getNonCachingResource(Lorg/mortbay/resource/Resource;)Lorg/mortbay/resource/Resource;
    .locals 4
    .param p0, "resource"    # Lorg/mortbay/resource/Resource;

    .prologue
    .line 313
    instance-of v2, p0, Lorg/mortbay/resource/JarFileResource;

    if-nez v2, :cond_0

    .line 319
    .end local p0    # "resource":Lorg/mortbay/resource/Resource;
    :goto_0
    return-object p0

    .restart local p0    # "resource":Lorg/mortbay/resource/Resource;
    :cond_0
    move-object v1, p0

    .line 316
    check-cast v1, Lorg/mortbay/resource/JarFileResource;

    .line 318
    .local v1, "oldResource":Lorg/mortbay/resource/JarFileResource;
    new-instance v0, Lorg/mortbay/resource/JarFileResource;

    invoke-virtual {v1}, Lorg/mortbay/resource/JarFileResource;->getURL()Ljava/net/URL;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lorg/mortbay/resource/JarFileResource;-><init>(Ljava/net/URL;Z)V

    .local v0, "newResource":Lorg/mortbay/resource/JarFileResource;
    move-object p0, v0

    .line 319
    goto :goto_0
.end method


# virtual methods
.method protected checkConnection()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    :try_start_0
    invoke-super {p0}, Lorg/mortbay/resource/JarResource;->checkConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_jarConnection:Ljava/net/JarURLConnection;

    if-nez v0, :cond_0

    .line 73
    iput-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 74
    iput-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    .line 75
    iput-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 76
    iput-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 71
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_jarConnection:Ljava/net/JarURLConnection;

    if-nez v1, :cond_1

    .line 73
    iput-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 74
    iput-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    .line 75
    iput-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 76
    iput-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    .line 71
    :cond_1
    throw v0

    .line 79
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 301
    return-object p1
.end method

.method public exists()Z
    .locals 13

    .prologue
    const/16 v12, 0x2f

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 110
    iget-boolean v8, p0, Lorg/mortbay/resource/JarFileResource;->_exists:Z

    if-eqz v8, :cond_0

    .line 188
    :goto_0
    return v10

    .line 113
    :cond_0
    iget-object v8, p0, Lorg/mortbay/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const-string v11, "!/"

    invoke-virtual {v8, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 116
    iget-object v8, p0, Lorg/mortbay/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const/4 v10, 0x4

    iget-object v11, p0, Lorg/mortbay/resource/JarFileResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "file_url":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Lorg/mortbay/resource/JarFileResource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mortbay/resource/Resource;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    goto :goto_0

    .line 118
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    move v10, v9

    goto :goto_0

    .line 121
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "file_url":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->checkConnection()Z

    move-result v2

    .line 124
    .local v2, "check":Z
    iget-object v8, p0, Lorg/mortbay/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 127
    iput-boolean v2, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    goto :goto_0

    .line 133
    :cond_2
    const/4 v6, 0x0

    .line 134
    .local v6, "jarFile":Ljava/util/jar/JarFile;
    if-eqz v2, :cond_6

    .line 136
    iget-object v6, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 153
    :goto_1
    if-eqz v6, :cond_4

    iget-object v8, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    if-nez v8, :cond_4

    .line 156
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 157
    .local v3, "e":Ljava/util/Enumeration;
    :cond_3
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 159
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/JarEntry;

    .line 160
    .local v4, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x5c

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 163
    .local v7, "name":Ljava/lang/String;
    iget-object v8, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 165
    iput-object v4, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 167
    iget-object v8, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    .line 187
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v4    # "entry":Ljava/util/jar/JarEntry;
    .end local v7    # "name":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-boolean v8, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    if-nez v8, :cond_5

    iget-object v8, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    if-eqz v8, :cond_9

    :cond_5
    move v8, v10

    :goto_3
    iput-boolean v8, p0, Lorg/mortbay/resource/JarFileResource;->_exists:Z

    .line 188
    iget-boolean v10, p0, Lorg/mortbay/resource/JarFileResource;->_exists:Z

    goto/16 :goto_0

    .line 142
    :cond_6
    :try_start_1
    new-instance v8, Ljava/net/URL;

    iget-object v11, p0, Lorg/mortbay/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    invoke-direct {v8, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/JarURLConnection;

    move-object v0, v8

    check-cast v0, Ljava/net/JarURLConnection;

    move-object v1, v0

    .line 143
    .local v1, "c":Ljava/net/JarURLConnection;
    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->getUseCaches()Z

    move-result v8

    invoke-virtual {v1, v8}, Ljava/net/JarURLConnection;->setUseCaches(Z)V

    .line 144
    invoke-virtual {v1}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_1

    .line 146
    .end local v1    # "c":Ljava/net/JarURLConnection;
    :catch_1
    move-exception v3

    .line 148
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 170
    .local v3, "e":Ljava/util/Enumeration;
    .restart local v4    # "entry":Ljava/util/jar/JarEntry;
    .restart local v7    # "name":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 172
    iget-object v8, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 174
    iput-boolean v10, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    goto :goto_2

    .line 178
    :cond_8
    iget-object v8, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v11, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v8, v11, :cond_3

    iget-object v8, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v12, :cond_3

    .line 180
    iput-boolean v10, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    goto :goto_2

    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v4    # "entry":Ljava/util/jar/JarEntry;
    .end local v7    # "name":Ljava/lang/String;
    :cond_9
    move v8, v9

    .line 187
    goto :goto_3
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 211
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public length()J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 284
    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-wide v0

    .line 287
    :cond_1
    iget-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    if-eqz v2, :cond_0

    .line 288
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public declared-synchronized list()[Ljava/lang/String;
    .locals 13

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    if-nez v10, :cond_6

    .line 220
    new-instance v7, Ljava/util/ArrayList;

    const/16 v10, 0x20

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .local v7, "list":Ljava/util/ArrayList;
    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->checkConnection()Z

    .line 224
    iget-object v5, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .local v5, "jarFile":Ljava/util/jar/JarFile;
    if-nez v5, :cond_0

    .line 229
    :try_start_1
    new-instance v10, Ljava/net/URL;

    iget-object v11, p0, Lorg/mortbay/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/JarURLConnection;

    move-object v0, v10

    check-cast v0, Ljava/net/JarURLConnection;

    move-object v6, v0

    .line 230
    .local v6, "jc":Ljava/net/JarURLConnection;
    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->getUseCaches()Z

    move-result v10

    invoke-virtual {v6, v10}, Ljava/net/JarURLConnection;->setUseCaches(Z)V

    .line 231
    invoke-virtual {v6}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 239
    .end local v6    # "jc":Ljava/net/JarURLConnection;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 240
    .local v3, "e":Ljava/util/Enumeration;
    iget-object v10, p0, Lorg/mortbay/resource/JarFileResource;->_urlString:Ljava/lang/String;

    iget-object v11, p0, Lorg/mortbay/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const-string v12, "!/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "dir":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 244
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/JarEntry;

    .line 245
    .local v4, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x5c

    const/16 v12, 0x2f

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 246
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v10, v11, :cond_1

    .line 250
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 251
    .local v8, "listName":Ljava/lang/String;
    const/16 v10, 0x2f

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 252
    .local v1, "dash":I
    if-ltz v1, :cond_3

    .line 256
    if-nez v1, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    .line 260
    :cond_2
    if-nez v1, :cond_4

    .line 261
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 265
    :goto_2
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 269
    :cond_3
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 218
    .end local v1    # "dash":I
    .end local v2    # "dir":Ljava/lang/String;
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v4    # "entry":Ljava/util/jar/JarEntry;
    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .end local v7    # "list":Ljava/util/ArrayList;
    .end local v8    # "listName":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 233
    .restart local v5    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v7    # "list":Ljava/util/ArrayList;
    :catch_0
    move-exception v3

    .line 235
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v3}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 263
    .restart local v1    # "dash":I
    .restart local v2    # "dir":Ljava/lang/String;
    .local v3, "e":Ljava/util/Enumeration;
    .restart local v4    # "entry":Ljava/util/jar/JarEntry;
    .restart local v8    # "listName":Ljava/lang/String;
    .restart local v9    # "name":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 272
    .end local v1    # "dash":I
    .end local v4    # "entry":Ljava/util/jar/JarEntry;
    .end local v8    # "listName":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    .line 273
    iget-object v10, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 275
    .end local v2    # "dir":Ljava/lang/String;
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .end local v7    # "list":Ljava/util/ArrayList;
    :cond_6
    iget-object v10, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v10
.end method

.method protected newConnection()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-super {p0}, Lorg/mortbay/resource/JarResource;->newConnection()V

    .line 89
    iput-object v4, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 90
    iput-object v4, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    .line 91
    iput-object v4, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 92
    iput-object v4, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, "sep":I
    iget-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_urlString:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iput-object v4, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    .line 99
    :cond_0
    iget-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_jarConnection:Ljava/net/JarURLConnection;

    invoke-virtual {v1}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 100
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    .line 101
    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 60
    invoke-super {p0}, Lorg/mortbay/resource/JarResource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
