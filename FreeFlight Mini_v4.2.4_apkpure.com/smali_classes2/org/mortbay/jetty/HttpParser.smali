.class public Lorg/mortbay/jetty/HttpParser;
.super Ljava/lang/Object;
.source "HttpParser.java"

# interfaces
.implements Lorg/mortbay/jetty/Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/HttpParser$Input;,
        Lorg/mortbay/jetty/HttpParser$EventHandler;
    }
.end annotation


# static fields
.field public static final STATE_CHUNK:I = 0x6

.field public static final STATE_CHUNKED_CONTENT:I = 0x3

.field public static final STATE_CHUNK_PARAMS:I = 0x5

.field public static final STATE_CHUNK_SIZE:I = 0x4

.field public static final STATE_CONTENT:I = 0x2

.field public static final STATE_END:I = 0x0

.field public static final STATE_END0:I = -0x8

.field public static final STATE_END1:I = -0x7

.field public static final STATE_EOF_CONTENT:I = 0x1

.field public static final STATE_FIELD0:I = -0xc

.field public static final STATE_FIELD1:I = -0xa

.field public static final STATE_FIELD2:I = -0x6

.field public static final STATE_HEADER:I = -0x5

.field public static final STATE_HEADER_IN_NAME:I = -0x3

.field public static final STATE_HEADER_IN_VALUE:I = -0x1

.field public static final STATE_HEADER_NAME:I = -0x4

.field public static final STATE_HEADER_VALUE:I = -0x2

.field public static final STATE_SPACE1:I = -0xb

.field public static final STATE_SPACE2:I = -0x9

.field public static final STATE_START:I = -0xd


# instance fields
.field private _body:Lorg/mortbay/io/Buffer;

.field private _buffer:Lorg/mortbay/io/Buffer;

.field private _buffers:Lorg/mortbay/io/Buffers;

.field private _cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field protected _chunkLength:I

.field protected _chunkPosition:I

.field private _contentBufferSize:I

.field protected _contentLength:J

.field protected _contentPosition:J

.field private _contentView:Lorg/mortbay/io/View;

.field private _endp:Lorg/mortbay/io/EndPoint;

.field protected _eol:B

.field private _forceContentBuffer:Z

.field private _handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

.field private _header:Lorg/mortbay/io/Buffer;

.field private _headerBufferSize:I

.field private _input:Lorg/mortbay/jetty/HttpParser$Input;

.field protected _length:I

.field private _multiLineValue:Ljava/lang/String;

.field private _responseStatus:I

.field protected _state:I

.field private _tok0:Lorg/mortbay/io/View$CaseInsensitive;

.field private _tok1:Lorg/mortbay/io/View$CaseInsensitive;


# direct methods
.method public constructor <init>(Lorg/mortbay/io/Buffer;Lorg/mortbay/jetty/HttpParser$EventHandler;)V
    .locals 2
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;
    .param p2, "handler"    # Lorg/mortbay/jetty/HttpParser$EventHandler;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lorg/mortbay/io/View;

    invoke-direct {v0}, Lorg/mortbay/io/View;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentView:Lorg/mortbay/io/View;

    .line 78
    const/16 v0, -0xd

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 92
    iput-object p1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    .line 93
    iput-object p1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    .line 94
    iput-object p2, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    .line 96
    if-eqz p1, :cond_0

    .line 98
    new-instance v0, Lorg/mortbay/io/View$CaseInsensitive;

    invoke-direct {v0, p1}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    .line 99
    new-instance v0, Lorg/mortbay/io/View$CaseInsensitive;

    invoke-direct {v0, p1}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    .line 100
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v1}, Lorg/mortbay/io/View$CaseInsensitive;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 101
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v1}, Lorg/mortbay/io/View$CaseInsensitive;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/io/Buffers;Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/HttpParser$EventHandler;II)V
    .locals 1
    .param p1, "buffers"    # Lorg/mortbay/io/Buffers;
    .param p2, "endp"    # Lorg/mortbay/io/EndPoint;
    .param p3, "handler"    # Lorg/mortbay/jetty/HttpParser$EventHandler;
    .param p4, "headerBufferSize"    # I
    .param p5, "contentBufferSize"    # I

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lorg/mortbay/io/View;

    invoke-direct {v0}, Lorg/mortbay/io/View;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentView:Lorg/mortbay/io/View;

    .line 78
    const/16 v0, -0xd

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 113
    iput-object p1, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    .line 114
    iput-object p2, p0, Lorg/mortbay/jetty/HttpParser;->_endp:Lorg/mortbay/io/EndPoint;

    .line 115
    iput-object p3, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    .line 116
    iput p4, p0, Lorg/mortbay/jetty/HttpParser;->_headerBufferSize:I

    .line 117
    iput p5, p0, Lorg/mortbay/jetty/HttpParser;->_contentBufferSize:I

    .line 118
    return-void
.end method

.method static access$000(Lorg/mortbay/jetty/HttpParser;)Lorg/mortbay/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/HttpParser;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_endp:Lorg/mortbay/io/EndPoint;

    return-object v0
.end method

.method static access$100(Lorg/mortbay/jetty/HttpParser;)Lorg/mortbay/io/View;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/HttpParser;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentView:Lorg/mortbay/io/View;

    return-object v0
.end method

