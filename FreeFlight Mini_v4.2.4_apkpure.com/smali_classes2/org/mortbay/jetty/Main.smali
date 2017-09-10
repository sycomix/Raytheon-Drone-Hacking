.class public Lorg/mortbay/jetty/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    .line 35
    array-length v9, p0

    if-lt v9, v11, :cond_0

    array-length v9, p0

    if-le v9, v12, :cond_1

    .line 37
    :cond_0
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Usage - java org.mortbay.jetty.Main [<addr>:]<port>"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Usage - java org.mortbay.jetty.Main [<addr>:]<port> docroot"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Usage - java org.mortbay.jetty.Main [<addr>:]<port> -webapp myapp.war"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Usage - java org.mortbay.jetty.Main [<addr>:]<port> -webapps webapps"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Usage - java -jar jetty-x.x.x-standalone.jar [<addr>:]<port>"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Usage - java -jar jetty-x.x.x-standalone.jar [<addr>:]<port> docroot"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Usage - java -jar jetty-x.x.x-standalone.jar [<addr>:]<port> -webapp myapp.war"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Usage - java -jar jetty-x.x.x-standalone.jar [<addr>:]<port> -webapps webapps"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    .line 51
    :cond_1
    :try_start_0
    new-instance v6, Lorg/mortbay/jetty/Server;

    invoke-direct {v6}, Lorg/mortbay/jetty/Server;-><init>()V

    .line 52
    .local v6, "server":Lorg/mortbay/jetty/Server;
    new-instance v4, Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-direct {v4}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;-><init>()V

    .line 53
    .local v4, "contexts":Lorg/mortbay/jetty/handler/ContextHandlerCollection;
    invoke-virtual {v6, v4}, Lorg/mortbay/jetty/Server;->setHandler(Lorg/mortbay/jetty/Handler;)V

    .line 55
    new-instance v2, Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-direct {v2}, Lorg/mortbay/jetty/bio/SocketConnector;-><init>()V

    .line 56
    .local v2, "connector":Lorg/mortbay/jetty/bio/SocketConnector;
    const/4 v9, 0x0

    aget-object v0, p0, v9

    .line 57
    .local v0, "address":Ljava/lang/String;
    const/16 v9, 0x3a

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 58
    .local v1, "colon":I
    if-gez v1, :cond_3

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Lorg/mortbay/jetty/bio/SocketConnector;->setPort(I)V

    .line 65
    :goto_0
    const/4 v9, 0x1

    new-array v9, v9, [Lorg/mortbay/jetty/Connector;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {v6, v9}, Lorg/mortbay/jetty/Server;->setConnectors([Lorg/mortbay/jetty/Connector;)V

    .line 67
    array-length v9, p0

    if-ge v9, v12, :cond_5

    .line 69
    new-instance v3, Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-direct {v3}, Lorg/mortbay/jetty/handler/ContextHandler;-><init>()V

    .line 70
    .local v3, "context":Lorg/mortbay/jetty/handler/ContextHandler;
    const-string v9, "/"

    invoke-virtual {v3, v9}, Lorg/mortbay/jetty/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 71
    array-length v9, p0

    if-ne v9, v11, :cond_4

    const-string v9, "."

    :goto_1
    invoke-virtual {v3, v9}, Lorg/mortbay/jetty/handler/ContextHandler;->setResourceBase(Ljava/lang/String;)V

    .line 72
    new-instance v7, Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-direct {v7}, Lorg/mortbay/jetty/servlet/ServletHandler;-><init>()V

    .line 73
    .local v7, "servlet":Lorg/mortbay/jetty/servlet/ServletHandler;
    const-string v9, "org.mortbay.jetty.servlet.DefaultServlet"

    const-string v10, "/"

    invoke-virtual {v7, v9, v10}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 74
    invoke-virtual {v3, v7}, Lorg/mortbay/jetty/handler/ContextHandler;->setHandler(Lorg/mortbay/jetty/Handler;)V

    .line 75
    invoke-virtual {v4, v3}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->addHandler(Lorg/mortbay/jetty/Handler;)V

    .line 89
    .end local v3    # "context":Lorg/mortbay/jetty/handler/ContextHandler;
    .end local v7    # "servlet":Lorg/mortbay/jetty/servlet/ServletHandler;
    :cond_2
    :goto_2
    invoke-virtual {v6}, Lorg/mortbay/jetty/Server;->start()V

    .line 96
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "colon":I
    .end local v2    # "connector":Lorg/mortbay/jetty/bio/SocketConnector;
    .end local v4    # "contexts":Lorg/mortbay/jetty/handler/ContextHandlerCollection;
    .end local v6    # "server":Lorg/mortbay/jetty/Server;
    :goto_3
    return-void

    .line 62
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v1    # "colon":I
    .restart local v2    # "connector":Lorg/mortbay/jetty/bio/SocketConnector;
    .restart local v4    # "contexts":Lorg/mortbay/jetty/handler/ContextHandlerCollection;
    .restart local v6    # "server":Lorg/mortbay/jetty/Server;
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/mortbay/jetty/bio/SocketConnector;->setHost(Ljava/lang/String;)V

    .line 63
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Lorg/mortbay/jetty/bio/SocketConnector;->setPort(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "colon":I
    .end local v2    # "connector":Lorg/mortbay/jetty/bio/SocketConnector;
    .end local v4    # "contexts":Lorg/mortbay/jetty/handler/ContextHandlerCollection;
    .end local v6    # "server":Lorg/mortbay/jetty/Server;
    :catch_0
    move-exception v5

    .line 94
    .local v5, "e":Ljava/lang/Exception;
    const-string v9, "EXCEPTION "

    invoke-static {v9, v5}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 71
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v1    # "colon":I
    .restart local v2    # "connector":Lorg/mortbay/jetty/bio/SocketConnector;
    .restart local v3    # "context":Lorg/mortbay/jetty/handler/ContextHandler;
    .restart local v4    # "contexts":Lorg/mortbay/jetty/handler/ContextHandlerCollection;
    .restart local v6    # "server":Lorg/mortbay/jetty/Server;
    :cond_4
    const/4 v9, 0x1

    :try_start_1
    aget-object v9, p0, v9

    goto :goto_1

    .line 77
    .end local v3    # "context":Lorg/mortbay/jetty/handler/ContextHandler;
    :cond_5
    const-string v9, "-webapps"

    const/4 v10, 0x1

    aget-object v10, p0, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 79
    const/4 v9, 0x2

    aget-object v9, p0, v9

    const-string v10, "org/mortbay/jetty/webapp/webdefault.xml"

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v6, v9, v10, v11, v12}, Lorg/mortbay/jetty/webapp/WebAppContext;->addWebApplications(Lorg/mortbay/jetty/Server;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 81
    :cond_6
    const-string v9, "-webapp"

    const/4 v10, 0x1

    aget-object v10, p0, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 83
    new-instance v8, Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-direct {v8}, Lorg/mortbay/jetty/webapp/WebAppContext;-><init>()V

    .line 84
    .local v8, "webapp":Lorg/mortbay/jetty/webapp/WebAppContext;
    const/4 v9, 0x2

    aget-object v9, p0, v9

    invoke-virtual {v8, v9}, Lorg/mortbay/jetty/webapp/WebAppContext;->setWar(Ljava/lang/String;)V

    .line 85
    const-string v9, "/"

    invoke-virtual {v8, v9}, Lorg/mortbay/jetty/webapp/WebAppContext;->setContextPath(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v4, v8}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->addHandler(Lorg/mortbay/jetty/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
