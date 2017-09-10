.class public Lorg/mortbay/jetty/AbstractGenerator$Output;
.super Ljavax/servlet/ServletOutputStream;
.source "AbstractGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/AbstractGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Output"
.end annotation


# instance fields
.field protected _buf:Lorg/mortbay/io/ByteArrayBuffer;

.field _bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

.field _characterEncoding:Ljava/lang/String;

.field _chars:[C

.field protected _closed:Z

.field _converter:Ljava/io/Writer;

.field protected _generator:Lorg/mortbay/jetty/AbstractGenerator;

.field protected _maxIdleTime:J


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/AbstractGenerator;J)V
    .locals 2
    .param p1, "generator"    # Lorg/mortbay/jetty/AbstractGenerator;
    .param p2, "maxIdleTime"    # J

    .prologue
    .line 514
    invoke-direct {p0}, Ljavax/servlet/ServletOutputStream;-><init>()V

    .line 502
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$000()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([B)V

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_buf:Lorg/mortbay/io/ByteArrayBuffer;

    .line 515
    iput-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    .line 516
    iput-wide p2, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_maxIdleTime:J

    .line 517
    return-void
.end method

.method private write(Lorg/mortbay/io/Buffer;)V
    .locals 2
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_closed:Z

    if-eqz v0, :cond_0

    .line 632
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 634
    new-instance v0, Lorg/mortbay/jetty/EofException;

    invoke-direct {v0}, Lorg/mortbay/jetty/EofException;-><init>()V

    throw v0

    .line 637
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->isBufferFull()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 639
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->blockForOutput()V

    .line 640
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_closed:Z

    if-eqz v0, :cond_2

    .line 641
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 643
    new-instance v0, Lorg/mortbay/jetty/EofException;

    invoke-direct {v0}, Lorg/mortbay/jetty/EofException;-><init>()V

    throw v0

    .line 647
    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mortbay/jetty/AbstractGenerator;->addContent(Lorg/mortbay/io/Buffer;Z)V

    .line 650
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->isBufferFull()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 651
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->flush()V

    .line 653
    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->isContentWritten()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 655
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->flush()V

    .line 656
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->close()V

    .line 660
    :cond_5
    :goto_0
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 661
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->blockForOutput()V

    goto :goto_0

    .line 662
    :cond_6
    return-void
.end method


# virtual methods
.method blockForOutput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v1, v1, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v1}, Lorg/mortbay/io/EndPoint;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v1, v1, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v1}, Lorg/mortbay/io/EndPoint;->close()V

    .line 540
    throw v0

    .line 545
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v1, v1, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    iget-wide v2, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_maxIdleTime:J

    invoke-interface {v1, v2, v3}, Lorg/mortbay/io/EndPoint;->blockWritable(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 547
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v1, v1, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v1}, Lorg/mortbay/io/EndPoint;->close()V

    .line 548
    new-instance v1, Lorg/mortbay/jetty/EofException;

    const-string v2, "timeout"

    invoke-direct {v1, v2}, Lorg/mortbay/jetty/EofException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v1}, Lorg/mortbay/jetty/AbstractGenerator;->flush()J

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_closed:Z

    .line 526
    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v1, v2, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    .line 566
    .local v1, "content":Lorg/mortbay/io/Buffer;
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v0, v2, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    .line 567
    .local v0, "buffer":Lorg/mortbay/io/Buffer;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v2}, Lorg/mortbay/jetty/AbstractGenerator;->isBufferFull()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 569
    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v2}, Lorg/mortbay/jetty/AbstractGenerator;->flush()J

    .line 571
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_3
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v2, v2, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v2}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 572
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->blockForOutput()V

    goto :goto_0

    .line 574
    :cond_5
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->write([B)V

    .line 671
    return-void
.end method

.method reopen()V
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_closed:Z

    .line 559
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 601
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_closed:Z

    if-eqz v0, :cond_0

    .line 602
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 604
    new-instance v0, Lorg/mortbay/jetty/EofException;

    invoke-direct {v0}, Lorg/mortbay/jetty/EofException;-><init>()V

    throw v0

    .line 607
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->isBufferFull()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 609
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->blockForOutput()V

    .line 610
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_closed:Z

    if-eqz v0, :cond_2

    .line 611
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 613
    new-instance v0, Lorg/mortbay/jetty/EofException;

    invoke-direct {v0}, Lorg/mortbay/jetty/EofException;-><init>()V

    throw v0

    .line 617
    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/AbstractGenerator;->addContent(B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 619
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->flush()V

    .line 621
    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->isContentWritten()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 623
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->flush()V

    .line 624
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->close()V

    .line 626
    :cond_5
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_buf:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/ByteArrayBuffer;->wrap([B)V

    .line 591
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_buf:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {p0, v0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->write(Lorg/mortbay/io/Buffer;)V

    .line 592
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_buf:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$000()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;->wrap([B)V

    .line 593
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_buf:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mortbay/io/ByteArrayBuffer;->wrap([BII)V

    .line 580
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_buf:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {p0, v0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->write(Lorg/mortbay/io/Buffer;)V

    .line 581
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_buf:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$000()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;->wrap([B)V

    .line 582
    return-void
.end method
