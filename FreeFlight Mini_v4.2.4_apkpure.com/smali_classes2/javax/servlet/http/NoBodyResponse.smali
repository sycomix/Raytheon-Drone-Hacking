.class Ljavax/servlet/http/NoBodyResponse;
.super Ljava/lang/Object;
.source "HttpServlet.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletResponse;


# instance fields
.field private didSetContentLength:Z

.field private noBody:Ljavax/servlet/http/NoBodyOutputStream;

.field private resp:Ljavax/servlet/http/HttpServletResponse;

.field private writer:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .param p1, "r"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    iput-object p1, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    .line 843
    new-instance v0, Ljavax/servlet/http/NoBodyOutputStream;

    invoke-direct {v0}, Ljavax/servlet/http/NoBodyOutputStream;-><init>()V

    iput-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->noBody:Ljavax/servlet/http/NoBodyOutputStream;

    .line 844
    return-void
.end method


# virtual methods
.method public addCookie(Ljavax/servlet/http/Cookie;)V
    .locals 1
    .param p1, "cookie"    # Ljavax/servlet/http/Cookie;

    .prologue
    .line 914
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->addCookie(Ljavax/servlet/http/Cookie;)V

    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 954
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->addDateHeader(Ljava/lang/String;J)V

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 951
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 957
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->addIntHeader(Ljava/lang/String;I)V

    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 917
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 948
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 987
    invoke-virtual {p0, p1}, Ljavax/servlet/http/NoBodyResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 945
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 970
    invoke-virtual {p0, p1}, Ljavax/servlet/http/NoBodyResponse;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public flushBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 902
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getBufferSize()I

    move-result v0

    return v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 870
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->noBody:Ljavax/servlet/http/NoBodyOutputStream;

    return-object v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 877
    iget-object v1, p0, Ljavax/servlet/http/NoBodyResponse;->writer:Ljava/io/PrintWriter;

    if-nez v1, :cond_0

    .line 880
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ljavax/servlet/http/NoBodyResponse;->noBody:Ljavax/servlet/http/NoBodyOutputStream;

    invoke-virtual {p0}, Ljavax/servlet/http/NoBodyResponse;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 881
    .local v0, "w":Ljava/io/OutputStreamWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Ljavax/servlet/http/NoBodyResponse;->writer:Ljava/io/PrintWriter;

    .line 883
    .end local v0    # "w":Ljava/io/OutputStreamWriter;
    :cond_0
    iget-object v1, p0, Ljavax/servlet/http/NoBodyResponse;->writer:Ljava/io/PrintWriter;

    return-object v1
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 893
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->reset()V

    return-void
.end method

.method public resetBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 896
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->resetBuffer()V

    return-void
.end method

.method public sendError(I)V
    .locals 1
    .param p1, "sc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 939
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    return-void
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 1
    .param p1, "sc"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 936
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 942
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    return-void
.end method

.method public setBufferSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 887
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setBufferSize(I)V

    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 861
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setCharacterEncoding(Ljava/lang/String;)V

    return-void
.end method

.method setContentLength()V
    .locals 2

    .prologue
    .line 848
    iget-boolean v0, p0, Ljavax/servlet/http/NoBodyResponse;->didSetContentLength:Z

    if-nez v0, :cond_0

    .line 849
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    iget-object v1, p0, Ljavax/servlet/http/NoBodyResponse;->noBody:Ljavax/servlet/http/NoBodyOutputStream;

    invoke-virtual {v1}, Ljavax/servlet/http/NoBodyOutputStream;->getContentLength()I

    move-result v1

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 850
    :cond_0
    return-void
.end method

.method public setContentLength(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 856
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 857
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/servlet/http/NoBodyResponse;->didSetContentLength:Z

    .line 858
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 864
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 933
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 927
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 930
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setIntHeader(Ljava/lang/String;I)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 905
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setStatus(I)V
    .locals 1
    .param p1, "sc"    # I

    .prologue
    .line 924
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1
    .param p1, "sc"    # I
    .param p2, "sm"    # Ljava/lang/String;

    .prologue
    .line 921
    iget-object v0, p0, Ljavax/servlet/http/NoBodyResponse;->resp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setStatus(ILjava/lang/String;)V

    return-void
.end method
