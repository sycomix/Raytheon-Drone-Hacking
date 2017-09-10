.class public Lorg/mortbay/util/ByteArrayISO8859Writer;
.super Ljava/io/Writer;
.source "ByteArrayISO8859Writer.java"


# instance fields
.field private _bout:Lorg/mortbay/util/ByteArrayOutputStream2;

.field private _buf:[B

.field private _fixed:Z

.field private _size:I

.field private _writer:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 35
    iput-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_bout:Lorg/mortbay/util/ByteArrayOutputStream2;

    .line 36
    iput-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_writer:Ljava/io/OutputStreamWriter;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_fixed:Z

    .line 44
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 35
    iput-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_bout:Lorg/mortbay/util/ByteArrayOutputStream2;

    .line 36
    iput-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_writer:Ljava/io/OutputStreamWriter;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_fixed:Z

    .line 53
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    .line 54
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "buf"    # [B

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 35
    iput-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_bout:Lorg/mortbay/util/ByteArrayOutputStream2;

    .line 36
    iput-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_writer:Ljava/io/OutputStreamWriter;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_fixed:Z

    .line 59
    iput-object p1, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_fixed:Z

    .line 61
    return-void
.end method

.method private writeEncoded([CII)V
    .locals 5
    .param p1, "ca"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_bout:Lorg/mortbay/util/ByteArrayOutputStream2;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lorg/mortbay/util/ByteArrayOutputStream2;

    mul-int/lit8 v1, p3, 0x2

    invoke-direct {v0, v1}, Lorg/mortbay/util/ByteArrayOutputStream2;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_bout:Lorg/mortbay/util/ByteArrayOutputStream2;

    .line 206
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_bout:Lorg/mortbay/util/ByteArrayOutputStream2;

    sget-object v2, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_writer:Ljava/io/OutputStreamWriter;

    .line 210
    :goto_0
    iget-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStreamWriter;->write([CII)V

    .line 211
    iget-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 212
    iget-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_bout:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/mortbay/util/ByteArrayOutputStream2;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->ensureSpareCapacity(I)V

    .line 213
    iget-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_bout:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/mortbay/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    iget v3, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    iget-object v4, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_bout:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v4}, Lorg/mortbay/util/ByteArrayOutputStream2;->getCount()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    iget v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    iget-object v1, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_bout:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/mortbay/util/ByteArrayOutputStream2;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    .line 215
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_bout:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/mortbay/util/ByteArrayOutputStream2;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    array-length v0, v0

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    .line 235
    return-void
.end method

.method public ensureSpareCapacity(I)V
    .locals 4
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 241
    iget v1, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 243
    iget-boolean v1, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_fixed:Z

    if-eqz v1, :cond_0

    .line 244
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Buffer overflow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_0
    iget-object v1, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    array-length v1, v1

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    new-array v0, v1, [B

    .line 246
    .local v0, "buf":[B
    iget-object v1, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    iget v2, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    iput-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    .line 249
    .end local v0    # "buf":[B
    :cond_1
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public getBuf()[B
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    return-object v0
.end method

.method public getByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 255
    iget v1, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    new-array v0, v1, [B

    .line 256
    .local v0, "data":[B
    iget-object v1, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    iget v2, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public resetWriter()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    .line 225
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "l"    # I

    .prologue
    .line 90
    iput p1, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    .line 91
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    return v0
.end method

.method public spareCapacity()I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public write(C)V
    .locals 4
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 110
    invoke-virtual {p0, v2}, Lorg/mortbay/util/ByteArrayISO8859Writer;->ensureSpareCapacity(I)V

    .line 111
    if-ltz p1, :cond_0

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_0

    .line 112
    iget-object v1, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    iget v2, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    new-array v0, v2, [C

    aput-char p1, v0, v3

    .line 116
    .local v0, "ca":[C
    invoke-direct {p0, v0, v3, v2}, Lorg/mortbay/util/ByteArrayISO8859Writer;->writeEncoded([CII)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    if-nez p1, :cond_1

    .line 162
    const-string v3, "null"

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {p0, v3, v4, v5}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;II)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 167
    .local v2, "length":I
    invoke-virtual {p0, v2}, Lorg/mortbay/util/ByteArrayISO8859Writer;->ensureSpareCapacity(I)V

    .line 168
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 170
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 171
    .local v0, "c":C
    if-ltz v0, :cond_2

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_2

    .line 172
    iget-object v3, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    iget v4, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 175
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    sub-int v4, v2, v1

    invoke-direct {p0, v3, v1, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->writeEncoded([CII)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0, p3}, Lorg/mortbay/util/ByteArrayISO8859Writer;->ensureSpareCapacity(I)V

    .line 186
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 188
    add-int v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 189
    .local v0, "c":C
    if-ltz v0, :cond_0

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_0

    .line 190
    iget-object v2, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    iget v3, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    int-to-byte v4, v0

    aput-byte v4, v2, v3

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-direct {p0, v2, v3, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->writeEncoded([CII)V

    .line 197
    .end local v0    # "c":C
    :cond_1
    return-void
.end method

.method public write([C)V
    .locals 5
    .param p1, "ca"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    array-length v2, p1

    invoke-virtual {p0, v2}, Lorg/mortbay/util/ByteArrayISO8859Writer;->ensureSpareCapacity(I)V

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 127
    aget-char v0, p1, v1

    .line 128
    .local v0, "c":C
    if-ltz v0, :cond_0

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_0

    .line 129
    iget-object v2, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    iget v3, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    int-to-byte v4, v0

    aput-byte v4, v2, v3

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-direct {p0, p1, v1, v2}, Lorg/mortbay/util/ByteArrayISO8859Writer;->writeEncoded([CII)V

    .line 136
    .end local v0    # "c":C
    :cond_1
    return-void
.end method

.method public write([CII)V
    .locals 5
    .param p1, "ca"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0, p3}, Lorg/mortbay/util/ByteArrayISO8859Writer;->ensureSpareCapacity(I)V

    .line 143
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 145
    add-int v2, p2, v1

    aget-char v0, p1, v2

    .line 146
    .local v0, "c":C
    if-ltz v0, :cond_0

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_0

    .line 147
    iget-object v2, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    iget v3, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    int-to-byte v4, v0

    aput-byte v4, v2, v3

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-direct {p0, p1, v2, v3}, Lorg/mortbay/util/ByteArrayISO8859Writer;->writeEncoded([CII)V

    .line 154
    .end local v0    # "c":C
    :cond_1
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
    .line 103
    iget-object v0, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/mortbay/util/ByteArrayISO8859Writer;->_size:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 104
    return-void
.end method
