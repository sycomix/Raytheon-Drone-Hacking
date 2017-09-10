.class public abstract Lorg/mortbay/io/AbstractBuffer;
.super Ljava/lang/Object;
.source "AbstractBuffer.java"

# interfaces
.implements Lorg/mortbay/io/Buffer;


# static fields
.field static final $assertionsDisabled:Z

.field protected static final __IMMUTABLE:Ljava/lang/String; = "IMMUTABLE"

.field protected static final __READONLY:Ljava/lang/String; = "READONLY"

.field protected static final __READWRITE:Ljava/lang/String; = "READWRITE"

.field protected static final __VOLATILE:Ljava/lang/String; = "VOLATILE"

.field static class$org$mortbay$io$AbstractBuffer:Ljava/lang/Class;


# instance fields
.field protected _access:I

.field protected _get:I

.field protected _hash:I

.field protected _hashGet:I

.field protected _hashPut:I

.field protected _mark:I

.field protected _put:I

.field protected _string:Ljava/lang/String;

.field protected _view:Lorg/mortbay/io/View;

.field protected _volatile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/mortbay/io/AbstractBuffer;->class$org$mortbay$io$AbstractBuffer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.io.AbstractBuffer"

    invoke-static {v0}, Lorg/mortbay/io/AbstractBuffer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/io/AbstractBuffer;->class$org$mortbay$io$AbstractBuffer:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lorg/mortbay/io/AbstractBuffer;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Lorg/mortbay/io/AbstractBuffer;->class$org$mortbay$io$AbstractBuffer:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "access"    # I
    .param p2, "isVolatile"    # Z

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IMMUTABLE && VOLATILE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setMarkIndex(I)V

    .line 55
    iput p1, p0, Lorg/mortbay/io/AbstractBuffer;->_access:I

    .line 56
    iput-boolean p2, p0, Lorg/mortbay/io/AbstractBuffer;->_volatile:Z

    .line 57
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 25
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


