.class public Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;
.super Ljavax/servlet/http/HttpServletResponseWrapper;
.source "GzipFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/servlet/GzipFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GZIPResponseWrapper"
.end annotation


# instance fields
.field _contentLength:J

.field _gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

.field _noGzip:Z

.field _request:Ljavax/servlet/http/HttpServletRequest;

.field _writer:Ljava/io/PrintWriter;

.field private final this$0:Lorg/mortbay/servlet/GzipFilter;


# direct methods
.method public constructor <init>(Lorg/mortbay/servlet/GzipFilter;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p3, "response"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 180
    iput-object p1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->this$0:Lorg/mortbay/servlet/GzipFilter;

    .line 181
    invoke-direct {p0, p3}, Ljavax/servlet/http/HttpServletResponseWrapper;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    .line 177
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_contentLength:J

    .line 182
    iput-object p2, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_request:Ljavax/servlet/http/HttpServletRequest;

    .line 183
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 228
    const-string v0, "content-length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_contentLength:J

    .line 231
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    iget-wide v2, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_contentLength:J

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->setContentLength(J)V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const-string v0, "content-type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {p0, p2}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_2
    const-string v0, "content-encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->noGzip()V

    goto :goto_0

    .line 247
    :cond_3
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_writer:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    iget-boolean v0, v0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_closed:Z

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 385
    :cond_0
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    invoke-virtual {v0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->finish()V

    .line 387
    :cond_1
    return-void
.end method

.method public flushBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_writer:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    invoke-virtual {v0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->finish()V

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->flushBuffer()V

    goto :goto_0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-nez v0, :cond_3

    .line 338
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_noGzip:Z

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    .line 341
    :cond_1
    iget-object v2, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_request:Ljavax/servlet/http/HttpServletRequest;

    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v3

    check-cast v3, Ljavax/servlet/http/HttpServletResponse;

    iget-wide v4, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_contentLength:J

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->this$0:Lorg/mortbay/servlet/GzipFilter;

    iget v6, v0, Lorg/mortbay/servlet/GzipFilter;->_bufferSize:I

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->this$0:Lorg/mortbay/servlet/GzipFilter;

    iget v7, v0, Lorg/mortbay/servlet/GzipFilter;->_minGzipSize:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->newGzipStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)Lorg/mortbay/servlet/GzipFilter$GzipStream;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    .line 346
    :cond_2
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    goto :goto_0

    .line 343
    :cond_3
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_writer:Ljava/io/PrintWriter;

    if-eqz v0, :cond_2

    .line 344
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getWriter() called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_writer:Ljava/io/PrintWriter;

    if-nez v0, :cond_3

    .line 353
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getOutputStream() called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_noGzip:Z

    if-eqz v0, :cond_2

    .line 357
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 362
    :goto_0
    return-object v0

    .line 359
    :cond_2
    iget-object v2, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_request:Ljavax/servlet/http/HttpServletRequest;

    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v3

    check-cast v3, Ljavax/servlet/http/HttpServletResponse;

    iget-wide v4, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_contentLength:J

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->this$0:Lorg/mortbay/servlet/GzipFilter;

    iget v6, v0, Lorg/mortbay/servlet/GzipFilter;->_bufferSize:I

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->this$0:Lorg/mortbay/servlet/GzipFilter;

    iget v7, v0, Lorg/mortbay/servlet/GzipFilter;->_minGzipSize:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->newGzipStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)Lorg/mortbay/servlet/GzipFilter$GzipStream;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    .line 360
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->this$0:Lorg/mortbay/servlet/GzipFilter;

    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/servlet/GzipFilter;->newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_writer:Ljava/io/PrintWriter;

    .line 362
    :cond_3
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_writer:Ljava/io/PrintWriter;

    goto :goto_0
.end method

.method protected newGzipStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)Lorg/mortbay/servlet/GzipFilter$GzipStream;
    .locals 9
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "contentLength"    # J
    .param p5, "bufferSize"    # I
    .param p6, "minGzipSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    new-instance v1, Lorg/mortbay/servlet/GzipFilter$GzipStream;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/mortbay/servlet/GzipFilter$GzipStream;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)V

    return-object v1
