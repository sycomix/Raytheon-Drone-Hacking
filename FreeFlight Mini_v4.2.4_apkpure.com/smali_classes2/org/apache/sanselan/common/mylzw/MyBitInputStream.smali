.class public Lorg/apache/sanselan/common/mylzw/MyBitInputStream;
.super Ljava/io/InputStream;
.source "MyBitInputStream.java"

# interfaces
.implements Lorg/apache/sanselan/common/BinaryConstants;


# instance fields
.field private bitCache:I

.field private bitsInCache:I

.field private final byteOrder:I

.field private bytesRead:J

.field private final is:Ljava/io/InputStream;

.field private tiffLZWMode:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "byteOrder"    # I

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 28
    iput-boolean v2, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->tiffLZWMode:Z

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bytesRead:J

    .line 42
    iput v2, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitsInCache:I

    .line 43
    iput v2, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitCache:I

    .line 32
    iput p2, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->byteOrder:I

    .line 33
    iput-object p1, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->is:Ljava/io/InputStream;

    .line 34
    return-void
.end method


# virtual methods
.method public flushCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitsInCache:I

    .line 106
    iput v0, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitCache:I

    .line 107
    return-void
.end method

.method public getBytesRead()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bytesRead:J

    return-wide v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->readBits(I)I

    move-result v0

    return v0
.end method

.method public readBits(I)I
    .locals 13
    .param p1, "SampleBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x4d

    const/16 v11, 0x49

    const/4 v10, 0x1

    .line 52
    :goto_0
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitsInCache:I

    if-ge v6, p1, :cond_4

    .line 54
    iget-object v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 56
    .local v1, "next":I
    if-gez v1, :cond_1

    .line 58
    iget-boolean v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->tiffLZWMode:Z

    if-eqz v6, :cond_0

    .line 61
    const/16 v3, 0x101

    .line 100
    .end local v1    # "next":I
    :goto_1
    return v3

    .line 63
    .restart local v1    # "next":I
    :cond_0
    const/4 v3, -0x1

    goto :goto_1

    .line 66
    :cond_1
    and-int/lit16 v0, v1, 0xff

    .line 68
    .local v0, "newByte":I
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->byteOrder:I

    if-ne v6, v12, :cond_2

    .line 69
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitCache:I

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v0

    iput v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitCache:I

    .line 75
    :goto_2
    iget-wide v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bytesRead:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bytesRead:J

    .line 76
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitsInCache:I

    add-int/lit8 v6, v6, 0x8

    iput v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitsInCache:I

    goto :goto_0

    .line 70
    :cond_2
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->byteOrder:I

    if-ne v6, v11, :cond_3

    .line 71
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitsInCache:I

    shl-int v6, v0, v6

    iget v7, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitCache:I

    or-int/2addr v6, v7

    iput v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitCache:I

    goto :goto_2

    .line 73
    :cond_3
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unknown byte order: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->byteOrder:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 78
    .end local v0    # "newByte":I
    .end local v1    # "next":I
    :cond_4
    shl-int v6, v10, p1

    add-int/lit8 v5, v6, -0x1

    .line 82
    .local v5, "sampleMask":I
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->byteOrder:I

    if-ne v6, v12, :cond_5

    .line 84
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitCache:I

    iget v7, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitsInCache:I

    sub-int/2addr v7, p1

    shr-int/2addr v6, v7

    and-int v4, v5, v6

    .line 94
    .local v4, "sample":I
    :goto_3
    move v3, v4

    .line 96
    .local v3, "result":I
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitsInCache:I

    sub-int/2addr v6, p1

    iput v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitsInCache:I

    .line 97
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitsInCache:I

    shl-int v6, v10, v6

    add-int/lit8 v2, v6, -0x1

    .line 98
    .local v2, "remainderMask":I
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitCache:I

    and-int/2addr v6, v2

    iput v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitCache:I

    goto :goto_1

    .line 86
    .end local v2    # "remainderMask":I
    .end local v3    # "result":I
    .end local v4    # "sample":I
    :cond_5
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->byteOrder:I

    if-ne v6, v11, :cond_6

    .line 88
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitCache:I

    and-int v4, v5, v6

    .line 89
    .restart local v4    # "sample":I
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitCache:I

    shr-int/2addr v6, p1

    iput v6, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->bitCache:I

    goto :goto_3

    .line 92
    .end local v4    # "sample":I
    :cond_6
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unknown byte order: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->byteOrder:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public setTiffLZWMode()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->tiffLZWMode:Z

    .line 48
    return-void
.end method
