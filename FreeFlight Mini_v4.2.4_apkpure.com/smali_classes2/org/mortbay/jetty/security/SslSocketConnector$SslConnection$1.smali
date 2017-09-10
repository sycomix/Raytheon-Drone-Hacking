.class Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;
.super Ljava/lang/Object;
.source "SslSocketConnector.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# instance fields
.field handshook:Z

.field private final this$1:Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;

.field private final val$ssl:Ljavax/net/ssl/SSLSocket;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;Ljavax/net/ssl/SSLSocket;)V
    .locals 1

    .prologue
    .line 692
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;->this$1:Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;

    iput-object p2, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;->val$ssl:Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;->handshook:Z

    return-void
.end method


# virtual methods
.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 3
    .param p1, "event"    # Ljavax/net/ssl/HandshakeCompletedEvent;

    .prologue
    .line 696
    iget-boolean v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;->handshook:Z

    if-eqz v1, :cond_1

    .line 698
    iget-object v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;->this$1:Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;

    invoke-static {v1}, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;->access$000(Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;)Lorg/mortbay/jetty/security/SslSocketConnector;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/jetty/security/SslSocketConnector;->access$100(Lorg/mortbay/jetty/security/SslSocketConnector;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 700
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "SSL renegotiate denied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;->val$ssl:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 701
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;->val$ssl:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 701
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 705
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;->handshook:Z

    goto :goto_0
.end method
