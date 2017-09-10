.class public Lorg/mortbay/servlet/GzipFilter$GzipStream;
.super Ljavax/servlet/ServletOutputStream;
.source "GzipFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/servlet/GzipFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GzipStream"
.end annotation


# instance fields
.field protected _bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

.field protected _bufferSize:I

.field protected _closed:Z

.field protected _contentLength:J

.field protected _gzOut:Ljava/util/zip/GZIPOutputStream;

.field protected _minGzipSize:I

.field protected _out:Ljava/io/OutputStream;

.field protected _request:Ljavax/servlet/http/HttpServletRequest;

.field protected _response:Ljavax/servlet/http/HttpServletResponse;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)V
    .locals 1
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
    .line 409
    invoke-direct {p0}, Ljavax/servlet/ServletOutputStream;-><init>()V

    .line 410
    iput-object p1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_request:Ljavax/servlet/http/HttpServletRequest;

    .line 411
    iput-object p2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    .line 412
    iput-wide p3, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    .line 413
    iput p5, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bufferSize:I

    .line 414
    iput p6, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_minGzipSize:I

    .line 415
    if-nez p6, :cond_0

    .line 416
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doGzip()V

    .line 417
    :cond_0
    return-void
.end method

.method private checkOut(I)V
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 564
    iget-boolean v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_closed:Z

    if-eqz v0, :cond_0

    .line 565
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_0
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    if-nez v0, :cond_5

    .line 569
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    iget v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_minGzipSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 570
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doNotGzip()V

    .line 583
    :cond_2
    :goto_0
    return-void

    .line 571
    :cond_3
    iget v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_minGzipSize:I

    if-le p1, v0, :cond_4

    .line 572
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doGzip()V

    goto :goto_0

    .line 574
    :cond_4
    new-instance v0, Lorg/mortbay/util/ByteArrayOutputStream2;

    iget v1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bufferSize:I

    invoke-direct {v0, v1}, Lorg/mortbay/util/ByteArrayOutputStream2;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    goto :goto_0

    .line 576
    :cond_5
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_6

    iget-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    iget-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    iget v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_minGzipSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    .line 579
    :cond_6
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doNotGzip()V

    goto :goto_0

    .line 580
    :cond_7
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/mortbay/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/mortbay/util/ByteArrayOutputStream2;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_2

    .line 581
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doGzip()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_request:Ljavax/servlet/http/HttpServletRequest;

    const-string v1, "javax.servlet.include.request_uri"

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->flush()V

    .line 473
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_4

    .line 455
    iget-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 456
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/mortbay/util/ByteArrayOutputStream2;->getCount()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    .line 457
    :cond_1
    iget-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    iget v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_minGzipSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 458
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doNotGzip()V

    .line 467
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    if-eqz v0, :cond_5

    .line 468
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 471
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_closed:Z

    goto :goto_0

    .line 460
    :cond_3
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doGzip()V

    goto :goto_1

    .line 462
    :cond_4
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    .line 464
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doNotGzip()V

    goto :goto_1

    .line 470
    :cond_5
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_2
.end method

.method public doGzip()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    if-nez v0, :cond_1

    .line 523
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 526
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->setContentEncodingGzip()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v1}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v1

    iget v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    .line 530
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/mortbay/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v3}, Lorg/mortbay/util/ByteArrayOutputStream2;->getCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    .line 539
    :cond_1
    :goto_0
    return-void

    .line 537
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doNotGzip()V

    goto :goto_0
.end method

.method public doNotGzip()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    if-eqz v0, :cond_0

    .line 544
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 545
    :cond_0
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_4

    .line 547
    :cond_1
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    .line 548
    iget-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 550
    iget-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 551
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    iget-wide v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    long-to-int v1, v2

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 556
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_3

    .line 557
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/mortbay/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v3}, Lorg/mortbay/util/ByteArrayOutputStream2;->getCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 558
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    .line 560
    :cond_4
    return-void

    .line 553
    :cond_5
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    const-string v1, "Content-Length"

    iget-wide v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    iget-boolean v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_closed:Z

    if-nez v0, :cond_2

    .line 479
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_1

    .line 481
    :cond_0
    iget-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    iget v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_minGzipSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 482
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doNotGzip()V

    .line 487
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_closed:Z

    if-nez v0, :cond_2

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_closed:Z

    .line 490
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 493
    :cond_2
    return-void

    .line 484
    :cond_3
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doGzip()V

    goto :goto_0
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_1

    .line 438
    :cond_0
    iget-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    iget v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_minGzipSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 439
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doNotGzip()V

    .line 444
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 445
    return-void

    .line 441
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doGzip()V

    goto :goto_0
.end method

.method public resetBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_closed:Z

    .line 422
    iput-object v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    .line 423
    iput-object v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    .line 424
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_0
    iput-object v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    .line 427
    return-void
.end method

.method protected setContentEncodingGzip()Z
    .locals 3

    .prologue
    .line 515
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setContentLength(J)V
    .locals 1
    .param p1, "length"    # J

    .prologue
    .line 431
    iput-wide p1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    .line 432
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->checkOut(I)V

    .line 498
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 499
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->checkOut(I)V

    .line 504
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 505
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-direct {p0, p3}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->checkOut(I)V

    .line 510
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 511
    return-void
.end method
