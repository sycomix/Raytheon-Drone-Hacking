.class public Lorg/mortbay/jetty/servlet/ServletMapping;
.super Ljava/lang/Object;
.source "ServletMapping.java"


# instance fields
.field private _pathSpecs:[Ljava/lang/String;

.field private _servletName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public getPathSpecs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletMapping;->_pathSpecs:[Ljava/lang/String;

    return-object v0
.end method

.method public getServletName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletMapping;->_servletName:Ljava/lang/String;

    return-object v0
.end method

.method public setPathSpec(Ljava/lang/String;)V
    .locals 2
    .param p1, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletMapping;->_pathSpecs:[Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setPathSpecs([Ljava/lang/String;)V
    .locals 0
    .param p1, "pathSpecs"    # [Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletMapping;->_pathSpecs:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setServletName(Ljava/lang/String;)V
    .locals 0
    .param p1, "servletName"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletMapping;->_servletName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(S="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletMapping;->_servletName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletMapping;->_pathSpecs:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "[]"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletMapping;->_pathSpecs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
