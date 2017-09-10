.class Lorg/mortbay/jetty/AbstractBuffers$1;
.super Ljava/lang/ThreadLocal;
.source "AbstractBuffers.java"


# instance fields
.field private final this$0:Lorg/mortbay/jetty/AbstractBuffers;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/AbstractBuffers;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lorg/mortbay/jetty/AbstractBuffers$1;->this$0:Lorg/mortbay/jetty/AbstractBuffers;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 45
    new-instance v0, Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;

    iget-object v1, p0, Lorg/mortbay/jetty/AbstractBuffers$1;->this$0:Lorg/mortbay/jetty/AbstractBuffers;

    invoke-static {v1}, Lorg/mortbay/jetty/AbstractBuffers;->access$000(Lorg/mortbay/jetty/AbstractBuffers;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractBuffers$1;->this$0:Lorg/mortbay/jetty/AbstractBuffers;

    invoke-static {v2}, Lorg/mortbay/jetty/AbstractBuffers;->access$000(Lorg/mortbay/jetty/AbstractBuffers;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lorg/mortbay/jetty/AbstractBuffers$1;->this$0:Lorg/mortbay/jetty/AbstractBuffers;

    invoke-static {v3}, Lorg/mortbay/jetty/AbstractBuffers;->access$000(Lorg/mortbay/jetty/AbstractBuffers;)[I

    move-result-object v3

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lorg/mortbay/jetty/AbstractBuffers$1;->this$0:Lorg/mortbay/jetty/AbstractBuffers;

    invoke-static {v4}, Lorg/mortbay/jetty/AbstractBuffers;->access$000(Lorg/mortbay/jetty/AbstractBuffers;)[I

    move-result-object v4

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;-><init>(IIII)V

    return-object v0
.end method
