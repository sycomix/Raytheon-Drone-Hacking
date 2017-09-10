.class Lorg/mortbay/jetty/servlet/ServletHolder$Config;
.super Ljava/lang/Object;
.source "ServletHolder.java"

# interfaces
.implements Ljavax/servlet/ServletConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/ServletHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Config"
.end annotation


# instance fields
.field private final this$0:Lorg/mortbay/jetty/servlet/ServletHolder;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/servlet/ServletHolder;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder$Config;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 555
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$Config;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/ServletHolder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$Config;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$Config;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    return-object v0
.end method

.method public getServletName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$Config;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
