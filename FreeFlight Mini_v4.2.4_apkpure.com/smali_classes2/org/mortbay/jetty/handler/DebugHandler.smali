.class public Lorg/mortbay/jetty/handler/DebugHandler;
.super Lorg/mortbay/jetty/handler/HandlerWrapper;
.source "DebugHandler.java"


# instance fields
.field private _date:Lorg/mortbay/util/DateCache;

.field private _out:Ljava/io/OutputStream;

.field private _print:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    .line 42
    new-instance v0, Lorg/mortbay/util/DateCache;

    const-string v1, "HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lorg/mortbay/util/DateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_date:Lorg/mortbay/util/DateCache;

    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lorg/mortbay/util/RolloverFileOutputStream;

    const-string v1, "./logs/yyyy_mm_dd.debug.log"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/mortbay/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    .line 126
    :cond_0
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    .line 127
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStart()V

    .line 128
    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStop()V

    .line 136
    iget-object v0, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 137
    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 24
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p3, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p4, "dispatch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 53
    move-object/from16 v15, p2

    check-cast v15, Lorg/mortbay/jetty/Request;

    .local v15, "srequest":Lorg/mortbay/jetty/Request;
    move-object/from16 v16, p3

    .line 54
    check-cast v16, Lorg/mortbay/jetty/Response;

    .line 55
    .local v16, "sresponse":Lorg/mortbay/jetty/Response;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    .line 56
    .local v18, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    .line 58
    .local v10, "old_name":Ljava/lang/String;
    const/16 v17, 0x0

    .line 59
    .local v17, "suspend":Z
    const/4 v12, 0x0

    .line 60
    .local v12, "retry":Z
    const-string v19, "org.mortbay.jetty.thread.name"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 61
    .local v9, "name":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 62
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "Host"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual {v15}, Lorg/mortbay/jetty/Request;->getUri()Lorg/mortbay/jetty/HttpURI;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 66
    :goto_0
    const/4 v6, 0x0

    .line 69
    .local v6, "ex":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/handler/DebugHandler;->_date:Lorg/mortbay/util/DateCache;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/mortbay/util/DateCache;->now()Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "d":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/handler/DebugHandler;->_date:Lorg/mortbay/util/DateCache;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/mortbay/util/DateCache;->lastMs()I

    move-result v8

    .line 72
    .local v8, "ms":I
    if-eqz v12, :cond_3

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const/16 v19, 0x63

    move/from16 v0, v19

    if-le v8, v0, :cond_1

    const-string v19, "."

    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v21, ":"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v21, " RETRY"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 77
    invoke-super/range {p0 .. p4}, Lorg/mortbay/jetty/handler/HandlerWrapper;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_0
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/handler/DebugHandler;->_date:Lorg/mortbay/util/DateCache;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/mortbay/util/DateCache;->now()Ljava/lang/String;

    move-result-object v4

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/handler/DebugHandler;->_date:Lorg/mortbay/util/DateCache;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/mortbay/util/DateCache;->lastMs()I

    move-result v8

    .line 110
    if-eqz v17, :cond_c

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const/16 v19, 0x63

    move/from16 v0, v19

    if-le v8, v0, :cond_d

    const-string v19, "."

    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v21, ":"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v21, " SUSPEND"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    :goto_4
    return-void

    .line 64
    .end local v4    # "d":Ljava/lang/String;
    .end local v6    # "ex":Ljava/lang/String;
    .end local v8    # "ms":I
    :cond_0
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 73
    .restart local v4    # "d":Ljava/lang/String;
    .restart local v6    # "ex":Ljava/lang/String;
    .restart local v8    # "ms":I
    :cond_1
    const/16 v19, 0x9

    move/from16 v0, v19

    if-le v8, v0, :cond_2

    :try_start_1
    const-string v19, ".0"

    goto/16 :goto_1

    :cond_2
    const-string v19, ".00"

    goto/16 :goto_1

    .line 75
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const/16 v19, 0x63

    move/from16 v0, v19

    if-le v8, v0, :cond_4

    const-string v19, "."

    :goto_5
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v21, ":"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual {v15}, Lorg/mortbay/jetty/Request;->getRemoteAddr()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v21, "Cookie"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v21, "; "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v21, "User-Agent"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 79
    .end local v4    # "d":Ljava/lang/String;
    .end local v8    # "ms":I
    :catch_0
    move-exception v11

    .line 81
    .local v11, "r":Lorg/mortbay/jetty/RetryRequest;
    const/16 v17, 0x1

    .line 82
    :try_start_2
    const-string v19, "org.mortbay.jetty.thread.name"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v9}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .end local v11    # "r":Lorg/mortbay/jetty/RetryRequest;
    :catchall_0
    move-exception v19

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/handler/DebugHandler;->_date:Lorg/mortbay/util/DateCache;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/mortbay/util/DateCache;->now()Ljava/lang/String;

    move-result-object v4

    .line 109
    .restart local v4    # "d":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/handler/DebugHandler;->_date:Lorg/mortbay/util/DateCache;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/mortbay/util/DateCache;->lastMs()I

    move-result v8

    .line 110
    .restart local v8    # "ms":I
    if-eqz v17, :cond_6

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    move-object/from16 v21, v0

    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const/16 v20, 0x63

    move/from16 v0, v20

    if-le v8, v0, :cond_7

    const-string v20, "."

    :goto_6
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v22, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v22, " SUSPEND"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    :goto_7
    throw v19

    .line 75
    :cond_4
    const/16 v19, 0x9

    move/from16 v0, v19

    if-le v8, v0, :cond_5

    :try_start_3
    const-string v19, ".0"

    goto/16 :goto_5

    :cond_5
    const-string v19, ".00"
    :try_end_3
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/servlet/ServletException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    .line 85
    .end local v4    # "d":Ljava/lang/String;
    .end local v8    # "ms":I
    :catch_1
    move-exception v7

    .line 87
    .local v7, "ioe":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    .line 88
    throw v7

    .line 90
    .end local v7    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v14

    .line 92
    .local v14, "se":Ljavax/servlet/ServletException;
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v14}, Ljavax/servlet/ServletException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual {v14}, Ljavax/servlet/ServletException;->getCause()Ljava/lang/Throwable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 93
    throw v14

    .line 95
    .end local v14    # "se":Ljavax/servlet/ServletException;
    :catch_3
    move-exception v13

    .line 97
    .local v13, "rte":Ljava/lang/RuntimeException;
    invoke-virtual {v13}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    .line 98
    throw v13

    .line 100
    .end local v13    # "rte":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v5

    .line 102
    .local v5, "e":Ljava/lang/Error;
    invoke-virtual {v5}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v6

    .line 103
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    .end local v5    # "e":Ljava/lang/Error;
    .restart local v4    # "d":Ljava/lang/String;
    .restart local v8    # "ms":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    move-object/from16 v21, v0

    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const/16 v20, 0x63

    move/from16 v0, v20

    if-le v8, v0, :cond_9

    const-string v20, "."

    :goto_8
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v22, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v22, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v22, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/jetty/Response;->getContentType()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v22, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/jetty/Response;->getContentCount()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v22

    if-nez v6, :cond_b

    const-string v20, ""

    :goto_9
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 111
    :cond_7
    const/16 v20, 0x9

    move/from16 v0, v20

    if-le v8, v0, :cond_8

    const-string v20, ".0"

    goto/16 :goto_6

    :cond_8
    const-string v20, ".00"

    goto/16 :goto_6

    .line 113
    :cond_9
    const/16 v20, 0x9

    move/from16 v0, v20

    if-le v8, v0, :cond_a

    const-string v20, ".0"

    goto/16 :goto_8

    :cond_a
    const-string v20, ".00"

    goto/16 :goto_8

    :cond_b
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    goto :goto_9

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const/16 v19, 0x63

    move/from16 v0, v19

    if-le v8, v0, :cond_f

    const-string v19, "."

    :goto_a
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v21, ":"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/jetty/Response;->getContentType()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/jetty/Response;->getContentCount()J

    move-result-wide v22

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v21

    if-nez v6, :cond_11

    const-string v19, ""

    :goto_b
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 111
    :cond_d
    const/16 v19, 0x9

    move/from16 v0, v19

    if-le v8, v0, :cond_e

    const-string v19, ".0"

    goto/16 :goto_3

    :cond_e
    const-string v19, ".00"

    goto/16 :goto_3

    .line 113
    :cond_f
    const/16 v19, 0x9

    move/from16 v0, v19

    if-le v8, v0, :cond_10

    const-string v19, ".0"

    goto/16 :goto_a

    :cond_10
    const-string v19, ".00"

    goto/16 :goto_a

    :cond_11
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "/"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_b
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 152
    iput-object p1, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    .line 153
    return-void
.end method
