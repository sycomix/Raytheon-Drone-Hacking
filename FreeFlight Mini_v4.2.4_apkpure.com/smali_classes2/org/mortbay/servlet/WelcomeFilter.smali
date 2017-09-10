.class public Lorg/mortbay/servlet/WelcomeFilter;
.super Ljava/lang/Object;
.source "WelcomeFilter.java"

# interfaces
.implements Ljavax/servlet/Filter;


# instance fields
.field private welcome:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 3
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "chain"    # Ljavax/servlet/FilterChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v1, p1

    check-cast v1, Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lorg/mortbay/servlet/WelcomeFilter;->welcome:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/servlet/WelcomeFilter;->welcome:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/servlet/ServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljavax/servlet/RequestDispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-interface {p3, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_0
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 1
    .param p1, "filterConfig"    # Ljavax/servlet/FilterConfig;

    .prologue
    .line 46
    const-string v0, "welcome"

    invoke-interface {p1, v0}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/WelcomeFilter;->welcome:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lorg/mortbay/servlet/WelcomeFilter;->welcome:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    const-string v0, "index.html"

    iput-object v0, p0, Lorg/mortbay/servlet/WelcomeFilter;->welcome:Ljava/lang/String;

    .line 49
    :cond_0
    return-void
.end method
