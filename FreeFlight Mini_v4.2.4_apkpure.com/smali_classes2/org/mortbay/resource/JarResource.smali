.class public Lorg/mortbay/resource/JarResource;
.super Lorg/mortbay/resource/URLResource;
.source "JarResource.java"


# instance fields
.field protected transient _jarConnection:Ljava/net/JarURLConnection;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mortbay/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 42
    return-void
.end method

.method constructor <init>(Ljava/net/URL;Z)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "useCaches"    # Z

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/mortbay/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Z)V

    .line 48
    return-void
.end method

.method public static extract(Lorg/mortbay/resource/Resource;Ljava/io/File;Z)V
    .locals 28
    .param p0, "resource"    # Lorg/mortbay/resource/Resource;
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "deleteOnExit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v24

    if-eqz v24, :cond_0

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "Extract "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, " to "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 127
    .local v23, "urlString":Ljava/lang/String;
    const-string v24, "!/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 128
    .local v7, "endOfJarUrl":I
    if-ltz v7, :cond_1

    const/16 v20, 0x4

    .line 130
    .local v20, "startOfJarUrl":I
    :goto_0
    if-gez v7, :cond_2

    .line 131
    new-instance v24, Ljava/io/IOException;

    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    const-string v26, "Not a valid jar url: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 128
    .end local v20    # "startOfJarUrl":I
    :cond_1
    const/16 v20, 0x0

    goto :goto_0

    .line 133
    .restart local v20    # "startOfJarUrl":I
    :cond_2
    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 134
    .local v15, "jarFileURL":Ljava/net/URL;
    add-int/lit8 v24, v7, 0x2

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    add-int/lit8 v24, v7, 0x2

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 135
    .local v22, "subEntryName":Ljava/lang/String;
    :goto_1
    if-eqz v22, :cond_6

    const-string v24, "/"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    const/16 v21, 0x1

    .line 137
    .local v21, "subEntryIsDir":Z
    :goto_2
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v24

    if-eqz v24, :cond_3

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "Extracting entry = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, " from jar "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 139
    :cond_3
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 140
    .local v14, "is":Ljava/io/InputStream;
    new-instance v16, Ljava/util/jar/JarInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 143
    .local v16, "jin":Ljava/util/jar/JarInputStream;
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "directoryCanonicalPath":Ljava/lang/String;
    :cond_4
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v8

    .local v8, "entry":Ljava/util/jar/JarEntry;
    if-eqz v8, :cond_10

    .line 146
    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, "entryName":Ljava/lang/String;
    if-eqz v22, :cond_9

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 151
    if-eqz v21, :cond_8

    .line 157
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 158
    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 161
    const/16 v19, 0x1

    .line 182
    .local v19, "shouldExtract":Z
    :goto_4
    if-nez v19, :cond_b

    .line 184
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v24

    if-eqz v24, :cond_4

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "Skipping entry: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 134
    .end local v5    # "directoryCanonicalPath":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/jar/JarEntry;
    .end local v9    # "entryName":Ljava/lang/String;
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v16    # "jin":Ljava/util/jar/JarInputStream;
    .end local v19    # "shouldExtract":Z
    .end local v21    # "subEntryIsDir":Z
    .end local v22    # "subEntryName":Ljava/lang/String;
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 135
    .restart local v22    # "subEntryName":Ljava/lang/String;
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 164
    .restart local v5    # "directoryCanonicalPath":Ljava/lang/String;
    .restart local v8    # "entry":Ljava/util/jar/JarEntry;
    .restart local v9    # "entryName":Ljava/lang/String;
    .restart local v14    # "is":Ljava/io/InputStream;
    .restart local v16    # "jin":Ljava/util/jar/JarInputStream;
    .restart local v21    # "subEntryIsDir":Z
    :cond_7
    const/16 v19, 0x0

    .restart local v19    # "shouldExtract":Z
    goto :goto_4

    .line 167
    .end local v19    # "shouldExtract":Z
    :cond_8
    const/16 v19, 0x1

    .restart local v19    # "shouldExtract":Z
    goto :goto_4

    .line 169
    .end local v19    # "shouldExtract":Z
    :cond_9
    if-eqz v22, :cond_a

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_a

    .line 173
    const/16 v19, 0x0

    .restart local v19    # "shouldExtract":Z
    goto :goto_4

    .line 178
    .end local v19    # "shouldExtract":Z
    :cond_a
    const/16 v19, 0x1

    .restart local v19    # "shouldExtract":Z
    goto :goto_4

    .line 188
    :cond_b
    const/16 v24, 0x5c

    const/16 v25, 0x2f

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, "dotCheck":Ljava/lang/String;
    invoke-static {v6}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 190
    if-nez v6, :cond_c

    .line 192
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v24

    if-eqz v24, :cond_4

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "Invalid entry: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 196
    :cond_c
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 201
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_d

    .line 202
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 227
    :cond_d
    :goto_5
    if-eqz p2, :cond_4

    .line 228
    invoke-virtual {v11}, Ljava/io/File;->deleteOnExit()V

    goto/16 :goto_3

    .line 207
    :cond_e
    new-instance v4, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_f

    .line 209
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 212
    :cond_f
    const/4 v12, 0x0

    .line 215
    .local v12, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v12    # "fout":Ljava/io/FileOutputStream;
    .local v13, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    invoke-static {v13}, Lorg/mortbay/util/IO;->close(Ljava/io/OutputStream;)V

    .line 224
    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-ltz v24, :cond_d

    .line 225
    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    goto :goto_5

    .line 220
    .end local v13    # "fout":Ljava/io/FileOutputStream;
    .restart local v12    # "fout":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v24

    :goto_6
    invoke-static {v12}, Lorg/mortbay/util/IO;->close(Ljava/io/OutputStream;)V

    throw v24

    .line 231
    .end local v4    # "dir":Ljava/io/File;
    .end local v6    # "dotCheck":Ljava/lang/String;
    .end local v9    # "entryName":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "fout":Ljava/io/FileOutputStream;
    .end local v19    # "shouldExtract":Z
    :cond_10
    if-eqz v22, :cond_11

    if-eqz v22, :cond_12

    const-string v24, "META-INF/MANIFEST.MF"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 233
    :cond_11
    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/JarInputStream;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v17

    .line 234
    .local v17, "manifest":Ljava/util/jar/Manifest;
    if-eqz v17, :cond_12

    .line 236
    new-instance v18, Ljava/io/File;

    const-string v24, "META-INF"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    .local v18, "metaInf":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 238
    new-instance v10, Ljava/io/File;

    const-string v24, "MANIFEST.MF"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    .local v10, "f":Ljava/io/File;
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 240
    .restart local v12    # "fout":Ljava/io/FileOutputStream;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    .line 241
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 244
    .end local v10    # "f":Ljava/io/File;
    .end local v12    # "fout":Ljava/io/FileOutputStream;
    .end local v17    # "manifest":Ljava/util/jar/Manifest;
    .end local v18    # "metaInf":Ljava/io/File;
    :cond_12
    invoke-static/range {v16 .. v16}, Lorg/mortbay/util/IO;->close(Ljava/io/InputStream;)V

    .line 245
    return-void

    .line 220
    .restart local v4    # "dir":Ljava/io/File;
    .restart local v6    # "dotCheck":Ljava/lang/String;
    .restart local v9    # "entryName":Ljava/lang/String;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v13    # "fout":Ljava/io/FileOutputStream;
    .restart local v19    # "shouldExtract":Z
    :catchall_1
    move-exception v24

    move-object v12, v13

    .end local v13    # "fout":Ljava/io/FileOutputStream;
    .restart local v12    # "fout":Ljava/io/FileOutputStream;
    goto :goto_6
