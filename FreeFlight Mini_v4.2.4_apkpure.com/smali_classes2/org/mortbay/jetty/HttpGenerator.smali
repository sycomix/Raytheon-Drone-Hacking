.class public Lorg/mortbay/jetty/HttpGenerator;
.super Lorg/mortbay/jetty/AbstractGenerator;
.source "HttpGenerator.java"


# static fields
.field private static CHUNK_SPACE:I

.field private static CONNECTION_:[B

.field private static CONNECTION_CLOSE:[B

.field private static CONNECTION_KEEP_ALIVE:[B

.field private static CONTENT_LENGTH_0:[B

.field private static CRLF:[B

.field private static LAST_CHUNK:[B

.field private static SERVER:[B

.field private static TRANSFER_ENCODING_CHUNKED:[B


# instance fields
.field private _bufferChunked:Z

.field private _bypass:Z

.field private _needCRLF:Z

.field private _needEOC:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mortbay/jetty/HttpGenerator;->LAST_CHUNK:[B

    .line 42
    const-string v0, "Content-Length: 0\r\n"

    invoke-static {v0}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpGenerator;->CONTENT_LENGTH_0:[B

    .line 43
    const-string v0, "Connection: keep-alive\r\n"

    invoke-static {v0}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpGenerator;->CONNECTION_KEEP_ALIVE:[B

    .line 44
    const-string v0, "Connection: close\r\n"

    invoke-static {v0}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpGenerator;->CONNECTION_CLOSE:[B

    .line 45
    const-string v0, "Connection: "

    invoke-static {v0}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpGenerator;->CONNECTION_:[B

    .line 46
    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpGenerator;->CRLF:[B

    .line 47
    const-string v0, "Transfer-Encoding: chunked\r\n"

    invoke-static {v0}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpGenerator;->TRANSFER_ENCODING_CHUNKED:[B

    .line 48
    const-string v0, "Server: Jetty(6.0.x)\r\n"

    invoke-static {v0}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpGenerator;->SERVER:[B

    .line 51
    const/16 v0, 0xc

    sput v0, Lorg/mortbay/jetty/HttpGenerator;->CHUNK_SPACE:I

    return-void

    .line 40
    nop

    :array_0
    .array-data 1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lorg/mortbay/io/Buffers;Lorg/mortbay/io/EndPoint;II)V
    .locals 1
    .param p1, "buffers"    # Lorg/mortbay/io/Buffers;
    .param p2, "io"    # Lorg/mortbay/io/EndPoint;
    .param p3, "headerBufferSize"    # I
    .param p4, "contentBufferSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/AbstractGenerator;-><init>(Lorg/mortbay/io/Buffers;Lorg/mortbay/io/EndPoint;II)V

    .line 59
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_bypass:Z

    .line 60
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_needCRLF:Z

    .line 61
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_needEOC:Z

    .line 62
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_bufferChunked:Z

    .line 76
    return-void
.end method

.method private prepareBuffers()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v2, 0x0

    .line 799
    iget-boolean v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_bufferChunked:Z

    if-nez v3, :cond_6

    .line 802
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->space()I

    move-result v3

    if-lez v3, :cond_0

    .line 804
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v3, v4}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    move-result v0

    .line 805
    .local v0, "len":I
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v3, v0}, Lorg/mortbay/io/Buffer;->skip(I)I

    .line 806
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 807
    iput-object v10, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    .line 811
    .end local v0    # "len":I
    :cond_0
    iget-wide v4, p0, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    const-wide/16 v6, -0x2

    cmp-long v3, v4, v6

    if-nez v3, :cond_6

    .line 813
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v3, :cond_8

    move v1, v2

    .line 814
    .local v1, "size":I
    :goto_0
    if-lez v1, :cond_2

    .line 817
    iput-boolean v9, p0, Lorg/mortbay/jetty/HttpGenerator;->_bufferChunked:Z

    .line 820
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v3

    sget v4, Lorg/mortbay/jetty/HttpGenerator;->CHUNK_SPACE:I

    if-ne v3, v4, :cond_9

    .line 823
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    sget-object v5, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v3, v4, v5, v2, v8}, Lorg/mortbay/io/Buffer;->poke(I[BII)I

    .line 824
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v3, v4}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    .line 825
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-static {v3, v1}, Lorg/mortbay/io/BufferUtil;->prependHexInt(Lorg/mortbay/io/Buffer;I)V

    .line 827
    iget-boolean v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_needCRLF:Z

    if-eqz v3, :cond_1

    .line 829
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    sget-object v5, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v3, v4, v5, v2, v8}, Lorg/mortbay/io/Buffer;->poke(I[BII)I

    .line 830
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v3, v4}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    .line 831
    iput-boolean v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_needCRLF:Z

    .line 848
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->space()I

    move-result v3

    if-lt v3, v8, :cond_c

    .line 849
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    sget-object v4, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v3, v4}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 855
    :cond_2
    :goto_2
    iget-boolean v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_needEOC:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 857
    :cond_3
    iget-boolean v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_needCRLF:Z

    if-eqz v3, :cond_4

    .line 859
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v3, :cond_d

    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->space()I

    move-result v3

    if-lt v3, v8, :cond_d

    .line 861
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v4, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v3, v4}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 862
    iput-boolean v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_needCRLF:Z

    .line 871
    :cond_4
    :goto_3
    iget-boolean v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_needCRLF:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_needEOC:Z

    if-eqz v3, :cond_6

    .line 873
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v3, :cond_e

    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->space()I

    move-result v3

    sget-object v4, Lorg/mortbay/jetty/HttpGenerator;->LAST_CHUNK:[B

    array-length v4, v4

    if-lt v3, v4, :cond_e

    .line 875
    iget-boolean v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_head:Z

    if-nez v3, :cond_5

    .line 877
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v4, Lorg/mortbay/jetty/HttpGenerator;->LAST_CHUNK:[B

    invoke-interface {v3, v4}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 878
    iput-boolean v9, p0, Lorg/mortbay/jetty/HttpGenerator;->_bufferChunked:Z

    .line 880
    :cond_5
    iput-boolean v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_needEOC:Z

    .line 896
    .end local v1    # "size":I
    :cond_6
    :goto_4
    iget-object v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 897
    iput-object v10, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    .line 899
    :cond_7
    return-void

    .line 813
    :cond_8
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    goto/16 :goto_0

    .line 837
    .restart local v1    # "size":I
    :cond_9
    iget-boolean v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_needCRLF:Z

    if-eqz v3, :cond_b

    .line 839
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    if-lez v3, :cond_a

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "EOC"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 840
    :cond_a
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v4, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v3, v4}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 841
    iput-boolean v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_needCRLF:Z

    .line 843
    :cond_b
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-static {v3, v1}, Lorg/mortbay/io/BufferUtil;->putHexInt(Lorg/mortbay/io/Buffer;I)V

    .line 844
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v4, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v3, v4}, Lorg/mortbay/io/Buffer;->put([B)I

    goto/16 :goto_1

    .line 851
    :cond_c
    iput-boolean v9, p0, Lorg/mortbay/jetty/HttpGenerator;->_needCRLF:Z

    goto/16 :goto_2

    .line 864
    :cond_d
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->space()I

    move-result v3

    if-lt v3, v8, :cond_4

    .line 866
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    sget-object v4, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v3, v4}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 867
    iput-boolean v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_needCRLF:Z

    goto/16 :goto_3

    .line 882
    :cond_e
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->space()I

    move-result v3

    sget-object v4, Lorg/mortbay/jetty/HttpGenerator;->LAST_CHUNK:[B

    array-length v4, v4

    if-lt v3, v4, :cond_6

    .line 884
    iget-boolean v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_head:Z

    if-nez v3, :cond_f

    .line 886
    iget-object v3, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    sget-object v4, Lorg/mortbay/jetty/HttpGenerator;->LAST_CHUNK:[B

    invoke-interface {v3, v4}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 887
    iput-boolean v9, p0, Lorg/mortbay/jetty/HttpGenerator;->_bufferChunked:Z

    .line 889
    :cond_f
    iput-boolean v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_needEOC:Z

    goto :goto_4
.end method

.method public static setServerVersion(Ljava/lang/String;)V
    .locals 2
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Server: Jetty("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpGenerator;->SERVER:[B

    .line 56
    return-void
.end method


# virtual methods
.method public addContent(Lorg/mortbay/io/Buffer;Z)V
    .locals 7
    .param p1, "content"    # Lorg/mortbay/io/Buffer;
    .param p2, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 106
    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_noContent:Z

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "NO CONTENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_0
    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_last:Z

    if-nez v1, :cond_1

    iget v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 111
    :cond_1
    const-string v1, "Ignoring extra content {}"

    invoke-static {v1, p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->clear()V

    .line 154
    :cond_2
    :goto_0
    return-void

    .line 115
    :cond_3
    iput-boolean p2, p0, Lorg/mortbay/jetty/HttpGenerator;->_last:Z

    .line 118
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_bufferChunked:Z

    if-eqz v1, :cond_9

    .line 120
    :cond_5
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v1}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v1

    if-nez v1, :cond_6

    .line 121
    new-instance v1, Lorg/mortbay/jetty/EofException;

    invoke-direct {v1}, Lorg/mortbay/jetty/EofException;-><init>()V

    throw v1

    .line 122
    :cond_6
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpGenerator;->flush()J

    .line 123
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-gtz v1, :cond_8

    :cond_7
    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_bufferChunked:Z

    if-eqz v1, :cond_9

    .line 124
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "FULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_9
    iput-object p1, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    .line 128
    iget-wide v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_contentWritten:J

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_contentWritten:J

    .line 131
    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_head:Z

    if-eqz v1, :cond_a

    .line 133
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->clear()V

    .line 134
    iput-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    goto :goto_0

    .line 136
    :cond_a
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v1, :cond_b

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_b

    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_last:Z

    if-eqz v1, :cond_b

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_bypass:Z

    goto :goto_0

    .line 145
    :cond_b
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v1, :cond_c

    .line 146
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    iget v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_contentBufferSize:I

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    .line 149
    :cond_c
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    move-result v0

    .line 150
    .local v0, "len":I
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v0}, Lorg/mortbay/io/Buffer;->skip(I)I

    .line 151
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 152
    iput-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    goto/16 :goto_0
.end method

.method public addContent(B)Z
    .locals 8
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 188
    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_noContent:Z

    if-eqz v1, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NO CONTENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_last:Z

    if-nez v1, :cond_1

    iget v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 193
    :cond_1
    const-string v1, "Ignoring extra content {}"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-static {v1, v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    :cond_2
    :goto_0
    return v0

    .line 198
    :cond_3
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_bufferChunked:Z

    if-eqz v1, :cond_8

    .line 200
    :cond_5
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpGenerator;->flush()J

    .line 201
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-gtz v1, :cond_7

    :cond_6
    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_bufferChunked:Z

    if-eqz v1, :cond_8

    .line 202
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_8
    iget-wide v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_contentWritten:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_contentWritten:J

    .line 208
    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_head:Z

    if-nez v1, :cond_2

    .line 212
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v1, :cond_9

    .line 213
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    iget v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_contentBufferSize:I

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    .line 216
    :cond_9
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, p1}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 218
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->space()I

    move-result v2

    iget-wide v4, p0, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    const-wide/16 v6, -0x2

    cmp-long v1, v4, v6

    if-nez v1, :cond_a

    sget v1, Lorg/mortbay/jetty/HttpGenerator;->CHUNK_SPACE:I

    :goto_1
    if-gt v2, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_a
    move v1, v0

    goto :goto_1
.end method

.method public complete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 666
    iget v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 679
    :goto_0
    return-void

    .line 669
    :cond_0
    invoke-super {p0}, Lorg/mortbay/jetty/AbstractGenerator;->complete()V

    .line 671
    iget v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    if-ge v0, v2, :cond_1

    .line 673
    iput v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    .line 674
    iget-wide v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_needEOC:Z

    .line 678
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpGenerator;->flush()J

    goto :goto_0
.end method

.method public completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V
    .locals 24
    .param p1, "fields"    # Lorg/mortbay/jetty/HttpFields;
    .param p2, "allContentAdded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 656
    :goto_0
    return-void

    .line 272
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_method:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 273
    new-instance v19, Lorg/mortbay/jetty/EofException;

    invoke-direct/range {v19 .. v19}, Lorg/mortbay/jetty/EofException;-><init>()V

    throw v19

    .line 275
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_last:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    if-nez p2, :cond_2

    .line 276
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "last?"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 277
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_last:Z

    move/from16 v19, v0

    or-int v19, v19, p2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_last:Z

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_headerBufferSize:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    .line 283
    :cond_3
    const/4 v12, 0x0

    .line 285
    .local v12, "has_server":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_method:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 287
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_close:Z

    .line 289
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_version:I

    move/from16 v19, v0

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 291
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_method:Lorg/mortbay/io/Buffer;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    const/16 v20, 0x20

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_uri:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "utf-8"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    sget-object v20, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 296
    const/16 v19, 0x3

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    .line 297
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_noContent:Z

    goto/16 :goto_0

    .line 302
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_method:Lorg/mortbay/io/Buffer;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    const/16 v20, 0x20

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_uri:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "utf-8"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    const/16 v20, 0x20

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_version:I

    move/from16 v19, v0

    const/16 v21, 0xa

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    sget-object v19, Lorg/mortbay/jetty/HttpVersions;->HTTP_1_0_BUFFER:Lorg/mortbay/io/Buffer;

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    sget-object v20, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 387
    :cond_5
    :goto_2
    const/4 v9, 0x0

    .line 388
    .local v9, "content_length":Lorg/mortbay/jetty/HttpFields$Field;
    const/16 v18, 0x0

    .line 389
    .local v18, "transfer_encoding":Lorg/mortbay/jetty/HttpFields$Field;
    const/4 v14, 0x0

    .line 390
    .local v14, "keep_alive":Z
    const/4 v6, 0x0

    .line 391
    .local v6, "close":Z
    const/4 v10, 0x0

    .line 392
    .local v10, "content_type":Z
    const/4 v7, 0x0

    .line 394
    .local v7, "connection":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_1d

    .line 396
    invoke-virtual/range {p1 .. p1}, Lorg/mortbay/jetty/HttpFields;->getFields()Ljava/util/Iterator;

    move-result-object v13

    .line 398
    .local v13, "iter":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 400
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mortbay/jetty/HttpFields$Field;

    .line 402
    .local v11, "field":Lorg/mortbay/jetty/HttpFields$Field;
    invoke-virtual {v11}, Lorg/mortbay/jetty/HttpFields$Field;->getNameOrdinal()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/mortbay/jetty/HttpFields$Field;->put(Lorg/mortbay/io/Buffer;)V

    goto :goto_3

    .line 306
    .end local v6    # "close":Z
    .end local v7    # "connection":Ljava/lang/StringBuffer;
    .end local v9    # "content_length":Lorg/mortbay/jetty/HttpFields$Field;
    .end local v10    # "content_type":Z
    .end local v11    # "field":Lorg/mortbay/jetty/HttpFields$Field;
    .end local v13    # "iter":Ljava/util/Iterator;
    .end local v14    # "keep_alive":Z
    .end local v18    # "transfer_encoding":Lorg/mortbay/jetty/HttpFields$Field;
    :cond_7
    sget-object v19, Lorg/mortbay/jetty/HttpVersions;->HTTP_1_1_BUFFER:Lorg/mortbay/io/Buffer;

    goto :goto_1

    .line 313
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_version:I

    move/from16 v19, v0

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 315
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_close:Z

    .line 316
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    .line 317
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    goto/16 :goto_0

    .line 322
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_version:I

    move/from16 v19, v0

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 323
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_close:Z

    .line 326
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/mortbay/jetty/HttpStatus;->getResponseLine(I)Lorg/mortbay/io/Buffer;

    move-result-object v15

    .line 329
    .local v15, "line":Lorg/mortbay/io/Buffer;
    if-nez v15, :cond_e

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_reason:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-nez v19, :cond_b

    .line 332
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/mortbay/jetty/HttpGenerator;->getReasonBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_reason:Lorg/mortbay/io/Buffer;

    .line 334
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    sget-object v20, Lorg/mortbay/jetty/HttpVersions;->HTTP_1_1_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    const/16 v20, 0x20

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x64

    add-int/lit8 v20, v20, 0x30

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v20, v0

    rem-int/lit8 v20, v20, 0x64

    div-int/lit8 v20, v20, 0xa

    add-int/lit8 v20, v20, 0x30

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v20, v0

    rem-int/lit8 v20, v20, 0xa

    add-int/lit8 v20, v20, 0x30

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    const/16 v20, 0x20

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_reason:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-nez v19, :cond_d

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x64

    add-int/lit8 v20, v20, 0x30

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v20, v0

    rem-int/lit8 v20, v20, 0x64

    div-int/lit8 v20, v20, 0xa

    add-int/lit8 v20, v20, 0x30

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v20, v0

    rem-int/lit8 v20, v20, 0xa

    add-int/lit8 v20, v20, 0x30

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 348
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    sget-object v20, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 362
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v19, v0

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v19, v0

    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_10

    .line 364
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_noContent:Z

    .line 365
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/mortbay/io/Buffer;->clear()V

    .line 369
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    sget-object v20, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 370
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    goto/16 :goto_0

    .line 347
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_reason:Lorg/mortbay/io/Buffer;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    goto :goto_4

    .line 352
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_reason:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-nez v19, :cond_f

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    goto :goto_5

    .line 356
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    invoke-interface {v15}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v20

    const/16 v21, 0x0

    sget-object v22, Lorg/mortbay/jetty/HttpVersions;->HTTP_1_1_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x5

    invoke-interface/range {v19 .. v22}, Lorg/mortbay/io/Buffer;->put([BII)I

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_reason:Lorg/mortbay/io/Buffer;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    sget-object v20, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    goto/16 :goto_5

    .line 374
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v19, v0

    const/16 v20, 0xcc

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v19, v0

    const/16 v20, 0x130

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 376
    :cond_11
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_noContent:Z

    .line 377
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/mortbay/io/Buffer;->clear()V

    goto/16 :goto_2

    .line 405
    .end local v15    # "line":Lorg/mortbay/io/Buffer;
    .restart local v6    # "close":Z
    .restart local v7    # "connection":Ljava/lang/StringBuffer;
    .restart local v9    # "content_length":Lorg/mortbay/jetty/HttpFields$Field;
    .restart local v10    # "content_type":Z
    .restart local v11    # "field":Lorg/mortbay/jetty/HttpFields$Field;
    .restart local v13    # "iter":Ljava/util/Iterator;
    .restart local v14    # "keep_alive":Z
    .restart local v18    # "transfer_encoding":Lorg/mortbay/jetty/HttpFields$Field;
    :sswitch_0
    move-object v9, v11

    .line 406
    invoke-virtual {v11}, Lorg/mortbay/jetty/HttpFields$Field;->getLongValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    .line 408
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_contentWritten:J

    move-wide/from16 v22, v0

    cmp-long v19, v20, v22

    if-ltz v19, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_last:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_contentWritten:J

    move-wide/from16 v22, v0

    cmp-long v19, v20, v22

    if-eqz v19, :cond_13

    .line 409
    :cond_12
    const/4 v9, 0x0

    .line 412
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/mortbay/jetty/HttpFields$Field;->put(Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_3

    .line 416
    :sswitch_1
    sget-object v19, Lorg/mortbay/jetty/MimeTypes;->MULTIPART_BYTERANGES_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v11}, Lorg/mortbay/jetty/HttpFields$Field;->getValueBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/mortbay/io/BufferUtil;->isPrefix(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 417
    const-wide/16 v20, -0x4

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    .line 418
    :cond_14
    const/4 v10, 0x1

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/mortbay/jetty/HttpFields$Field;->put(Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_3

    .line 424
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_version:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    move-object/from16 v18, v11

    goto/16 :goto_3

    .line 429
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_method:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_15

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/mortbay/jetty/HttpFields$Field;->put(Lorg/mortbay/io/Buffer;)V

    .line 432
    :cond_15
    invoke-virtual {v11}, Lorg/mortbay/jetty/HttpFields$Field;->getValueOrdinal()I

    move-result v8

    .line 433
    .local v8, "connection_value":I
    sparse-switch v8, :sswitch_data_1

    .line 506
    if-nez v7, :cond_1c

    .line 507
    new-instance v7, Ljava/lang/StringBuffer;

    .end local v7    # "connection":Ljava/lang/StringBuffer;
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 510
    .restart local v7    # "connection":Ljava/lang/StringBuffer;
    :goto_6
    invoke-virtual {v11}, Lorg/mortbay/jetty/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 438
    :sswitch_4
    new-instance v16, Lorg/mortbay/util/QuotedStringTokenizer;

    invoke-virtual {v11}, Lorg/mortbay/jetty/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v19

    const-string v20, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .local v16, "tok":Lorg/mortbay/util/QuotedStringTokenizer;
    :cond_16
    :goto_7
    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 441
    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 442
    .local v17, "token":Ljava/lang/String;
    sget-object v19, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpHeaderValues;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v5

    .line 443
    .local v5, "cb":Lorg/mortbay/io/BufferCache$CachedBuffer;
    if-eqz v5, :cond_19

    .line 445
    invoke-virtual {v5}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v19

    sparse-switch v19, :sswitch_data_2

    .line 466
    if-nez v7, :cond_18

    .line 467
    new-instance v7, Ljava/lang/StringBuffer;

    .end local v7    # "connection":Ljava/lang/StringBuffer;
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 470
    .restart local v7    # "connection":Ljava/lang/StringBuffer;
    :goto_8
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 448
    :sswitch_5
    const/4 v6, 0x1

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_method:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-nez v19, :cond_17

    .line 450
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_close:Z

    .line 451
    :cond_17
    const/4 v14, 0x0

    .line 452
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_close:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_method:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-nez v19, :cond_16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x3

    cmp-long v19, v20, v22

    if-nez v19, :cond_16

    .line 453
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    goto :goto_7

    .line 457
    :sswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_version:I

    move/from16 v19, v0

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 459
    const/4 v14, 0x1

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_method:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-nez v19, :cond_16

    .line 461
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_close:Z

    goto/16 :goto_7

    .line 469
    :cond_18
    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 475
    :cond_19
    if-nez v7, :cond_1a

    .line 476
    new-instance v7, Ljava/lang/StringBuffer;

    .end local v7    # "connection":Ljava/lang/StringBuffer;
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 479
    .restart local v7    # "connection":Ljava/lang/StringBuffer;
    :goto_9
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    .line 478
    :cond_1a
    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 487
    .end local v5    # "cb":Lorg/mortbay/io/BufferCache$CachedBuffer;
    .end local v16    # "tok":Lorg/mortbay/util/QuotedStringTokenizer;
    .end local v17    # "token":Ljava/lang/String;
    :sswitch_7
    const/4 v6, 0x1

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_method:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-nez v19, :cond_1b

    .line 489
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_close:Z

    .line 490
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_close:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_method:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x3

    cmp-long v19, v20, v22

    if-nez v19, :cond_6

    .line 491
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    goto/16 :goto_3

    .line 496
    :sswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_version:I

    move/from16 v19, v0

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 498
    const/4 v14, 0x1

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_method:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    .line 500
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_close:Z

    goto/16 :goto_3

    .line 509
    :cond_1c
    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 518
    .end local v8    # "connection_value":I
    :sswitch_9
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/HttpGenerator;->getSendServerVersion()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 520
    const/4 v12, 0x1

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/mortbay/jetty/HttpFields$Field;->put(Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_3

    .line 541
    .end local v11    # "field":Lorg/mortbay/jetty/HttpFields$Field;
    .end local v13    # "iter":Ljava/util/Iterator;
    :cond_1d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 594
    :cond_1e
    :goto_a
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x2

    cmp-long v19, v20, v22

    if-nez v19, :cond_1f

    .line 597
    if-eqz v18, :cond_2c

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v18}, Lorg/mortbay/jetty/HttpFields$Field;->getValueOrdinal()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2c

    .line 599
    invoke-virtual/range {v18 .. v18}, Lorg/mortbay/jetty/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 600
    .local v4, "c":Ljava/lang/String;
    const-string v19, "chunked"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2b

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/mortbay/jetty/HttpFields$Field;->put(Lorg/mortbay/io/Buffer;)V

    .line 610
    .end local v4    # "c":Ljava/lang/String;
    :cond_1f
    :goto_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v19, v20, v22

    if-nez v19, :cond_20

    .line 612
    const/4 v14, 0x0

    .line 613
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_close:Z

    .line 616
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_method:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-nez v19, :cond_22

    .line 618
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_close:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2d

    if-nez v6, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_version:I

    move/from16 v19, v0

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2d

    .line 620
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    sget-object v20, Lorg/mortbay/jetty/HttpGenerator;->CONNECTION_CLOSE:[B

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 621
    if-eqz v7, :cond_22

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v20

    add-int/lit8 v20, v20, -0x2

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->setPutIndex(I)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    const/16 v20, 0x2c

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    sget-object v20, Lorg/mortbay/jetty/HttpGenerator;->CRLF:[B

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 648
    :cond_22
    :goto_c
    if-nez v12, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v19, v0

    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_23

    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/HttpGenerator;->getSendServerVersion()Z

    move-result v19

    if-eqz v19, :cond_23

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    sget-object v20, Lorg/mortbay/jetty/HttpGenerator;->SERVER:[B

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 652
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    sget-object v20, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 654
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    goto/16 :goto_0

    .line 548
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_contentWritten:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-nez v19, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_method:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-nez v19, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v19, v0

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v19, v0

    const/16 v20, 0xcc

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v19, v0

    const/16 v20, 0x130

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_25

    .line 549
    :cond_24
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    goto/16 :goto_a

    .line 550
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_last:Z

    move/from16 v19, v0

    if-eqz v19, :cond_27

    .line 553
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_contentWritten:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    .line 554
    if-nez v9, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_method:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_26

    if-nez v10, :cond_26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-lez v19, :cond_1e

    .line 557
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    sget-object v20, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    const/16 v20, 0x3a

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    const/16 v20, 0x20

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lorg/mortbay/io/BufferUtil;->putDecLong(Lorg/mortbay/io/Buffer;J)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    sget-object v20, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    goto/16 :goto_a

    .line 567
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_close:Z

    move/from16 v19, v0

    if-nez v19, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_version:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_29

    :cond_28
    const-wide/16 v20, -0x1

    :goto_d
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_method:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1e

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v19, v20, v22

    if-nez v19, :cond_1e

    .line 570
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    .line 571
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_noContent:Z

    goto/16 :goto_a

    .line 567
    :cond_29
    const-wide/16 v20, -0x2

    goto :goto_d

    .line 577
    :pswitch_2
    if-nez v9, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_method:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-nez v19, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v19, v0

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v19, v0

    const/16 v20, 0xcc

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    move/from16 v19, v0

    const/16 v20, 0x130

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1e

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    sget-object v20, Lorg/mortbay/jetty/HttpGenerator;->CONTENT_LENGTH_0:[B

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    goto/16 :goto_a

    .line 582
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_method:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    if-nez v19, :cond_2a

    const/16 v19, 0x1

    :goto_e
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/HttpGenerator;->_close:Z

    goto/16 :goto_a

    :cond_2a
    const/16 v19, 0x0

    goto :goto_e

    .line 603
    .restart local v4    # "c":Ljava/lang/String;
    :cond_2b
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "BAD TE"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 606
    .end local v4    # "c":Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    sget-object v20, Lorg/mortbay/jetty/HttpGenerator;->TRANSFER_ENCODING_CHUNKED:[B

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    goto/16 :goto_b

    .line 629
    :cond_2d
    if-eqz v14, :cond_2e

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    sget-object v20, Lorg/mortbay/jetty/HttpGenerator;->CONNECTION_KEEP_ALIVE:[B

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 632
    if-eqz v7, :cond_22

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v20

    add-int/lit8 v20, v20, -0x2

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->setPutIndex(I)V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    const/16 v20, 0x2c

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    sget-object v20, Lorg/mortbay/jetty/HttpGenerator;->CRLF:[B

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    goto/16 :goto_c

    .line 640
    :cond_2e
    if-eqz v7, :cond_22

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    sget-object v20, Lorg/mortbay/jetty/HttpGenerator;->CONNECTION_:[B

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v19, v0

    sget-object v20, Lorg/mortbay/jetty/HttpGenerator;->CRLF:[B

    invoke-interface/range {v19 .. v20}, Lorg/mortbay/io/Buffer;->put([B)I

    goto/16 :goto_c

    .line 402
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
        0xc -> :sswitch_0
        0x10 -> :sswitch_1
        0x30 -> :sswitch_9
    .end sparse-switch

    .line 433
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_4
        0x1 -> :sswitch_7
        0x5 -> :sswitch_8
    .end sparse-switch

    .line 445
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_5
        0x5 -> :sswitch_6
    .end sparse-switch

    .line 541
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public flush()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x3

    const/4 v9, 0x4

    const/4 v7, 0x0

    .line 686
    :try_start_0
    iget v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    if-nez v6, :cond_0

    .line 687
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "State==HEADER"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 791
    instance-of v6, v0, Lorg/mortbay/jetty/EofException;

    if-eqz v6, :cond_d

    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    throw v0

    .line 689
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/mortbay/jetty/HttpGenerator;->prepareBuffers()V

    .line 691
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    if-nez v6, :cond_3

    .line 693
    iget-boolean v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_needCRLF:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v6, :cond_1

    .line 694
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    sget-object v7, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v6, v7}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 695
    :cond_1
    iget-boolean v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_needEOC:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_head:Z

    if-nez v6, :cond_2

    .line 696
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    sget-object v7, Lorg/mortbay/jetty/HttpGenerator;->LAST_CHUNK:[B

    invoke-interface {v6, v7}, Lorg/mortbay/io/Buffer;->put([B)I

    .line 697
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_needCRLF:Z

    .line 698
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_needEOC:Z

    .line 699
    const-wide/16 v6, 0x0

    .line 786
    :goto_1
    return-wide v6

    .line 703
    :cond_3
    const/4 v5, 0x0

    .line 704
    .local v5, "total":I
    const-wide/16 v2, -0x1

    .line 707
    .local v2, "last_len":J
    :goto_2
    const/4 v1, -0x1

    .line 708
    .local v1, "len":I
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v6}, Lorg/mortbay/io/Buffer;->length()I

    move-result v6

    if-lez v6, :cond_4

    move v8, v9

    :goto_3
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v6}, Lorg/mortbay/io/Buffer;->length()I

    move-result v6

    if-lez v6, :cond_5

    const/4 v6, 0x2

    :goto_4
    or-int/2addr v8, v6

    iget-boolean v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_bypass:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v6}, Lorg/mortbay/io/Buffer;->length()I

    move-result v6

    if-lez v6, :cond_6

    const/4 v6, 0x1

    :goto_5
    or-int v4, v8, v6

    .line 709
    .local v4, "to_flush":I
    packed-switch v4, :pswitch_data_0

    .line 778
    :goto_6
    if-lez v1, :cond_8

    .line 779
    add-int/2addr v5, v1

    .line 783
    int-to-long v2, v1

    .line 784
    goto :goto_2

    .end local v4    # "to_flush":I
    :cond_4
    move v8, v7

    .line 708
    goto :goto_3

    :cond_5
    move v6, v7

    goto :goto_4

    :cond_6
    move v6, v7

    goto :goto_5

    .line 712
    .restart local v4    # "to_flush":I
    :pswitch_0
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 714
    :pswitch_1
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    iget-object v8, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    iget-object v10, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    const/4 v11, 0x0

    invoke-interface {v6, v8, v10, v11}, Lorg/mortbay/io/EndPoint;->flush(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)I

    move-result v1

    .line 715
    goto :goto_6

    .line 717
    :pswitch_2
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    iget-object v8, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    iget-object v10, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    const/4 v11, 0x0

    invoke-interface {v6, v8, v10, v11}, Lorg/mortbay/io/EndPoint;->flush(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)I

    move-result v1

    .line 718
    goto :goto_6

    .line 720
    :pswitch_3
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    iget-object v8, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v6, v8}, Lorg/mortbay/io/EndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v1

    .line 721
    goto :goto_6

    .line 723
    :pswitch_4
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 725
    :pswitch_5
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    iget-object v8, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v6, v8}, Lorg/mortbay/io/EndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v1

    .line 726
    goto :goto_6

    .line 728
    :pswitch_6
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    iget-object v8, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v6, v8}, Lorg/mortbay/io/EndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v1

    .line 729
    goto :goto_6

    .line 733
    :pswitch_7
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    if-eqz v6, :cond_7

    .line 734
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v6}, Lorg/mortbay/io/Buffer;->clear()V

    .line 736
    :cond_7
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_bypass:Z

    .line 737
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_bufferChunked:Z

    .line 739
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v6, :cond_9

    .line 741
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v6}, Lorg/mortbay/io/Buffer;->clear()V

    .line 742
    iget-wide v10, p0, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    const-wide/16 v12, -0x2

    cmp-long v6, v10, v12

    if-nez v6, :cond_9

    .line 745
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    sget v8, Lorg/mortbay/jetty/HttpGenerator;->CHUNK_SPACE:I

    invoke-interface {v6, v8}, Lorg/mortbay/io/Buffer;->setPutIndex(I)V

    .line 746
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    sget v8, Lorg/mortbay/jetty/HttpGenerator;->CHUNK_SPACE:I

    invoke-interface {v6, v8}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    .line 750
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v6}, Lorg/mortbay/io/Buffer;->length()I

    move-result v6

    iget-object v8, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v8}, Lorg/mortbay/io/Buffer;->space()I

    move-result v8

    if-ge v6, v8, :cond_9

    iget v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    if-eq v6, v14, :cond_9

    .line 752
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v6, v7}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 753
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v6}, Lorg/mortbay/io/Buffer;->clear()V

    .line 754
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    .line 786
    :cond_8
    :goto_7
    int-to-long v6, v5

    goto/16 :goto_1

    .line 761
    :cond_9
    iget-boolean v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_needCRLF:Z

    if-nez v6, :cond_c

    iget-boolean v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_needEOC:Z

    if-nez v6, :cond_c

    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v6}, Lorg/mortbay/io/Buffer;->length()I

    move-result v6

    if-nez v6, :cond_c

    .line 763
    :cond_a
    iget v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    if-ne v6, v14, :cond_b

    .line 764
    const/4 v6, 0x4

    iput v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    .line 765
    :cond_b
    iget v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    if-ne v6, v9, :cond_8

    iget-boolean v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_close:Z

    if-eqz v6, :cond_8

    iget v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_status:I

    const/16 v7, 0x64

    if-eq v6, v7, :cond_8

    .line 766
    iget-object v6, p0, Lorg/mortbay/jetty/HttpGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v6}, Lorg/mortbay/io/EndPoint;->shutdownOutput()V

    goto :goto_7

    .line 772
    :cond_c
    invoke-direct {p0}, Lorg/mortbay/jetty/HttpGenerator;->prepareBuffers()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    .line 791
    .end local v1    # "len":I
    .end local v2    # "last_len":J
    .end local v4    # "to_flush":I
    .end local v5    # "total":I
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_d
    new-instance v6, Lorg/mortbay/jetty/EofException;

    invoke-direct {v6, v0}, Lorg/mortbay/jetty/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBytesBuffered()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 903
    iget-object v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    goto :goto_2
.end method

.method public isBufferFull()Z
    .locals 6

    .prologue
    .line 261
    invoke-super {p0}, Lorg/mortbay/jetty/AbstractGenerator;->isBufferFull()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_bufferChunked:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_bypass:Z

    if-nez v1, :cond_0

    iget-wide v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    const-wide/16 v4, -0x2

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->space()I

    move-result v1

    sget v2, Lorg/mortbay/jetty/HttpGenerator;->CHUNK_SPACE:I

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 262
    .local v0, "full":Z
    :goto_0
    return v0

    .line 261
    .end local v0    # "full":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareUncheckedAddContent()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 229
    iget-boolean v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_noContent:Z

    if-eqz v2, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v1

    .line 232
    :cond_1
    iget-boolean v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_last:Z

    if-nez v2, :cond_0

    iget v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 236
    iget-object v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    .line 237
    .local v0, "content":Lorg/mortbay/io/Buffer;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_bufferChunked:Z

    if-eqz v1, :cond_6

    .line 239
    :cond_3
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpGenerator;->flush()J

    .line 240
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_bufferChunked:Z

    if-eqz v1, :cond_6

    .line 241
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "FULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_6
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v1, :cond_7

    .line 246
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    iget v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_contentBufferSize:I

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    .line 248
    :cond_7
    iget-wide v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_contentWritten:J

    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_contentWritten:J

    .line 251
    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_head:Z

    if-eqz v1, :cond_8

    .line 252
    const v1, 0x7fffffff

    goto :goto_0

    .line 254
    :cond_8
    iget-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->space()I

    move-result v2

    iget-wide v4, p0, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    const-wide/16 v6, -0x2

    cmp-long v1, v4, v6

    if-nez v1, :cond_9

    sget v1, Lorg/mortbay/jetty/HttpGenerator;->CHUNK_SPACE:I

    :goto_1
    sub-int v1, v2, v1

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public reset(Z)V
    .locals 2
    .param p1, "returnBuffers"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-super {p0, p1}, Lorg/mortbay/jetty/AbstractGenerator;->reset(Z)V

    .line 82
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_bypass:Z

    .line 83
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_needCRLF:Z

    .line 84
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_needEOC:Z

    .line 85
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_bufferChunked:Z

    .line 86
    iput-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_method:Lorg/mortbay/io/Buffer;

    .line 87
    iput-object v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_uri:Ljava/lang/String;

    .line 88
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_noContent:Z

    .line 89
    return-void
.end method

.method public sendResponse(Lorg/mortbay/io/Buffer;)V
    .locals 2
    .param p1, "response"    # Lorg/mortbay/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 164
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_noContent:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_bufferChunked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_head:Z

    if-eqz v0, :cond_2

    .line 165
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 167
    :cond_2
    iput-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_last:Z

    .line 169
    iput-object p1, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    .line 170
    iput-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_bypass:Z

    .line 171
    const/4 v0, 0x3

    iput v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    .line 174
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_contentWritten:J

    iput-wide v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_contentLength:J

    .line 176
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 917
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "HttpGenerator s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/HttpGenerator;->_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_2

    const-string v0, "null"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/HttpGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
