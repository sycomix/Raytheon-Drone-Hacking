.class public Lorg/mortbay/servlet/ConcatServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "ConcatServlet.java"


# instance fields
.field _context:Ljavax/servlet/ServletContext;

.field _development:Z

.field _lastModified:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method


# virtual methods
.method protected doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 8
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "q":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 90
    const/16 v6, 0xcc

    invoke-interface {p2, v6}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v6, "\\&"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "parts":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 96
    .local v5, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v2

    if-ge v1, v6, :cond_4

    .line 98
    iget-object v6, p0, Lorg/mortbay/servlet/ConcatServlet;->_context:Ljavax/servlet/ServletContext;

    aget-object v7, v2, v1

    invoke-interface {v6, v7}, Ljavax/servlet/ServletContext;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "t":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 101
    if-nez v5, :cond_3

    .line 102
    move-object v5, v4

    .line 96
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 105
    const/16 v6, 0x19f

    invoke-interface {p2, v6}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_0

    .line 111
    .end local v4    # "t":Ljava/lang/String;
    :cond_4
    if-eqz v5, :cond_5

    .line 112
    invoke-interface {p2, v5}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 114
    :cond_5
    const/4 v1, 0x0

    :goto_2
    array-length v6, v2

    if-ge v1, v6, :cond_0

    .line 116
    iget-object v6, p0, Lorg/mortbay/servlet/ConcatServlet;->_context:Ljavax/servlet/ServletContext;

    aget-object v7, v2, v1

    invoke-interface {v6, v7}, Ljavax/servlet/ServletContext;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v0

    .line 117
    .local v0, "dispatcher":Ljavax/servlet/RequestDispatcher;
    if-eqz v0, :cond_6

    .line 118
    invoke-interface {v0, p1, p2}, Ljavax/servlet/RequestDispatcher;->include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 114
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected getLastModified(Ljavax/servlet/http/HttpServletRequest;)J
    .locals 2
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/mortbay/servlet/ConcatServlet;->_development:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/mortbay/servlet/ConcatServlet;->_lastModified:J

    goto :goto_0
.end method

.method public init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/servlet/ConcatServlet;->_lastModified:J

    .line 71
    invoke-virtual {p0}, Lorg/mortbay/servlet/ConcatServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/ConcatServlet;->_context:Ljavax/servlet/ServletContext;

    .line 72
    const-string v0, "true"

    const-string v1, "development"

    invoke-virtual {p0, v1}, Lorg/mortbay/servlet/ConcatServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/servlet/ConcatServlet;->_development:Z

    .line 73
    return-void
.end method
