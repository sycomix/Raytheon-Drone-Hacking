.class public Ljavax/servlet/ServletResponseWrapper;
.super Ljava/lang/Object;
.source "ServletResponseWrapper.java"

# interfaces
.implements Ljavax/servlet/ServletResponse;


# instance fields
.field private response:Ljavax/servlet/ServletResponse;


# direct methods
.method public constructor <init>(Ljavax/servlet/ServletResponse;)V
    .locals 2
    .param p1, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    .line 62
    return-void
.end method


# virtual methods
.method public flushBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->flushBuffer()V

    .line 177
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getBufferSize()I

    move-result v0

    return v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getLocale()Ljava/util/Locale;

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
    .line 112
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    return-object v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->reset()V

    .line 194
    return-void
.end method

.method public resetBuffer()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->resetBuffer()V

    .line 203
    return-void
.end method

.method public setBufferSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 159
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletResponse;->setBufferSize(I)V

    .line 160
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletResponse;->setCharacterEncoding(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setContentLength(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 131
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletResponse;->setContentLength(I)V

    .line 132
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletResponse;->setContentType(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 211
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletResponse;->setLocale(Ljava/util/Locale;)V

    .line 212
    return-void
.end method

.method public setResponse(Ljavax/servlet/ServletResponse;)V
    .locals 2
    .param p1, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iput-object p1, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    .line 83
    return-void
.end method
