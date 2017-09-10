.class public Lcom/sun/mail/iap/Argument;
.super Ljava/lang/Object;
.source "Argument.java"


# instance fields
.field protected items:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    .line 47
    return-void
.end method

.method private astring([BLcom/sun/mail/iap/Protocol;)V
    .locals 10
    .param p1, "bytes"    # [B
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x22

    .line 181
    invoke-virtual {p2}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    check-cast v4, Ljava/io/DataOutputStream;

    .line 182
    .local v4, "os":Ljava/io/DataOutputStream;
    array-length v3, p1

    .line 185
    .local v3, "len":I
    const/16 v6, 0x400

    if-le v3, v6, :cond_1

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    if-nez v3, :cond_3

    const/4 v5, 0x1

    .line 192
    .local v5, "quote":Z
    :goto_1
    const/4 v1, 0x0

    .line 195
    .local v1, "escape":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_8

    .line 196
    aget-byte v0, p1, v2

    .line 197
    .local v0, "b":B
    if-eqz v0, :cond_2

    const/16 v6, 0xd

    if-eq v0, v6, :cond_2

    const/16 v6, 0xa

    if-eq v0, v6, :cond_2

    and-int/lit16 v6, v0, 0xff

    const/16 v7, 0x7f

    if-le v6, v7, :cond_4

    .line 199
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_0

    .line 191
    .end local v0    # "b":B
    .end local v1    # "escape":Z
    .end local v2    # "i":I
    .end local v5    # "quote":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 202
    .restart local v0    # "b":B
    .restart local v1    # "escape":Z
    .restart local v2    # "i":I
    .restart local v5    # "quote":Z
    :cond_4
    const/16 v6, 0x2a

    if-eq v0, v6, :cond_5

    const/16 v6, 0x25

    if-eq v0, v6, :cond_5

    const/16 v6, 0x28

    if-eq v0, v6, :cond_5

    const/16 v6, 0x29

    if-eq v0, v6, :cond_5

    const/16 v6, 0x7b

    if-eq v0, v6, :cond_5

    if-eq v0, v8, :cond_5

    if-eq v0, v9, :cond_5

    and-int/lit16 v6, v0, 0xff

    const/16 v7, 0x20

    if-gt v6, v7, :cond_7

    .line 204
    :cond_5
    const/4 v5, 0x1

    .line 205
    if-eq v0, v8, :cond_6

    if-ne v0, v9, :cond_7

    .line 206
    :cond_6
    const/4 v1, 0x1

    .line 195
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 210
    .end local v0    # "b":B
    :cond_8
    if-eqz v5, :cond_9

    .line 211
    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 213
    :cond_9
    if-eqz v1, :cond_c

    .line 215
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_d

    .line 216
    aget-byte v0, p1, v2

    .line 217
    .restart local v0    # "b":B
    if-eq v0, v8, :cond_a

    if-ne v0, v9, :cond_b

    .line 218
    :cond_a
    invoke-virtual {v4, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 219
    :cond_b
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 222
    .end local v0    # "b":B
    :cond_c
    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 225
    :cond_d
    if-eqz v5, :cond_0

    .line 226
    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0
.end method

.method private literal(Lcom/sun/mail/iap/Literal;Lcom/sun/mail/iap/Protocol;)V
    .locals 1
    .param p1, "b"    # Lcom/sun/mail/iap/Literal;
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-interface {p1}, Lcom/sun/mail/iap/Literal;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sun/mail/iap/Literal;->writeTo(Ljava/io/OutputStream;)V

    .line 251
    return-void
.end method

.method private literal(Ljava/io/ByteArrayOutputStream;Lcom/sun/mail/iap/Protocol;)V
    .locals 1
    .param p1, "b"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 243
    return-void
.end method

.method private literal([BLcom/sun/mail/iap/Protocol;)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 234
    array-length v0, p1

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 235
    return-void
.end method

.method private startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;
    .locals 4
    .param p1, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    .line 256
    .local v1, "os":Ljava/io/DataOutputStream;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->supportsNonSyncLiterals()Z

    move-result v0

    .line 258
    .local v0, "nonSync":Z
    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 259
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 260
    if-eqz v0, :cond_2

    .line 261
    const-string v3, "+}\r\n"

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 264
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 268
    if-nez v0, :cond_1

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 271
    .local v2, "r":Lcom/sun/mail/iap/Response;
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 279
    .end local v2    # "r":Lcom/sun/mail/iap/Response;
    :cond_1
    return-object v1

    .line 263
    :cond_2
    const-string v3, "}\r\n"

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .restart local v2    # "r":Lcom/sun/mail/iap/Response;
    :cond_3
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    new-instance v3, Lcom/sun/mail/iap/LiteralException;

    invoke-direct {v3, v2}, Lcom/sun/mail/iap/LiteralException;-><init>(Lcom/sun/mail/iap/Response;)V

    throw v3
.end method


# virtual methods
.method public append(Lcom/sun/mail/iap/Argument;)V
    .locals 4
    .param p1, "arg"    # Lcom/sun/mail/iap/Argument;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    iget-object v2, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget-object v3, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Vector;->ensureCapacity(I)V

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    iget-object v2, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method public write(Lcom/sun/mail/iap/Protocol;)V
    .locals 5
    .param p1, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v4, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 149
    .local v3, "size":I
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    check-cast v2, Ljava/io/DataOutputStream;

    .line 151
    .local v2, "os":Ljava/io/DataOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_9

    .line 152
    if-lez v0, :cond_0

    .line 153
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 155
    :cond_0
    iget-object v4, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 156
    .local v1, "o":Ljava/lang/Object;
    instance-of v4, v1, Lcom/sun/mail/iap/Atom;

    if-eqz v4, :cond_3

    .line 157
    check-cast v1, Lcom/sun/mail/iap/Atom;

    .end local v1    # "o":Ljava/lang/Object;
    iget-object v4, v1, Lcom/sun/mail/iap/Atom;->string:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 151
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    .end local v0    # "i":I
    .end local v2    # "os":Ljava/io/DataOutputStream;
    .end local v3    # "size":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 158
    .restart local v0    # "i":I
    .restart local v1    # "o":Ljava/lang/Object;
    .restart local v2    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "size":I
    :cond_3
    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_4

    .line 159
    check-cast v1, Ljava/lang/Number;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_2

    .line 160
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v4, v1, Lcom/sun/mail/iap/AString;

    if-eqz v4, :cond_5

    .line 161
    check-cast v1, Lcom/sun/mail/iap/AString;

    .end local v1    # "o":Ljava/lang/Object;
    iget-object v4, v1, Lcom/sun/mail/iap/AString;->bytes:[B

    invoke-direct {p0, v4, p1}, Lcom/sun/mail/iap/Argument;->astring([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 162
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v4, v1, [B

    if-eqz v4, :cond_6

    .line 163
    check-cast v1, [B

    .end local v1    # "o":Ljava/lang/Object;
    check-cast v1, [B

    invoke-direct {p0, v1, p1}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 164
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v4, v1, Ljava/io/ByteArrayOutputStream;

    if-eqz v4, :cond_7

    .line 165
    check-cast v1, Ljava/io/ByteArrayOutputStream;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-direct {p0, v1, p1}, Lcom/sun/mail/iap/Argument;->literal(Ljava/io/ByteArrayOutputStream;Lcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 166
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_7
    instance-of v4, v1, Lcom/sun/mail/iap/Literal;

    if-eqz v4, :cond_8

    .line 167
    check-cast v1, Lcom/sun/mail/iap/Literal;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-direct {p0, v1, p1}, Lcom/sun/mail/iap/Argument;->literal(Lcom/sun/mail/iap/Literal;Lcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 168
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_8
    instance-of v4, v1, Lcom/sun/mail/iap/Argument;

    if-eqz v4, :cond_1

    .line 169
    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 170
    check-cast v1, Lcom/sun/mail/iap/Argument;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Lcom/sun/mail/iap/Argument;->write(Lcom/sun/mail/iap/Protocol;)V

    .line 171
    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_2

    .line 174
    :cond_9
    return-void
.end method

.method public writeArgument(Lcom/sun/mail/iap/Argument;)V
    .locals 1
    .param p1, "c"    # Lcom/sun/mail/iap/Argument;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public writeAtom(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/iap/Atom;

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/Atom;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public writeBytes(Lcom/sun/mail/iap/Literal;)V
    .locals 1
    .param p1, "b"    # Lcom/sun/mail/iap/Literal;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public writeBytes(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .param p1, "b"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public writeBytes([B)V
    .locals 1
    .param p1, "b"    # [B

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public writeNumber(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public writeNumber(J)V
    .locals 3
    .param p1, "i"    # J

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/iap/AString;

    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/AString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 79
    if-nez p2, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/iap/AString;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/AString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method
