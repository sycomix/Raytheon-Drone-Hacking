.class public Lorg/mortbay/io/ByteArrayBuffer;
.super Lorg/mortbay/io/AbstractBuffer;
.source "ByteArrayBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/io/ByteArrayBuffer$CaseInsensitive;
    }
.end annotation


# instance fields
.field protected _bytes:[B


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 66
    new-array v0, p1, [B

    const/4 v1, 0x2

    invoke-direct {p0, v0, v2, p1, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([BIII)V

    .line 67
    invoke-virtual {p0, v2}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 68
    return-void
.end method

.method protected constructor <init>(IZ)V
    .locals 0
    .param p1, "access"    # I
    .param p2, "isVolatile"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 72
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 73
    invoke-static {p1}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    .line 74
    invoke-virtual {p0, v1}, Lorg/mortbay/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 75
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 76
    iput v1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_access:I

    .line 77
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_string:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 82
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    .line 84
    invoke-virtual {p0, v1}, Lorg/mortbay/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 85
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 86
    iput v1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_access:I

    .line 87
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_string:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 38
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([BIII)V

    .line 39
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "length"    # I

    .prologue
    .line 43
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([BIII)V

    .line 44
    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "length"    # I
    .param p4, "access"    # I

    .prologue
    .line 48
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 49
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    .line 50
    add-int v0, p2, p3

    invoke-virtual {p0, v0}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 51
    invoke-virtual {p0, p2}, Lorg/mortbay/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 52
    iput p4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_access:I

    .line 53
    return-void
.end method

.method public constructor <init>([BIIIZ)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "length"    # I
    .param p4, "access"    # I
    .param p5, "isVolatile"    # Z

    .prologue
    .line 57
    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 58
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    .line 59
    add-int v0, p2, p3

    invoke-virtual {p0, v0}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 60
    invoke-virtual {p0, p2}, Lorg/mortbay/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 61
    iput p4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_access:I

    .line 62
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    return v0
.end method

.method public compact()V
    .locals 5

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "READONLY"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->markIndex()I

    move-result v2

    if-ltz v2, :cond_4

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->markIndex()I

    move-result v1

    .line 105
    .local v1, "s":I
    :goto_0
    if-lez v1, :cond_3

    .line 107
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->putIndex()I

    move-result v2

    sub-int v0, v2, v1

    .line 108
    .local v0, "length":I
    if-lez v0, :cond_1

    .line 110
    iget-object v2, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    iget-object v3, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v0}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    .line 112
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->markIndex()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->markIndex()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/mortbay/io/ByteArrayBuffer;->setMarkIndex(I)V

    .line 113
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->getIndex()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/mortbay/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 114
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->putIndex()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 116
    .end local v0    # "length":I
    :cond_3
    return-void

    .line 104
    .end local v1    # "s":I
    :cond_4
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->getIndex()I

    move-result v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 121
    if-ne p1, p0, :cond_1

    .line 154
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v8

    .line 124
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    instance-of v10, p1, Lorg/mortbay/io/Buffer;

    if-nez v10, :cond_3

    :cond_2
    move v8, v9

    .line 125
    goto :goto_0

    .line 127
    :cond_3
    instance-of v10, p1, Lorg/mortbay/io/Buffer$CaseInsensitve;

    if-eqz v10, :cond_4

    .line 128
    check-cast p1, Lorg/mortbay/io/Buffer;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/mortbay/io/ByteArrayBuffer;->equalsIgnoreCase(Lorg/mortbay/io/Buffer;)Z

    move-result v8

    goto :goto_0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_4
    move-object v1, p1

    .line 131
    check-cast v1, Lorg/mortbay/io/Buffer;

    .line 134
    .local v1, "b":Lorg/mortbay/io/Buffer;
    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v10

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->length()I

    move-result v11

    if-eq v10, v11, :cond_5

    move v8, v9

    .line 135
    goto :goto_0

    .line 138
    :cond_5
    iget v10, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    if-eqz v10, :cond_6

    instance-of v10, p1, Lorg/mortbay/io/AbstractBuffer;

    if-eqz v10, :cond_6

    move-object v0, p1

    .line 140
    check-cast v0, Lorg/mortbay/io/AbstractBuffer;

    .line 141
    .local v0, "ab":Lorg/mortbay/io/AbstractBuffer;
    iget v10, v0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz v10, :cond_6

    iget v10, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    iget v11, v0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eq v10, v11, :cond_6

    move v8, v9

    .line 142
    goto :goto_0

    .line 146
    .end local v0    # "ab":Lorg/mortbay/io/AbstractBuffer;
    :cond_6
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->getIndex()I

    move-result v5

    .line 147
    .local v5, "get":I
    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v4

    .line 148
    .local v4, "bi":I
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->putIndex()I

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

    .line 150
    iget-object v10, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v2, v10, v6

    .line 151
    .local v2, "b1":B
    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v3

    .line 152
    .local v3, "b2":B
    if-eq v2, v3, :cond_7

    move v8, v9

    goto :goto_0

    :cond_7
    move v7, v6

    .line 153
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_1
.end method

.method public equalsIgnoreCase(Lorg/mortbay/io/Buffer;)Z
    .locals 14
    .param p1, "b"    # Lorg/mortbay/io/Buffer;

    .prologue
    const/4 v8, 0x1

    const/16 v13, 0x7a

    const/16 v12, 0x61

    const/4 v9, 0x0

    .line 160
    if-ne p1, p0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v8

    .line 164
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v10

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->length()I

    move-result v11

    if-eq v10, v11, :cond_3

    :cond_2
    move v8, v9

    .line 165
    goto :goto_0

    .line 168
    :cond_3
    iget v10, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    if-eqz v10, :cond_4

    instance-of v10, p1, Lorg/mortbay/io/AbstractBuffer;

    if-eqz v10, :cond_4

    move-object v0, p1

    .line 170
    check-cast v0, Lorg/mortbay/io/AbstractBuffer;

    .line 171
    .local v0, "ab":Lorg/mortbay/io/AbstractBuffer;
    iget v10, v0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz v10, :cond_4

    iget v10, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    iget v11, v0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eq v10, v11, :cond_4

    move v8, v9

    goto :goto_0

    .line 175
    .end local v0    # "ab":Lorg/mortbay/io/AbstractBuffer;
    :cond_4
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->getIndex()I

    move-result v5

    .line 176
    .local v5, "get":I
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v4

    .line 177
    .local v4, "bi":I
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v3

    .line 178
    .local v3, "barray":[B
    if-nez v3, :cond_8

    .line 180
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->putIndex()I

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

    .line 182
    iget-object v10, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v1, v10, v6

    .line 183
    .local v1, "b1":B
    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v2

    .line 184
    .local v2, "b2":B
    if-eq v1, v2, :cond_7

    .line 186
    if-gt v12, v1, :cond_5

    if-gt v1, v13, :cond_5

    add-int/lit8 v10, v1, -0x61

    add-int/lit8 v10, v10, 0x41

    int-to-byte v1, v10

    .line 187
    :cond_5
    if-gt v12, v2, :cond_6

    if-gt v2, v13, :cond_6

    add-int/lit8 v10, v2, -0x61

    add-int/lit8 v10, v10, 0x41

    int-to-byte v2, v10

    .line 188
    :cond_6
    if-eq v1, v2, :cond_7

    move v8, v9

    goto :goto_0

    :cond_7
    move v7, v6

    .line 190
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_1

    .line 194
    .end local v1    # "b1":B
    .end local v2    # "b2":B
    .end local v7    # "i":I
    :cond_8
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->putIndex()I

    move-result v6

    .restart local v6    # "i":I
    move v7, v6

    .end local v6    # "i":I
    .restart local v7    # "i":I
    :goto_2
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    if-le v7, v5, :cond_0

    .line 196
    iget-object v10, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v1, v10, v6

    .line 197
    .restart local v1    # "b1":B
    add-int/lit8 v4, v4, -0x1

    aget-byte v2, v3, v4

    .line 198
    .restart local v2    # "b2":B
    if-eq v1, v2, :cond_b

    .line 200
    if-gt v12, v1, :cond_9

    if-gt v1, v13, :cond_9

    add-int/lit8 v10, v1, -0x61

    add-int/lit8 v10, v10, 0x41

    int-to-byte v1, v10

    .line 201
    :cond_9
    if-gt v12, v2, :cond_a

    if-gt v2, v13, :cond_a

    add-int/lit8 v10, v2, -0x61

    add-int/lit8 v10, v10, 0x41

    int-to-byte v2, v10

    .line 202
    :cond_a
    if-eq v1, v2, :cond_b

    move v8, v9

    goto/16 :goto_0

    :cond_b
    move v7, v6

    .line 204
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_2
.end method

.method public get()B
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    iget v1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_get:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mortbay/io/ByteArrayBuffer;->_get:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 216
    iget v4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hashGet:I

    iget v5, p0, Lorg/mortbay/io/ByteArrayBuffer;->_get:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hashPut:I

    iget v5, p0, Lorg/mortbay/io/ByteArrayBuffer;->_put:I

    if-eq v4, v5, :cond_4

    .line 218
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->getIndex()I

    move-result v1

    .line 219
    .local v1, "get":I
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->putIndex()I

    move-result v2

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-le v3, v1, :cond_2

    .line 221
    iget-object v4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v0, v4, v2

    .line 222
    .local v0, "b":B
    const/16 v4, 0x61

    if-gt v4, v0, :cond_1

    const/16 v4, 0x7a

    if-gt v0, v4, :cond_1

    .line 223
    add-int/lit8 v4, v0, -0x61

    add-int/lit8 v4, v4, 0x41

    int-to-byte v0, v4

    .line 224
    :cond_1
    iget v4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v0

    iput v4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    move v3, v2

    .line 225
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 226
    .end local v0    # "b":B
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_2
    iget v4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    if-nez v4, :cond_3

    .line 227
    const/4 v4, -0x1

    iput v4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    .line 228
    :cond_3
    iget v4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_get:I

    iput v4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hashGet:I

    .line 229
    iget v4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_put:I

    iput v4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hashPut:I

    .line 231
    .end local v1    # "get":I
    .end local v2    # "i":I
    :cond_4
    iget v4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    return v4
.end method

.method public peek(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public peek(I[BII)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v1, -0x1

    .line 242
    move v0, p4

    .line 243
    .local v0, "l":I
    add-int v2, p1, v0

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 245
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->capacity()I

    move-result v2

    sub-int v0, v2, p1

    .line 246
    if-nez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v1

    .line 250
    :cond_1
    if-ltz v0, :cond_0

    .line 253
    iget-object v1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {v1, p1, p2, p3, v0}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    move v1, v0

    .line 254
    goto :goto_0
.end method

.method public poke(ILorg/mortbay/io/Buffer;)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/mortbay/io/Buffer;

    .prologue
    .line 273
    const/4 v6, 0x0

    iput v6, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    .line 282
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    .line 283
    .local v2, "length":I
    add-int v6, p1, v2

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->capacity()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 285
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->capacity()I

    move-result v6

    sub-int v2, v6, p1

    .line 292
    :cond_0
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v5

    .line 293
    .local v5, "src_array":[B
    if-eqz v5, :cond_1

    .line 294
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v6

    iget-object v7, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {v5, v6, v7, p1, v2}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    .line 308
    :goto_0
    return v2

    .line 295
    :cond_1
    if-eqz v5, :cond_3

    .line 297
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v3

    .line 298
    .local v3, "s":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v4, v3

    .end local v3    # "s":I
    .local v4, "s":I
    move v1, p1

    .end local p1    # "index":I
    .local v1, "index":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 299
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "index":I
    .restart local p1    # "index":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "s":I
    .restart local v3    # "s":I
    aget-byte v6, v5, v4

    invoke-virtual {p0, v1, v6}, Lorg/mortbay/io/ByteArrayBuffer;->poke(IB)V

    .line 298
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3    # "s":I
    .restart local v4    # "s":I
    move v1, p1

    .end local p1    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    :cond_2
    move p1, v1

    .line 300
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_0

    .line 303
    .end local v0    # "i":I
    .end local v4    # "s":I
    :cond_3
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v3

    .line 304
    .restart local v3    # "s":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    move v4, v3

    .end local v3    # "s":I
    .restart local v4    # "s":I
    move v1, p1

    .end local p1    # "index":I
    .restart local v1    # "index":I
    :goto_2
    if-ge v0, v2, :cond_4

    .line 305
    iget-object v6, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    add-int/lit8 p1, v1, 0x1

    .end local v1    # "index":I
    .restart local p1    # "index":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "s":I
    .restart local v3    # "s":I
    invoke-interface {p2, v4}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v7

    aput-byte v7, v6, v1

    .line 304
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3    # "s":I
    .restart local v4    # "s":I
    move v1, p1

    .end local p1    # "index":I
    .restart local v1    # "index":I
    goto :goto_2

    :cond_4
    move p1, v1

    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_0
.end method

.method public poke(I[BII)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_hash:I

    .line 322
    add-int v0, p1, p4

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 324
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->capacity()I

    move-result v0

    sub-int p4, v0, p1

    .line 330
    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {p2, p3, v0, p1, p4}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    .line 332
    return p4
.end method

.method public poke(IB)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "b"    # B

    .prologue
    .line 268
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    aput-byte p2, v0, p1

    .line 269
    return-void
.end method

.method public readFrom(Ljava/io/InputStream;I)I
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->space()I

    move-result v4

    if-le p2, v4, :cond_1

    .line 376
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->space()I

    move-result p2

    .line 377
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->putIndex()I

    move-result v2

    .line 379
    .local v2, "p":I
    const/4 v1, 0x0

    .local v1, "len":I
    const/4 v3, 0x0

    .local v3, "total":I
    move v0, p2

    .line 380
    .local v0, "available":I
    :cond_2
    if-ge v3, p2, :cond_3

    .line 382
    iget-object v4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    invoke-virtual {p1, v4, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 383
    if-gez v1, :cond_5

    .line 395
    :cond_3
    :goto_0
    if-gez v1, :cond_4

    if-nez v3, :cond_4

    .line 396
    const/4 v3, -0x1

    .line 397
    .end local v3    # "total":I
    :cond_4
    return v3

    .line 385
    .restart local v3    # "total":I
    :cond_5
    if-lez v1, :cond_6

    .line 387
    add-int/2addr v2, v1

    .line 388
    add-int/2addr v3, v1

    .line 389
    sub-int/2addr v0, v1

    .line 390
    invoke-virtual {p0, v2}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 392
    :cond_6
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    if-gtz v4, :cond_2

    goto :goto_0
.end method

.method public space()I
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    iget v1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_put:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public wrap([B)V
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 357
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IMMUTABLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_1
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 361
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 362
    return-void
.end method

.method public wrap([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 343
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IMMUTABLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_1
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    .line 346
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->clear()V

    .line 347
    invoke-virtual {p0, p2}, Lorg/mortbay/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 348
    add-int v0, p2, p3

    invoke-virtual {p0, v0}, Lorg/mortbay/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 349
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->getIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 369
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->clear()V

    .line 370
    return-void
.end method