.end method


# virtual methods
.method protected checkConnection()Z
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Lorg/mortbay/resource/URLResource;->checkConnection()Z

    .line 63
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    iget-object v2, p0, Lorg/mortbay/resource/JarResource;->_connection:Ljava/net/URLConnection;

    if-eq v1, v2, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/mortbay/resource/JarResource;->newConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/mortbay/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 66
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/mortbay/resource/JarResource;->_urlString:Ljava/lang/String;

    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/mortbay/resource/JarResource;->checkConnection()Z

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lorg/mortbay/resource/URLResource;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public extract(Ljava/io/File;Z)V
    .locals 0
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "deleteOnExit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p0, p1, p2}, Lorg/mortbay/resource/JarResource;->extract(Lorg/mortbay/resource/Resource;Ljava/io/File;Z)V

    .line 252
    return-void
.end method

.method public getFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/mortbay/resource/JarResource;->checkConnection()Z

    .line 108
    iget-object v2, p0, Lorg/mortbay/resource/JarResource;->_urlString:Ljava/lang/String;

    const-string v3, "!/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    new-instance v0, Lorg/mortbay/resource/JarResource$1;

    invoke-super {p0}, Lorg/mortbay/resource/URLResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/mortbay/resource/JarResource$1;-><init>(Lorg/mortbay/resource/JarResource;Ljava/io/InputStream;)V

    .line 116
    :goto_0
    return-object v0

    .line 114
    :cond_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lorg/mortbay/resource/JarResource;->_urlString:Ljava/lang/String;

    const/4 v3, 0x4

    iget-object v4, p0, Lorg/mortbay/resource/JarResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 116
    .local v0, "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method protected newConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lorg/mortbay/resource/JarResource;->_connection:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/JarURLConnection;

    iput-object v0, p0, Lorg/mortbay/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    .line 82
    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/mortbay/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    .line 54
    invoke-super {p0}, Lorg/mortbay/resource/URLResource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
