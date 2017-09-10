.class public Lorg/apache/sanselan/common/PackBits;
.super Ljava/lang/Object;
.source "PackBits.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findNextDuplicate([BI)I
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "start"    # I

    .prologue
    const/4 v3, -0x1

    .line 84
    array-length v4, p1

    if-lt p2, v4, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v3

    .line 87
    :cond_1
    aget-byte v2, p1, p2

    .line 89
    .local v2, "prev":B
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 91
    aget-byte v0, p1, v1

    .line 93
    .local v0, "b":B
    if-ne v0, v2, :cond_2

    .line 94
    add-int/lit8 v3, v1, -0x1

    goto :goto_0

    .line 96
    :cond_2
    move v2, v0

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private findRunLength([BI)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "start"    # I

    .prologue
    .line 104
    aget-byte v0, p1, p2

    .line 108
    .local v0, "b":B
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-byte v2, p1, v1

    if-ne v2, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_0
    sub-int v2, v1, p2

    return v2
.end method


# virtual methods
.method public compress([B)[B
    .locals 13
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x80

    .line 116
    new-instance v1, Lorg/apache/sanselan/common/MyByteArrayOutputStream;

    array-length v11, p1

    mul-int/lit8 v11, v11, 0x2

    invoke-direct {v1, v11}, Lorg/apache/sanselan/common/MyByteArrayOutputStream;-><init>(I)V

    .line 119
    .local v1, "baos":Lorg/apache/sanselan/common/MyByteArrayOutputStream;
    const/4 v8, 0x0

    .line 120
    .local v8, "ptr":I
    const/4 v2, 0x0

    .line 121
    .local v2, "count":I
    :cond_0
    :goto_0
    array-length v11, p1

    if-ge v8, v11, :cond_4

    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 124
    invoke-direct {p0, p1, v8}, Lorg/apache/sanselan/common/PackBits;->findNextDuplicate([BI)I

    move-result v3

    .line 126
    .local v3, "dup":I
    if-ne v3, v8, :cond_1

    .line 128
    invoke-direct {p0, p1, v3}, Lorg/apache/sanselan/common/PackBits;->findRunLength([BI)I

    move-result v5

    .line 129
    .local v5, "len":I
    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 130
    .local v0, "actual_len":I
    add-int/lit8 v11, v0, -0x1

    neg-int v11, v11

    invoke-virtual {v1, v11}, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->write(I)V

    .line 131
    aget-byte v11, p1, v8

    invoke-virtual {v1, v11}, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->write(I)V

    .line 132
    add-int/2addr v8, v0

    .line 133
    goto :goto_0

    .line 136
    .end local v0    # "actual_len":I
    .end local v5    # "len":I
    :cond_1
    sub-int v5, v3, v8

    .line 138
    .restart local v5    # "len":I
    if-lez v3, :cond_2

    .line 140
    invoke-direct {p0, p1, v3}, Lorg/apache/sanselan/common/PackBits;->findRunLength([BI)I

    move-result v10

    .line 141
    .local v10, "runlen":I
    const/4 v11, 0x3

    if-ge v10, v11, :cond_2

    .line 143
    add-int v11, v8, v5

    add-int v7, v11, v10

    .line 144
    .local v7, "nextptr":I
    invoke-direct {p0, p1, v7}, Lorg/apache/sanselan/common/PackBits;->findNextDuplicate([BI)I

    move-result v6

    .line 145
    .local v6, "nextdup":I
    if-eq v6, v7, :cond_2

    .line 147
    move v3, v6

    .line 148
    sub-int v5, v3, v8

    .line 153
    .end local v6    # "nextdup":I
    .end local v7    # "nextptr":I
    .end local v10    # "runlen":I
    :cond_2
    if-gez v3, :cond_3

    .line 154
    array-length v11, p1

    sub-int v5, v11, v8

    .line 155
    :cond_3
    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 157
    .restart local v0    # "actual_len":I
    add-int/lit8 v11, v0, -0x1

    invoke-virtual {v1, v11}, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->write(I)V

    .line 158
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 160
    aget-byte v11, p1, v8

    invoke-virtual {v1, v11}, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->write(I)V

    .line 161
    add-int/lit8 v8, v8, 0x1

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 165
    .end local v0    # "actual_len":I
    .end local v3    # "dup":I
    .end local v4    # "i":I
    .end local v5    # "len":I
    :cond_4
    invoke-virtual {v1}, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 167
    .local v9, "result":[B
    return-object v9
.end method

.method public decompress([BI)[B
    .locals 12
    .param p1, "bytes"    # [B
    .param p2, "expected"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v8, 0x0

    .line 32
    .local v8, "total":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    move v4, v3

    .line 36
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    if-ge v8, p2, :cond_6

    .line 40
    array-length v9, p1

    if-lt v4, v9, :cond_0

    .line 41
    new-instance v9, Lorg/apache/sanselan/ImageReadException;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Tiff: Unpack bits source exhausted: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ", done + "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ", expected + "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 46
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v6, p1, v4

    .line 48
    .local v6, "n":I
    if-ltz v6, :cond_3

    const/16 v9, 0x7f

    if-gt v6, v9, :cond_3

    .line 51
    add-int/lit8 v2, v6, 0x1

    .line 53
    .local v2, "count":I
    add-int/2addr v8, v2

    .line 54
    const/4 v5, 0x0

    .local v5, "j":I
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 55
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v9, p1, v4

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 54
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    :cond_1
    move v3, v4

    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .restart local v3    # "i":I
    :cond_2
    :goto_2
    move v4, v3

    .line 74
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 59
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_3
    const/16 v9, -0x7f

    if-lt v6, v9, :cond_5

    const/4 v9, -0x1

    if-gt v6, v9, :cond_5

    .line 61
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v0, p1, v3

    .line 62
    .local v0, "b":I
    neg-int v9, v6

    add-int/lit8 v2, v9, 0x1

    .line 64
    .restart local v2    # "count":I
    add-int/2addr v8, v2

    .line 65
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_3
    if-ge v5, v2, :cond_4

    .line 66
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 65
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    move v3, v4

    .line 67
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 68
    .end local v0    # "b":I
    .end local v2    # "count":I
    .end local v5    # "j":I
    :cond_5
    const/16 v9, -0x80

    if-ne v6, v9, :cond_2

    .line 69
    new-instance v9, Lorg/apache/sanselan/ImageReadException;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Packbits: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 75
    .end local v3    # "i":I
    .end local v6    # "n":I
    .restart local v4    # "i":I
    :cond_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 77
    .local v7, "result":[B
    return-object v7
.end method
