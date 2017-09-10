.class public Lcom/sun/mail/util/UUEncoderStream;
.super Ljava/io/FilterOutputStream;
.source "UUEncoderStream.java"


# instance fields
.field private buffer:[B

.field private bufsize:I

.field protected mode:I

.field protected name:Ljava/lang/String;

.field private wrotePrefix:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 54
    const-string v0, "encoder.buf"

    const/16 v1, 0x284

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const/16 v0, 0x284

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    iput v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    .line 44
    iput-boolean v0, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z

    .line 74
    iput-object p2, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;

    .line 75
    iput p3, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I

    .line 76
    const/16 v0, 0x2d

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    .line 77
    return-void
.end method

.method private encode()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v7, 0x0

    .line 162
    .local v7, "i":I
    iget-object v9, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    iget v10, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    and-int/lit8 v10, v10, 0x3f

    add-int/lit8 v10, v10, 0x20

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write(I)V

    .line 164
    :goto_0
    iget v9, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    if-ge v7, v9, :cond_2

    .line 165
    iget-object v9, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    aget-byte v0, v9, v7

    .line 166
    .local v0, "a":B
    iget v9, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    if-ge v8, v9, :cond_1

    .line 167
    iget-object v9, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    aget-byte v1, v9, v8

    .line 168
    .local v1, "b":B
    iget v9, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    if-ge v7, v9, :cond_0

    .line 169
    iget-object v9, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .restart local v8    # "i":I
    aget-byte v2, v9, v7

    .local v2, "c":B
    move v7, v8

    .line 178
    .end local v8    # "i":I
    .restart local v7    # "i":I
    :goto_1
    ushr-int/lit8 v9, v0, 0x2

    and-int/lit8 v3, v9, 0x3f

    .line 179
    .local v3, "c1":I
    shl-int/lit8 v9, v0, 0x4

    and-int/lit8 v9, v9, 0x30

    ushr-int/lit8 v10, v1, 0x4

    and-int/lit8 v10, v10, 0xf

    or-int v4, v9, v10

    .line 180
    .local v4, "c2":I
    shl-int/lit8 v9, v1, 0x2

    and-int/lit8 v9, v9, 0x3c

    ushr-int/lit8 v10, v2, 0x6

    and-int/lit8 v10, v10, 0x3

    or-int v5, v9, v10

    .line 181
    .local v5, "c3":I
    and-int/lit8 v6, v2, 0x3f

    .line 182
    .local v6, "c4":I
    iget-object v9, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v10, v3, 0x20

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write(I)V

    .line 183
    iget-object v9, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v10, v4, 0x20

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write(I)V

    .line 184
    iget-object v9, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v10, v5, 0x20

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write(I)V

    .line 185
    iget-object v9, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v10, v6, 0x20

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 171
    .end local v2    # "c":B
    .end local v3    # "c1":I
    .end local v4    # "c2":I
    .end local v5    # "c3":I
    .end local v6    # "c4":I
    :cond_0
    const/4 v2, 0x1

    .line 172
    .restart local v2    # "c":B
    goto :goto_1

    .line 174
    .end local v1    # "b":B
    .end local v2    # "c":B
    .end local v7    # "i":I
    .restart local v8    # "i":I
    :cond_1
    const/4 v1, 0x1

    .line 175
    .restart local v1    # "b":B
    const/4 v2, 0x1

    .restart local v2    # "c":B
    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_1

    .line 188
    .end local v0    # "a":B
    .end local v1    # "b":B
    .end local v2    # "c":B
    :cond_2
    iget-object v9, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write(I)V

    .line 189
    return-void
.end method

.method private writePrefix()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-boolean v1, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z

    if-nez v1, :cond_0

    .line 130
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 131
    .local v0, "ps":Ljava/io/PrintStream;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "begin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z

    .line 135
    .end local v0    # "ps":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method private writeSuffix()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 143
    .local v0, "ps":Ljava/io/PrintStream;
    const-string v1, " \nend"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 145
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/sun/mail/util/UUEncoderStream;->flush()V

    .line 122
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 123
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    if-lez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writePrefix()V

    .line 114
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->encode()V

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writeSuffix()V

    .line 117
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 118
    return-void
.end method

.method public setNameMode(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;

    .line 86
    iput p2, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I

    .line 87
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 104
    iget v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writePrefix()V

    .line 106
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->encode()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    .line 109
    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/UUEncoderStream;->write([BII)V

    .line 96
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 91
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/util/UUEncoderStream;->write(I)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method
