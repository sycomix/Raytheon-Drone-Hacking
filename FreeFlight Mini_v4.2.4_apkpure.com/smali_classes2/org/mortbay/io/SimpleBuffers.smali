.class public Lorg/mortbay/io/SimpleBuffers;
.super Ljava/lang/Object;
.source "SimpleBuffers.java"

# interfaces
.implements Lorg/mortbay/io/Buffers;


# instance fields
.field _buffers:[Lorg/mortbay/io/Buffer;


# direct methods
.method public constructor <init>([Lorg/mortbay/io/Buffer;)V
    .locals 0
    .param p1, "buffers"    # [Lorg/mortbay/io/Buffer;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    .line 35
    return-void
.end method


# virtual methods
.method public getBuffer(I)Lorg/mortbay/io/Buffer;
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 43
    iget-object v2, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    if-eqz v2, :cond_1

    .line 45
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 47
    iget-object v2, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->capacity()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 49
    iget-object v2, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    aget-object v0, v2, v1

    .line 50
    .local v0, "b":Lorg/mortbay/io/Buffer;
    iget-object v2, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 55
    .end local v0    # "b":Lorg/mortbay/io/Buffer;
    .end local v1    # "i":I
    :goto_1
    return-object v0

    .line 45
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "i":I
    :cond_1
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    goto :goto_1
.end method

.method public returnBuffer(Lorg/mortbay/io/Buffer;)V
    .locals 2
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;

    .prologue
    .line 64
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->clear()V

    .line 65
    iget-object v1, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    if-eqz v1, :cond_1

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 69
    iget-object v1, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    aput-object p1, v1, v0

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