.method static access$202(Lorg/mortbay/jetty/HttpParser;Lorg/mortbay/jetty/HttpParser$Input;)Lorg/mortbay/jetty/HttpParser$Input;
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/jetty/HttpParser;
    .param p1, "x1"    # Lorg/mortbay/jetty/HttpParser$Input;

    .prologue
    .line 35
    iput-object p1, p0, Lorg/mortbay/jetty/HttpParser;->_input:Lorg/mortbay/jetty/HttpParser$Input;

    return-object p1
.end method


# virtual methods
.method public fill()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v3, :cond_0

    .line 862
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpParser;->getHeaderBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v3

    iput-object v3, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    iput-object v3, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    .line 863
    new-instance v3, Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-direct {v3, v4}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    iput-object v3, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    .line 864
    new-instance v3, Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-direct {v3, v4}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    iput-object v3, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    .line 866
    :cond_0
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-eq v3, v4, :cond_1

    .line 867
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    iput-object v3, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    .line 868
    :cond_1
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-ne v3, v4, :cond_2

    .line 869
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->compact()V

    .line 871
    :cond_2
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->space()I

    move-result v2

    .line 874
    .local v2, "space":I
    if-nez v2, :cond_4

    .line 875
    new-instance v4, Lorg/mortbay/jetty/HttpException;

    const/16 v5, 0x19d

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "FULL "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v7, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-ne v3, v7, :cond_3

    const-string v3, "body"

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lorg/mortbay/jetty/HttpException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_3
    const-string v3, "head"

    goto :goto_0

    .line 878
    :cond_4
    const/4 v1, -0x1

    .line 880
    .local v1, "filled":I
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser;->_endp:Lorg/mortbay/io/EndPoint;

    if-eqz v3, :cond_5

    .line 884
    :try_start_0
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser;->_endp:Lorg/mortbay/io/EndPoint;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v3, v4}, Lorg/mortbay/io/EndPoint;->fill(Lorg/mortbay/io/Buffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 894
    :cond_5
    int-to-long v4, v1

    return-wide v4

    .line 886
    :catch_0
    move-exception v0

    .line 888
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 889
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/mortbay/jetty/HttpParser;->reset(Z)V

    .line 890
    instance-of v3, v0, Lorg/mortbay/jetty/EofException;

    if-eqz v3, :cond_6

    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    throw v0

    .restart local v0    # "e":Ljava/io/IOException;
    :cond_6
    new-instance v3, Lorg/mortbay/jetty/EofException;

    invoke-direct {v3, v0}, Lorg/mortbay/jetty/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_1
.end method

.method public getBodyBuffer()Lorg/mortbay/io/Buffer;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    return-wide v0
.end method

.method public getContentRead()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    return-wide v0
.end method

.method public getHeaderBuffer()Lorg/mortbay/io/Buffer;
    .locals 2

    .prologue
    .line 1024
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_0

    .line 1026
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_headerBufferSize:I

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    .line 1028
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    return v0
.end method

.method public inContentState()Z
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inHeaderState()Z
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChunking()Z
    .locals 4

    .prologue
    .line 152
    iget-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/HttpParser;->isState(I)Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 158
    const/16 v0, -0xd

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/HttpParser;->isState(I)Z

    move-result v0

    return v0
.end method

.method public isMoreInBuffer()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    :cond_1
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 181
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/HttpParser;->reset(Z)V

    .line 194
    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    const/16 v1, -0xd

    if-eq v0, v1, :cond_1

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!START"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    :goto_0
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    goto :goto_0

    .line 200
    :cond_2
    return-void
.end method

.method public parseAvailable()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 212
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    move-result-wide v0

    .line 213
    .local v0, "len":J
    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    move-wide v2, v0

    .line 216
    .local v2, "total":J
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpParser;->isComplete()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v6}, Lorg/mortbay/io/Buffer;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 218
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    move-result-wide v0

    .line 219
    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 220
    add-long/2addr v2, v0

    goto :goto_0

    .end local v2    # "total":J
    :cond_1
    move-wide v2, v4

    .line 213
    goto :goto_0

    .line 222
    .restart local v2    # "total":J
    :cond_2
    return-wide v2
.end method

