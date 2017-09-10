.class public Lorg/mortbay/jetty/webapp/WebAppClassLoader;
.super Ljava/net/URLClassLoader;
.source "WebAppClassLoader.java"


# static fields
.field static class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;


# instance fields
.field private _context:Lorg/mortbay/jetty/webapp/WebAppContext;

.field private _extensions:Ljava/util/HashSet;

.field private _name:Ljava/lang/String;

.field private _parent:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Lorg/mortbay/jetty/webapp/WebAppContext;)V
    .locals 4
    .param p1, "parent"    # Ljava/lang/ClassLoader;
    .param p2, "context"    # Lorg/mortbay/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/net/URL;

    if-eqz p1, :cond_0

    .end local p1    # "parent":Ljava/lang/ClassLoader;
    :goto_0
    invoke-direct {p0, v3, p1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    .line 78
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    .line 79
    iput-object p2, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    .line 80
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-nez v2, :cond_5

    .line 81
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no parent classloader!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    .restart local p1    # "parent":Ljava/lang/ClassLoader;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "org.mortbay.jetty.webapp.WebAppClassLoader"

    invoke-static {v2}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v2, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;

    if-nez v2, :cond_3

    const-string v2, "org.mortbay.jetty.webapp.WebAppClassLoader"

    invoke-static {v2}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;

    goto :goto_1

    :cond_3
    sget-object v2, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_0

    .line 83
    .end local p1    # "parent":Ljava/lang/ClassLoader;
    :cond_5
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_extensions:Ljava/util/HashSet;

    .line 84
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_extensions:Ljava/util/HashSet;

    const-string v3, ".jar"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_extensions:Ljava/util/HashSet;

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;

    if-nez v2, :cond_6

    const-string v2, "org.mortbay.jetty.webapp.WebAppClassLoader"

    invoke-static {v2}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".extensions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "extensions":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 90
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ",;"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    :goto_4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 92
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_extensions:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 87
    .end local v0    # "extensions":Ljava/lang/String;
    .end local v1    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_6
    sget-object v2, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;

    goto :goto_3

    .line 95
    .restart local v0    # "extensions":Ljava/lang/String;
    :cond_7
    invoke-virtual {p2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getExtraClasspath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 96
    invoke-virtual {p2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getExtraClasspath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->addClassPath(Ljava/lang/String;)V

    .line 97
    :cond_8
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/webapp/WebAppContext;)V
    .locals 1
    .param p1, "context"    # Lorg/mortbay/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;-><init>(Ljava/lang/ClassLoader;Lorg/mortbay/jetty/webapp/WebAppContext;)V

    .line 66
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 76
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

.method private isFileSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 203
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 204
    .local v0, "dot":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_extensions:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addClassPath(Ljava/lang/String;)V
    .locals 12
    .param p1, "classPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    if-nez p1, :cond_1

    .line 195
    :cond_0
    return-void

    .line 136
    :cond_1
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v10, ",;"

    invoke-direct {v8, p1, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v8, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 139
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v6

    .line 140
    .local v6, "resource":Lorg/mortbay/resource/Resource;
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 141
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Path resource="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 144
    :cond_2
    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    .line 145
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v9

    .line 148
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {p0, v9}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->addURL(Ljava/net/URL;)V

    goto :goto_0

    .line 153
    .end local v9    # "url":Ljava/net/URL;
    :cond_3
    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_7

    if-nez v0, :cond_7

    .line 155
    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 156
    .local v1, "in":Ljava/io/InputStream;
    iget-object v10, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v10}, Lorg/mortbay/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v7

    .line 157
    .local v7, "tmp_dir":Ljava/io/File;
    if-nez v7, :cond_4

    .line 159
    const-string v10, "jetty.cl.lib"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 160
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 161
    invoke-virtual {v7}, Ljava/io/File;->deleteOnExit()V

    .line 163
    :cond_4
    new-instance v3, Ljava/io/File;

    const-string v10, "lib"

    invoke-direct {v3, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    .local v3, "lib":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_5

    .line 166
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 167
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    .line 169
    :cond_5
    const-string v10, "Jetty-"

    const-string v11, ".jar"

    invoke-static {v10, v11, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 171
    .local v2, "jar":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    .line 172
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 173
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Extract "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 174
    :cond_6
    const/4 v4, 0x0

    .line 177
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {v1, v5}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    invoke-static {v5}, Lorg/mortbay/util/IO;->close(Ljava/io/OutputStream;)V

    .line 185
    invoke-virtual {v2}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v9

    .line 186
    .restart local v9    # "url":Ljava/net/URL;
    invoke-virtual {p0, v9}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->addURL(Ljava/net/URL;)V

    goto/16 :goto_0

    .line 182
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v10

    :goto_1
    invoke-static {v4}, Lorg/mortbay/util/IO;->close(Ljava/io/OutputStream;)V

    throw v10

    .line 190
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "jar":Ljava/io/File;
    .end local v3    # "lib":Ljava/io/File;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "tmp_dir":Ljava/io/File;
    :cond_7
    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v9

    .line 191
    .restart local v9    # "url":Ljava/net/URL;
    invoke-virtual {p0, v9}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->addURL(Ljava/net/URL;)V

    goto/16 :goto_0

    .line 182
    .end local v9    # "url":Ljava/net/URL;
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "jar":Ljava/io/File;
    .restart local v3    # "lib":Ljava/io/File;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "tmp_dir":Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public addJars(Lorg/mortbay/resource/Resource;)V
    .locals 8
    .param p1, "lib"    # Lorg/mortbay/resource/Resource;

    .prologue
    .line 217
    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 219
    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "files":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "f":I
    :goto_0
    if-eqz v2, :cond_1

    array-length v6, v2

    if-ge v1, v6, :cond_1

    .line 223
    :try_start_0
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v3

    .line 224
    .local v3, "fn":Lorg/mortbay/resource/Resource;
    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "fnlc":Ljava/lang/String;
    invoke-direct {p0, v4}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->isFileSupported(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 227
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, "jar":Ljava/lang/String;
    const-string v6, ","

    const-string v7, "%2C"

    invoke-static {v5, v6, v7}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 229
    const-string v6, ";"

    const-string v7, "%3B"

    invoke-static {v5, v6, v7}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 230
    invoke-virtual {p0, v5}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->addClassPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v3    # "fn":Lorg/mortbay/resource/Resource;
    .end local v4    # "fnlc":Ljava/lang/String;
    .end local v5    # "jar":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 235
    .local v0, "ex":Ljava/lang/Exception;
    const-string v6, "EXCEPTION "

    invoke-static {v6, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 239
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "f":I
    .end local v2    # "files":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    .line 244
    return-void
.end method

.method public getContext()Lorg/mortbay/jetty/handler/ContextHandler;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 3
    .param p1, "cs"    # Ljava/security/CodeSource;

    .prologue
    .line 251
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getPermissions()Ljava/security/PermissionCollection;

    move-result-object v1

    .line 252
    .local v1, "permissions":Ljava/security/PermissionCollection;
    if-nez v1, :cond_0

    invoke-super {p0, p1}, Ljava/net/URLClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v0

    .line 253
    .local v0, "pc":Ljava/security/PermissionCollection;
    :goto_0
    return-object v0

    .end local v0    # "pc":Ljava/security/PermissionCollection;
    :cond_0
    move-object v0, v1

    .line 252
    goto :goto_0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, "url":Ljava/net/URL;
    const/4 v0, 0x0

    .line 261
    .local v0, "tried_parent":Z
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->isParentLoaderPriority()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->isSystemPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    :cond_0
    const/4 v0, 0x1

    .line 265
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_1

    .line 266
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 269
    :cond_1
    if-nez v1, :cond_3

    .line 271
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 273
    if-nez v1, :cond_3

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 275
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "HACK leading / off "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 277
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 281
    :cond_3
    if-nez v1, :cond_4

    if-nez v0, :cond_4

    .line 283
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_4

    .line 284
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 287
    :cond_4
    if-eqz v1, :cond_5

    .line 288
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 289
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "getResource("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 291
    :cond_5
    return-object v1
.end method

.method public isServerPath(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 297
    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 298
    :goto_0
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 301
    :cond_0
    iget-object v4, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v4}, Lorg/mortbay/jetty/webapp/WebAppContext;->getServerClasses()[Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "server_classes":[Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 304
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 306
    const/4 v2, 0x1

    .line 307
    .local v2, "result":Z
    aget-object v0, v3, v1

    .line 308
    .local v0, "c":Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 310
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    const/4 v2, 0x0

    .line 314
    :cond_1
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 316
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 323
    .end local v0    # "c":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "result":Z
    :cond_2
    :goto_2
    return v2

    .line 319
    .restart local v0    # "c":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "result":Z
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 304
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 323
    .end local v0    # "c":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "result":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public isSystemPath(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 329
    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 330
    :goto_0
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 332
    :cond_0
    iget-object v4, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v4}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSystemClasses()[Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "system_classes":[Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 335
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 337
    const/4 v2, 0x1

    .line 338
    .local v2, "result":Z
    aget-object v0, v3, v1

    .line 340
    .local v0, "c":Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 342
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    const/4 v2, 0x0

    .line 346
    :cond_1
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 348
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 356
    .end local v0    # "c":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "result":Z
    :cond_2
    :goto_2
    return v2

    .line 351
    .restart local v0    # "c":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "result":Z
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 335
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 356
    .end local v0    # "c":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "result":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 369
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 370
    .local v0, "c":Ljava/lang/Class;
    const/4 v2, 0x0

    .line 371
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    const/4 v3, 0x0

    .line 373
    .local v3, "tried_parent":Z
    if-nez v0, :cond_1

    iget-object v4, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v4}, Lorg/mortbay/jetty/webapp/WebAppContext;->isParentLoaderPriority()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->isSystemPath(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 375
    :cond_0
    const/4 v3, 0x1

    .line 378
    :try_start_1
    iget-object v4, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 379
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 380
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "loaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 392
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 400
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    :try_start_3
    iget-object v4, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->isServerPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 401
    iget-object v4, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 403
    :cond_3
    if-nez v0, :cond_4

    .line 404
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 369
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v3    # "tried_parent":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 382
    .restart local v0    # "c":Ljava/lang/Class;
    .restart local v2    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "tried_parent":Z
    :catch_0
    move-exception v1

    .line 384
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v2, v1

    goto :goto_0

    .line 394
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 396
    .restart local v1    # "e":Ljava/lang/ClassNotFoundException;
    move-object v2, v1

    goto :goto_1

    .line 406
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_4
    if-eqz p2, :cond_5

    .line 407
    :try_start_4
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->resolveClass(Ljava/lang/Class;)V

    .line 409
    :cond_5
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 410
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "loaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 412
    :cond_6
    monitor-exit p0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_name:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ContextLoader@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ") / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ContextLoader@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
