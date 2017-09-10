.class Lorg/mortbay/jetty/Request$1;
.super Ljava/io/BufferedReader;
.source "Request.java"


# instance fields
.field private final this$0:Lorg/mortbay/jetty/Request;

.field private final val$in:Ljavax/servlet/ServletInputStream;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/Request;Ljava/io/Reader;Ljavax/servlet/ServletInputStream;)V
    .locals 0
    .param p2, "x0"    # Ljava/io/Reader;

    .prologue
    .line 950
    iput-object p1, p0, Lorg/mortbay/jetty/Request$1;->this$0:Lorg/mortbay/jetty/Request;

    iput-object p3, p0, Lorg/mortbay/jetty/Request$1;->val$in:Ljavax/servlet/ServletInputStream;

    invoke-direct {p0, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 953
    iget-object v0, p0, Lorg/mortbay/jetty/Request$1;->val$in:Ljavax/servlet/ServletInputStream;

    invoke-virtual {v0}, Ljavax/servlet/ServletInputStream;->close()V

    .line 954
    return-void
.end method