# virtual methods
.method public asArray()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v2

    new-array v1, v2, [B

    .line 65
    .local v1, "bytes":[B
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v0

    .line 66
    .local v0, "array":[B
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v2

    array-length v3, v1

    invoke-static {v0, v2, v1, v4, v3}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    .line 70
    :goto_0
    return-object v1

    .line 69
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v2

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v3

    invoke-virtual {p0, v2, v1, v4, v3}, Lorg/mortbay/io/AbstractBuffer;->peek(I[BII)I

    goto :goto_0
.end method

.method public asImmutableBuffer()Lorg/mortbay/io/Buffer;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    .end local p0    # "this":Lorg/mortbay/io/AbstractBuffer;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/mortbay/io/AbstractBuffer;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->duplicate(I)Lorg/mortbay/io/ByteArrayBuffer;

    move-result-object p0

    goto :goto_0
.end method

.method public asMutableBuffer()Lorg/mortbay/io/Buffer;
    .locals 6

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    .end local p0    # "this":Lorg/mortbay/io/AbstractBuffer;
    .local v1, "b":Lorg/mortbay/io/Buffer;
    :goto_0
    return-object p0

    .line 110
    .end local v1    # "b":Lorg/mortbay/io/Buffer;
    .restart local p0    # "this":Lorg/mortbay/io/AbstractBuffer;
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v1

    .line 111
    .restart local v1    # "b":Lorg/mortbay/io/Buffer;
    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->duplicate(I)Lorg/mortbay/io/ByteArrayBuffer;

    move-result-object p0

    goto :goto_0

    .line 115
    :cond_1
    new-instance v0, Lorg/mortbay/io/View;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v2

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v3

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v4

    iget v5, p0, Lorg/mortbay/io/AbstractBuffer;->_access:I

    invoke-direct/range {v0 .. v5}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;IIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public asNonVolatileBuffer()Lorg/mortbay/io/Buffer;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isVolatile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    .end local p0    # "this":Lorg/mortbay/io/AbstractBuffer;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/mortbay/io/AbstractBuffer;
    :cond_0
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_access:I

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->duplicate(I)Lorg/mortbay/io/ByteArrayBuffer;

    move-result-object p0

    goto :goto_0
.end method

.method public asReadOnlyBuffer()Lorg/mortbay/io/Buffer;
    .locals 6

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    .end local p0    # "this":Lorg/mortbay/io/AbstractBuffer;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/mortbay/io/AbstractBuffer;
    :cond_0
    new-instance v0, Lorg/mortbay/io/View;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v2

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v3

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;IIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public buffer()Lorg/mortbay/io/Buffer;
    .locals 0

    .prologue
    .line 120
    return-object p0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setMarkIndex(I)V

    .line 126
    invoke-virtual {p0, v1}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 127
    invoke-virtual {p0, v1}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 128
    return-void
.end method

.method public compact()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 132
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "READONLY"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v3

    if-ltz v3, :cond_4

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v2

    .line 134
    .local v2, "s":I
    :goto_0
    if-lez v2, :cond_3

    .line 136
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v0

    .line 137
    .local v0, "array":[B
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v3

    sub-int v1, v3, v2

    .line 138
    .local v1, "length":I
    if-lez v1, :cond_1

    .line 140
    if-eqz v0, :cond_5

    .line 141
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v4

    invoke-static {v3, v2, v4, v5, v1}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    .line 145
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/mortbay/io/AbstractBuffer;->setMarkIndex(I)V

    .line 146
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 147
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 149
    .end local v0    # "array":[B
    .end local v1    # "length":I
    :cond_3
    return-void

    .line 133
    .end local v2    # "s":I
    :cond_4
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v2

    goto :goto_0

    .line 143
    .restart local v0    # "array":[B
    .restart local v1    # "length":I
    .restart local v2    # "s":I
    :cond_5
    invoke-virtual {p0, v2, v1}, Lorg/mortbay/io/AbstractBuffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Lorg/mortbay/io/AbstractBuffer;->poke(ILorg/mortbay/io/Buffer;)I

    goto :goto_1
.end method

.method public duplicate(I)Lorg/mortbay/io/ByteArrayBuffer;
    .locals 5
    .param p1, "access"    # I

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 76
    .local v0, "b":Lorg/mortbay/io/Buffer;
    instance-of v1, v0, Lorg/mortbay/io/Buffer$CaseInsensitve;

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Lorg/mortbay/io/ByteArrayBuffer$CaseInsensitive;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->asArray()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v3

    invoke-direct {v1, v2, v4, v3, p1}, Lorg/mortbay/io/ByteArrayBuffer$CaseInsensitive;-><init>([BIII)V

    .line 79
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->asArray()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v3

    invoke-direct {v1, v2, v4, v3, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([BIII)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 153
    if-ne p1, p0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v8

    .line 157
    :cond_1
    if-eqz p1, :cond_2

    instance-of v10, p1, Lorg/mortbay/io/Buffer;

    if-nez v10, :cond_3

    :cond_2
    move v8, v9

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 158
    check-cast v1, Lorg/mortbay/io/Buffer;

    .line 160
    .local v1, "b":Lorg/mortbay/io/Buffer;
    instance-of v10, p0, Lorg/mortbay/io/Buffer$CaseInsensitve;

    if-nez v10, :cond_4

    instance-of v10, v1, Lorg/mortbay/io/Buffer$CaseInsensitve;

    if-eqz v10, :cond_5

    .line 161
    :cond_4
    invoke-virtual {p0, v1}, Lorg/mortbay/io/AbstractBuffer;->equalsIgnoreCase(Lorg/mortbay/io/Buffer;)Z

    move-result v8

    goto :goto_0

    .line 164
    :cond_5
    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v10

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v11

    if-eq v10, v11, :cond_6

    move v8, v9

    goto :goto_0

    .line 167
    :cond_6
    iget v10, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz v10, :cond_7

    instance-of v10, p1, Lorg/mortbay/io/AbstractBuffer;

    if-eqz v10, :cond_7

    move-object v0, p1

    .line 169
    check-cast v0, Lorg/mortbay/io/AbstractBuffer;

    .line 170
    .local v0, "ab":Lorg/mortbay/io/AbstractBuffer;
    iget v10, v0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz v10, :cond_7

    iget v10, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    iget v11, v0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eq v10, v11, :cond_7

    move v8, v9

    goto :goto_0

    .line 174
    .end local v0    # "ab":Lorg/mortbay/io/AbstractBuffer;
    :cond_7
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v5

    .line 175
    .local v5, "get":I
    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v4

    .line 176
    .local v4, "bi":I
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v6

    .local v6, "i":I
    move v7, v6

    .end local v6    # "i":I
    .local v7, "i":I
    :goto_1
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    if-le v7, v5, :cond_0

    .line 178
    invoke-virtual {p0, v6}, Lorg/mortbay/io/AbstractBuffer;->peek(I)B

    move-result v2

    .line 179
    .local v2, "b1":B
    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v3

    .line 180
    .local v3, "b2":B
    if-eq v2, v3, :cond_8

    move v8, v9

    goto :goto_0

    :cond_8
    move v7, v6

    .line 181
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_1
.end method

.method public equalsIgnoreCase(Lorg/mortbay/io/Buffer;)Z
    .locals 11
    .param p1, "b"    # Lorg/mortbay/io/Buffer;

    .prologue
    .line 187
    if-ne p1, p0, :cond_0

    .line 188
    const/4 v9, 0x1

    .line 234
    :goto_0
    return v9

    .line 191
    :cond_0
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v9

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v10

    if-eq v9, v10, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    .line 194
    :cond_1
    iget v9, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz v9, :cond_2

    instance-of v9, p1, Lorg/mortbay/io/AbstractBuffer;

    if-eqz v9, :cond_2

    move-object v0, p1

    .line 196
    check-cast v0, Lorg/mortbay/io/AbstractBuffer;

    .line 197
    .local v0, "ab":Lorg/mortbay/io/AbstractBuffer;
    iget v9, v0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz v9, :cond_2

    iget v9, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    iget v10, v0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eq v9, v10, :cond_2

    const/4 v9, 0x0

    goto :goto_0

    .line 201
    .end local v0    # "ab":Lorg/mortbay/io/AbstractBuffer;
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v6

    .line 202
    .local v6, "get":I
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v5

    .line 204
    .local v5, "bi":I
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v1

    .line 205
    .local v1, "array":[B
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v4

    .line 206
    .local v4, "barray":[B
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    .line 208
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v7

    .local v7, "i":I
    move v8, v7

    .end local v7    # "i":I
    .local v8, "i":I
    :goto_1
    add-int/lit8 v7, v8, -0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    if-le v8, v6, :cond_a

    .line 210
    aget-byte v2, v1, v7

    .line 211
    .local v2, "b1":B
    add-int/lit8 v5, v5, -0x1

    aget-byte v3, v4, v5

    .line 212
    .local v3, "b2":B
    if-eq v2, v3, :cond_5

    .line 214
    const/16 v9, 0x61

    if-gt v9, v2, :cond_3

    const/16 v9, 0x7a

    if-gt v2, v9, :cond_3

    add-int/lit8 v9, v2, -0x61

    add-int/lit8 v9, v9, 0x41

    int-to-byte v2, v9

    .line 215
    :cond_3
    const/16 v9, 0x61

    if-gt v9, v3, :cond_4

    const/16 v9, 0x7a

    if-gt v3, v9, :cond_4

    add-int/lit8 v9, v3, -0x61

    add-int/lit8 v9, v9, 0x41

    int-to-byte v3, v9

    .line 216
    :cond_4
    if-eq v2, v3, :cond_5

    const/4 v9, 0x0

    goto :goto_0

    :cond_5
    move v8, v7

    .line 218
    .end local v7    # "i":I
    .restart local v8    # "i":I
    goto :goto_1

    .line 222
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    .end local v8    # "i":I
    :cond_6
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v7

    .restart local v7    # "i":I
    move v8, v7

    .end local v7    # "i":I
    .restart local v8    # "i":I
    :goto_2
    add-int/lit8 v7, v8, -0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    if-le v8, v6, :cond_a

    .line 224
    invoke-virtual {p0, v7}, Lorg/mortbay/io/AbstractBuffer;->peek(I)B

    move-result v2

    .line 225
    .restart local v2    # "b1":B
    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v5}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v3

    .line 226
    .restart local v3    # "b2":B
    if-eq v2, v3, :cond_9

    .line 228
    const/16 v9, 0x61

    if-gt v9, v2, :cond_7

    const/16 v9, 0x7a

    if-gt v2, v9, :cond_7

    add-int/lit8 v9, v2, -0x61

    add-int/lit8 v9, v9, 0x41

    int-to-byte v2, v9

    .line 229
    :cond_7
    const/16 v9, 0x61

    if-gt v9, v3, :cond_8

    const/16 v9, 0x7a

    if-gt v3, v9, :cond_8

    add-int/lit8 v9, v3, -0x61

    add-int/lit8 v9, v9, 0x41

    int-to-byte v3, v9

    .line 230
    :cond_8
    if-eq v2, v3, :cond_9

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_9
    move v8, v7

    .line 232
    .end local v7    # "i":I
    .restart local v8    # "i":I
    goto :goto_2

    .line 234
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    .end local v8    # "i":I
    .restart local v7    # "i":I
    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method public get()B
    .locals 2

    .prologue
    .line 239
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->peek(I)B

    move-result v0

    return v0
.end method

.method public get([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v0

    .line 245
    .local v0, "gi":I
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v1

    .line 246
    .local v1, "l":I
    if-nez v1, :cond_0

    .line 247
    const/4 v2, -0x1

    .line 255
    :goto_0
    return v2

    .line 249
    :cond_0
    if-le p3, v1, :cond_1

    .line 250
    move p3, v1

    .line 252
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/mortbay/io/AbstractBuffer;->peek(I[BII)I

    move-result p3

    .line 253
    if-lez p3, :cond_2

    .line 254
    add-int v2, v0, p3

    invoke-virtual {p0, v2}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    :cond_2
    move v2, p3

    .line 255
    goto :goto_0
.end method

.method public get(I)Lorg/mortbay/io/Buffer;
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v0

    .line 261
    .local v0, "gi":I
    invoke-virtual {p0, v0, p1}, Lorg/mortbay/io/AbstractBuffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v1

    .line 262
    .local v1, "view":Lorg/mortbay/io/Buffer;
    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 263
    return-object v1
.end method

.method public final getIndex()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    return v0
.end method

.method public hasContent()Z
    .locals 2

    .prologue
    .line 273
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    iget v1, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x7a

    const/16 v7, 0x61

    .line 278
    iget v5, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz v5, :cond_0

    iget v5, p0, Lorg/mortbay/io/AbstractBuffer;->_hashGet:I

    iget v6, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    if-ne v5, v6, :cond_0

    iget v5, p0, Lorg/mortbay/io/AbstractBuffer;->_hashPut:I

    iget v6, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    if-eq v5, v6, :cond_6

    .line 280
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v2

    .line 281
    .local v2, "get":I
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v0

    .line 282
    .local v0, "array":[B
    if-nez v0, :cond_2

    .line 284
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v3

    .local v3, "i":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-le v4, v2, :cond_4

    .line 286
    invoke-virtual {p0, v3}, Lorg/mortbay/io/AbstractBuffer;->peek(I)B

    move-result v1

    .line 287
    .local v1, "b":B
    if-gt v7, v1, :cond_1

    if-gt v1, v8, :cond_1

    .line 288
    add-int/lit8 v5, v1, -0x61

    add-int/lit8 v5, v5, 0x41

    int-to-byte v1, v5

    .line 289
    :cond_1
    iget v5, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v5, v1

    iput v5, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    move v4, v3

    .line 290
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 294
    .end local v1    # "b":B
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v3

    .restart local v3    # "i":I
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    :goto_1
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-le v4, v2, :cond_4

    .line 296
    aget-byte v1, v0, v3

    .line 297
    .restart local v1    # "b":B
    if-gt v7, v1, :cond_3

    if-gt v1, v8, :cond_3

    .line 298
    add-int/lit8 v5, v1, -0x61

    add-int/lit8 v5, v5, 0x41

    int-to-byte v1, v5

    .line 299
    :cond_3
    iget v5, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v5, v1

    iput v5, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    move v4, v3

    .line 300
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 302
    .end local v1    # "b":B
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_4
    iget v5, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-nez v5, :cond_5

    .line 303
    const/4 v5, -0x1

    iput v5, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    .line 304
    :cond_5
    iget v5, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    iput v5, p0, Lorg/mortbay/io/AbstractBuffer;->_hashGet:I

    .line 305
    iget v5, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    iput v5, p0, Lorg/mortbay/io/AbstractBuffer;->_hashPut:I

    .line 308
    .end local v0    # "array":[B
    .end local v2    # "get":I
    .end local v3    # "i":I
    :cond_6
    iget v5, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    return v5
.end method

.method public isImmutable()Z
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_access:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 318
    iget v1, p0, Lorg/mortbay/io/AbstractBuffer;->_access:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVolatile()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lorg/mortbay/io/AbstractBuffer;->_volatile:Z

    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 328
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    iget v1, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public mark()V
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setMarkIndex(I)V

    .line 334
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 338
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setMarkIndex(I)V

    .line 339
    return-void
.end method

.method public markIndex()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_mark:I

    return v0
.end method

.method public peek()B
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->peek(I)B

    move-result v0

    return v0
.end method

.method public peek(II)Lorg/mortbay/io/Buffer;
    .locals 6
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v2, -0x1

    .line 353
    iget-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_view:Lorg/mortbay/io/View;

    if-nez v0, :cond_1

    .line 355
    new-instance v0, Lorg/mortbay/io/View;

    add-int v4, p1, p2

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;IIII)V

    iput-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_view:Lorg/mortbay/io/View;

    .line 366
    :goto_1
    iget-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_view:Lorg/mortbay/io/View;

    return-object v0

    .line 355
    :cond_0
    const/4 v5, 0x2

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_view:Lorg/mortbay/io/View;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/View;->update(Lorg/mortbay/io/Buffer;)V

    .line 360
    iget-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_view:Lorg/mortbay/io/View;

    invoke-virtual {v0, v2}, Lorg/mortbay/io/View;->setMarkIndex(I)V

    .line 361
    iget-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_view:Lorg/mortbay/io/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mortbay/io/View;->setGetIndex(I)V

    .line 362
    iget-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_view:Lorg/mortbay/io/View;

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Lorg/mortbay/io/View;->setPutIndex(I)V

    .line 363
    iget-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_view:Lorg/mortbay/io/View;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/View;->setGetIndex(I)V

    goto :goto_1
.end method

.method public poke(ILorg/mortbay/io/Buffer;)I
    .locals 9
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/mortbay/io/Buffer;

    .prologue
    .line 371
    const/4 v7, 0x0

    iput v7, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    .line 379
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    .line 380
    .local v3, "length":I
    add-int v7, p1, v3

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->capacity()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 382
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->capacity()I

    move-result v7

    sub-int v3, v7, p1

    .line 389
    :cond_0
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v6

    .line 390
    .local v6, "src_array":[B
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v0

    .line 391
    .local v0, "dst_array":[B
    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    .line 392
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v7

    invoke-static {v6, v7, v0, p1, v3}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    .line 412
    :goto_0
    return v3

    .line 393
    :cond_1
    if-eqz v6, :cond_3

    .line 395
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v4

    .line 396
    .local v4, "s":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v5, v4

    .end local v4    # "s":I
    .local v5, "s":I
    move v2, p1

    .end local p1    # "index":I
    .local v2, "index":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 397
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "s":I
    .restart local v4    # "s":I
    aget-byte v7, v6, v5

    invoke-virtual {p0, v2, v7}, Lorg/mortbay/io/AbstractBuffer;->poke(IB)V

    .line 396
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "s":I
    .restart local v5    # "s":I
    move v2, p1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    :cond_2
    move p1, v2

    .line 398
    .end local v2    # "index":I
    .restart local p1    # "index":I
    goto :goto_0

    .line 399
    .end local v1    # "i":I
    .end local v5    # "s":I
    :cond_3
    if-eqz v0, :cond_5

    .line 401
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v4

    .line 402
    .restart local v4    # "s":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    move v5, v4

    .end local v4    # "s":I
    .restart local v5    # "s":I
    move v2, p1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    :goto_2
    if-ge v1, v3, :cond_4

    .line 403
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "s":I
    .restart local v4    # "s":I
    invoke-interface {p2, v5}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v7

    aput-byte v7, v0, v2

    .line 402
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "s":I
    .restart local v5    # "s":I
    move v2, p1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    goto :goto_2

    :cond_4
    move p1, v2

    .line 404
    .end local v2    # "index":I
    .restart local p1    # "index":I
    goto :goto_0

    .line 407
    .end local v1    # "i":I
    .end local v5    # "s":I
    :cond_5
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v4

    .line 408
    .restart local v4    # "s":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    move v5, v4

    .end local v4    # "s":I
    .restart local v5    # "s":I
    move v2, p1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    :goto_3
    if-ge v1, v3, :cond_6

    .line 409
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "s":I
    .restart local v4    # "s":I
    invoke-interface {p2, v5}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v7

    invoke-virtual {p0, v2, v7}, Lorg/mortbay/io/AbstractBuffer;->poke(IB)V

    .line 408
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "s":I
    .restart local v5    # "s":I
    move v2, p1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    goto :goto_3

    :cond_6
    move p1, v2

    .end local v2    # "index":I
    .restart local p1    # "index":I
    goto :goto_0
.end method

.method public poke(I[BII)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 418
    const/4 v5, 0x0

    iput v5, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    .line 425
    add-int v5, p1, p4

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->capacity()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 427
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->capacity()I

    move-result v5

    sub-int p4, v5, p1

    .line 433
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v0

    .line 434
    .local v0, "dst_array":[B
    if-eqz v0, :cond_1

    .line 435
    invoke-static {p2, p3, v0, p1, p4}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    .line 442
    :goto_0
    return p4

    .line 438
    :cond_1
    move v3, p3

    .line 439
    .local v3, "s":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v4, v3

    .end local v3    # "s":I
    .local v4, "s":I
    move v2, p1

    .end local p1    # "index":I
    .local v2, "index":I
    :goto_1
    if-ge v1, p4, :cond_2

    .line 440
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "s":I
    .restart local v3    # "s":I
    aget-byte v5, p2, v4

    invoke-virtual {p0, v2, v5}, Lorg/mortbay/io/AbstractBuffer;->poke(IB)V

    .line 439
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "s":I
    .restart local v4    # "s":I
    move v2, p1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    :cond_2
    move p1, v2

    .end local v2    # "index":I
    .restart local p1    # "index":I
    goto :goto_0
.end method

.method public put(Lorg/mortbay/io/Buffer;)I
    .locals 3
    .param p1, "src"    # Lorg/mortbay/io/Buffer;

    .prologue
    .line 447
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v1

    .line 448
    .local v1, "pi":I
    invoke-virtual {p0, v1, p1}, Lorg/mortbay/io/AbstractBuffer;->poke(ILorg/mortbay/io/Buffer;)I

    move-result v0

    .line 449
    .local v0, "l":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 450
    return v0
.end method

.method public put([B)I
    .locals 4
    .param p1, "b"    # [B

    .prologue
    .line 470
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v1

    .line 471
    .local v1, "pi":I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v1, p1, v2, v3}, Lorg/mortbay/io/AbstractBuffer;->poke(I[BII)I

    move-result v0

    .line 472
    .local v0, "l":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 473
    return v0
.end method

.method public put([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 462
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v1

    .line 463
    .local v1, "pi":I
    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/mortbay/io/AbstractBuffer;->poke(I[BII)I

    move-result v0

    .line 464
    .local v0, "l":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 465
    return v0
.end method

.method public put(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 455
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v0

    .line 456
    .local v0, "pi":I
    invoke-virtual {p0, v0, p1}, Lorg/mortbay/io/AbstractBuffer;->poke(IB)V

    .line 457
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 458
    return-void
.end method

.method public final putIndex()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    return v0
.end method

.method public readFrom(Ljava/io/InputStream;I)I
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x400

    const/4 v7, 0x0

    .line 661
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v0

    .line 662
    .local v0, "array":[B
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->space()I

    move-result v4

    .line 663
    .local v4, "s":I
    if-le v4, p2, :cond_0

    .line 664
    move v4, p2

    .line 666
    :cond_0
    if-eqz v0, :cond_3

    .line 668
    iget v6, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    invoke-virtual {p1, v0, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 669
    .local v2, "l":I
    if-lez v2, :cond_1

    .line 670
    iget v6, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    add-int/2addr v6, v2

    iput v6, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    :cond_1
    move v5, v2

    .line 686
    .end local v2    # "l":I
    :cond_2
    :goto_0
    return v5

    .line 675
    :cond_3
    if-le v4, v6, :cond_4

    :goto_1
    new-array v1, v6, [B

    .line 676
    .local v1, "buf":[B
    const/4 v5, 0x0

    .line 677
    .local v5, "total":I
    :goto_2
    if-lez v4, :cond_2

    .line 679
    array-length v6, v1

    invoke-virtual {p1, v1, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 680
    .restart local v2    # "l":I
    if-gez v2, :cond_5

    .line 681
    if-gtz v5, :cond_2

    const/4 v5, -0x1

    goto :goto_0

    .end local v1    # "buf":[B
    .end local v2    # "l":I
    .end local v5    # "total":I
    :cond_4
    move v6, v4

    .line 675
    goto :goto_1

    .line 682
    .restart local v1    # "buf":[B
    .restart local v2    # "l":I
    .restart local v5    # "total":I
    :cond_5
    invoke-virtual {p0, v1, v7, v2}, Lorg/mortbay/io/AbstractBuffer;->put([BII)I

    move-result v3

    .line 683
    .local v3, "p":I
    sget-boolean v6, Lorg/mortbay/io/AbstractBuffer;->$assertionsDisabled:Z

    if-nez v6, :cond_6

    if-eq v2, v3, :cond_6

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 684
    :cond_6
    sub-int/2addr v4, v2

    .line 685
    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 484
    :cond_0
    return-void
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 489
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setMarkIndex(I)V

    .line 490
    return-void
.end method

.method public setGetIndex(I)V
    .locals 1
    .param p1, "getIndex"    # I

    .prologue
    .line 502
    iput p1, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    .line 503
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    .line 504
    return-void
.end method

.method public setMarkIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 512
    iput p1, p0, Lorg/mortbay/io/AbstractBuffer;->_mark:I

    .line 513
    return-void
.end method

.method public setPutIndex(I)V
    .locals 1
    .param p1, "putIndex"    # I

    .prologue
    .line 525
    iput p1, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    .line 526
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    .line 527
    return-void
.end method

.method public skip(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 531
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result p1

    .line 532
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 533
    return p1
.end method

.method public slice()Lorg/mortbay/io/Buffer;
    .locals 2

    .prologue
    .line 538
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/io/AbstractBuffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public sliceFromMark()Lorg/mortbay/io/Buffer;
    .locals 2

    .prologue
    .line 543
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->sliceFromMark(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public sliceFromMark(I)Lorg/mortbay/io/Buffer;
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 548
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    .line 551
    :goto_0
    return-object v0

    .line 549
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lorg/mortbay/io/AbstractBuffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 550
    .local v0, "view":Lorg/mortbay/io/Buffer;
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/mortbay/io/AbstractBuffer;->setMarkIndex(I)V

    goto :goto_0
.end method

.method public space()I
    .locals 2

    .prologue
    .line 556
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 629
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toDetailString()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x10

    .line 561
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 562
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 564
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 566
    const-string v5, ",m="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 568
    const-string v5, ",g="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 570
    const-string v5, ",p="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 572
    const-string v5, ",c="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->capacity()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 574
    const-string v5, "]={"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v5

    if-ltz v5, :cond_3

    .line 577
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v4

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 579
    invoke-virtual {p0, v4}, Lorg/mortbay/io/AbstractBuffer;->peek(I)B

    move-result v5

    int-to-char v1, v5

    .line 580
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 582
    if-ge v1, v7, :cond_0

    const-string v5, "\\0"

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    invoke-static {v1, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 582
    :cond_0
    const-string v5, "\\"

    goto :goto_1

    .line 586
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 588
    .end local v1    # "c":C
    :cond_2
    const-string v5, "}{"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 590
    .end local v4    # "i":I
    :cond_3
    const/4 v2, 0x0

    .line 591
    .local v2, "count":I
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v4

    .restart local v4    # "i":I
    :goto_3
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 593
    invoke-virtual {p0, v4}, Lorg/mortbay/io/AbstractBuffer;->peek(I)B

    move-result v5

    int-to-char v1, v5

    .line 594
    .restart local v1    # "c":C
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 596
    if-ge v1, v7, :cond_5

    const-string v5, "\\0"

    :goto_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 597
    invoke-static {v1, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 601
    :goto_5
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .local v3, "count":I
    const/16 v5, 0x32

    if-ne v2, v5, :cond_4

    .line 603
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v5

    sub-int/2addr v5, v4

    const/16 v6, 0x14

    if-le v5, v6, :cond_4

    .line 605
    const-string v5, " ... "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 606
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v5

    add-int/lit8 v4, v5, -0x14

    .line 591
    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_3

    .line 596
    :cond_5
    const-string v5, "\\"

    goto :goto_4

    .line 600
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 610
    .end local v1    # "c":C
    :cond_7
    const/16 v5, 0x7d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 611
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 617
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_string:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 620
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->asArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_string:Ljava/lang/String;

    .line 621
    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_string:Ljava/lang/String;

    .line 623
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->asArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x400

    const/4 v6, 0x0

    .line 636
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v0

    .line 638
    .local v0, "array":[B
    if-eqz v0, :cond_1

    .line 640
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v5

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v6

    invoke-virtual {p1, v0, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 655
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->clear()V

    .line 656
    return-void

    .line 644
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v3

    .line 645
    .local v3, "len":I
    if-le v3, v5, :cond_2

    :goto_0
    new-array v1, v5, [B

    .line 646
    .local v1, "buf":[B
    iget v4, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    .line 647
    .local v4, "offset":I
    :goto_1
    if-lez v3, :cond_0

    .line 649
    array-length v5, v1

    if-le v3, v5, :cond_3

    array-length v5, v1

    :goto_2
    invoke-virtual {p0, v4, v1, v6, v5}, Lorg/mortbay/io/AbstractBuffer;->peek(I[BII)I

    move-result v2

    .line 650
    .local v2, "l":I
    invoke-virtual {p1, v1, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 651
    add-int/2addr v4, v2

    .line 652
    sub-int/2addr v3, v2

    .line 653
    goto :goto_1

    .end local v1    # "buf":[B
    .end local v2    # "l":I
    .end local v4    # "offset":I
    :cond_2
    move v5, v3

    .line 645
    goto :goto_0

    .restart local v1    # "buf":[B
    .restart local v4    # "offset":I
    :cond_3
    move v5, v3

    .line 649
    goto :goto_2
.end method
