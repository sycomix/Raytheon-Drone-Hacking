.class public Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;
.super Lorg/mortbay/jetty/bio/SocketConnector$Connection;
.source "SslSocketConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/SslSocketConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SslConnection"
.end annotation


# instance fields
.field private final this$0:Lorg/mortbay/jetty/security/SslSocketConnector;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/security/SslSocketConnector;Ljava/net/Socket;)V
    .locals 0
    .param p2, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;->this$0:Lorg/mortbay/jetty/security/SslSocketConnector;

    .line 673
    invoke-direct {p0, p1, p2}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;-><init>(Lorg/mortbay/jetty/bio/SocketConnector;Ljava/net/Socket;)V

    .line 674
    return-void
.end method

.method static access$000(Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;)Lorg/mortbay/jetty/security/SslSocketConnector;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;

    .prologue
    .line 669
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;->this$0:Lorg/mortbay/jetty/security/SslSocketConnector;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 685
    :try_start_0
    iget-object v5, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;->this$0:Lorg/mortbay/jetty/security/SslSocketConnector;

    invoke-virtual {v5}, Lorg/mortbay/jetty/security/SslSocketConnector;->getHandshakeTimeout()I

    move-result v2

    .line 686
    .local v2, "handshakeTimeout":I
    iget-object v5, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;->_socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getSoTimeout()I

    move-result v3

    .line 687
    .local v3, "oldTimeout":I
    if-lez v2, :cond_0

    .line 688
    iget-object v5, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;->_socket:Ljava/net/Socket;

    invoke-virtual {v5, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 690
    :cond_0
    iget-object v4, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;->_socket:Ljava/net/Socket;

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    .line 691
    .local v4, "ssl":Ljavax/net/ssl/SSLSocket;
    new-instance v5, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;

    invoke-direct {v5, p0, v4}, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;-><init>(Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;Ljavax/net/ssl/SSLSocket;)V

    invoke-virtual {v4, v5}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 708
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 710
    if-lez v2, :cond_1

    .line 711
    iget-object v5, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;->_socket:Ljava/net/Socket;

    invoke-virtual {v5, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 713
    :cond_1
    invoke-super {p0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->run()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 727
    .end local v2    # "handshakeTimeout":I
    .end local v3    # "oldTimeout":I
    .end local v4    # "ssl":Ljavax/net/ssl/SSLSocket;
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Ljavax/net/ssl/SSLException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    .line 718
    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 719
    :catch_1
    move-exception v1

    .local v1, "e2":Ljava/io/IOException;
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 721
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .end local v1    # "e2":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 723
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 724
    :try_start_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 725
    :catch_3
    move-exception v1

    .restart local v1    # "e2":Ljava/io/IOException;
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public shutdownOutput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;->close()V

    .line 679
    return-void
.end method
