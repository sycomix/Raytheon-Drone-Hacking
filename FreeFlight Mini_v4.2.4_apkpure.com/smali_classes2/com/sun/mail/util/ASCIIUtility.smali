.class public Lcom/sun/mail/util/ASCIIUtility;
.super Ljava/lang/Object;
.source "ASCIIUtility.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytes(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 234
    const/16 v3, 0x400

    .line 238
    .local v3, "size":I
    instance-of v4, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v4, :cond_0

    .line 239
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 240
    new-array v1, v3, [B

    .line 241
    .local v1, "buf":[B
    invoke-virtual {p0, v1, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 250
    .local v2, "len":I
    :goto_0
    return-object v1

    .line 244
    .end local v1    # "buf":[B
    .end local v2    # "len":I
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 245
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-array v1, v3, [B

    .line 246
    .restart local v1    # "buf":[B
    :goto_1
    invoke-virtual {p0, v1, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .restart local v2    # "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 247
    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 248
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 223
    .local v1, "chars":[C
    array-length v4, v1

    .line 224
    .local v4, "size":I
    new-array v0, v4, [B

    .line 226
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 227
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-char v5, v1, v3

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 228
    :cond_0
    return-object v0
.end method

.method public static parseInt([BII)I
    .locals 1
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 113
    const/16 v0, 0xa

    invoke-static {p0, p1, p2, v0}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BIII)I

    move-result v0

    return v0
.end method

.method public static parseInt([BIII)I
    .locals 10
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string v8, "null"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 51
    :cond_0
    const/4 v6, 0x0

    .line 52
    .local v6, "result":I
    const/4 v5, 0x0

    .line 53
    .local v5, "negative":Z
    move v1, p1

    .line 58
    .local v1, "i":I
    if-le p2, p1, :cond_6

    .line 59
    aget-byte v7, p0, v1

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_1

    .line 60
    const/4 v5, 0x1

    .line 61
    const/high16 v3, -0x80000000

    .line 62
    .local v3, "limit":I
    add-int/lit8 v1, v1, 0x1

    .line 66
    :goto_0
    div-int v4, v3, p3

    .line 67
    .local v4, "multmin":I
    if-ge v1, p2, :cond_a

    .line 68
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v7, p0, v1

    int-to-char v7, v7

    invoke-static {v7, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 69
    .local v0, "digit":I
    if-gez v0, :cond_2

    .line 70
    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "illegal number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {p0, p1, p2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 64
    .end local v0    # "digit":I
    .end local v2    # "i":I
    .end local v3    # "limit":I
    .end local v4    # "multmin":I
    .restart local v1    # "i":I
    :cond_1
    const v3, -0x7fffffff

    .restart local v3    # "limit":I
    goto :goto_0

    .line 74
    .end local v1    # "i":I
    .restart local v0    # "digit":I
    .restart local v2    # "i":I
    .restart local v4    # "multmin":I
    :cond_2
    neg-int v6, v0

    .line 77
    .end local v0    # "digit":I
    :goto_1
    if-ge v2, p2, :cond_7

    .line 79
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v7, p0, v2

    int-to-char v7, v7

    invoke-static {v7, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 80
    .restart local v0    # "digit":I
    if-gez v0, :cond_3

    .line 81
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string v8, "illegal number"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 83
    :cond_3
    if-ge v6, v4, :cond_4

    .line 84
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string v8, "illegal number"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 86
    :cond_4
    mul-int/2addr v6, p3

    .line 87
    add-int v7, v3, v0

    if-ge v6, v7, :cond_5

    .line 88
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string v8, "illegal number"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 90
    :cond_5
    sub-int/2addr v6, v0

    move v2, v1

    .line 91
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 93
    .end local v0    # "digit":I
    .end local v2    # "i":I
    .end local v3    # "limit":I
    .end local v4    # "multmin":I
    .restart local v1    # "i":I
    :cond_6
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string v8, "illegal number"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 95
    .end local v1    # "i":I
    .restart local v2    # "i":I
    .restart local v3    # "limit":I
    .restart local v4    # "multmin":I
    :cond_7
    if-eqz v5, :cond_9

    .line 96
    add-int/lit8 v7, p1, 0x1

    if-le v2, v7, :cond_8

    .line 102
    .end local v6    # "result":I
    :goto_2
    return v6

    .line 99
    .restart local v6    # "result":I
    :cond_8
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string v8, "illegal number"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 102
    :cond_9
    neg-int v6, v6

    goto :goto_2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_a
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1
.end method

.method public static parseLong([BII)J
    .locals 2
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 190
    const/16 v0, 0xa

    invoke-static {p0, p1, p2, v0}, Lcom/sun/mail/util/ASCIIUtility;->parseLong([BIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong([BIII)J
    .locals 15
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 125
    if-nez p0, :cond_0

    .line 126
    new-instance v12, Ljava/lang/NumberFormatException;

    const-string v13, "null"

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 128
    :cond_0
    const-wide/16 v10, 0x0

    .line 129
    .local v10, "result":J
    const/4 v5, 0x0

    .line 130
    .local v5, "negative":Z
    move/from16 v3, p1

    .line 135
    .local v3, "i":I
    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_6

    .line 136
    aget-byte v12, p0, v3

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_1

    .line 137
    const/4 v5, 0x1

    .line 138
    const-wide/high16 v6, -0x8000000000000000L

    .line 139
    .local v6, "limit":J
    add-int/lit8 v3, v3, 0x1

    .line 143
    :goto_0
    move/from16 v0, p3

    int-to-long v12, v0

    div-long v8, v6, v12

    .line 144
    .local v8, "multmin":J
    move/from16 v0, p2

    if-ge v3, v0, :cond_a

    .line 145
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v12, p0, v3

    int-to-char v12, v12

    move/from16 v0, p3

    invoke-static {v12, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 146
    .local v2, "digit":I
    if-gez v2, :cond_2

    .line 147
    new-instance v12, Ljava/lang/NumberFormatException;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "illegal number: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-static/range {p0 .. p2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 141
    .end local v2    # "digit":I
    .end local v4    # "i":I
    .end local v6    # "limit":J
    .end local v8    # "multmin":J
    .restart local v3    # "i":I
    :cond_1
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v6    # "limit":J
    goto :goto_0

    .line 151
    .end local v3    # "i":I
    .restart local v2    # "digit":I
    .restart local v4    # "i":I
    .restart local v8    # "multmin":J
    :cond_2
    neg-int v12, v2

    int-to-long v10, v12

    .line 154
    .end local v2    # "digit":I
    :goto_1
    move/from16 v0, p2

    if-ge v4, v0, :cond_7

    .line 156
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v12, p0, v4

    int-to-char v12, v12

    move/from16 v0, p3

    invoke-static {v12, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 157
    .restart local v2    # "digit":I
    if-gez v2, :cond_3

    .line 158
    new-instance v12, Ljava/lang/NumberFormatException;

    const-string v13, "illegal number"

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 160
    :cond_3
    cmp-long v12, v10, v8

    if-gez v12, :cond_4

    .line 161
    new-instance v12, Ljava/lang/NumberFormatException;

    const-string v13, "illegal number"

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 163
    :cond_4
    move/from16 v0, p3

    int-to-long v12, v0

    mul-long/2addr v10, v12

    .line 164
    int-to-long v12, v2

    add-long/2addr v12, v6

    cmp-long v12, v10, v12

    if-gez v12, :cond_5

    .line 165
    new-instance v12, Ljava/lang/NumberFormatException;

    const-string v13, "illegal number"

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 167
    :cond_5
    int-to-long v12, v2

    sub-long/2addr v10, v12

    move v4, v3

    .line 168
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 170
    .end local v2    # "digit":I
    .end local v4    # "i":I
    .end local v6    # "limit":J
    .end local v8    # "multmin":J
    .restart local v3    # "i":I
    :cond_6
    new-instance v12, Ljava/lang/NumberFormatException;

    const-string v13, "illegal number"

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 172
    .end local v3    # "i":I
    .restart local v4    # "i":I
    .restart local v6    # "limit":J
    .restart local v8    # "multmin":J
    :cond_7
    if-eqz v5, :cond_9

    .line 173
    add-int/lit8 v12, p1, 0x1

    if-le v4, v12, :cond_8

    .line 179
    .end local v10    # "result":J
    :goto_2
    return-wide v10

    .line 176
    .restart local v10    # "result":J
    :cond_8
    new-instance v12, Ljava/lang/NumberFormatException;

    const-string v13, "illegal number"

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 179
    :cond_9
    neg-long v10, v10

    goto :goto_2

    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_a
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1
.end method

.method public static toString(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "is"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 209
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 210
    .local v3, "size":I
    new-array v4, v3, [C

    .line 211
    .local v4, "theChars":[C
    new-array v0, v3, [B

    .line 213
    .local v0, "bytes":[B
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 214
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 215
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v5, v0, v2

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    aput-char v5, v4, v2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 217
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method

.method public static toString([BII)Ljava/lang/String;
    .locals 7
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 199
    sub-int v4, p2, p1

    .line 200
    .local v4, "size":I
    new-array v5, v4, [C

    .line 202
    .local v5, "theChars":[C
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, p1

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 203
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    int-to-char v6, v6

    aput-char v6, v5, v1

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 205
    :cond_0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([C)V

    return-object v6
.end method
