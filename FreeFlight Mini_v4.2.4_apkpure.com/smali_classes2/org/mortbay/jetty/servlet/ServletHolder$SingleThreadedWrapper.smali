.class Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;
.super Ljava/lang/Object;
.source "ServletHolder.java"

# interfaces
.implements Ljavax/servlet/Servlet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/ServletHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleThreadedWrapper"
.end annotation


# instance fields
.field _stack:Ljava/util/Stack;

.field private final this$0:Lorg/mortbay/jetty/servlet/ServletHolder;


# direct methods
.method private constructor <init>(Lorg/mortbay/jetty/servlet/ServletHolder;)V
    .locals 1

    .prologue
    .line 568
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    return-void
.end method

.method constructor <init>(Lorg/mortbay/jetty/servlet/ServletHolder;Lorg/mortbay/jetty/servlet/ServletHolder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mortbay/jetty/servlet/ServletHolder;
    .param p2, "x1"    # Lorg/mortbay/jetty/servlet/ServletHolder$1;

    .prologue
    .line 568
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;-><init>(Lorg/mortbay/jetty/servlet/ServletHolder;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 574
    monitor-enter p0

    .line 576
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    .line 577
    :try_start_1
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/servlet/Servlet;

    invoke-interface {v1}, Ljavax/servlet/Servlet;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 578
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 579
    return-void
.end method

.method public getServletConfig()Ljavax/servlet/ServletConfig;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->access$100(Lorg/mortbay/jetty/servlet/ServletHolder;)Lorg/mortbay/jetty/servlet/ServletHolder$Config;

    move-result-object v0

    return-object v0
.end method

.method public getServletInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Ljavax/servlet/ServletConfig;)V
    .locals 3
    .param p1, "config"    # Ljavax/servlet/ServletConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 593
    monitor-enter p0

    .line 595
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 599
    :try_start_1
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/servlet/Servlet;

    .line 600
    .local v1, "s":Ljavax/servlet/Servlet;
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->customizeServlet(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;

    move-result-object v1

    .line 601
    invoke-interface {v1, p1}, Ljavax/servlet/Servlet;->init(Ljavax/servlet/ServletConfig;)V

    .line 602
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    .end local v1    # "s":Ljavax/servlet/Servlet;
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 614
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljavax/servlet/ServletException;
    throw v0

    .line 613
    .end local v0    # "e":Ljavax/servlet/ServletException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 608
    :catch_1
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Ljavax/servlet/ServletException;

    invoke-direct {v2, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 4
    .param p1, "req"    # Ljavax/servlet/ServletRequest;
    .param p2, "res"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    monitor-enter p0

    .line 621
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 622
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/servlet/Servlet;

    .line 644
    .local v1, "s":Ljavax/servlet/Servlet;
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    :try_start_1
    invoke-interface {v1, p1, p2}, Ljavax/servlet/Servlet;->service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 652
    monitor-enter p0

    .line 654
    :try_start_2
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 657
    return-void

    .line 627
    .end local v1    # "s":Ljavax/servlet/Servlet;
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/servlet/Servlet;

    .line 628
    .restart local v1    # "s":Ljavax/servlet/Servlet;
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->customizeServlet(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;

    move-result-object v1

    .line 629
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-static {v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->access$100(Lorg/mortbay/jetty/servlet/ServletHolder;)Lorg/mortbay/jetty/servlet/ServletHolder$Config;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/servlet/Servlet;->init(Ljavax/servlet/ServletConfig;)V
    :try_end_3
    .catch Ljavax/servlet/ServletException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 631
    .end local v1    # "s":Ljavax/servlet/Servlet;
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Ljavax/servlet/ServletException;
    :try_start_4
    throw v0

    .line 644
    .end local v0    # "e":Ljavax/servlet/ServletException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 635
    :catch_1
    move-exception v0

    .line 637
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    throw v0

    .line 639
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 641
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljavax/servlet/ServletException;

    invoke-direct {v2, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 655
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "s":Ljavax/servlet/Servlet;
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 652
    :catchall_2
    move-exception v2

    monitor-enter p0

    .line 654
    :try_start_7
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2

    :catchall_3
    move-exception v2

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v2
.end method
