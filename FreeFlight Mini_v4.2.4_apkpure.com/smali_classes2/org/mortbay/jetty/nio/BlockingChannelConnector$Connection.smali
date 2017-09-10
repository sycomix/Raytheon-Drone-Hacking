.class Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;
.super Lorg/mortbay/io/nio/ChannelEndPoint;
.source "BlockingChannelConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/nio/BlockingChannelConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field _connection:Lorg/mortbay/jetty/HttpConnection;

.field _dispatched:Z

.field _sotimeout:I

.field private final this$0:Lorg/mortbay/jetty/nio/BlockingChannelConnector;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/nio/BlockingChannelConnector;Ljava/nio/channels/ByteChannel;)V
    .locals 2
    .param p2, "channel"    # Ljava/nio/channels/ByteChannel;

    .prologue
    .line 130
    iput-object p1, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->this$0:Lorg/mortbay/jetty/nio/BlockingChannelConnector;

    .line 131
    invoke-direct {p0, p2}, Lorg/mortbay/io/nio/ChannelEndPoint;-><init>(Ljava/nio/channels/ByteChannel;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->_dispatched:Z

    .line 132
    new-instance v0, Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lorg/mortbay/jetty/HttpConnection;-><init>(Lorg/mortbay/jetty/Connector;Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Server;)V

    iput-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    .line 133
    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->this$0:Lorg/mortbay/jetty/nio/BlockingChannelConnector;

    invoke-virtual {v0}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mortbay/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const-string v0, "dispatch failed for  {}"

    iget-object v1, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->close()V

    .line 142
    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 148
    :try_start_0
    iget-object v3, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->this$0:Lorg/mortbay/jetty/nio/BlockingChannelConnector;

    iget-object v4, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v3, v4}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->access$000(Lorg/mortbay/jetty/nio/BlockingChannelConnector;Lorg/mortbay/jetty/HttpConnection;)V

    .line 150
    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    iget-object v3, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpConnection;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    iget-object v3, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->this$0:Lorg/mortbay/jetty/nio/BlockingChannelConnector;

    invoke-virtual {v3}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/Server;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v3

    invoke-interface {v3}, Lorg/mortbay/thread/ThreadPool;->isLowOnThreads()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    iget-object v3, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->this$0:Lorg/mortbay/jetty/nio/BlockingChannelConnector;

    invoke-virtual {v3}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->getLowResourceMaxIdleTime()I

    move-result v2

    .line 157
    .local v2, "lrmit":I
    if-ltz v2, :cond_0

    iget v3, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->_sotimeout:I

    if-eq v3, v2, :cond_0

    .line 159
    iput v2, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->_sotimeout:I

    .line 160
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->getTransport()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    iget v4, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->_sotimeout:I

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 164
    .end local v2    # "lrmit":I
    :cond_0
    iget-object v3, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpConnection;->handle()V
    :try_end_0
    .catch Lorg/mortbay/jetty/EofException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Lorg/mortbay/jetty/EofException;
    :try_start_1
    const-string v3, "EOF"

    invoke-static {v3, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    :goto_1
    iget-object v3, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->this$0:Lorg/mortbay/jetty/nio/BlockingChannelConnector;

    iget-object v4, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    .end local v0    # "e":Lorg/mortbay/jetty/EofException;
    :goto_2
    invoke-static {v3, v4}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->access$100(Lorg/mortbay/jetty/nio/BlockingChannelConnector;Lorg/mortbay/jetty/HttpConnection;)V

    .line 189
    return-void

    .line 171
    .restart local v0    # "e":Lorg/mortbay/jetty/EofException;
    :catch_1
    move-exception v1

    .local v1, "e2":Ljava/io/IOException;
    :try_start_3
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 187
    .end local v0    # "e":Lorg/mortbay/jetty/EofException;
    .end local v1    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->this$0:Lorg/mortbay/jetty/nio/BlockingChannelConnector;

    iget-object v5, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v4, v5}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->access$100(Lorg/mortbay/jetty/nio/BlockingChannelConnector;Lorg/mortbay/jetty/HttpConnection;)V

    throw v3

    .line 173
    :catch_2
    move-exception v0

    .line 175
    .local v0, "e":Lorg/mortbay/jetty/HttpException;
    :try_start_4
    const-string v3, "BAD"

    invoke-static {v3, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    :try_start_5
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 187
    :goto_3
    iget-object v3, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->this$0:Lorg/mortbay/jetty/nio/BlockingChannelConnector;

    iget-object v4, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    goto :goto_2

    .line 177
    :catch_3
    move-exception v1

    .restart local v1    # "e2":Ljava/io/IOException;
    :try_start_6
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 179
    .end local v0    # "e":Lorg/mortbay/jetty/HttpException;
    .end local v1    # "e2":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "handle failed"

    invoke-static {v3, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 182
    :try_start_7
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 187
    :goto_4
    iget-object v3, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->this$0:Lorg/mortbay/jetty/nio/BlockingChannelConnector;

    iget-object v4, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    goto :goto_2

    .line 183
    :catch_5
    move-exception v1

    .restart local v1    # "e2":Ljava/io/IOException;
    :try_start_8
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 187
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "e2":Ljava/io/IOException;
    :cond_1
    iget-object v3, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->this$0:Lorg/mortbay/jetty/nio/BlockingChannelConnector;

    iget-object v4, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    goto :goto_2
.end method
