.class Lorg/mortbay/jetty/servlet/FilterHolder$Config;
.super Ljava/lang/Object;
.source "FilterHolder.java"

# interfaces
.implements Ljavax/servlet/FilterConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/FilterHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Config"
.end annotation


# instance fields
.field private final this$0:Lorg/mortbay/jetty/servlet/FilterHolder;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/servlet/FilterHolder;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/FilterHolder$Config;->this$0:Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder$Config;->this$0:Lorg/mortbay/jetty/servlet/FilterHolder;

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/FilterHolder;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder$Config;->this$0:Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/FilterHolder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder$Config;->this$0:Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/FilterHolder;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder$Config;->this$0:Lorg/mortbay/jetty/servlet/FilterHolder;

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/FilterHolder;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    return-object v0
.end method
