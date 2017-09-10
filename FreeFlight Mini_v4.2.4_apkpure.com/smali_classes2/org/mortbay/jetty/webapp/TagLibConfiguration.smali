.class public Lorg/mortbay/jetty/webapp/TagLibConfiguration;
.super Ljava/lang/Object;
.source "TagLibConfiguration.java"

# interfaces
.implements Lorg/mortbay/jetty/webapp/Configuration;


# static fields
.field static class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;


# instance fields
.field _context:Lorg/mortbay/jetty/webapp/WebAppContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 211
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
.method public configureClassLoader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
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
    .line 83
    return-void
.end method

.method public configureWebApp()V
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v29, Ljava/util/HashSet;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashSet;-><init>()V

    .line 93
    .local v29, "tlds":Ljava/util/Set;
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 99
    .local v14, "jars":Ljava/util/Set;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/mortbay/jetty/webapp/WebAppContext;->getResourceAliases()Ljava/util/Map;

    move-result-object v32

    if-eqz v32, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/mortbay/jetty/webapp/WebAppContext;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v32

    if-eqz v32, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/mortbay/jetty/webapp/WebAppContext;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v32

    if-eqz v32, :cond_2

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/mortbay/jetty/webapp/WebAppContext;->getResourceAliases()Ljava/util/Map;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 104
    .local v10, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_2

    .line 106
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 107
    .local v18, "location":Ljava/lang/String;
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    const-string v33, ".tld"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 109
    const-string v32, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_1

    .line 110
    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    const-string v33, "/WEB-INF/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    .line 111
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/mortbay/jetty/webapp/WebAppContext;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v15

    .line 112
    .local v15, "l":Lorg/mortbay/resource/Resource;
    move-object/from16 v0, v29

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    .end local v10    # "iter":Ljava/util/Iterator;
    .end local v15    # "l":Lorg/mortbay/resource/Resource;
    .end local v18    # "location":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWebInf()Lorg/mortbay/resource/Resource;

    move-result-object v31

    .line 119
    .local v31, "web_inf":Lorg/mortbay/resource/Resource;
    if-eqz v31, :cond_4

    .line 121
    invoke-virtual/range {v31 .. v31}, Lorg/mortbay/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "contents":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-eqz v5, :cond_4

    array-length v0, v5

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v9, v0, :cond_4

    .line 124
    aget-object v32, v5, v9

    if-eqz v32, :cond_3

    aget-object v32, v5, v9

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    const-string v33, ".tld"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWebInf()Lorg/mortbay/resource/Resource;

    move-result-object v32

    aget-object v33, v5, v9

    invoke-virtual/range {v32 .. v33}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v15

    .line 127
    .restart local v15    # "l":Lorg/mortbay/resource/Resource;
    move-object/from16 v0, v29

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v15    # "l":Lorg/mortbay/resource/Resource;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 134
    .end local v5    # "contents":[Ljava/lang/String;
    .end local v9    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    move-object/from16 v32, v0

    const-string v33, "org.mortbay.jetty.webapp.NoTLDJarPattern"

    invoke-virtual/range {v32 .. v33}, Lorg/mortbay/jetty/webapp/WebAppContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 135
    .local v20, "no_TLD_attr":Ljava/lang/String;
    if-nez v20, :cond_7

    const/16 v21, 0x0

    .line 139
    .local v21, "no_TLD_pattern":Ljava/util/regex/Pattern;
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    .line 140
    .local v17, "loader":Ljava/lang/ClassLoader;
    const/16 v24, 0x0

    .line 142
    .local v24, "parent":Z
    :goto_3
    if-eqz v17, :cond_d

    .line 144
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/net/URLClassLoader;

    move/from16 v32, v0

    if-eqz v32, :cond_c

    move-object/from16 v32, v17

    .line 146
    check-cast v32, Ljava/net/URLClassLoader;

    invoke-virtual/range {v32 .. v32}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v30

    .line 148
    .local v30, "urls":[Ljava/net/URL;
    if-eqz v30, :cond_c

    .line 150
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v9, v0, :cond_c

    .line 152
    aget-object v32, v30, v9

    invoke-virtual/range {v32 .. v32}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    const-string v33, ".jar"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 155
    aget-object v32, v30, v9

    invoke-virtual/range {v32 .. v32}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    .line 156
    .local v11, "jar":Ljava/lang/String;
    const/16 v32, 0x2f

    move/from16 v0, v32

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v27

    .line 157
    .local v27, "slash":I
    add-int/lit8 v32, v27, 0x1

    move/from16 v0, v32

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 159
    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/mortbay/jetty/webapp/WebAppContext;->isParentLoaderPriority()Z

    move-result v32

    if-nez v32, :cond_5

    invoke-interface {v14, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_6

    :cond_5
    if-eqz v21, :cond_8

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/regex/Matcher;->matches()Z

    move-result v32

    if-eqz v32, :cond_8

    .line 150
    .end local v11    # "jar":Ljava/lang/String;
    .end local v27    # "slash":I
    :cond_6
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 135
    .end local v9    # "i":I
    .end local v17    # "loader":Ljava/lang/ClassLoader;
    .end local v21    # "no_TLD_pattern":Ljava/util/regex/Pattern;
    .end local v24    # "parent":Z
    .end local v30    # "urls":[Ljava/net/URL;
    :cond_7
    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v21

    goto :goto_2

    .line 163
    .restart local v9    # "i":I
    .restart local v11    # "jar":Ljava/lang/String;
    .restart local v17    # "loader":Ljava/lang/ClassLoader;
    .restart local v21    # "no_TLD_pattern":Ljava/util/regex/Pattern;
    .restart local v24    # "parent":Z
    .restart local v27    # "slash":I
    .restart local v30    # "urls":[Ljava/net/URL;
    :cond_8
    invoke-interface {v14, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v32, "TLD search of {}"

    aget-object v33, v30, v9

    invoke-static/range {v32 .. v33}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    aget-object v32, v30, v9

    invoke-static/range {v32 .. v32}, Lorg/mortbay/resource/Resource;->newResource(Ljava/net/URL;)Lorg/mortbay/resource/Resource;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v8

    .line 168
    .local v8, "file":Ljava/io/File;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v32

    if-eqz v32, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v32

    if-eqz v32, :cond_6

    .line 171
    const/4 v12, 0x0

    .line 174
    .local v12, "jarfile":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v13, Ljava/util/jar/JarFile;

    invoke-direct {v13, v8}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v12    # "jarfile":Ljava/util/jar/JarFile;
    .local v13, "jarfile":Ljava/util/jar/JarFile;
    :try_start_1
    invoke-virtual {v13}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 176
    .local v6, "e":Ljava/util/Enumeration;
    :cond_9
    :goto_6
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v32

    if-eqz v32, :cond_a

    .line 178
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 179
    .local v7, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v19

    .line 180
    .local v19, "name":Ljava/lang/String;
    const-string v32, "META-INF/"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    const-string v33, ".tld"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 182
    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    const-string v33, "jar:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    aget-object v33, v30, v9

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v32

    const-string v33, "!/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v28

    .line 183
    .local v28, "tld":Lorg/mortbay/resource/Resource;
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    const-string v32, "TLD found {}"

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    .line 188
    .end local v6    # "e":Ljava/util/Enumeration;
    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    .end local v19    # "name":Ljava/lang/String;
    .end local v28    # "tld":Lorg/mortbay/resource/Resource;
    :catch_0
    move-exception v6

    move-object v12, v13

    .line 190
    .end local v13    # "jarfile":Ljava/util/jar/JarFile;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v12    # "jarfile":Ljava/util/jar/JarFile;
    :goto_7
    :try_start_2
    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    const-string v33, "Failed to read file: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v0, v6}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    if-eqz v12, :cond_6

    .line 196
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    goto/16 :goto_5

    .line 194
    .end local v12    # "jarfile":Ljava/util/jar/JarFile;
    .local v6, "e":Ljava/util/Enumeration;
    .restart local v13    # "jarfile":Ljava/util/jar/JarFile;
    :cond_a
    if-eqz v13, :cond_6

    .line 196
    invoke-virtual {v13}, Ljava/util/jar/JarFile;->close()V

    goto/16 :goto_5

    .line 194
    .end local v6    # "e":Ljava/util/Enumeration;
    .end local v13    # "jarfile":Ljava/util/jar/JarFile;
    .restart local v12    # "jarfile":Ljava/util/jar/JarFile;
    :catchall_0
    move-exception v32

    :goto_8
    if-eqz v12, :cond_b

    .line 196
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    :cond_b
    throw v32

    .line 204
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "i":I
    .end local v11    # "jar":Ljava/lang/String;
    .end local v12    # "jarfile":Ljava/util/jar/JarFile;
    .end local v27    # "slash":I
    .end local v30    # "urls":[Ljava/net/URL;
    :cond_c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v17

    .line 205
    const/16 v24, 0x1

    goto/16 :goto_3

    .line 210
    :cond_d
    new-instance v25, Lorg/mortbay/xml/XmlParser;

    const/16 v32, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/mortbay/xml/XmlParser;-><init>(Z)V

    .line 211
    .local v25, "parser":Lorg/mortbay/xml/XmlParser;
    const-string v33, "web-jsptaglib_1_1.dtd"

    sget-object v32, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    if-nez v32, :cond_10

    const-string v32, "org.mortbay.jetty.webapp.TagLibConfiguration"

    invoke-static/range {v32 .. v32}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v32

    sput-object v32, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    :goto_9
    const-string v34, "javax/servlet/jsp/resources/web-jsptaglibrary_1_1.dtd"

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 212
    const-string v33, "web-jsptaglib_1_2.dtd"

    sget-object v32, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    if-nez v32, :cond_11

    const-string v32, "org.mortbay.jetty.webapp.TagLibConfiguration"

    invoke-static/range {v32 .. v32}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v32

    sput-object v32, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    :goto_a
    const-string v34, "javax/servlet/jsp/resources/web-jsptaglibrary_1_2.dtd"

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 213
    const-string v33, "web-jsptaglib_2_0.xsd"

    sget-object v32, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    if-nez v32, :cond_12

    const-string v32, "org.mortbay.jetty.webapp.TagLibConfiguration"

    invoke-static/range {v32 .. v32}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v32

    sput-object v32, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    :goto_b
    const-string v34, "javax/servlet/jsp/resources/web-jsptaglibrary_2_0.xsd"

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 214
    const-string v33, "web-jsptaglibrary_1_1.dtd"

    sget-object v32, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    if-nez v32, :cond_13

    const-string v32, "org.mortbay.jetty.webapp.TagLibConfiguration"

    invoke-static/range {v32 .. v32}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v32

    sput-object v32, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    :goto_c
    const-string v34, "javax/servlet/jsp/resources/web-jsptaglibrary_1_1.dtd"

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 215
    const-string v33, "web-jsptaglibrary_1_2.dtd"

    sget-object v32, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    if-nez v32, :cond_14

    const-string v32, "org.mortbay.jetty.webapp.TagLibConfiguration"

    invoke-static/range {v32 .. v32}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v32

    sput-object v32, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    :goto_d
    const-string v34, "javax/servlet/jsp/resources/web-jsptaglibrary_1_2.dtd"

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 216
    const-string v33, "web-jsptaglibrary_2_0.xsd"

    sget-object v32, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    if-nez v32, :cond_15

    const-string v32, "org.mortbay.jetty.webapp.TagLibConfiguration"

    invoke-static/range {v32 .. v32}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v32

    sput-object v32, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    :goto_e
    const-string v34, "javax/servlet/jsp/resources/web-jsptaglibrary_2_0.xsd"

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 217
    const-string v32, "/taglib/listener/listener-class"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser;->setXpath(Ljava/lang/String;)V

    .line 219
    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 220
    .restart local v10    # "iter":Ljava/util/Iterator;
    :cond_e
    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_19

    .line 224
    :try_start_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/mortbay/resource/Resource;

    .line 225
    .restart local v28    # "tld":Lorg/mortbay/resource/Resource;
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v32

    if-eqz v32, :cond_f

    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    const-string v33, "TLD="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 234
    :cond_f
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser;->parse(Ljava/io/InputStream;)Lorg/mortbay/xml/XmlParser$Node;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v26

    .line 241
    .local v26, "root":Lorg/mortbay/xml/XmlParser$Node;
    :goto_10
    if-nez v26, :cond_16

    .line 243
    :try_start_5
    const-string v32, "No TLD root in {}"

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_f

    .line 278
    .end local v26    # "root":Lorg/mortbay/xml/XmlParser$Node;
    .end local v28    # "tld":Lorg/mortbay/resource/Resource;
    :catch_1
    move-exception v6

    .line 280
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_f

    .line 211
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "iter":Ljava/util/Iterator;
    :cond_10
    sget-object v32, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    goto/16 :goto_9

    .line 212
    :cond_11
    sget-object v32, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    goto/16 :goto_a

    .line 213
    :cond_12
    sget-object v32, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    goto/16 :goto_b

    .line 214
    :cond_13
    sget-object v32, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    goto/16 :goto_c

    .line 215
    :cond_14
    sget-object v32, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    goto/16 :goto_d

    .line 216
    :cond_15
    sget-object v32, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    goto/16 :goto_e

    .line 236
    .restart local v10    # "iter":Ljava/util/Iterator;
    .restart local v28    # "tld":Lorg/mortbay/resource/Resource;
    :catch_2
    move-exception v6

    .line 238
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {v28 .. v28}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser;->parse(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v26

    .restart local v26    # "root":Lorg/mortbay/xml/XmlParser$Node;
    goto :goto_10

    .line 247
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_16
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_11
    invoke-virtual/range {v26 .. v26}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v9, v0, :cond_e

    .line 249
    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v23

    .line 250
    .local v23, "o":Ljava/lang/Object;
    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/mortbay/xml/XmlParser$Node;

    move/from16 v32, v0

    if-eqz v32, :cond_18

    .line 252
    move-object/from16 v0, v23

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    move-object/from16 v22, v0

    .line 253
    .local v22, "node":Lorg/mortbay/xml/XmlParser$Node;
    const-string v32, "listener"

    invoke-virtual/range {v22 .. v22}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_18

    .line 255
    const-string v32, "listener-class"

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "className":Ljava/lang/String;
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v32

    if-eqz v32, :cond_17

    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    const-string v33, "listener="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 260
    :cond_17
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/webapp/WebAppContext;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    .line 261
    .local v16, "listenerClass":Ljava/lang/Class;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/EventListener;

    .line 262
    .local v15, "l":Ljava/util/EventListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Lorg/mortbay/jetty/webapp/WebAppContext;->addEventListener(Ljava/util/EventListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_4

    .line 247
    .end local v4    # "className":Ljava/lang/String;
    .end local v15    # "l":Ljava/util/EventListener;
    .end local v16    # "listenerClass":Ljava/lang/Class;
    .end local v22    # "node":Lorg/mortbay/xml/XmlParser$Node;
    :cond_18
    :goto_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 264
    .restart local v4    # "className":Ljava/lang/String;
    .restart local v22    # "node":Lorg/mortbay/xml/XmlParser$Node;
    :catch_3
    move-exception v6

    .line 266
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    const-string v33, "Could not instantiate listener "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    const-string v33, ": "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 267
    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    goto :goto_12

    .line 269
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v6

    .line 271
    .local v6, "e":Ljava/lang/Error;
    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    const-string v33, "Could not instantiate listener "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    const-string v33, ": "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 272
    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_12

    .line 283
    .end local v4    # "className":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Error;
    .end local v9    # "i":I
    .end local v22    # "node":Lorg/mortbay/xml/XmlParser$Node;
    .end local v23    # "o":Ljava/lang/Object;
    .end local v26    # "root":Lorg/mortbay/xml/XmlParser$Node;
    .end local v28    # "tld":Lorg/mortbay/resource/Resource;
    :cond_19
    return-void

    .line 194
    .end local v10    # "iter":Ljava/util/Iterator;
    .end local v25    # "parser":Lorg/mortbay/xml/XmlParser;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "i":I
    .restart local v11    # "jar":Ljava/lang/String;
    .restart local v13    # "jarfile":Ljava/util/jar/JarFile;
    .restart local v27    # "slash":I
    .restart local v30    # "urls":[Ljava/net/URL;
    :catchall_1
    move-exception v32

    move-object v12, v13

    .end local v13    # "jarfile":Ljava/util/jar/JarFile;
    .restart local v12    # "jarfile":Ljava/util/jar/JarFile;
    goto/16 :goto_8

    .line 188
    :catch_5
    move-exception v6

    goto/16 :goto_7
.end method

.method public deconfigureWebApp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 288
    return-void
.end method

.method public getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    return-object v0
.end method

.method public setWebAppContext(Lorg/mortbay/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p1, "context"    # Lorg/mortbay/jetty/webapp/WebAppContext;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    .line 64
    return-void
.end method
