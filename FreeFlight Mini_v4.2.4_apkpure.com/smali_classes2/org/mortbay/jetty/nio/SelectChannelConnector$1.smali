.class Lorg/mortbay/jetty/nio/SelectChannelConnector$1;
.super Lorg/mortbay/io/nio/SelectorManager;
.source "SelectChannelConnector.java"


# instance fields
.field private final this$0:Lorg/mortbay/jetty/nio/SelectChannelConnector;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/nio/SelectChannelConnector;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$1;->this$0:Lorg/mortbay/jetty/nio/SelectChannelConnector;

    invoke-direct {p0}, Lorg/mortbay/io/nio/SelectorManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected acceptChannel(Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;
    .locals 3
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 76
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 81
    .end local v0    # "channel":Ljava/nio/channels/SocketChannel;
    :goto_0
    return-object v0

    .line 78
    .restart local v0    # "channel":Ljava/nio/channels/SocketChannel;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 79
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    .line 80
    .local v1, "socket":Ljava/net/Socket;
    iget-object v2, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$1;->this$0:Lorg/mortbay/jetty/nio/SelectChannelConnector;

    invoke-static {v2, v1}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->access$000(Lorg/mortbay/jetty/nio/SelectChannelConnector;Ljava/net/Socket;)V

    goto :goto_0
.end method

.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$1;->this$0:Lorg/mortbay/jetty/nio/SelectChannelConnector;

    invoke-virtual {v0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mortbay/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method protected endPointClosed(Lorg/mortbay/io/nio/SelectChannelEndPoint;)V
    .locals 2
    .param p1, "endpoint"    # Lorg/mortbay/io/nio/SelectChannelEndPoint;

    .prologue
    .line 92
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$1;->this$0:Lorg/mortbay/jetty/nio/SelectChannelConnector;

    invoke-virtual {p1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getConnection()Lorg/mortbay/io/Connection;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v1, v0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->access$100(Lorg/mortbay/jetty/nio/SelectChannelConnector;Lorg/mortbay/jetty/HttpConnection;)V

    .line 93
    return-void
.end method

.method protected endPointOpened(Lorg/mortbay/io/nio/SelectChannelEndPoint;)V
    .locals 2
    .param p1, "endpoint"    # Lorg/mortbay/io/nio/SelectChannelEndPoint;

    .prologue
    .line 98
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$1;->this$0:Lorg/mortbay/jetty/nio/SelectChannelConnector;

    invoke-virtual {p1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getConnection()Lorg/mortbay/io/Connection;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v1, v0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->access$200(Lorg/mortbay/jetty/nio/SelectChannelConnector;Lorg/mortbay/jetty/HttpConnection;)V

    .line 99
    return-void
.end method

.method protected newConnection(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectChannelEndPoint;)Lorg/mortbay/io/Connection;
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "endpoint"    # Lorg/mortbay/io/nio/SelectChannelEndPoint;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$1;->this$0:Lorg/mortbay/jetty/nio/SelectChannelConnector;

    invoke-virtual {v0, p1, p2}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->newConnection(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectChannelEndPoint;)Lorg/mortbay/io/Connection;

    move-result-object v0

    return-object v0
.end method

.method protected newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "selectSet"    # Lorg/mortbay/io/nio/SelectorManager$SelectSet;
    .param p3, "sKey"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$1;->this$0:Lorg/mortbay/jetty/nio/SelectChannelConnector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object v0

    return-object v0
.end method