.method public parseNext()J
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    const-wide/16 v18, -0x1

    .line 236
    .local v18, "total_filled":J
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 237
    const-wide/16 v22, -0x1

    .line 851
    :goto_0
    return-wide v22

    .line 239
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_headerBufferSize:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    .line 245
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    .line 246
    new-instance v22, Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    .line 247
    new-instance v22, Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/mortbay/io/View$CaseInsensitive;->getIndex()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lorg/mortbay/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/mortbay/io/View$CaseInsensitive;->getIndex()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lorg/mortbay/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 253
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-nez v22, :cond_3

    .line 255
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    move-wide/from16 v22, v18

    .line 257
    goto/16 :goto_0

    .line 260
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->length()I

    move-result v13

    .line 263
    .local v13, "length":I
    if-nez v13, :cond_e

    .line 265
    const/4 v9, -0x1

    .line 266
    .local v9, "filled":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->length()I

    move-result v9

    .line 272
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v22

    if-nez v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/mortbay/io/Buffer;->capacity()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 273
    new-instance v22, Lorg/mortbay/jetty/HttpException;

    const/16 v23, 0x19d

    const-string v24, "FULL"

    invoke-direct/range {v22 .. v24}, Lorg/mortbay/jetty/HttpException;-><init>(ILjava/lang/String;)V

    throw v22

    .line 275
    :cond_5
    const/4 v12, 0x0

    .line 277
    .local v12, "ioex":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_endp:Lorg/mortbay/io/EndPoint;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    if-gtz v9, :cond_a

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->compact()V

    .line 284
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->space()I

    move-result v22

    if-nez v22, :cond_8

    .line 285
    new-instance v23, Lorg/mortbay/jetty/HttpException;

    const/16 v24, 0x19d

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "FULL "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_7

    const-string v22, "body"

    :goto_1
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/mortbay/jetty/HttpException;-><init>(ILjava/lang/String;)V

    throw v23

    :cond_7
    const-string v22, "head"

    goto :goto_1

    .line 288
    :cond_8
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-gez v22, :cond_9

    .line 289
    const-wide/16 v18, 0x0

    .line 290
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_endp:Lorg/mortbay/io/EndPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Lorg/mortbay/io/EndPoint;->fill(Lorg/mortbay/io/Buffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 291
    if-lez v9, :cond_a

    .line 292
    int-to-long v0, v9

    move-wide/from16 v22, v0

    add-long v18, v18, v22

    .line 302
    :cond_a
    :goto_2
    if-gez v9, :cond_d

    .line 304
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->length()I

    move-result v22

    if-lez v22, :cond_b

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/mortbay/io/Buffer;->length()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Lorg/mortbay/io/Buffer;->get(I)Lorg/mortbay/io/Buffer;

    move-result-object v7

    .line 310
    .local v7, "chunk":Lorg/mortbay/io/Buffer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    move-wide/from16 v22, v0

    invoke-interface {v7}, Lorg/mortbay/io/Buffer;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentView:Lorg/mortbay/io/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/mortbay/io/View;->update(Lorg/mortbay/io/Buffer;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/mortbay/jetty/HttpParser$EventHandler;->content(Lorg/mortbay/io/Buffer;)V

    .line 314
    .end local v7    # "chunk":Lorg/mortbay/io/Buffer;
    :cond_b
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    move-wide/from16 v22, v18

    .line 316
    goto/16 :goto_0

    .line 294
    :catch_0
    move-exception v8

    .line 296
    .local v8, "e":Ljava/io/IOException;
    invoke-static {v8}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 297
    move-object v12, v8

    .line 298
    const/4 v9, -0x1

    goto/16 :goto_2

    .line 318
    .end local v8    # "e":Ljava/io/IOException;
    :cond_c
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpParser;->reset(Z)V

    .line 319
    new-instance v22, Lorg/mortbay/jetty/EofException;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Lorg/mortbay/jetty/EofException;-><init>(Ljava/lang/Throwable;)V

    throw v22

    .line 321
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->length()I

    move-result v13

    .line 327
    .end local v9    # "filled":I
    .end local v12    # "ioex":Ljava/io/IOException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v4

    .line 329
    .local v4, "array":[B
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move/from16 v22, v0

    if-gez v22, :cond_38

    add-int/lit8 v14, v13, -0x1

    .end local v13    # "length":I
    .local v14, "length":I
    if-lez v13, :cond_37

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->get()B

    move-result v6

    .line 333
    .local v6, "ch":B
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    move/from16 v22, v0

    const/16 v23, 0xd

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v6, v0, :cond_f

    .line 335
    const/16 v22, 0xa

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    move v13, v14

    .line 336
    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto :goto_3

    .line 338
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :cond_f
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 340
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    :cond_10
    :goto_4
    :pswitch_0
    move v13, v14

    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto :goto_3

    .line 343
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :pswitch_1
    const-wide/16 v22, -0x3

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    .line 344
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 345
    const/16 v22, 0x20

    move/from16 v0, v22

    if-gt v6, v0, :cond_11

    if-gez v6, :cond_10

    .line 347
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->mark()V

    .line 348
    const/16 v22, -0xc

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v13, v14

    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto :goto_3

    .line 353
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :pswitch_2
    const/16 v22, 0x20

    move/from16 v0, v22

    if-ne v6, v0, :cond_12

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    invoke-virtual/range {v22 .. v24}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 356
    const/16 v22, -0xb

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v13, v14

    .line 357
    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .line 359
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :cond_12
    const/16 v22, 0x20

    move/from16 v0, v22

    if-ge v6, v0, :cond_10

    if-ltz v6, :cond_10

    .line 361
    new-instance v22, Lorg/mortbay/jetty/HttpException;

    const/16 v23, 0x190

    invoke-direct/range {v22 .. v23}, Lorg/mortbay/jetty/HttpException;-><init>(I)V

    throw v22

    .line 366
    :pswitch_3
    const/16 v22, 0x20

    move/from16 v0, v22

    if-gt v6, v0, :cond_13

    if-gez v6, :cond_14

    .line 368
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->mark()V

    .line 369
    const/16 v22, -0xa

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v13, v14

    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .line 371
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :cond_14
    const/16 v22, 0x20

    move/from16 v0, v22

    if-ge v6, v0, :cond_10

    .line 373
    new-instance v22, Lorg/mortbay/jetty/HttpException;

    const/16 v23, 0x190

    invoke-direct/range {v22 .. v23}, Lorg/mortbay/jetty/HttpException;-><init>(I)V

    throw v22

    .line 378
    :pswitch_4
    const/16 v22, 0x20

    move/from16 v0, v22

    if-ne v6, v0, :cond_15

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    invoke-virtual/range {v22 .. v24}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 381
    const/16 v22, -0x9

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v13, v14

    .line 382
    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .line 384
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :cond_15
    const/16 v22, 0x20

    move/from16 v0, v22

    if-ge v6, v0, :cond_10

    if-ltz v6, :cond_10

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    sget-object v23, Lorg/mortbay/jetty/HttpMethods;->CACHE:Lorg/mortbay/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/mortbay/io/Buffer;->sliceFromMark()Lorg/mortbay/io/Buffer;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lorg/mortbay/jetty/HttpParser$EventHandler;->startRequest(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 389
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mortbay/jetty/HttpParser$EventHandler;->headerComplete()V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    move-wide/from16 v22, v18

    .line 392
    goto/16 :goto_0

    .line 397
    :pswitch_5
    const/16 v22, 0x20

    move/from16 v0, v22

    if-gt v6, v0, :cond_16

    if-gez v6, :cond_17

    .line 399
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->mark()V

    .line 400
    const/16 v22, -0x6

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v13, v14

    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .line 402
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :cond_17
    const/16 v22, 0x20

    move/from16 v0, v22

    if-ge v6, v0, :cond_10

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    sget-object v23, Lorg/mortbay/jetty/HttpMethods;->CACHE:Lorg/mortbay/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lorg/mortbay/jetty/HttpParser$EventHandler;->startRequest(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 406
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mortbay/jetty/HttpParser$EventHandler;->headerComplete()V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    move-wide/from16 v22, v18

    .line 409
    goto/16 :goto_0

    .line 414
    :pswitch_6
    const/16 v22, 0xd

    move/from16 v0, v22

    if-eq v6, v0, :cond_18

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v6, v0, :cond_10

    .line 417
    :cond_18
    sget-object v22, Lorg/mortbay/jetty/HttpMethods;->CACHE:Lorg/mortbay/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v15

    .line 418
    .local v15, "method":Lorg/mortbay/io/Buffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-ne v15, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mortbay/io/View$CaseInsensitive;->length()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mortbay/io/View$CaseInsensitive;->peek()B

    move-result v22

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isDigit(C)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/mortbay/io/BufferUtil;->toInt(Lorg/mortbay/io/Buffer;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_responseStatus:I

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    sget-object v23, Lorg/mortbay/jetty/HttpVersions;->CACHE:Lorg/mortbay/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_responseStatus:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/mortbay/io/Buffer;->sliceFromMark()Lorg/mortbay/io/Buffer;

    move-result-object v25

    invoke-virtual/range {v22 .. v25}, Lorg/mortbay/jetty/HttpParser$EventHandler;->startResponse(Lorg/mortbay/io/Buffer;ILorg/mortbay/io/Buffer;)V

    .line 427
    :goto_5
    move-object/from16 v0, p0

    iput-byte v6, v0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 428
    const/16 v22, -0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/mortbay/io/View$CaseInsensitive;->getIndex()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lorg/mortbay/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/mortbay/io/View$CaseInsensitive;->getIndex()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lorg/mortbay/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 431
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    move v13, v14

    .line 432
    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .line 425
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v23, v0

    sget-object v24, Lorg/mortbay/jetty/HttpVersions;->CACHE:Lorg/mortbay/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/mortbay/io/Buffer;->sliceFromMark()Lorg/mortbay/io/Buffer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v15, v1, v2}, Lorg/mortbay/jetty/HttpParser$EventHandler;->startRequest(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_5

    .line 438
    .end local v15    # "method":Lorg/mortbay/io/Buffer;
    :pswitch_7
    sparse-switch v6, :sswitch_data_0

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-object/from16 v22, v0

    if-nez v22, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mortbay/io/View$CaseInsensitive;->length()I

    move-result v22

    if-gtz v22, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mortbay/io/View$CaseInsensitive;->length()I

    move-result v22

    if-gtz v22, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1c

    .line 456
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-object/from16 v22, v0

    if-eqz v22, :cond_22

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 457
    .local v10, "header":Lorg/mortbay/io/Buffer;
    :goto_6
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v20, v0

    .line 460
    .local v20, "value":Lorg/mortbay/io/Buffer;
    :goto_7
    sget-object v22, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lorg/mortbay/jetty/HttpHeaders;->getOrdinal(Lorg/mortbay/io/Buffer;)I

    move-result v11

    .line 461
    .local v11, "ho":I
    if-ltz v11, :cond_1b

    .line 463
    const/16 v21, -0x1

    .line 465
    .local v21, "vo":I
    sparse-switch v11, :sswitch_data_1

    .line 502
    .end local v21    # "vo":I
    :cond_1b
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Lorg/mortbay/jetty/HttpParser$EventHandler;->parsedHeader(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/mortbay/io/View$CaseInsensitive;->getIndex()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lorg/mortbay/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/mortbay/io/View$CaseInsensitive;->getIndex()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lorg/mortbay/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 505
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 510
    .end local v10    # "header":Lorg/mortbay/io/Buffer;
    .end local v11    # "ho":I
    .end local v20    # "value":Lorg/mortbay/io/Buffer;
    :cond_1c
    const/16 v22, 0xd

    move/from16 v0, v22

    if-eq v6, v0, :cond_1d

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v6, v0, :cond_2a

    .line 515
    :cond_1d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x3

    cmp-long v22, v22, v24

    if-nez v22, :cond_1f

    .line 517
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_responseStatus:I

    move/from16 v22, v0

    if-eqz v22, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_responseStatus:I

    move/from16 v22, v0

    const/16 v23, 0x130

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_responseStatus:I

    move/from16 v22, v0

    const/16 v23, 0xcc

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_responseStatus:I

    move/from16 v22, v0

    const/16 v23, 0xc8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_26

    .line 521
    :cond_1e
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    .line 526
    :cond_1f
    :goto_9
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    .line 527
    move-object/from16 v0, p0

    iput-byte v6, v0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 530
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x7fffffff

    cmp-long v22, v22, v24

    if-lez v22, :cond_27

    const v22, 0x7fffffff

    :goto_a
    packed-switch v22, :pswitch_data_1

    .line 554
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 555
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mortbay/jetty/HttpParser;->_forceContentBuffer:Z

    move/from16 v22, v0

    if-nez v22, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    move-object/from16 v22, v0

    if-eqz v22, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    if-nez v22, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/mortbay/io/Buffer;->capacity()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-ltz v22, :cond_21

    .line 557
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentBufferSize:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    .line 558
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mortbay/jetty/HttpParser$EventHandler;->headerComplete()V

    :goto_b
    move-wide/from16 v22, v18

    .line 561
    goto/16 :goto_0

    .line 445
    :sswitch_0
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    .line 446
    const/16 v22, -0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v13, v14

    .line 447
    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .line 456
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :cond_22
    sget-object v22, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/mortbay/jetty/HttpHeaders;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v10

    goto/16 :goto_6

    .line 458
    .restart local v10    # "header":Lorg/mortbay/io/Buffer;
    :cond_23
    new-instance v20, Lorg/mortbay/io/ByteArrayBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 468
    .restart local v11    # "ho":I
    .restart local v20    # "value":Lorg/mortbay/io/Buffer;
    .restart local v21    # "vo":I
    :sswitch_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x2

    cmp-long v22, v22, v24

    if-eqz v22, :cond_1b

    .line 472
    :try_start_1
    invoke-static/range {v20 .. v20}, Lorg/mortbay/io/BufferUtil;->toLong(Lorg/mortbay/io/Buffer;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpParser;->_contentLength:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 479
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gtz v22, :cond_1b

    .line 480
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    goto/16 :goto_8

    .line 474
    :catch_1
    move-exception v8

    .line 476
    .local v8, "e":Ljava/lang/NumberFormatException;
    invoke-static {v8}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 477
    new-instance v22, Lorg/mortbay/jetty/HttpException;

    const/16 v23, 0x190

    invoke-direct/range {v22 .. v23}, Lorg/mortbay/jetty/HttpException;-><init>(I)V

    throw v22

    .line 485
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :sswitch_2
    sget-object v22, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpHeaderValues;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v20

    .line 486
    sget-object v22, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpHeaderValues;->getOrdinal(Lorg/mortbay/io/Buffer;)I

    move-result v21

    .line 487
    const/16 v22, 0x2

    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_24

    .line 488
    const-wide/16 v22, -0x2

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    goto/16 :goto_8

    .line 491
    :cond_24
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 492
    .local v5, "c":Ljava/lang/String;
    const-string v22, "chunked"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_25

    .line 493
    const-wide/16 v22, -0x2

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    goto/16 :goto_8

    .line 495
    :cond_25
    const-string v22, "chunked"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    if-ltz v22, :cond_1b

    .line 496
    new-instance v22, Lorg/mortbay/jetty/HttpException;

    const/16 v23, 0x190

    const/16 v24, 0x0

    invoke-direct/range {v22 .. v24}, Lorg/mortbay/jetty/HttpException;-><init>(ILjava/lang/String;)V

    throw v22

    .line 523
    .end local v5    # "c":Ljava/lang/String;
    .end local v10    # "header":Lorg/mortbay/io/Buffer;
    .end local v11    # "ho":I
    .end local v20    # "value":Lorg/mortbay/io/Buffer;
    .end local v21    # "vo":I
    :cond_26
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    goto/16 :goto_9

    .line 530
    :cond_27
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    goto/16 :goto_a

    .line 533
    :pswitch_8
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    if-nez v22, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    move-object/from16 v22, v0

    if-eqz v22, :cond_28

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentBufferSize:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    .line 537
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mortbay/jetty/HttpParser$EventHandler;->headerComplete()V

    goto/16 :goto_b

    .line 541
    :pswitch_9
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    if-nez v22, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    move-object/from16 v22, v0

    if-eqz v22, :cond_29

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentBufferSize:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    .line 544
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mortbay/jetty/HttpParser$EventHandler;->headerComplete()V

    goto/16 :goto_b

    .line 548
    :pswitch_a
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mortbay/jetty/HttpParser$EventHandler;->headerComplete()V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    goto/16 :goto_b

    .line 566
    :cond_2a
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->mark()V

    .line 568
    const/16 v22, -0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 571
    if-eqz v4, :cond_10

    .line 573
    sget-object v22, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v23

    add-int/lit8 v24, v14, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Lorg/mortbay/jetty/HttpHeaders;->getBest([BII)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-object/from16 v22, v0

    if-eqz v22, :cond_10

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mortbay/io/BufferCache$CachedBuffer;->length()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v24, v0

    add-int v23, v23, v24

    invoke-interface/range {v22 .. v23}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->length()I

    move-result v13

    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .line 589
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :pswitch_b
    sparse-switch v6, :sswitch_data_2

    .line 609
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 610
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2b

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->mark()V

    .line 612
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    .line 613
    const/16 v22, -0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v13, v14

    .line 617
    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .line 593
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :sswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v22, v0

    if-lez v22, :cond_2c

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual/range {v22 .. v24}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 595
    :cond_2c
    move-object/from16 v0, p0

    iput-byte v6, v0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 596
    const/16 v22, -0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v13, v14

    .line 597
    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .line 599
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :sswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v22, v0

    if-lez v22, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-object/from16 v22, v0

    if-nez v22, :cond_2d

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual/range {v22 .. v24}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 601
    :cond_2d
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    .line 602
    const/16 v22, -0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v13, v14

    .line 603
    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .end local v13    # "length":I
    .restart local v14    # "length":I
    :sswitch_5
    move v13, v14

    .line 606
    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .line 620
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :pswitch_c
    sparse-switch v6, :sswitch_data_3

    .line 641
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 642
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    move v13, v14

    .line 645
    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .line 624
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :sswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v22, v0

    if-lez v22, :cond_2e

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual/range {v22 .. v24}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 626
    :cond_2e
    move-object/from16 v0, p0

    iput-byte v6, v0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 627
    const/16 v22, -0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v13, v14

    .line 628
    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .line 630
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :sswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v22, v0

    if-lez v22, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-object/from16 v22, v0

    if-nez v22, :cond_2f

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual/range {v22 .. v24}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 632
    :cond_2f
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    .line 633
    const/16 v22, -0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v13, v14

    .line 634
    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .line 637
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :sswitch_8
    const/16 v22, -0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v13, v14

    .line 638
    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .line 648
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :pswitch_d
    sparse-switch v6, :sswitch_data_4

    .line 672
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_30

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->mark()V

    .line 674
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    .line 675
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v13, v14

    .line 678
    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .line 652
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :sswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v22, v0

    if-lez v22, :cond_31

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mortbay/io/View$CaseInsensitive;->length()I

    move-result v22

    if-nez v22, :cond_32

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual/range {v22 .. v24}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 664
    :cond_31
    :goto_c
    move-object/from16 v0, p0

    iput-byte v6, v0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 665
    const/16 v22, -0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v13, v14

    .line 666
    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .line 659
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mortbay/io/View$CaseInsensitive;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 660
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual/range {v22 .. v24}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 661
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/mortbay/io/View$CaseInsensitive;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    goto :goto_c

    :sswitch_a
    move v13, v14

    .line 669
    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .line 681
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :pswitch_e
    sparse-switch v6, :sswitch_data_5

    .line 705
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    goto/16 :goto_4

    .line 685
    :sswitch_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v22, v0

    if-lez v22, :cond_34

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mortbay/io/View$CaseInsensitive;->length()I

    move-result v22

    if-nez v22, :cond_35

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual/range {v22 .. v24}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 697
    :cond_34
    :goto_d
    move-object/from16 v0, p0

    iput-byte v6, v0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 698
    const/16 v22, -0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v13, v14

    .line 699
    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .line 692
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mortbay/io/View$CaseInsensitive;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 693
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual/range {v22 .. v24}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 694
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/mortbay/io/View$CaseInsensitive;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    goto :goto_d

    .line 702
    :sswitch_c
    const/16 v22, -0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v13, v14

    .line 703
    .end local v14    # "length":I
    .restart local v13    # "length":I
    goto/16 :goto_3

    .end local v6    # "ch":B
    .end local v13    # "length":I
    .restart local v14    # "length":I
    :cond_37
    move v13, v14

    .line 714
    .end local v14    # "length":I
    .restart local v13    # "length":I
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->length()I

    move-result v13

    .line 717
    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move/from16 v22, v0

    if-lez v22, :cond_4d

    if-lez v13, :cond_4d

    .line 719
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    move/from16 v22, v0

    const/16 v23, 0xd

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->peek()B

    move-result v22

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_39

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->get()B

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->length()I

    move-result v13

    .line 723
    goto :goto_e

    .line 725
    :cond_39
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 726
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_2

    .line 849
    :cond_3a
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->length()I

    move-result v13

    goto :goto_e

    .line 729
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/mortbay/io/Buffer;->length()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Lorg/mortbay/io/Buffer;->get(I)Lorg/mortbay/io/Buffer;

    move-result-object v7

    .line 730
    .restart local v7    # "chunk":Lorg/mortbay/io/Buffer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    move-wide/from16 v22, v0

    invoke-interface {v7}, Lorg/mortbay/io/Buffer;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentView:Lorg/mortbay/io/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/mortbay/io/View;->update(Lorg/mortbay/io/Buffer;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/mortbay/jetty/HttpParser$EventHandler;->content(Lorg/mortbay/io/Buffer;)V

    move-wide/from16 v22, v18

    .line 734
    goto/16 :goto_0

    .line 738
    .end local v7    # "chunk":Lorg/mortbay/io/Buffer;
    :pswitch_10
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    move-wide/from16 v24, v0

    sub-long v16, v22, v24

    .line 739
    .local v16, "remaining":J
    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-nez v22, :cond_3b

    .line 741
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    move-wide/from16 v22, v18

    .line 743
    goto/16 :goto_0

    .line 746
    :cond_3b
    int-to-long v0, v13

    move-wide/from16 v22, v0

    cmp-long v22, v22, v16

    if-lez v22, :cond_3c

    .line 750
    move-wide/from16 v0, v16

    long-to-int v13, v0

    .line 753
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/mortbay/io/Buffer;->get(I)Lorg/mortbay/io/Buffer;

    move-result-object v7

    .line 754
    .restart local v7    # "chunk":Lorg/mortbay/io/Buffer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    move-wide/from16 v22, v0

    invoke-interface {v7}, Lorg/mortbay/io/Buffer;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentView:Lorg/mortbay/io/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/mortbay/io/View;->update(Lorg/mortbay/io/Buffer;)V

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/mortbay/jetty/HttpParser$EventHandler;->content(Lorg/mortbay/io/Buffer;)V

    .line 758
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-nez v22, :cond_3d

    .line 760
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    :cond_3d
    move-wide/from16 v22, v18

    .line 764
    goto/16 :goto_0

    .line 769
    .end local v7    # "chunk":Lorg/mortbay/io/Buffer;
    .end local v16    # "remaining":J
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->peek()B

    move-result v6

    .line 770
    .restart local v6    # "ch":B
    const/16 v22, 0xd

    move/from16 v0, v22

    if-eq v6, v0, :cond_3e

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v6, v0, :cond_3f

    .line 771
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->get()B

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    goto/16 :goto_f

    .line 772
    :cond_3f
    const/16 v22, 0x20

    move/from16 v0, v22

    if-gt v6, v0, :cond_40

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->get()B

    goto/16 :goto_f

    .line 776
    :cond_40
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    .line 777
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_chunkPosition:I

    .line 778
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_f

    .line 785
    .end local v6    # "ch":B
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->get()B

    move-result v6

    .line 786
    .restart local v6    # "ch":B
    const/16 v22, 0xd

    move/from16 v0, v22

    if-eq v6, v0, :cond_41

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v6, v0, :cond_43

    .line 788
    :cond_41
    move-object/from16 v0, p0

    iput-byte v6, v0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 789
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    move/from16 v22, v0

    if-nez v22, :cond_42

    .line 791
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    move-wide/from16 v22, v18

    .line 793
    goto/16 :goto_0

    .line 796
    :cond_42
    const/16 v22, 0x6

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_f

    .line 798
    :cond_43
    const/16 v22, 0x20

    move/from16 v0, v22

    if-le v6, v0, :cond_44

    const/16 v22, 0x3b

    move/from16 v0, v22

    if-ne v6, v0, :cond_45

    .line 799
    :cond_44
    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_f

    .line 800
    :cond_45
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v6, v0, :cond_46

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v6, v0, :cond_46

    .line 801
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x10

    add-int/lit8 v23, v6, -0x30

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    goto/16 :goto_f

    .line 802
    :cond_46
    const/16 v22, 0x61

    move/from16 v0, v22

    if-lt v6, v0, :cond_47

    const/16 v22, 0x66

    move/from16 v0, v22

    if-gt v6, v0, :cond_47

    .line 803
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x10

    add-int/lit8 v23, v6, 0xa

    add-int/lit8 v23, v23, -0x61

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    goto/16 :goto_f

    .line 804
    :cond_47
    const/16 v22, 0x41

    move/from16 v0, v22

    if-lt v6, v0, :cond_48

    const/16 v22, 0x46

    move/from16 v0, v22

    if-gt v6, v0, :cond_48

    .line 805
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x10

    add-int/lit8 v23, v6, 0xa

    add-int/lit8 v23, v23, -0x41

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    goto/16 :goto_f

    .line 807
    :cond_48
    new-instance v22, Ljava/io/IOException;

    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    const-string v24, "bad chunk char: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 813
    .end local v6    # "ch":B
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/mortbay/io/Buffer;->get()B

    move-result v6

    .line 814
    .restart local v6    # "ch":B
    const/16 v22, 0xd

    move/from16 v0, v22

    if-eq v6, v0, :cond_49

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v6, v0, :cond_3a

    .line 816
    :cond_49
    move-object/from16 v0, p0

    iput-byte v6, v0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 817
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    move/from16 v22, v0

    if-nez v22, :cond_4a

    .line 819
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    move-wide/from16 v22, v18

    .line 821
    goto/16 :goto_0

    .line 824
    :cond_4a
    const/16 v22, 0x6

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_f

    .line 831
    .end local v6    # "ch":B
    :pswitch_14
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_chunkPosition:I

    move/from16 v23, v0

    sub-int v16, v22, v23

    .line 832
    .local v16, "remaining":I
    if-nez v16, :cond_4b

    .line 834
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_f

    .line 837
    :cond_4b
    move/from16 v0, v16

    if-le v13, v0, :cond_4c

    .line 838
    move/from16 v13, v16

    .line 839
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/mortbay/io/Buffer;->get(I)Lorg/mortbay/io/Buffer;

    move-result-object v7

    .line 840
    .restart local v7    # "chunk":Lorg/mortbay/io/Buffer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    move-wide/from16 v22, v0

    invoke-interface {v7}, Lorg/mortbay/io/Buffer;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    .line 841
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/jetty/HttpParser;->_chunkPosition:I

    move/from16 v22, v0

    invoke-interface {v7}, Lorg/mortbay/io/Buffer;->length()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_chunkPosition:I

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_contentView:Lorg/mortbay/io/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/mortbay/io/View;->update(Lorg/mortbay/io/Buffer;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/mortbay/jetty/HttpParser$EventHandler;->content(Lorg/mortbay/io/Buffer;)V

    move-wide/from16 v22, v18

    .line 845
    goto/16 :goto_0

    .end local v7    # "chunk":Lorg/mortbay/io/Buffer;
    .end local v16    # "remaining":I
    :cond_4d
    move-wide/from16 v22, v18

    .line 851
    goto/16 :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch -0xd
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 438
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
        0x3a -> :sswitch_0
    .end sparse-switch

    .line 465
    :sswitch_data_1
    .sparse-switch
        0x5 -> :sswitch_2
        0xc -> :sswitch_1
    .end sparse-switch

    .line 530
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch

    .line 589
    :sswitch_data_2
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_3
        0xd -> :sswitch_3
        0x20 -> :sswitch_5
        0x3a -> :sswitch_4
    .end sparse-switch

    .line 620
    :sswitch_data_3
    .sparse-switch
        0x9 -> :sswitch_8
        0xa -> :sswitch_6
        0xd -> :sswitch_6
        0x20 -> :sswitch_8
        0x3a -> :sswitch_7
    .end sparse-switch

    .line 648
    :sswitch_data_4
    .sparse-switch
        0x9 -> :sswitch_a
        0xa -> :sswitch_9
        0xd -> :sswitch_9
        0x20 -> :sswitch_a
    .end sparse-switch

    .line 681
    :sswitch_data_5
    .sparse-switch
        0x9 -> :sswitch_c
        0xa -> :sswitch_b
        0xd -> :sswitch_b
        0x20 -> :sswitch_c
    .end sparse-switch

    .line 726
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public reset(Z)V
    .locals 5
    .param p1, "returnBuffers"    # Z

    .prologue
    const/16 v4, 0xa

    .line 933
    monitor-enter p0

    .line 935
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_contentView:Lorg/mortbay/io/View;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpParser;->_contentView:Lorg/mortbay/io/View;

    invoke-virtual {v2}, Lorg/mortbay/io/View;->putIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mortbay/io/View;->setGetIndex(I)V

    .line 937
    const/16 v1, -0xd

    iput v1, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 938
    const-wide/16 v2, -0x3

    iput-wide v2, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    .line 939
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    .line 940
    const/4 v1, 0x0

    iput v1, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    .line 941
    const/4 v1, 0x0

    iput v1, p0, Lorg/mortbay/jetty/HttpParser;->_responseStatus:I

    .line 943
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-byte v1, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->peek()B

    move-result v1

    if-ne v1, v4, :cond_0

    .line 945
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->skip(I)I

    .line 946
    const/16 v1, 0xa

    iput-byte v1, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 949
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-eqz v1, :cond_4

    .line 951
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 956
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->setMarkIndex(I)V

    .line 957
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->compact()V

    .line 958
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    .line 959
    .local v0, "take":I
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 960
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    .line 961
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lorg/mortbay/io/Buffer;->peek(II)Lorg/mortbay/io/Buffer;

    .line 962
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lorg/mortbay/io/Buffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    move-result v2

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->skip(I)I

    .line 965
    .end local v0    # "take":I
    :cond_2
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 967
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 968
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffers;->returnBuffer(Lorg/mortbay/io/Buffer;)V

    .line 969
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    .line 979
    :cond_4
    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    if-eqz v1, :cond_5

    .line 981
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->setMarkIndex(I)V

    .line 982
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->hasContent()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    .line 984
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffers;->returnBuffer(Lorg/mortbay/io/Buffer;)V

    .line 985
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    .line 986
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    .line 998
    :cond_5
    :goto_1
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    iput-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    .line 999
    monitor-exit p0

    .line 1000
    return-void

    .line 973
    :cond_6
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->setMarkIndex(I)V

    .line 974
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->compact()V

    goto :goto_0

    .line 999
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 990
    :cond_7
    :try_start_1
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->compact()V

    .line 991
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-virtual {v1, v2}, Lorg/mortbay/io/View$CaseInsensitive;->update(Lorg/mortbay/io/Buffer;)V

    .line 992
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 993
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-virtual {v1, v2}, Lorg/mortbay/io/View$CaseInsensitive;->update(Lorg/mortbay/io/Buffer;)V

    .line 994
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setForceContentBuffer(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 1043
    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpParser;->_forceContentBuffer:Z

    .line 1044
    return-void
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1005
    iput p1, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 1006
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    .line 1007
    return-void
.end method

.method public skipCRLF()V
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 905
    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 907
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->peek()B

    move-result v0

    .line 908
    .local v0, "ch":B
    if-eq v0, v4, :cond_0

    if-ne v0, v3, :cond_1

    .line 910
    :cond_0
    iput-byte v0, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 911
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->skip(I)I

    goto :goto_0

    .line 917
    .end local v0    # "ch":B
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 919
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->peek()B

    move-result v0

    .line 920
    .restart local v0    # "ch":B
    if-eq v0, v4, :cond_2

    if-ne v0, v3, :cond_3

    .line 922
    :cond_2
    iput-byte v0, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 923
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->skip(I)I

    goto :goto_1

    .line 929
    .end local v0    # "ch":B
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1018
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/mortbay/io/Buffer;)Ljava/lang/String;
    .locals 2
    .param p1, "buf"    # Lorg/mortbay/io/Buffer;

    .prologue
    .line 1012
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " buf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
