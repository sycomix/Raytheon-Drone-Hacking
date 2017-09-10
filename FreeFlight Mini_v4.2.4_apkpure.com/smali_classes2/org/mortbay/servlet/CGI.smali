.class public Lorg/mortbay/servlet/CGI;
.super Ljavax/servlet/http/HttpServlet;
.source "CGI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/servlet/CGI$EnvList;
    }
.end annotation


# instance fields
.field private _cmdPrefix:Ljava/lang/String;

.field private _docRoot:Ljava/io/File;

.field private _env:Lorg/mortbay/servlet/CGI$EnvList;

.field private _ignoreExitState:Z

.field private _ok:Z

.field private _path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 394
    return-void
.end method

.method private exec(Ljava/io/File;Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 32
    .param p1, "command"    # Ljava/io/File;
    .param p2, "pathInfo"    # Ljava/lang/String;
    .param p3, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "res"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    .line 201
    .local v21, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 202
    .local v3, "dir":Ljava/io/File;
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v31

    sub-int v30, v30, v31

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 203
    .local v23, "scriptName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/servlet/CGI;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 204
    .local v24, "scriptPath":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getPathTranslated()Ljava/lang/String;

    move-result-object v22

    .line 206
    .local v22, "pathTranslated":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getContentLength()I

    move-result v15

    .line 207
    .local v15, "len":I
    if-gez v15, :cond_0

    .line 208
    const/4 v15, 0x0

    .line 209
    :cond_0
    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_2

    .line 210
    :cond_1
    move-object/from16 v22, v21

    .line 212
    :cond_2
    new-instance v6, Lorg/mortbay/servlet/CGI$EnvList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/servlet/CGI;->_env:Lorg/mortbay/servlet/CGI$EnvList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v6, v0}, Lorg/mortbay/servlet/CGI$EnvList;-><init>(Lorg/mortbay/servlet/CGI$EnvList;)V

    .line 216
    .local v6, "env":Lorg/mortbay/servlet/CGI$EnvList;
    const-string v28, "AUTH_TYPE"

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getAuthType()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v28, "CONTENT_LENGTH"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v28, "CONTENT_TYPE"

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v28, "GATEWAY_INTERFACE"

    const-string v29, "CGI/1.1"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_3

    .line 222
    const-string v28, "PATH_INFO"

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_3
    const-string v28, "PATH_TRANSLATED"

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v28, "QUERY_STRING"

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v28, "REMOTE_ADDR"

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v28, "REMOTE_HOST"

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getRemoteHost()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v28, "REMOTE_USER"

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getRemoteUser()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v28, "REQUEST_METHOD"

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v28, "SCRIPT_NAME"

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v28, "SCRIPT_FILENAME"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v28, "SERVER_NAME"

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v28, "SERVER_PORT"

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getServerPort()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v28, "SERVER_PROTOCOL"

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v28, "SERVER_SOFTWARE"

    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/servlet/CGI;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljavax/servlet/ServletContext;->getServerInfo()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v5

    .line 243
    .local v5, "enm":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 245
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 246
    .local v17, "name":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 247
    .local v27, "value":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    const-string v29, "HTTP_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x2d

    const/16 v31, 0x5f

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    .end local v17    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_4
    const-string v29, "HTTPS"

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v28

    if-eqz v28, :cond_9

    const-string v28, "ON"

    :goto_1
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    move-object/from16 v7, v21

    .line 260
    .local v7, "execCmd":Ljava/lang/String;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v29, 0x22

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    const-string v28, " "

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    if-ltz v28, :cond_5

    .line 261
    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    const-string v29, "\""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    const-string v29, "\""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 262
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/servlet/CGI;->_cmdPrefix:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_6

    .line 263
    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/servlet/CGI;->_cmdPrefix:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 265
    :cond_6
    if-nez v3, :cond_a

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v28

    invoke-virtual {v6}, Lorg/mortbay/servlet/CGI$EnvList;->getEnvArray()[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v7, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v20

    .line 268
    .local v20, "p":Ljava/lang/Process;
    :goto_2
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v11

    .line 269
    .local v11, "inFromReq":Ljava/io/InputStream;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    .line 270
    .local v19, "outToCgi":Ljava/io/OutputStream;
    move v12, v15

    .line 272
    .local v12, "inLength":I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v28

    sget-object v29, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static/range {v28 .. v29}, Lorg/mortbay/util/IO;->copyThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 274
    new-instance v28, Ljava/lang/Thread;

    new-instance v29, Lorg/mortbay/servlet/CGI$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v12, v11, v2}, Lorg/mortbay/servlet/CGI$1;-><init>(Lorg/mortbay/servlet/CGI;ILjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-direct/range {v28 .. v29}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Thread;->start()V

    .line 293
    const/16 v18, 0x0

    .line 298
    .local v18, "os":Ljava/io/OutputStream;
    const/16 v16, 0x0

    .line 299
    .local v16, "line":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 303
    .local v10, "inFromCgi":Ljava/io/InputStream;
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/mortbay/servlet/CGI;->getTextLineFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_e

    .line 305
    const-string v28, "HTTP"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_7

    .line 307
    const/16 v28, 0x3a

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 308
    .local v13, "k":I
    if-lez v13, :cond_7

    .line 310
    const/16 v28, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 311
    .local v14, "key":Ljava/lang/String;
    add-int/lit8 v28, v13, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 312
    .restart local v27    # "value":Ljava/lang/String;
    const-string v28, "Location"

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 314
    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 346
    .end local v10    # "inFromCgi":Ljava/io/InputStream;
    .end local v13    # "k":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 350
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    const-string v28, "CGI: Client closed connection!"

    invoke-static/range {v28 .. v28}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    if-eqz v18, :cond_8

    .line 362
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 369
    .end local v4    # "e":Ljava/io/IOException;
    :cond_8
    :goto_4
    const/16 v18, 0x0

    .line 370
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Process;->destroy()V

    .line 373
    return-void

    .line 251
    .end local v7    # "execCmd":Ljava/lang/String;
    .end local v11    # "inFromReq":Ljava/io/InputStream;
    .end local v12    # "inLength":I
    .end local v16    # "line":Ljava/lang/String;
    .end local v18    # "os":Ljava/io/OutputStream;
    .end local v19    # "outToCgi":Ljava/io/OutputStream;
    .end local v20    # "p":Ljava/lang/Process;
    :cond_9
    const-string v28, "OFF"

    goto/16 :goto_1

    .line 265
    .restart local v7    # "execCmd":Ljava/lang/String;
    :cond_a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v28

    invoke-virtual {v6}, Lorg/mortbay/servlet/CGI$EnvList;->getEnvArray()[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v7, v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v20

    goto/16 :goto_2

    .line 316
    .restart local v10    # "inFromCgi":Ljava/io/InputStream;
    .restart local v11    # "inFromReq":Ljava/io/InputStream;
    .restart local v12    # "inLength":I
    .restart local v13    # "k":I
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v16    # "line":Ljava/lang/String;
    .restart local v18    # "os":Ljava/io/OutputStream;
    .restart local v19    # "outToCgi":Ljava/io/OutputStream;
    .restart local v20    # "p":Ljava/lang/Process;
    .restart local v27    # "value":Ljava/lang/String;
    :cond_b
    :try_start_3
    const-string v28, "Status"

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 318
    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 319
    .local v26, "token":[Ljava/lang/String;
    const/16 v28, 0x0

    aget-object v28, v26, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 320
    .local v25, "status":I
    move-object/from16 v0, p4

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 352
    .end local v10    # "inFromCgi":Ljava/io/InputStream;
    .end local v13    # "k":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v25    # "status":I
    .end local v26    # "token":[Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 354
    .local v9, "ie":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v28, "CGI: interrupted!"

    invoke-static/range {v28 .. v28}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 358
    if-eqz v18, :cond_8

    .line 362
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 364
    :catch_2
    move-exception v4

    .line 366
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 325
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v9    # "ie":Ljava/lang/InterruptedException;
    .restart local v10    # "inFromCgi":Ljava/io/InputStream;
    .restart local v13    # "k":I
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v27    # "value":Ljava/lang/String;
    :cond_c
    :try_start_6
    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-interface {v0, v14, v1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 358
    .end local v10    # "inFromCgi":Ljava/io/InputStream;
    .end local v13    # "k":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v28

    if-eqz v18, :cond_d

    .line 362
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 369
    :cond_d
    :goto_5
    const/16 v18, 0x0

    .line 370
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Process;->destroy()V

    .line 358
    throw v28

    .line 331
    .restart local v10    # "inFromCgi":Ljava/io/InputStream;
    :cond_e
    :try_start_8
    invoke-interface/range {p4 .. p4}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v18

    .line 332
    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 333
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Process;->waitFor()I

    .line 335
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mortbay/servlet/CGI;->_ignoreExitState:Z

    move/from16 v28, v0

    if-nez v28, :cond_f

    .line 337
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Process;->exitValue()I

    move-result v8

    .line 338
    .local v8, "exitValue":I
    if-eqz v8, :cond_f

    .line 340
    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    const-string v29, "Non-zero exit status ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v28

    const-string v29, ") from CGI program: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 341
    invoke-interface/range {p4 .. p4}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v28

    if-nez v28, :cond_f

    .line 342
    const/16 v28, 0x1f4

    const-string v29, "Failed to exec CGI"

    move-object/from16 v0, p4

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 358
    .end local v8    # "exitValue":I
    :cond_f
    if-eqz v18, :cond_8

    .line 362
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_4

    .line 364
    :catch_3
    move-exception v4

    .line 366
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 364
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v10    # "inFromCgi":Ljava/io/InputStream;
    :catch_4
    move-exception v4

    .line 366
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 364
    .local v4, "e":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 366
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_4
.end method

.method private getTextLineFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 385
    .local v1, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "b":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    .line 386
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public init()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v6, Lorg/mortbay/servlet/CGI$EnvList;

    invoke-direct {v6}, Lorg/mortbay/servlet/CGI$EnvList;-><init>()V

    iput-object v6, p0, Lorg/mortbay/servlet/CGI;->_env:Lorg/mortbay/servlet/CGI$EnvList;

    .line 69
    const-string v6, "commandPrefix"

    invoke-virtual {p0, v6}, Lorg/mortbay/servlet/CGI;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/mortbay/servlet/CGI;->_cmdPrefix:Ljava/lang/String;

    .line 71
    const-string v6, "cgibinResourceBase"

    invoke-virtual {p0, v6}, Lorg/mortbay/servlet/CGI;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "tmp":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 74
    const-string v6, "resourceBase"

    invoke-virtual {p0, v6}, Lorg/mortbay/servlet/CGI;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    if-nez v4, :cond_0

    .line 76
    invoke-virtual {p0}, Lorg/mortbay/servlet/CGI;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v6

    const-string v7, "/"

    invoke-interface {v6, v7}, Ljavax/servlet/ServletContext;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    :cond_0
    if-nez v4, :cond_1

    .line 81
    const-string v6, "CGI: no CGI bin !"

    invoke-static {v6}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 85
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 88
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "CGI: CGI bin does not exist - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_3

    .line 94
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "CGI: CGI bin is not readable - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_4

    .line 100
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "CGI: CGI bin is not a directory - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lorg/mortbay/servlet/CGI;->_docRoot:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const-string v6, "Path"

    invoke-virtual {p0, v6}, Lorg/mortbay/servlet/CGI;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/mortbay/servlet/CGI;->_path:Ljava/lang/String;

    .line 115
    iget-object v6, p0, Lorg/mortbay/servlet/CGI;->_path:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 116
    iget-object v6, p0, Lorg/mortbay/servlet/CGI;->_env:Lorg/mortbay/servlet/CGI$EnvList;

    const-string v7, "PATH"

    iget-object v8, p0, Lorg/mortbay/servlet/CGI;->_path:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_5
    const-string v6, "true"

    const-string v7, "ignoreExitState"

    invoke-virtual {p0, v7}, Lorg/mortbay/servlet/CGI;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lorg/mortbay/servlet/CGI;->_ignoreExitState:Z

    .line 119
    invoke-virtual {p0}, Lorg/mortbay/servlet/CGI;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 120
    .local v1, "e":Ljava/util/Enumeration;
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 122
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 123
    .local v2, "n":Ljava/lang/String;
    if-eqz v2, :cond_6

    const-string v6, "ENV_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 124
    iget-object v6, p0, Lorg/mortbay/servlet/CGI;->_env:Lorg/mortbay/servlet/CGI$EnvList;

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2}, Lorg/mortbay/servlet/CGI;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 108
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v2    # "n":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "CGI: CGI bin failed - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 126
    .local v1, "e":Ljava/util/Enumeration;
    :cond_7
    iget-object v6, p0, Lorg/mortbay/servlet/CGI;->_env:Lorg/mortbay/servlet/CGI$EnvList;

    invoke-static {v6}, Lorg/mortbay/servlet/CGI$EnvList;->access$000(Lorg/mortbay/servlet/CGI$EnvList;)Ljava/util/Map;

    move-result-object v6

    const-string v7, "SystemRoot"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 128
    const-string v6, "os.name"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "os":Ljava/lang/String;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "windows"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    .line 131
    const-string v6, "windir"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "windir":Ljava/lang/String;
    iget-object v6, p0, Lorg/mortbay/servlet/CGI;->_env:Lorg/mortbay/servlet/CGI$EnvList;

    const-string v7, "SystemRoot"

    if-eqz v5, :cond_9

    .end local v5    # "windir":Ljava/lang/String;
    :goto_2
    invoke-virtual {v6, v7, v5}, Lorg/mortbay/servlet/CGI$EnvList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v3    # "os":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/mortbay/servlet/CGI;->_ok:Z

    goto/16 :goto_0

    .line 132
    .restart local v3    # "os":Ljava/lang/String;
    .restart local v5    # "windir":Ljava/lang/String;
    :cond_9
    const-string v5, "C:\\WINDOWS"

    goto :goto_2
.end method

.method public service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 8
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "res"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-boolean v6, p0, Lorg/mortbay/servlet/CGI;->_ok:Z

    if-nez v6, :cond_0

    .line 144
    const/16 v6, 0x1f7

    invoke-interface {p2, v6}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 192
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/mortbay/util/StringUtil;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/mortbay/util/StringUtil;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "pathInContext":Ljava/lang/String;
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 152
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "CGI: ContextPath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 153
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "CGI: ServletPath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 154
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "CGI: PathInfo    : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 155
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "CGI: _docRoot    : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/mortbay/servlet/CGI;->_docRoot:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 156
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "CGI: _path       : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/mortbay/servlet/CGI;->_path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 157
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "CGI: _ignoreExitState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-boolean v7, p0, Lorg/mortbay/servlet/CGI;->_ignoreExitState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 164
    :cond_1
    move-object v0, v5

    .line 165
    .local v0, "both":Ljava/lang/String;
    move-object v2, v0

    .line 166
    .local v2, "first":Ljava/lang/String;
    const-string v4, ""

    .line 168
    .local v4, "last":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lorg/mortbay/servlet/CGI;->_docRoot:Ljava/io/File;

    invoke-direct {v1, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .local v1, "exe":Ljava/io/File;
    :goto_1
    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ltz v6, :cond_3

    .line 172
    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 174
    .local v3, "index":I
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 176
    new-instance v1, Ljava/io/File;

    .end local v1    # "exe":Ljava/io/File;
    iget-object v6, p0, Lorg/mortbay/servlet/CGI;->_docRoot:Ljava/io/File;

    invoke-direct {v1, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .restart local v1    # "exe":Ljava/io/File;
    goto :goto_1

    .line 179
    .end local v3    # "index":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 181
    :cond_4
    const/16 v6, 0x194

    invoke-interface {p2, v6}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto/16 :goto_0

    .line 185
    :cond_5
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 187
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "CGI: script is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 188
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "CGI: pathInfo is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 190
    :cond_6
    invoke-direct {p0, v1, v4, p1, p2}, Lorg/mortbay/servlet/CGI;->exec(Ljava/io/File;Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto/16 :goto_0
.end method
