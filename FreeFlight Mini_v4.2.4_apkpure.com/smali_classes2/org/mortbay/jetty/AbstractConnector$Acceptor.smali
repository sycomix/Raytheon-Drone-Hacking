.class Lorg/mortbay/jetty/AbstractConnector$Acceptor;
.super Ljava/lang/Object;
.source "AbstractConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/AbstractConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Acceptor"
.end annotation


# instance fields
.field _acceptor:I

.field private final this$0:Lorg/mortbay/jetty/AbstractConnector;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/AbstractConnector;I)V
    .locals 1
    .param p2, "id"    # I

    .prologue
    .line 681
    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->this$0:Lorg/mortbay/jetty/AbstractConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->_acceptor:I

    .line 682
    iput p2, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->_acceptor:I

    .line 683
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 688
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 690
    .local v0, "current":Ljava/lang/Thread;
    iget-object v5, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->this$0:Lorg/mortbay/jetty/AbstractConnector;

    monitor-enter v5

    .line 692
    :try_start_0
    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->this$0:Lorg/mortbay/jetty/AbstractConnector;

    invoke-static {v4}, Lorg/mortbay/jetty/AbstractConnector;->access$000(Lorg/mortbay/jetty/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v4

    if-nez v4, :cond_0

    .line 693
    monitor-exit v5

    .line 739
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->this$0:Lorg/mortbay/jetty/AbstractConnector;

    invoke-static {v4}, Lorg/mortbay/jetty/AbstractConnector;->access$000(Lorg/mortbay/jetty/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v4

    iget v6, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->_acceptor:I

    aput-object v0, v4, v6

    .line 696
    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->this$0:Lorg/mortbay/jetty/AbstractConnector;

    invoke-static {v4}, Lorg/mortbay/jetty/AbstractConnector;->access$000(Lorg/mortbay/jetty/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v4

    iget v6, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->_acceptor:I

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 697
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v6, " - Acceptor"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v6, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->_acceptor:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v6, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->this$0:Lorg/mortbay/jetty/AbstractConnector;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 698
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 699
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v3

    .line 703
    .local v3, "old_priority":I
    :try_start_1
    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->this$0:Lorg/mortbay/jetty/AbstractConnector;

    invoke-static {v4}, Lorg/mortbay/jetty/AbstractConnector;->access$100(Lorg/mortbay/jetty/AbstractConnector;)I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 704
    :goto_1
    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->this$0:Lorg/mortbay/jetty/AbstractConnector;

    invoke-virtual {v4}, Lorg/mortbay/jetty/AbstractConnector;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->this$0:Lorg/mortbay/jetty/AbstractConnector;

    invoke-virtual {v4}, Lorg/mortbay/jetty/AbstractConnector;->getConnection()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_2

    .line 708
    :try_start_2
    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->this$0:Lorg/mortbay/jetty/AbstractConnector;

    iget v5, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->_acceptor:I

    invoke-virtual {v4, v5}, Lorg/mortbay/jetty/AbstractConnector;->accept(I)V
    :try_end_2
    .catch Lorg/mortbay/jetty/EofException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 710
    :catch_0
    move-exception v1

    .line 712
    .local v1, "e":Lorg/mortbay/jetty/EofException;
    :try_start_3
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 730
    .end local v1    # "e":Lorg/mortbay/jetty/EofException;
    :catchall_0
    move-exception v4

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 731
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 733
    iget-object v5, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->this$0:Lorg/mortbay/jetty/AbstractConnector;

    monitor-enter v5

    .line 735
    :try_start_4
    iget-object v6, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->this$0:Lorg/mortbay/jetty/AbstractConnector;

    invoke-static {v6}, Lorg/mortbay/jetty/AbstractConnector;->access$000(Lorg/mortbay/jetty/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 736
    iget-object v6, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->this$0:Lorg/mortbay/jetty/AbstractConnector;

    invoke-static {v6}, Lorg/mortbay/jetty/AbstractConnector;->access$000(Lorg/mortbay/jetty/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v6

    iget v7, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->_acceptor:I

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 737
    :cond_1
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 730
    throw v4

    .line 698
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "old_priority":I
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 714
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "old_priority":I
    :catch_1
    move-exception v1

    .line 716
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 718
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 720
    .local v1, "e":Ljava/lang/ThreadDeath;
    throw v1

    .line 722
    .end local v1    # "e":Ljava/lang/ThreadDeath;
    :catch_3
    move-exception v1

    .line 724
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 737
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_2
    move-exception v4

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v4

    .line 730
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 731
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 733
    iget-object v5, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->this$0:Lorg/mortbay/jetty/AbstractConnector;

    monitor-enter v5

    .line 735
    :try_start_8
    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->this$0:Lorg/mortbay/jetty/AbstractConnector;

    invoke-static {v4}, Lorg/mortbay/jetty/AbstractConnector;->access$000(Lorg/mortbay/jetty/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 736
    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->this$0:Lorg/mortbay/jetty/AbstractConnector;

    invoke-static {v4}, Lorg/mortbay/jetty/AbstractConnector;->access$000(Lorg/mortbay/jetty/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v4

    iget v6, p0, Lorg/mortbay/jetty/AbstractConnector$Acceptor;->_acceptor:I

    const/4 v7, 0x0

    aput-object v7, v4, v6

    .line 737
    :cond_3
    monitor-exit v5

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v4
.end method
