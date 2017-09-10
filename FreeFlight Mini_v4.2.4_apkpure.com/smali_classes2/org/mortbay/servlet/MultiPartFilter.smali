.class public Lorg/mortbay/servlet/MultiPartFilter;
.super Ljava/lang/Object;
.source "MultiPartFilter.java"

# interfaces
.implements Ljavax/servlet/Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/servlet/MultiPartFilter$Wrapper;
    }
.end annotation


# static fields
.field private static final FILES:Ljava/lang/String; = "org.mortbay.servlet.MultiPartFilter.files"


# instance fields
.field private _context:Ljavax/servlet/ServletContext;

.field private _deleteFiles:Z

.field private _fileOutputBuffer:I

.field private tempdir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/servlet/MultiPartFilter;->_fileOutputBuffer:I

    .line 356
    return-void
.end method

.method private deleteFiles(Ljavax/servlet/ServletRequest;)V
    .locals 7
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 310
    const-string v4, "org.mortbay.servlet.MultiPartFilter.files"

    invoke-interface {p1, v4}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 311
    .local v2, "files":Ljava/util/ArrayList;
    if-eqz v2, :cond_0

    .line 313
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 314
    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 316
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 319
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/mortbay/servlet/MultiPartFilter;->_context:Ljavax/servlet/ServletContext;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "failed to delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "iter":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private value(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "nameEqualsValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 331
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "value":Ljava/lang/String;
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 333
    .local v0, "i":I
    if-lez v0, :cond_0

    .line 334
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 335
    :cond_0
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    const/16 v2, 0x22

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 345
    :cond_1
    :goto_0
    return-object v1

    .line 341
    :cond_2
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 342
    if-lez v0, :cond_1

    .line 343
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 35
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "chain"    # Ljavax/servlet/FilterChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 92
    move-object/from16 v26, p1

    check-cast v26, Ljavax/servlet/http/HttpServletRequest;

    .line 93
    .local v26, "srequest":Ljavax/servlet/http/HttpServletRequest;
    invoke-interface/range {v26 .. v26}, Ljavax/servlet/http/HttpServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_0

    invoke-interface/range {v26 .. v26}, Ljavax/servlet/http/HttpServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v32

    const-string v33, "multipart/form-data"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_1

    .line 95
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 306
    :goto_0
    return-void

    .line 99
    :cond_1
    new-instance v17, Ljava/io/BufferedInputStream;

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v32

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 100
    .local v17, "in":Ljava/io/BufferedInputStream;
    invoke-interface/range {v26 .. v26}, Ljavax/servlet/http/HttpServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v9

    .line 104
    .local v9, "content_type":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    const-string v33, "--"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    const-string v33, "boundary="

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/mortbay/servlet/MultiPartFilter;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "boundary":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    const-string v33, "--"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    sget-object v33, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 107
    .local v5, "byteBoundary":[B
    new-instance v25, Lorg/mortbay/util/MultiMap;

    invoke-direct/range {v25 .. v25}, Lorg/mortbay/util/MultiMap;-><init>()V

    .line 108
    .local v25, "params":Lorg/mortbay/util/MultiMap;
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRequest;->getParameterMap()Ljava/util/Map;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_3

    .line 110
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 111
    .local v11, "entry":Ljava/util/Map$Entry;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v31

    .line 112
    .local v31, "value":Ljava/lang/Object;
    move-object/from16 v0, v31

    instance-of v0, v0, [Ljava/lang/String;

    move/from16 v32, v0

    if-eqz v32, :cond_2

    .line 113
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v31, [Ljava/lang/String;

    .end local v31    # "value":Ljava/lang/Object;
    check-cast v31, [Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/MultiMap;->addValues(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_1

    .line 115
    .restart local v31    # "value":Ljava/lang/Object;
    :cond_2
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 121
    .end local v11    # "entry":Ljava/util/Map$Entry;
    .end local v31    # "value":Ljava/lang/Object;
    :cond_3
    :try_start_0
    invoke-static/range {v17 .. v17}, Lorg/mortbay/util/TypeUtil;->readLine(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 122
    .local v6, "bytes":[B
    if-nez v6, :cond_5

    const/16 v21, 0x0

    .line 123
    .local v21, "line":Ljava/lang/String;
    :goto_2
    if-eqz v21, :cond_4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_6

    .line 125
    :cond_4
    new-instance v32, Ljava/io/IOException;

    const-string v33, "Missing initial multi part boundary"

    invoke-direct/range {v32 .. v33}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v32
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    .end local v6    # "bytes":[B
    .end local v21    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v32

    invoke-direct/range {p0 .. p1}, Lorg/mortbay/servlet/MultiPartFilter;->deleteFiles(Ljavax/servlet/ServletRequest;)V

    throw v32

    .line 122
    .restart local v6    # "bytes":[B
    :cond_5
    :try_start_1
    new-instance v21, Ljava/lang/String;

    const-string v32, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-direct {v0, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_2

    .line 129
    .restart local v21    # "line":Ljava/lang/String;
    :cond_6
    const/16 v19, 0x0

    .line 130
    .local v19, "lastPart":Z
    const/4 v8, 0x0

    .line 131
    .local v8, "content_disposition":Ljava/lang/String;
    :cond_7
    :goto_3
    if-nez v19, :cond_9

    .line 135
    :cond_8
    :goto_4
    invoke-static/range {v17 .. v17}, Lorg/mortbay/util/TypeUtil;->readLine(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 137
    if-nez v6, :cond_a

    .line 300
    :cond_9
    new-instance v32, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;-><init>(Ljavax/servlet/http/HttpServletRequest;Lorg/mortbay/util/MultiMap;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    invoke-direct/range {p0 .. p1}, Lorg/mortbay/servlet/MultiPartFilter;->deleteFiles(Ljavax/servlet/ServletRequest;)V

    goto/16 :goto_0

    .line 139
    :cond_a
    :try_start_2
    array-length v0, v6

    move/from16 v32, v0

    if-nez v32, :cond_b

    .line 154
    const/4 v15, 0x0

    .line 155
    .local v15, "form_data":Z
    if-nez v8, :cond_c

    .line 157
    new-instance v32, Ljava/io/IOException;

    const-string v33, "Missing content-disposition"

    invoke-direct/range {v32 .. v33}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 141
    .end local v15    # "form_data":Z
    :cond_b
    new-instance v21, Ljava/lang/String;

    .end local v21    # "line":Ljava/lang/String;
    const-string v32, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-direct {v0, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 144
    .restart local v21    # "line":Ljava/lang/String;
    const/16 v32, 0x3a

    const/16 v33, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 145
    .local v7, "c":I
    if-lez v7, :cond_8

    .line 147
    const/16 v32, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 148
    .local v18, "key":Ljava/lang/String;
    add-int/lit8 v32, v7, 0x1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v33

    move-object/from16 v0, v21

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    .line 149
    .local v31, "value":Ljava/lang/String;
    const-string v32, "content-disposition"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 150
    move-object/from16 v8, v31

    goto :goto_4

    .line 160
    .end local v7    # "c":I
    .end local v18    # "key":Ljava/lang/String;
    .end local v31    # "value":Ljava/lang/String;
    .restart local v15    # "form_data":Z
    :cond_c
    new-instance v30, Ljava/util/StringTokenizer;

    const-string v32, ";"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-direct {v0, v8, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v30, "tok":Ljava/util/StringTokenizer;
    const/16 v22, 0x0

    .line 162
    .local v22, "name":Ljava/lang/String;
    const/4 v13, 0x0

    .line 163
    .local v13, "filename":Ljava/lang/String;
    :cond_d
    :goto_5
    invoke-virtual/range {v30 .. v30}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v32

    if-eqz v32, :cond_10

    .line 165
    invoke-virtual/range {v30 .. v30}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 166
    .local v28, "t":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    .line 167
    .local v29, "tl":Ljava/lang/String;
    const-string v32, "form-data"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_e

    .line 168
    const/4 v15, 0x1

    goto :goto_5

    .line 169
    :cond_e
    const-string v32, "name="

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 170
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/mortbay/servlet/MultiPartFilter;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto :goto_5

    .line 171
    :cond_f
    const-string v32, "filename="

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 172
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/mortbay/servlet/MultiPartFilter;->value(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    goto :goto_5

    .line 176
    .end local v28    # "t":Ljava/lang/String;
    .end local v29    # "tl":Ljava/lang/String;
    :cond_10
    if-eqz v15, :cond_7

    .line 186
    if-eqz v22, :cond_7

    .line 191
    const/16 v23, 0x0

    .line 192
    .local v23, "out":Ljava/io/OutputStream;
    const/4 v12, 0x0

    .line 195
    .local v12, "file":Ljava/io/File;
    if-eqz v13, :cond_1e

    :try_start_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_1e

    .line 197
    const-string v32, "MultiPart"

    const-string v33, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/servlet/MultiPartFilter;->tempdir:Ljava/io/File;

    move-object/from16 v34, v0

    invoke-static/range {v32 .. v34}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v12

    .line 198
    new-instance v24, Ljava/io/FileOutputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 199
    .end local v23    # "out":Ljava/io/OutputStream;
    .local v24, "out":Ljava/io/OutputStream;
    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/servlet/MultiPartFilter;->_fileOutputBuffer:I

    move/from16 v32, v0

    if-lez v32, :cond_2b

    .line 200
    new-instance v23, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/servlet/MultiPartFilter;->_fileOutputBuffer:I

    move/from16 v32, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 201
    .end local v24    # "out":Ljava/io/OutputStream;
    .restart local v23    # "out":Ljava/io/OutputStream;
    :goto_6
    :try_start_5
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v12}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mortbay/servlet/MultiPartFilter;->_deleteFiles:Z

    move/from16 v32, v0

    if-eqz v32, :cond_12

    .line 206
    invoke-virtual {v12}, Ljava/io/File;->deleteOnExit()V

    .line 207
    const-string v32, "org.mortbay.servlet.MultiPartFilter.files"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 208
    .local v14, "files":Ljava/util/ArrayList;
    if-nez v14, :cond_11

    .line 210
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "files":Ljava/util/ArrayList;
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .restart local v14    # "files":Ljava/util/ArrayList;
    const-string v32, "org.mortbay.servlet.MultiPartFilter.files"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v14}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    :cond_11
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v14    # "files":Ljava/util/ArrayList;
    :cond_12
    :goto_7
    const/16 v27, -0x2

    .line 222
    .local v27, "state":I
    const/4 v10, 0x0

    .line 223
    .local v10, "cr":Z
    const/16 v20, 0x0

    .line 228
    .local v20, "lf":Z
    :cond_13
    :goto_8
    const/4 v3, 0x0

    .line 229
    .end local v10    # "cr":Z
    .local v3, "b":I
    :goto_9
    const/16 v32, -0x2

    move/from16 v0, v27

    move/from16 v1, v32

    if-eq v0, v1, :cond_1f

    move/from16 v7, v27

    .restart local v7    # "c":I
    :goto_a
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v7, v0, :cond_15

    .line 231
    const/16 v27, -0x2

    .line 233
    const/16 v32, 0xd

    move/from16 v0, v32

    if-eq v7, v0, :cond_14

    const/16 v32, 0xa

    move/from16 v0, v32

    if-ne v7, v0, :cond_20

    .line 235
    :cond_14
    const/16 v32, 0xd

    move/from16 v0, v32

    if-ne v7, v0, :cond_15

    .line 236
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedInputStream;->read()I

    move-result v27

    .line 257
    :cond_15
    if-lez v3, :cond_16

    array-length v0, v5

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x2

    move/from16 v0, v32

    if-lt v3, v0, :cond_17

    :cond_16
    array-length v0, v5

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    move/from16 v0, v32

    if-ne v3, v0, :cond_1a

    .line 259
    :cond_17
    if-eqz v10, :cond_18

    .line 260
    const/16 v32, 0xd

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 261
    :cond_18
    if-eqz v20, :cond_19

    .line 262
    const/16 v32, 0xa

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 263
    :cond_19
    const/16 v20, 0x0

    move/from16 v10, v20

    .line 264
    .local v10, "cr":I
    const/16 v32, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v5, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 265
    const/4 v3, -0x1

    .line 268
    .end local v10    # "cr":I
    :cond_1a
    if-gtz v3, :cond_1b

    const/16 v32, -0x1

    move/from16 v0, v32

    if-ne v7, v0, :cond_25

    .line 270
    :cond_1b
    array-length v0, v5

    move/from16 v32, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v0, v32

    if-ne v3, v0, :cond_1c

    .line 271
    const/16 v19, 0x1

    .line 272
    :cond_1c
    const/16 v32, 0xa

    move/from16 v0, v27

    move/from16 v1, v32

    if-ne v0, v1, :cond_1d

    .line 273
    const/16 v27, -0x2

    .line 289
    :cond_1d
    :try_start_6
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V

    .line 292
    if-nez v12, :cond_7

    .line 294
    check-cast v23, Ljava/io/ByteArrayOutputStream;

    .end local v23    # "out":Ljava/io/OutputStream;
    invoke-virtual/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 295
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 218
    .end local v3    # "b":I
    .end local v7    # "c":I
    .end local v20    # "lf":Z
    .end local v27    # "state":I
    .restart local v23    # "out":Ljava/io/OutputStream;
    :cond_1e
    :try_start_7
    new-instance v24, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v24    # "out":Ljava/io/OutputStream;
    move-object/from16 v23, v24

    .end local v24    # "out":Ljava/io/OutputStream;
    .restart local v23    # "out":Ljava/io/OutputStream;
    goto/16 :goto_7

    .line 229
    .restart local v3    # "b":I
    .restart local v20    # "lf":Z
    .restart local v27    # "state":I
    :cond_1f
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedInputStream;->read()I

    move-result v7

    goto/16 :goto_a

    .line 240
    .restart local v7    # "c":I
    :cond_20
    if-ltz v3, :cond_21

    array-length v0, v5

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v3, v0, :cond_21

    aget-byte v32, v5, v3

    move/from16 v0, v32

    if-ne v7, v0, :cond_21

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 245
    :cond_21
    if-eqz v10, :cond_22

    .line 246
    const/16 v32, 0xd

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 247
    :cond_22
    if-eqz v20, :cond_23

    .line 248
    const/16 v32, 0xa

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 249
    :cond_23
    const/16 v20, 0x0

    move/from16 v10, v20

    .line 250
    .restart local v10    # "cr":I
    if-lez v3, :cond_24

    .line 251
    const/16 v32, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v5, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 252
    :cond_24
    const/4 v3, -0x1

    .line 253
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_9

    .line 289
    .end local v3    # "b":I
    .end local v7    # "c":I
    .end local v10    # "cr":I
    .end local v20    # "lf":Z
    .end local v27    # "state":I
    :catchall_1
    move-exception v32

    :goto_b
    :try_start_8
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V

    throw v32
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 277
    .restart local v3    # "b":I
    .restart local v7    # "c":I
    .restart local v20    # "lf":Z
    .restart local v27    # "state":I
    :cond_25
    if-eqz v10, :cond_26

    .line 278
    const/16 v32, 0xd

    :try_start_9
    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 279
    :cond_26
    if-eqz v20, :cond_27

    .line 280
    const/16 v32, 0xa

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 281
    :cond_27
    const/16 v32, 0xd

    move/from16 v0, v32

    if-ne v7, v0, :cond_29

    const/4 v10, 0x1

    .line 282
    .local v10, "cr":Z
    :goto_c
    const/16 v32, 0xa

    move/from16 v0, v32

    if-eq v7, v0, :cond_28

    const/16 v32, 0xa

    move/from16 v0, v27

    move/from16 v1, v32

    if-ne v0, v1, :cond_2a

    :cond_28
    const/16 v20, 0x1

    .line 283
    :goto_d
    const/16 v32, 0xa

    move/from16 v0, v27

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    .line 284
    const/16 v27, -0x2

    goto/16 :goto_8

    .line 281
    .end local v10    # "cr":Z
    :cond_29
    const/4 v10, 0x0

    goto :goto_c

    .line 282
    .restart local v10    # "cr":Z
    :cond_2a
    const/16 v20, 0x0

    goto :goto_d

    .line 289
    .end local v3    # "b":I
    .end local v7    # "c":I
    .end local v10    # "cr":Z
    .end local v20    # "lf":Z
    .end local v23    # "out":Ljava/io/OutputStream;
    .end local v27    # "state":I
    .restart local v24    # "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v32

    move-object/from16 v23, v24

    .end local v24    # "out":Ljava/io/OutputStream;
    .restart local v23    # "out":Ljava/io/OutputStream;
    goto :goto_b

    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v24    # "out":Ljava/io/OutputStream;
    :cond_2b
    move-object/from16 v23, v24

    .end local v24    # "out":Ljava/io/OutputStream;
    .restart local v23    # "out":Ljava/io/OutputStream;
    goto/16 :goto_6
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 3
    .param p1, "filterConfig"    # Ljavax/servlet/FilterConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-interface {p1}, Ljavax/servlet/FilterConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    const-string v2, "javax.servlet.context.tempdir"

    invoke-interface {v1, v2}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, p0, Lorg/mortbay/servlet/MultiPartFilter;->tempdir:Ljava/io/File;

    .line 77
    const-string v1, "true"

    const-string v2, "deleteFiles"

    invoke-interface {p1, v2}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/mortbay/servlet/MultiPartFilter;->_deleteFiles:Z

    .line 78
    const-string v1, "fileOutputBuffer"

    invoke-interface {p1, v1}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "fileOutputBuffer":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/mortbay/servlet/MultiPartFilter;->_fileOutputBuffer:I

    .line 81
    :cond_0
    invoke-interface {p1}, Ljavax/servlet/FilterConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/servlet/MultiPartFilter;->_context:Ljavax/servlet/ServletContext;

    .line 82
    return-void
.end method
