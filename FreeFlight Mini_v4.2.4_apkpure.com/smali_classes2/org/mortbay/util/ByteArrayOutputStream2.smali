.class public Lorg/mortbay/util/ByteArrayOutputStream2;
.super Ljava/io/ByteArrayOutputStream;
.source "ByteArrayOutputStream2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBuf()[B
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/mortbay/util/ByteArrayOutputStream2;->buf:[B

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lorg/mortbay/util/ByteArrayOutputStream2;->count:I

    return v0
.end method

.method public reset(I)V
    .locals 1
    .param p1, "minSize"    # I

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/mortbay/util/ByteArrayOutputStream2;->reset()V

    .line 34
    iget-object v0, p0, Lorg/mortbay/util/ByteArrayOutputStream2;->buf:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 36
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/mortbay/util/ByteArrayOutputStream2;->buf:[B

    .line 38
    :cond_0
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 29
    iput p1, p0, Lorg/mortbay/util/ByteArrayOutputStream2;->count:I

    return-void
.end method

.method public writeUnchecked(I)V
    .locals 3
    .param p1, "b"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lorg/mortbay/util/ByteArrayOutputStream2;->buf:[B

    iget v1, p0, Lorg/mortbay/util/ByteArrayOutputStream2;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mortbay/util/ByteArrayOutputStream2;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 43
    return-void
.end method