.end method

.method noGzip()V
    .locals 2

    .prologue
    .line 367
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_noGzip:Z

    .line 368
    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz v1, :cond_0

    .line 372
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    invoke-virtual {v1}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doNotGzip()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-super {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->reset()V

    .line 299
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    invoke-virtual {v0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->resetBuffer()V

    .line 301
    :cond_0
    iput-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_writer:Ljava/io/PrintWriter;

    .line 302
    iput-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_noGzip:Z

    .line 304
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_contentLength:J

    .line 305
    return-void
.end method

.method public resetBuffer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 309
    invoke-super {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->resetBuffer()V

    .line 310
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    invoke-virtual {v0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->resetBuffer()V

    .line 312
    :cond_0
    iput-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_writer:Ljava/io/PrintWriter;

    .line 313
    iput-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    .line 314
    return-void
.end method

.method public sendError(I)V
    .locals 0
    .param p1, "sc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->resetBuffer()V

    .line 325
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->sendError(I)V

    .line 326
    return-void
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 0
    .param p1, "sc"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->resetBuffer()V

    .line 319
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->sendError(ILjava/lang/String;)V

    .line 320
    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->resetBuffer()V

    .line 331
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->sendRedirect(Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public setContentLength(I)V
    .locals 4
    .param p1, "length"    # I

    .prologue
    .line 221
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_contentLength:J

    .line 222
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->setContentLength(J)V

    .line 224
    :cond_0
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 3
    .param p1, "ct"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->setContentType(Ljava/lang/String;)V

    .line 189
    if-eqz p1, :cond_0

    .line 191
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, "colon":I
    if-lez v0, :cond_0

    .line 193
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 196
    .end local v0    # "colon":I
    :cond_0
    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    iget-object v1, v1, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    if-nez v1, :cond_4

    :cond_1
    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->this$0:Lorg/mortbay/servlet/GzipFilter;

    iget-object v1, v1, Lorg/mortbay/servlet/GzipFilter;->_mimeTypes:Ljava/util/Set;

    if-nez v1, :cond_2

    const-string v1, "application/gzip"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->this$0:Lorg/mortbay/servlet/GzipFilter;

    iget-object v1, v1, Lorg/mortbay/servlet/GzipFilter;->_mimeTypes:Ljava/util/Set;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->this$0:Lorg/mortbay/servlet/GzipFilter;

    iget-object v1, v1, Lorg/mortbay/servlet/GzipFilter;->_mimeTypes:Ljava/util/Set;

    invoke-static {p1}, Lorg/mortbay/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 200
    :cond_3
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->noGzip()V

    .line 202
    :cond_4
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 252
    const-string v0, "content-length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_contentLength:J

    .line 255
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    iget-wide v2, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_contentLength:J

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->setContentLength(J)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    const-string v0, "content-type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {p0, p2}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_2
    const-string v0, "content-encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->noGzip()V

    goto :goto_0

    .line 271
    :cond_3
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 276
    const-string v0, "content-length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    int-to-long v0, p2

    iput-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_contentLength:J

    .line 279
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_gzStream:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    iget-wide v2, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->_contentLength:J

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->setContentLength(J)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setIntHeader(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setStatus(I)V
    .locals 1
    .param p1, "sc"    # I

    .prologue
    .line 214
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->setStatus(I)V

    .line 215
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1

    .line 216
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->noGzip()V

    .line 217
    :cond_1
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1
    .param p1, "sc"    # I
    .param p2, "sm"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setStatus(ILjava/lang/String;)V

    .line 208
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1

    .line 209
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->noGzip()V

    .line 210
    :cond_1
    return-void
.end method
