.class public abstract Lorg/mortbay/jetty/AbstractGenerator;
.super Ljava/lang/Object;
.source "AbstractGenerator.java"

# interfaces
.implements Lorg/mortbay/jetty/Generator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;,
        Lorg/mortbay/jetty/AbstractGenerator$Output;
    }
.end annotation


# static fields
.field private static MAX_OUTPUT_CHARS:I = 0x0

.field private static final NO_BYTES:[B

.field public static final STATE_CONTENT:I = 0x2

.field public static final STATE_END:I = 0x4

.field public static final STATE_FLUSHING:I = 0x3

.field public static final STATE_HEADER:I

.field private static __reasons:[Lorg/mortbay/io/Buffer;

.field static class$javax$servlet$http$HttpServletResponse:Ljava/lang/Class;


# instance fields
.field protected _buffer:Lorg/mortbay/io/Buffer;

.field protected _buffers:Lorg/mortbay/io/Buffers;

.field protected _close:Z

.field protected _content:Lorg/mortbay/io/Buffer;

.field protected _contentBufferSize:I

.field protected _contentLength:J

.field protected _contentWritten:J

.field protected _endp:Lorg/mortbay/io/EndPoint;

.field protected _head:Z

.field protected _header:Lorg/mortbay/io/Buffer;

.field protected _headerBufferSize:I

.field protected _last:Z

.field protected _method:Lorg/mortbay/io/Buffer;

.field protected _noContent:Z

.field protected _reason:Lorg/mortbay/io/Buffer;

.field private _sendServerVersion:Z

.field protected _state:I

.field protected _status:I

.field protected _uri:Ljava/lang/String;

.field protected _version:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 56
    const/4 v3, 0x0

    new-array v3, v3, [B

    sput-object v3, Lorg/mortbay/jetty/AbstractGenerator;->NO_BYTES:[B

    .line 57
    const/16 v3, 0x200

    sput v3, Lorg/mortbay/jetty/AbstractGenerator;->MAX_OUTPUT_CHARS:I

    .line 59
    const/16 v3, 0x1f9

    new-array v3, v3, [Lorg/mortbay/io/Buffer;

    sput-object v3, Lorg/mortbay/jetty/AbstractGenerator;->__reasons:[Lorg/mortbay/io/Buffer;

    .line 62
    sget-object v3, Lorg/mortbay/jetty/AbstractGenerator;->class$javax$servlet$http$HttpServletResponse:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "javax.servlet.http.HttpServletResponse"

    invoke-static {v3}, Lorg/mortbay/jetty/AbstractGenerator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/mortbay/jetty/AbstractGenerator;->class$javax$servlet$http$HttpServletResponse:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 63
    .local v1, "fields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 65
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SC_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    :try_start_0
    aget-object v3, v1, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 71
    .local v0, "code":I
    sget-object v3, Lorg/mortbay/jetty/AbstractGenerator;->__reasons:[Lorg/mortbay/io/Buffer;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 72
    sget-object v3, Lorg/mortbay/jetty/AbstractGenerator;->__reasons:[Lorg/mortbay/io/Buffer;

    new-instance v4, Lorg/mortbay/io/ByteArrayBuffer;

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "code":I
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 62
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    .end local v2    # "i":I
    :cond_1
    sget-object v3, Lorg/mortbay/jetty/AbstractGenerator;->class$javax$servlet$http$HttpServletResponse:Ljava/lang/Class;

    goto :goto_0

    .line 78
    .restart local v1    # "fields":[Ljava/lang/reflect/Field;
    .restart local v2    # "i":I
    :cond_2
    return-void

    .line 74
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public constructor <init>(Lorg/mortbay/io/Buffers;Lorg/mortbay/io/EndPoint;II)V
    .locals 3
    .param p1, "buffers"    # Lorg/mortbay/io/Buffers;
    .param p2, "io"    # Lorg/mortbay/io/EndPoint;
    .param p3, "headerBufferSize"    # I
    .param p4, "contentBufferSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    .line 95
    iput v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    .line 96
    const/16 v0, 0xb

    iput v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    .line 102
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    .line 103
    iput-boolean v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_last:Z

    .line 104
    iput-boolean v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    .line 105
    iput-boolean v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    .line 106
    iput-boolean v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    .line 131
    iput-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    .line 132
    iput-object p2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    .line 133
    iput p3, p0, Lorg/mortbay/jetty/AbstractGenerator;->_headerBufferSize:I

    .line 134
    iput p4, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentBufferSize:I

    .line 135
    return-void
.end method

.method static access$000()[B
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/mortbay/jetty/AbstractGenerator;->NO_BYTES:[B

    return-object v0
.end method

.method static access$100()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lorg/mortbay/jetty/AbstractGenerator;->MAX_OUTPUT_CHARS:I

    return v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 62
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static getReason(I)Ljava/lang/String;
    .locals 2
    .param p0, "code"    # I

    .prologue
    .line 88
    sget-object v1, Lorg/mortbay/jetty/AbstractGenerator;->__reasons:[Lorg/mortbay/io/Buffer;

    array-length v1, v1

    if-ge p0, v1, :cond_0

    sget-object v1, Lorg/mortbay/jetty/AbstractGenerator;->__reasons:[Lorg/mortbay/io/Buffer;

    aget-object v0, v1, p0

    .line 89
    .local v0, "reason":Lorg/mortbay/io/Buffer;
    :goto_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/mortbay/util/TypeUtil;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 88
    .end local v0    # "reason":Lorg/mortbay/io/Buffer;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    .restart local v0    # "reason":Lorg/mortbay/io/Buffer;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected static getReasonBuffer(I)Lorg/mortbay/io/Buffer;
    .locals 3
    .param p0, "code"    # I

    .prologue
    const/4 v1, 0x0

    .line 82
    sget-object v2, Lorg/mortbay/jetty/AbstractGenerator;->__reasons:[Lorg/mortbay/io/Buffer;

    array-length v2, v2

    if-ge p0, v2, :cond_1

    sget-object v2, Lorg/mortbay/jetty/AbstractGenerator;->__reasons:[Lorg/mortbay/io/Buffer;

    aget-object v0, v2, p0

    .line 83
    .local v0, "reason":Lorg/mortbay/io/Buffer;
    :goto_0
    if-nez v0, :cond_0

    move-object v0, v1

    .end local v0    # "reason":Lorg/mortbay/io/Buffer;
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 82
    goto :goto_0
.end method


# virtual methods
.method public complete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State==HEADER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_0
    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    iget-wide v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    if-nez v0, :cond_2

    .line 440
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ContentLength written=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " != contentLength=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 442
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    .line 444
    :cond_2
    return-void
.end method

.method public abstract completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method completeUncheckedAddContent()V
    .locals 4

    .prologue
    .line 389
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->clear()V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    .line 398
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->clear()V

    goto :goto_0
.end method

.method public abstract flush()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getContentBufferSize()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentBufferSize:I

    return v0
.end method

.method public getContentWritten()J
    .locals 2

    .prologue
    .line 481
    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    return-wide v0
.end method

.method public getSendServerVersion()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_sendServerVersion:Z

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    return v0
.end method

.method public getUncheckedBuffer()Lorg/mortbay/io/Buffer;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    return v0
.end method

.method public increaseContentBufferSize(I)V
    .locals 3
    .param p1, "contentBufferSize"    # I

    .prologue
    .line 208
    iget v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentBufferSize:I

    if-le p1, v1, :cond_0

    .line 210
    iput p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentBufferSize:I

    .line 211
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    iget v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentBufferSize:I

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 214
    .local v0, "nb":Lorg/mortbay/io/Buffer;
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 215
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffers;->returnBuffer(Lorg/mortbay/io/Buffer;)V

    .line 216
    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    .line 219
    .end local v0    # "nb":Lorg/mortbay/io/Buffer;
    :cond_0
    return-void
.end method

.method public isBufferFull()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 406
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->space()I

    move-result v2

    if-nez v2, :cond_3

    .line 408
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 409
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->compact()V

    .line 410
    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->space()I

    move-result v2

    if-nez v2, :cond_2

    .line 413
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 410
    goto :goto_0

    .line 413
    :cond_3
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 254
    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentWritten()Z
    .locals 4

    .prologue
    .line 419
    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    iget-wide v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHead()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 248
    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract prepareUncheckedAddContent()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public reset(Z)V
    .locals 3
    .param p1, "returnBuffers"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 140
    iput v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    .line 141
    iput v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    .line 142
    const/16 v0, 0xb

    iput v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    .line 143
    iput-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_reason:Lorg/mortbay/io/Buffer;

    .line 144
    iput-boolean v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_last:Z

    .line 145
    iput-boolean v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    .line 146
    iput-boolean v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    .line 147
    iput-boolean v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    .line 149
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    .line 151
    monitor-enter p0

    .line 153
    if-eqz p1, :cond_3

    .line 155
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffers;->returnBuffer(Lorg/mortbay/io/Buffer;)V

    .line 157
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    .line 158
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffers;->returnBuffer(Lorg/mortbay/io/Buffer;)V

    .line 160
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    .line 173
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iput-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    .line 175
    iput-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    .line 176
    return-void

    .line 164
    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->clear()V

    .line 167
    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffers;->returnBuffer(Lorg/mortbay/io/Buffer;)V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resetBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flushed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iput-boolean v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_last:Z

    .line 185
    iput-boolean v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    .line 186
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    .line 187
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    .line 189
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->clear()V

    .line 191
    :cond_1
    return-void
.end method

.method public sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    if-eqz p4, :cond_0

    .line 464
    iput-boolean p4, p0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    .line 465
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 467
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/AbstractGenerator;->setResponse(ILjava/lang/String;)V

    .line 468
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/AbstractGenerator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V

    .line 469
    if-eqz p3, :cond_1

    .line 470
    new-instance v0, Lorg/mortbay/io/View;

    new-instance v1, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v1, p3}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/AbstractGenerator;->addContent(Lorg/mortbay/io/Buffer;Z)V

    .line 471
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator;->complete()V

    .line 473
    :cond_2
    return-void
.end method

.method public setContentLength(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 281
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 282
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_0
    iput-wide p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    goto :goto_0
.end method

.method public setHead(Z)V
    .locals 0
    .param p1, "head"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    .line 294
    return-void
.end method

.method public setPersistent(Z)V
    .locals 1
    .param p1, "persistent"    # Z

    .prologue
    .line 309
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    .line 310
    return-void

    .line 309
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 336
    if-eqz p1, :cond_0

    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/HttpMethods;->GET_BUFFER:Lorg/mortbay/io/Buffer;

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    .line 340
    :goto_0
    iput-object p2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_uri:Ljava/lang/String;

    .line 341
    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    .line 343
    :cond_1
    return-void

    .line 339
    :cond_2
    sget-object v0, Lorg/mortbay/jetty/HttpMethods;->CACHE:Lorg/mortbay/io/BufferCache;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    goto :goto_0
.end method

.method public setResponse(ILjava/lang/String;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 352
    iget v3, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "STATE!=START"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 354
    :cond_0
    iput p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    .line 355
    if-eqz p2, :cond_3

    .line 357
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 358
    .local v2, "len":I
    iget v3, p0, Lorg/mortbay/jetty/AbstractGenerator;->_headerBufferSize:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_1

    .line 359
    iget v3, p0, Lorg/mortbay/jetty/AbstractGenerator;->_headerBufferSize:I

    div-int/lit8 v2, v3, 0x2

    .line 360
    :cond_1
    new-instance v3, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v3, v2}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    iput-object v3, p0, Lorg/mortbay/jetty/AbstractGenerator;->_reason:Lorg/mortbay/io/Buffer;

    .line 361
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 363
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 364
    .local v0, "ch":C
    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    .line 365
    iget-object v3, p0, Lorg/mortbay/jetty/AbstractGenerator;->_reason:Lorg/mortbay/io/Buffer;

    int-to-byte v4, v0

    invoke-interface {v3, v4}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 361
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    :cond_2
    iget-object v3, p0, Lorg/mortbay/jetty/AbstractGenerator;->_reason:Lorg/mortbay/io/Buffer;

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lorg/mortbay/io/Buffer;->put(B)V

    goto :goto_1

    .line 370
    .end local v0    # "ch":C
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_3
    return-void
.end method

.method public setSendServerVersion(Z)V
    .locals 0
    .param p1, "sendServerVersion"    # Z

    .prologue
    .line 236
    iput-boolean p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_sendServerVersion:Z

    .line 237
    return-void
.end method

.method public setVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 319
    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "STATE!=START"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    iput p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    .line 321
    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_1

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    .line 323
    :cond_1
    return-void
.end method

.method uncheckedAddContent(I)V
    .locals 2
    .param p1, "b"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 384
    return-void
.end method
