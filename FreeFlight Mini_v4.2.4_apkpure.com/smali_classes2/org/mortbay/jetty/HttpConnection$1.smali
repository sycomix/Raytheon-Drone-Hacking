.class Lorg/mortbay/jetty/HttpConnection$1;
.super Ljava/io/PrintWriter;
.source "HttpConnection.java"


# instance fields
.field private final this$0:Lorg/mortbay/jetty/HttpConnection;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/HttpConnection;Ljava/io/Writer;)V
    .locals 0
    .param p2, "x0"    # Ljava/io/Writer;

    .prologue
    .line 340
    iput-object p1, p0, Lorg/mortbay/jetty/HttpConnection$1;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-direct {p0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 349
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$1;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 354
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection$1;->setError()V

    goto :goto_0
.end method
