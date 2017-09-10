.class public Lorg/mortbay/io/View;
.super Lorg/mortbay/io/AbstractBuffer;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/io/View$CaseInsensitive;
    }
.end annotation


# instance fields
.field _buffer:Lorg/mortbay/io/Buffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/io/Buffer;)V
    .locals 3
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 48
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v2, v0}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 49
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/View;->_buffer:Lorg/mortbay/io/Buffer;

    .line 50
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/View;->setPutIndex(I)V

    .line 51
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/View;->setGetIndex(I)V

    .line 52
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/View;->setMarkIndex(I)V

    .line 53
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lorg/mortbay/io/View;->_access:I

    .line 54
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 53
    goto :goto_1
.end method

.method public constructor <init>(Lorg/mortbay/io/Buffer;IIII)V
    .locals 2
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;
    .param p2, "mark"    # I
    .param p3, "get"    # I
    .param p4, "put"    # I
    .param p5, "access"    # I

    .prologue
    .line 38
    const/4 v1, 0x2

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 39
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/View;->_buffer:Lorg/mortbay/io/Buffer;

    .line 40
    invoke-virtual {p0, p4}, Lorg/mortbay/io/View;->setPutIndex(I)V

    .line 41
    invoke-virtual {p0, p3}, Lorg/mortbay/io/View;->setGetIndex(I)V

    .line 42
    invoke-virtual {p0, p2}, Lorg/mortbay/io/View;->setMarkIndex(I)V

    .line 43
    iput p5, p0, Lorg/mortbay/io/View;->_access:I

    .line 44
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/mortbay/io/View;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public buffer()Lorg/mortbay/io/Buffer;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/mortbay/io/View;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/mortbay/io/View;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->capacity()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/View;->setMarkIndex(I)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/View;->setGetIndex(I)V

    .line 117
    iget-object v0, p0, Lorg/mortbay/io/View;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/View;->setPutIndex(I)V

    .line 118
    iget-object v0, p0, Lorg/mortbay/io/View;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/View;->setGetIndex(I)V

    .line 119
    return-void
.end method

.method public compact()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 136
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lorg/mortbay/io/AbstractBuffer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/mortbay/io/View;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public isVolatile()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public peek(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lorg/mortbay/io/View;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, p1}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v0

    return v0
.end method

.method public peek(I[BII)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lorg/mortbay/io/View;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mortbay/io/Buffer;->peek(I[BII)I

    move-result v0

    return v0
.end method

.method public peek(II)Lorg/mortbay/io/Buffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lorg/mortbay/io/View;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, p1, p2}, Lorg/mortbay/io/Buffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public poke(ILorg/mortbay/io/Buffer;)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/mortbay/io/Buffer;

    .prologue
    .line 185
    iget-object v0, p0, Lorg/mortbay/io/View;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, p1, p2}, Lorg/mortbay/io/Buffer;->poke(ILorg/mortbay/io/Buffer;)I

    move-result v0

    return v0
.end method

.method public poke(I[BII)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lorg/mortbay/io/View;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mortbay/io/Buffer;->poke(I[BII)I

    move-result v0

    return v0
.end method

.method public poke(IB)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "b"    # B

    .prologue
    .line 194
    iget-object v0, p0, Lorg/mortbay/io/View;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, p1, p2}, Lorg/mortbay/io/Buffer;->poke(IB)V

    .line 195
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/mortbay/io/View;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_0

    .line 211
    const-string v0, "INVALID"

    .line 212
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/mortbay/io/AbstractBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public update(II)V
    .locals 2
    .param p1, "get"    # I
    .param p2, "put"    # I

    .prologue
    .line 77
    iget v0, p0, Lorg/mortbay/io/View;->_access:I

    .line 78
    .local v0, "a":I
    const/4 v1, 0x2

    iput v1, p0, Lorg/mortbay/io/View;->_access:I

    .line 79
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/mortbay/io/View;->setGetIndex(I)V

    .line 80
    invoke-virtual {p0, p2}, Lorg/mortbay/io/View;->setPutIndex(I)V

    .line 81
    invoke-virtual {p0, p1}, Lorg/mortbay/io/View;->setGetIndex(I)V

    .line 82
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/mortbay/io/View;->setMarkIndex(I)V

    .line 83
    iput v0, p0, Lorg/mortbay/io/View;->_access:I

    .line 84
    return-void
.end method

.method public update(Lorg/mortbay/io/Buffer;)V
    .locals 2
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;

    .prologue
    const/4 v0, 0x2

    .line 66
    iput v0, p0, Lorg/mortbay/io/View;->_access:I

    .line 67
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/io/View;->_buffer:Lorg/mortbay/io/Buffer;

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/mortbay/io/View;->setGetIndex(I)V

    .line 69
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/mortbay/io/View;->setPutIndex(I)V

    .line 70
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/mortbay/io/View;->setGetIndex(I)V

    .line 71
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/mortbay/io/View;->setMarkIndex(I)V

    .line 72
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lorg/mortbay/io/View;->_access:I

    .line 73
    return-void
.end method
