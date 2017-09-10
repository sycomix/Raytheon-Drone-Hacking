.class public Lcom/sun/mail/util/SocketFetcher;
.super Ljava/lang/Object;
.source "SocketFetcher.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private static createSocket(Ljava/net/InetAddress;ILjava/lang/String;IILjavax/net/SocketFactory;Z)Ljava/net/Socket;
    .locals 2
    .param p0, "localaddr"    # Ljava/net/InetAddress;
    .param p1, "localport"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "cto"    # I
    .param p5, "sf"    # Ljavax/net/SocketFactory;
    .param p6, "useSSL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    if-eqz p5, :cond_1

    .line 222
    invoke-virtual {p5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 227
    .local v0, "socket":Ljava/net/Socket;
    :goto_0
    if-eqz p0, :cond_0

    .line 228
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 229
    :cond_0
    if-ltz p4, :cond_3

    .line 230
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, p4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 233
    :goto_1
    return-object v0

    .line 223
    .end local v0    # "socket":Ljava/net/Socket;
    :cond_1
    if-eqz p6, :cond_2

    .line 224
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .restart local v0    # "socket":Ljava/net/Socket;
    goto :goto_0

    .line 226
    .end local v0    # "socket":Ljava/net/Socket;
    :cond_2
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .restart local v0    # "socket":Ljava/net/Socket;
    goto :goto_0

    .line 232
    :cond_3
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto :goto_1
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 282
    new-instance v0, Lcom/sun/mail/util/SocketFetcher$1;

    invoke-direct {v0}, Lcom/sun/mail/util/SocketFetcher$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "props"    # Ljava/util/Properties;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public static getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;
    .locals 32
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "props"    # Ljava/util/Properties;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "useSSL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    if-nez p3, :cond_0

    .line 103
    const-string p3, "socket"

    .line 104
    :cond_0
    if-nez p2, :cond_1

    .line 105
    new-instance p2, Ljava/util/Properties;

    .end local p2    # "props":Ljava/util/Properties;
    invoke-direct/range {p2 .. p2}, Ljava/util/Properties;-><init>()V

    .line 106
    .restart local p2    # "props":Ljava/util/Properties;
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v8, ".connectiontimeout"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 107
    .local v24, "s":Ljava/lang/String;
    const/4 v6, -0x1

    .line 108
    .local v6, "cto":I
    if-eqz v24, :cond_2

    .line 110
    :try_start_0
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    .line 114
    :cond_2
    :goto_0
    const/16 v28, 0x0

    .line 115
    .local v28, "socket":Ljava/net/Socket;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v8, ".socketFactory.class"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 117
    .local v26, "sfClass":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v8, ".timeout"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 118
    .local v30, "timeout":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v8, ".localaddress"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 119
    .local v21, "localaddrstr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 120
    .local v2, "localaddr":Ljava/net/InetAddress;
    if-eqz v21, :cond_3

    .line 121
    invoke-static/range {v21 .. v21}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 122
    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v8, ".localport"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 123
    .local v22, "localportstr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 124
    .local v3, "localport":I
    if-eqz v22, :cond_4

    .line 126
    :try_start_1
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v3

    .line 130
    :cond_4
    :goto_1
    if-eqz v26, :cond_a

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 132
    const/4 v5, -0x1

    .line 133
    .local v5, "sfPort":I
    const/16 v19, 0x0

    .line 134
    .local v19, "fb":Z
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v8, ".socketFactory.fallback"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 136
    .local v18, "fallback":Ljava/lang/String;
    if-eqz v18, :cond_5

    const-string v4, "false"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    :cond_5
    const/16 v19, 0x1

    .line 137
    :goto_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v8, ".socketFactory.port"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 139
    .local v27, "sfPortStr":Ljava/lang/String;
    if-eqz v27, :cond_6

    .line 141
    :try_start_2
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v5

    .line 146
    :cond_6
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/sun/mail/util/SocketFetcher;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v15

    .line 147
    .local v15, "cl":Ljava/lang/ClassLoader;
    const/16 v16, 0x0

    .line 148
    .local v16, "clsSockFact":Ljava/lang/Class;
    if-eqz v15, :cond_7

    .line 150
    :try_start_4
    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v16

    .line 153
    :cond_7
    :goto_4
    if-nez v16, :cond_8

    .line 154
    :try_start_5
    invoke-static/range {v26 .. v26}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    .line 156
    :cond_8
    const-string v4, "getDefault"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    .line 158
    .local v23, "mthGetDefault":Ljava/lang/reflect/Method;
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/net/SocketFactory;

    .line 161
    .local v7, "sf":Ljavax/net/SocketFactory;
    const/4 v4, -0x1

    if-ne v5, v4, :cond_9

    .line 162
    move/from16 v5, p1

    :cond_9
    move-object/from16 v4, p0

    move/from16 v8, p4

    .line 163
    invoke-static/range {v2 .. v8}, Lcom/sun/mail/util/SocketFetcher;->createSocket(Ljava/net/InetAddress;ILjava/lang/String;IILjavax/net/SocketFactory;Z)Ljava/net/Socket;
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v28

    .line 188
    .end local v5    # "sfPort":I
    .end local v7    # "sf":Ljavax/net/SocketFactory;
    .end local v15    # "cl":Ljava/lang/ClassLoader;
    .end local v16    # "clsSockFact":Ljava/lang/Class;
    .end local v18    # "fallback":Ljava/lang/String;
    .end local v19    # "fb":Z
    .end local v23    # "mthGetDefault":Ljava/lang/reflect/Method;
    .end local v27    # "sfPortStr":Ljava/lang/String;
    :cond_a
    if-nez v28, :cond_b

    .line 189
    const/4 v13, 0x0

    move-object v8, v2

    move v9, v3

    move-object/from16 v10, p0

    move/from16 v11, p1

    move v12, v6

    move/from16 v14, p4

    invoke-static/range {v8 .. v14}, Lcom/sun/mail/util/SocketFetcher;->createSocket(Ljava/net/InetAddress;ILjava/lang/String;IILjavax/net/SocketFactory;Z)Ljava/net/Socket;

    move-result-object v28

    .line 192
    :cond_b
    const/16 v31, -0x1

    .line 193
    .local v31, "to":I
    if-eqz v30, :cond_c

    .line 195
    :try_start_6
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v31

    .line 198
    :cond_c
    :goto_5
    if-ltz v31, :cond_d

    .line 199
    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 201
    :cond_d
    return-object v28

    .line 136
    .end local v31    # "to":I
    .restart local v5    # "sfPort":I
    .restart local v18    # "fallback":Ljava/lang/String;
    .restart local v19    # "fb":Z
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 165
    .restart local v27    # "sfPortStr":Ljava/lang/String;
    :catch_0
    move-exception v25

    .line 166
    .local v25, "sex":Ljava/net/SocketTimeoutException;
    throw v25

    .line 167
    .end local v25    # "sex":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v17

    .line 168
    .local v17, "ex":Ljava/lang/Exception;
    if-nez v19, :cond_a

    .line 169
    move-object/from16 v0, v17

    instance-of v4, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v4, :cond_f

    move-object/from16 v4, v17

    .line 170
    check-cast v4, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v29

    .line 172
    .local v29, "t":Ljava/lang/Throwable;
    move-object/from16 v0, v29

    instance-of v4, v0, Ljava/lang/Exception;

    if-eqz v4, :cond_f

    move-object/from16 v17, v29

    .line 173
    check-cast v17, Ljava/lang/Exception;

    .line 175
    .end local v29    # "t":Ljava/lang/Throwable;
    :cond_f
    move-object/from16 v0, v17

    instance-of v4, v0, Ljava/io/IOException;

    if-eqz v4, :cond_10

    .line 176
    check-cast v17, Ljava/io/IOException;

    .end local v17    # "ex":Ljava/lang/Exception;
    throw v17

    .line 177
    .restart local v17    # "ex":Ljava/lang/Exception;
    :cond_10
    new-instance v20, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Couldn\'t connect using \""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v8, "\" socket factory to host, port: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v8, "; Exception: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 182
    .local v20, "ioex":Ljava/io/IOException;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 183
    throw v20

    .line 111
    .end local v2    # "localaddr":Ljava/net/InetAddress;
    .end local v3    # "localport":I
    .end local v5    # "sfPort":I
    .end local v17    # "ex":Ljava/lang/Exception;
    .end local v18    # "fallback":Ljava/lang/String;
    .end local v19    # "fb":Z
    .end local v20    # "ioex":Ljava/io/IOException;
    .end local v21    # "localaddrstr":Ljava/lang/String;
    .end local v22    # "localportstr":Ljava/lang/String;
    .end local v26    # "sfClass":Ljava/lang/String;
    .end local v27    # "sfPortStr":Ljava/lang/String;
    .end local v28    # "socket":Ljava/net/Socket;
    .end local v30    # "timeout":Ljava/lang/String;
    :catch_2
    move-exception v4

    goto/16 :goto_0

    .line 127
    .restart local v2    # "localaddr":Ljava/net/InetAddress;
    .restart local v3    # "localport":I
    .restart local v21    # "localaddrstr":Ljava/lang/String;
    .restart local v22    # "localportstr":Ljava/lang/String;
    .restart local v26    # "sfClass":Ljava/lang/String;
    .restart local v28    # "socket":Ljava/net/Socket;
    .restart local v30    # "timeout":Ljava/lang/String;
    :catch_3
    move-exception v4

    goto/16 :goto_1

    .line 142
    .restart local v5    # "sfPort":I
    .restart local v18    # "fallback":Ljava/lang/String;
    .restart local v19    # "fb":Z
    .restart local v27    # "sfPortStr":Ljava/lang/String;
    :catch_4
    move-exception v4

    goto/16 :goto_3

    .line 151
    .restart local v15    # "cl":Ljava/lang/ClassLoader;
    .restart local v16    # "clsSockFact":Ljava/lang/Class;
    :catch_5
    move-exception v4

    goto/16 :goto_4

    .line 196
    .end local v5    # "sfPort":I
    .end local v15    # "cl":Ljava/lang/ClassLoader;
    .end local v16    # "clsSockFact":Ljava/lang/Class;
    .end local v18    # "fallback":Ljava/lang/String;
    .end local v19    # "fb":Z
    .end local v27    # "sfPortStr":Ljava/lang/String;
    .restart local v31    # "to":I
    :catch_6
    move-exception v4

    goto/16 :goto_5
.end method

.method public static startTLS(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 12
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 242
    .local v1, "a":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "host":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result v5

    .line 247
    .local v5, "port":I
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/SSLSocketFactory;

    .line 249
    .local v6, "ssf":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v8, 0x1

    invoke-virtual {v6, p0, v3, v5, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p0

    .line 257
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v8, v0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "TLSv1"

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    return-object p0

    .line 258
    .end local v6    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :catch_0
    move-exception v2

    .line 259
    .local v2, "ex":Ljava/lang/Exception;
    instance-of v8, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v8, :cond_0

    move-object v8, v2

    .line 260
    check-cast v8, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v7

    .line 262
    .local v7, "t":Ljava/lang/Throwable;
    instance-of v8, v7, Ljava/lang/Exception;

    if-eqz v8, :cond_0

    move-object v2, v7

    .line 263
    check-cast v2, Ljava/lang/Exception;

    .line 265
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_0
    instance-of v8, v2, Ljava/io/IOException;

    if-eqz v8, :cond_1

    .line 266
    check-cast v2, Ljava/io/IOException;

    .end local v2    # "ex":Ljava/lang/Exception;
    throw v2

    .line 268
    .restart local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Exception in startTLS: host "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ", port "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "; Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 270
    .local v4, "ioex":Ljava/io/IOException;
    invoke-virtual {v4, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 271
    throw v4
.end method
