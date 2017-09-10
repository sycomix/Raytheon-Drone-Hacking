.class public Lorg/mortbay/io/BufferDateCache;
.super Lorg/mortbay/util/DateCache;
.source "BufferDateCache.java"


# instance fields
.field _buffer:Lorg/mortbay/io/Buffer;

.field _last:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/mortbay/util/DateCache;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/mortbay/util/DateCache;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/text/DateFormatSymbols;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lorg/mortbay/util/DateCache;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "l"    # Ljava/util/Locale;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/mortbay/util/DateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 40
    return-void
.end method


# virtual methods
.method public declared-synchronized formatBuffer(J)Lorg/mortbay/io/Buffer;
    .locals 3
    .param p1, "date"    # J

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/mortbay/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "d":Ljava/lang/String;
    iget-object v1, p0, Lorg/mortbay/io/BufferDateCache;->_last:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lorg/mortbay/io/BufferDateCache;->_buffer:Lorg/mortbay/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_0
    monitor-exit p0

    return-object v1

    .line 52
    :cond_0
    :try_start_1
    iput-object v0, p0, Lorg/mortbay/io/BufferDateCache;->_last:Ljava/lang/String;

    .line 53
    new-instance v1, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mortbay/io/BufferDateCache;->_buffer:Lorg/mortbay/io/Buffer;

    .line 55
    iget-object v1, p0, Lorg/mortbay/io/BufferDateCache;->_buffer:Lorg/mortbay/io/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    .end local v0    # "d":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
