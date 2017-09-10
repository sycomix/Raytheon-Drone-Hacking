.class public Lorg/mortbay/jetty/bio/SocketConnector$Connection;
.super Lorg/mortbay/io/bio/SocketEndPoint;
.source "SocketConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/bio/SocketConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Connection"
.end annotation


# instance fields
.field _connection:Lorg/mortbay/jetty/HttpConnection;

.field _dispatched:Z

.field protected _socket:Ljava/net/Socket;

.field _sotimeout:I

.field private final this$0:Lorg/mortbay/jetty/bio/SocketConnector;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/bio/SocketConnector;Ljava/net/Socket;)V
    .locals 1
    .param p2, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iput-object p1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    .line 181
    invoke-direct {p0, p2}, Lorg/mortbay/io/bio/SocketEndPoint;-><init>(Ljava/net/Socket;)V

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_dispatched:Z

    .line 182
    invoke-virtual {p1, p0}, Lorg/mortbay/jetty/bio/SocketConnector;->newHttpConnection(Lorg/mortbay/io/EndPoint;)Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    .line 183
    invoke-virtual {p2}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_sotimeout:I

    .line 184
    iput-object p2, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_socket:Ljava/net/Socket;

    .line 185
    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-virtual {v0}, Lorg/mortbay/jetty/bio/SocketConnector;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-virtual {v0}, Lorg/mortbay/jetty/bio/SocketConnector;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mortbay/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    :cond_0
    const-string v0, "dispatch failed for {}"

    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->close()V

    .line 194
    :cond_1
    return-void
.end method

.method public fill(Lorg/mortbay/io/Buffer;)I
    .locals 1
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-super {p0, p1}, Lorg/mortbay/io/bio/SocketEndPoint;->fill(Lorg/mortbay/io/Buffer;)I

    move-result v0

    .line 199
    .local v0, "l":I
    if-gez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->close()V

    .line 201
    :cond_0
    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 208
    :try_start_0
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v4, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v3, v4}, Lorg/mortbay/jetty/bio/SocketConnector;->access$000(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V

    .line 209
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v4, v3, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v4
    :try_end_0
    .catch Lorg/mortbay/jetty/EofException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 211
    :try_start_1
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v3, v3, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :goto_0
    :try_start_2
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-virtual {v3}, Lorg/mortbay/jetty/bio/SocketConnector;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 216
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpConnection;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-virtual {v3}, Lorg/mortbay/jetty/bio/SocketConnector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/Server;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v3

    invoke-interface {v3}, Lorg/mortbay/thread/ThreadPool;->isLowOnThreads()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-virtual {v3}, Lorg/mortbay/jetty/bio/SocketConnector;->getLowResourceMaxIdleTime()I

    move-result v2

    .line 221
    .local v2, "lrmit":I
    if-ltz v2, :cond_0

    iget v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_sotimeout:I

    if-eq v3, v2, :cond_0

    .line 223
    iput v2, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_sotimeout:I

    .line 224
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_socket:Ljava/net/Socket;

    iget v4, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_sotimeout:I

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 228
    .end local v2    # "lrmit":I
    :cond_0
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpConnection;->handle()V
    :try_end_2
    .catch Lorg/mortbay/jetty/EofException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Lorg/mortbay/jetty/EofException;
    :try_start_3
    const-string v3, "EOF"

    invoke-static {v3, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 234
    :try_start_4
    invoke-virtual {p0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 251
    :goto_1
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v4, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v3, v4}, Lorg/mortbay/jetty/bio/SocketConnector;->access$100(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V

    .line 252
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v4, v3, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v4

    .line 254
    :try_start_5
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v3, v3, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 255
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 257
    .end local v0    # "e":Lorg/mortbay/jetty/EofException;
    :goto_2
    return-void

    .line 212
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v3
    :try_end_7
    .catch Lorg/mortbay/jetty/EofException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 237
    :catch_1
    move-exception v0

    .line 239
    .local v0, "e":Lorg/mortbay/jetty/HttpException;
    :try_start_8
    const-string v3, "BAD"

    invoke-static {v3, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 240
    :try_start_9
    invoke-virtual {p0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 251
    :goto_3
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v4, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v3, v4}, Lorg/mortbay/jetty/bio/SocketConnector;->access$100(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V

    .line 252
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v4, v3, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v4

    .line 254
    :try_start_a
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v3, v3, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 255
    monitor-exit v4

    goto :goto_2

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v3

    .line 235
    .local v0, "e":Lorg/mortbay/jetty/EofException;
    :catch_2
    move-exception v1

    .local v1, "e2":Ljava/io/IOException;
    :try_start_b
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_1

    .line 251
    .end local v0    # "e":Lorg/mortbay/jetty/EofException;
    .end local v1    # "e2":Ljava/io/IOException;
    :catchall_2
    move-exception v3

    iget-object v4, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v5, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v4, v5}, Lorg/mortbay/jetty/bio/SocketConnector;->access$100(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V

    .line 252
    iget-object v4, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v4, v4, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v4

    .line 254
    :try_start_c
    iget-object v5, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v5, v5, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v5, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 255
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 251
    throw v3

    .line 241
    .local v0, "e":Lorg/mortbay/jetty/HttpException;
    :catch_3
    move-exception v1

    .restart local v1    # "e2":Ljava/io/IOException;
    :try_start_d
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 243
    .end local v0    # "e":Lorg/mortbay/jetty/HttpException;
    .end local v1    # "e2":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "handle failed"

    invoke-static {v3, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 246
    :try_start_e
    invoke-virtual {p0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 251
    :goto_4
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v4, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v3, v4}, Lorg/mortbay/jetty/bio/SocketConnector;->access$100(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V

    .line 252
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v4, v3, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v4

    .line 254
    :try_start_f
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v3, v3, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 255
    monitor-exit v4

    goto :goto_2

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v3

    .line 247
    :catch_5
    move-exception v1

    .restart local v1    # "e2":Ljava/io/IOException;
    :try_start_10
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_4

    .line 255
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "e2":Ljava/io/IOException;
    :catchall_4
    move-exception v3

    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    throw v3

    .local v0, "e":Lorg/mortbay/jetty/EofException;
    :catchall_5
    move-exception v3

    :try_start_12
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw v3

    .line 251
    .end local v0    # "e":Lorg/mortbay/jetty/EofException;
    :cond_1
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v4, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v3, v4}, Lorg/mortbay/jetty/bio/SocketConnector;->access$100(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V

    .line 252
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v4, v3, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v4

    .line 254
    :try_start_13
    iget-object v3, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v3, v3, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 255
    monitor-exit v4

    goto/16 :goto_2

    :catchall_6
    move-exception v3

    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    throw v3
.end method
