.class public Lorg/mortbay/servlet/jetty/IncludableGzipFilter;
.super Lorg/mortbay/servlet/GzipFilter;
.source "IncludableGzipFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableGzipStream;,
        Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableResponseWrapper;
    }
.end annotation


# instance fields
.field _uncheckedPrintWriter:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/mortbay/servlet/GzipFilter;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/servlet/jetty/IncludableGzipFilter;->_uncheckedPrintWriter:Z

    .line 75
    return-void
.end method


# virtual methods
.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 2
    .param p1, "filterConfig"    # Ljavax/servlet/FilterConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-super {p0, p1}, Lorg/mortbay/servlet/GzipFilter;->init(Ljavax/servlet/FilterConfig;)V

    .line 52
    const-string v1, "uncheckedPrintWriter"

    invoke-interface {p1, v1}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "tmp":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 54
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lorg/mortbay/servlet/jetty/IncludableGzipFilter;->_uncheckedPrintWriter:Z

    .line 55
    :cond_0
    return-void
.end method

.method protected newGZIPResponseWrapper(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 59
    new-instance v0, Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableResponseWrapper;

    invoke-direct {v0, p0, p1, p2}, Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableResponseWrapper;-><init>(Lorg/mortbay/servlet/jetty/IncludableGzipFilter;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-object v0
.end method

.method protected newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/mortbay/servlet/jetty/IncludableGzipFilter;->_uncheckedPrintWriter:Z

    if-eqz v0, :cond_1

    .line 94
    if-nez p2, :cond_0

    new-instance v0, Lorg/mortbay/io/UncheckedPrintWriter;

    invoke-direct {v0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 95
    :goto_0
    return-object v0

    .line 94
    :cond_0
    new-instance v0, Lorg/mortbay/io/UncheckedPrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/mortbay/io/UncheckedPrintWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/mortbay/servlet/GzipFilter;->newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    goto :goto_0
.end method
