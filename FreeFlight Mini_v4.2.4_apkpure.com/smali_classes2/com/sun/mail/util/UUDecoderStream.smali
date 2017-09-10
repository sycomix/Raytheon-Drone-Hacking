.class public Lcom/sun/mail/util/UUDecoderStream;
.super Ljava/io/FilterInputStream;
.source "UUDecoderStream.java"


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private gotEnd:Z

.field private gotPrefix:Z

.field private index:I

.field private lin:Lcom/sun/mail/util/LineInputStream;

.field private mode:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 48
    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    .line 49
    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    .line 50
    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    .line 59
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    .line 60
    const/16 v0, 0x2d

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    .line 61
    return-void
.end method

.method private decode()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    iget-boolean v3, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    if-eqz v3, :cond_0

    .line 235
    :goto_0
    return v2

    .line 166
    :cond_0
    iput v2, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 169
    :cond_1
    iget-object v3, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v3}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 177
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Missing End"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_2
    const-string v3, "end"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    iput-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 184
    .local v8, "count":I
    const/16 v3, 0x20

    if-ge v8, v3, :cond_4

    .line 185
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Buffer format error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_4
    add-int/lit8 v3, v8, -0x20

    and-int/lit8 v8, v3, 0x3f

    .line 195
    if-nez v8, :cond_7

    .line 196
    iget-object v3, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v3}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_5

    const-string v3, "end"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 198
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Missing End"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_6
    iput-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    goto :goto_0

    .line 203
    :cond_7
    mul-int/lit8 v2, v8, 0x8

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v11, v2, 0x6

    .line 205
    .local v11, "need":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v11, 0x1

    if-ge v2, v3, :cond_8

    .line 206
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Short buffer error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_8
    const/4 v9, 0x1

    .line 216
    .local v9, "i":I
    :cond_9
    :goto_1
    iget v2, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-ge v2, v8, :cond_b

    .line 218
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x20

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v6, v2

    .line 219
    .local v6, "a":B
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x20

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v7, v2

    .line 220
    .local v7, "b":B
    iget-object v2, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v3, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v4, v6, 0x2

    and-int/lit16 v4, v4, 0xfc

    ushr-int/lit8 v5, v7, 0x4

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 222
    iget v2, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-ge v2, v8, :cond_a

    .line 223
    move v6, v7

    .line 224
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .restart local v10    # "i":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x20

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v7, v2

    .line 225
    iget-object v2, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v3, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v4, v6, 0x4

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v5, v7, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move v9, v10

    .line 229
    .end local v10    # "i":I
    .restart local v9    # "i":I
    :cond_a
    iget v2, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-ge v2, v8, :cond_9

    .line 230
    move v6, v7

    .line 231
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .restart local v10    # "i":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x20

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v7, v2

    .line 232
    iget-object v2, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v3, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v4, v6, 0x6

    and-int/lit16 v4, v4, 0xc0

    and-int/lit8 v5, v7, 0x3f

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move v9, v10

    .line 233
    .end local v10    # "i":I
    .restart local v9    # "i":I
    goto :goto_1

    .end local v6    # "a":B
    .end local v7    # "b":B
    :cond_b
    move v2, v1

    .line 235
    goto/16 :goto_0
.end method

.method private readPrefix()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    iget-boolean v3, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    if-eqz v3, :cond_0

    .line 157
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v3, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v3}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 148
    new-instance v1, Ljava/io/IOException;

    const-string v2, "UUDecoder error: No Begin"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_1
    const-string v3, "begin"

    const/4 v5, 0x5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    const/4 v2, 0x6

    const/16 v3, 0x9

    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sun/mail/util/UUDecoderStream;->mode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    goto :goto_0

    .line 152
    :catch_0
    move-exception v6

    .line 153
    .local v6, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "UUDecoder error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    iget v2, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 131
    iget v0, p0, Lcom/sun/mail/util/UUDecoderStream;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 119
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    return-object v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-lt v0, v1, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 80
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->decode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const/4 v0, -0x1

    .line 84
    :goto_0
    return v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/sun/mail/util/UUDecoderStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 91
    if-nez v1, :cond_0

    .line 92
    const/4 v1, -0x1

    .line 97
    .end local v0    # "c":I
    :cond_0
    return v1

    .line 95
    .restart local v0    # "c":I
    :cond_1
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
