.class public Lorg/mortbay/util/ajax/AjaxFilter;
.super Ljava/lang/Object;
.source "AjaxFilter.java"

# interfaces
.implements Ljavax/servlet/Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/util/ajax/AjaxFilter$1;,
        Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;
    }
.end annotation


# instance fields
.field context:Ljavax/servlet/ServletContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method public static encodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 106
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 107
    .local v1, "c":C
    const/4 v3, 0x0

    .line 108
    .local v3, "r":Ljava/lang/String;
    sparse-switch v1, :sswitch_data_0

    .line 115
    :goto_1
    if-eqz v3, :cond_2

    .line 117
    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0    # "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 120
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 122
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :sswitch_0
    const-string v3, "&lt;"

    goto :goto_1

    .line 111
    :sswitch_1
    const-string v3, "&gt;"

    goto :goto_1

    .line 112
    :sswitch_2
    const-string v3, "&amp;"

    goto :goto_1

    .line 124
    :cond_2
    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 128
    .end local v1    # "c":C
    .end local v3    # "r":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 130
    .end local p0    # "s":Ljava/lang/String;
    :cond_4
    return-object p0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/util/ajax/AjaxFilter;->context:Ljavax/servlet/ServletContext;

    .line 99
    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 12
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
    .line 58
    const-string v9, "ajax"

    invoke-interface {p1, v9}, Ljavax/servlet/ServletRequest;->getParameterValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "method":[Ljava/lang/String;
    const-string v9, "message"

    invoke-interface {p1, v9}, Ljavax/servlet/ServletRequest;->getParameterValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "message":[Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v9, v4

    if-lez v9, :cond_1

    move-object v7, p1

    .line 63
    check-cast v7, Ljavax/servlet/http/HttpServletRequest;

    .local v7, "srequest":Ljavax/servlet/http/HttpServletRequest;
    move-object v8, p2

    .line 64
    check-cast v8, Ljavax/servlet/http/HttpServletResponse;

    .line 66
    .local v8, "sresponse":Ljavax/servlet/http/HttpServletResponse;
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 67
    .local v6, "sout":Ljava/io/StringWriter;
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 69
    .local v5, "out":Ljava/io/PrintWriter;
    const-string v9, "<ajax-response>"

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    new-instance v0, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;

    const/4 v9, 0x0

    invoke-direct {v0, v7, v5, v9}, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljava/io/PrintWriter;Lorg/mortbay/util/ajax/AjaxFilter$1;)V

    .line 72
    .local v0, "aResponse":Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v4

    if-ge v2, v9, :cond_0

    .line 74
    aget-object v9, v4, v2

    aget-object v10, v3, v2

    invoke-virtual {p0, v9, v10, v7, v0}, Lorg/mortbay/util/ajax/AjaxFilter;->handle(Ljava/lang/String;Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;)V

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    const-string v9, "</ajax-response>"

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 79
    .local v1, "ajax":[B
    const-string v9, "Pragma"

    const-string v10, "no-cache"

    invoke-interface {v8, v9, v10}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v9, "Cache-Control"

    const-string v10, "must-revalidate,no-cache,no-store"

    invoke-interface {v8, v9, v10}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v9, "Expires"

    const-wide/16 v10, 0x0

    invoke-interface {v8, v9, v10, v11}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 82
    const-string v9, "text/xml; charset=UTF-8"

    invoke-interface {v8, v9}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 83
    array-length v9, v1

    invoke-interface {v8, v9}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 84
    invoke-interface {v8}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljavax/servlet/ServletOutputStream;->write([B)V

    .line 85
    invoke-interface {v8}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 89
    .end local v0    # "aResponse":Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;
    .end local v1    # "ajax":[B
    .end local v2    # "i":I
    .end local v5    # "out":Ljava/io/PrintWriter;
    .end local v6    # "sout":Ljava/io/StringWriter;
    .end local v7    # "srequest":Ljavax/servlet/http/HttpServletRequest;
    .end local v8    # "sresponse":Ljavax/servlet/http/HttpServletResponse;
    :goto_1
    return-void

    .line 88
    :cond_1
    invoke-interface {p3, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_1
.end method

.method public getContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/mortbay/util/ajax/AjaxFilter;->context:Ljavax/servlet/ServletContext;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;

    .prologue
    .line 93
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "<span class=\"error\">No implementation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "member"

    invoke-interface {p3, v2}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</span>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;->elementResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 1
    .param p1, "filterConfig"    # Ljavax/servlet/FilterConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-interface {p1}, Ljavax/servlet/FilterConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/util/ajax/AjaxFilter;->context:Ljavax/servlet/ServletContext;

    .line 44
    return-void
.end method
