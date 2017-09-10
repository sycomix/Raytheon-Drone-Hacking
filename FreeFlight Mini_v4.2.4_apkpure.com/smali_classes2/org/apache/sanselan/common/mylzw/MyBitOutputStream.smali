.class public Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;
.super Ljava/io/OutputStream;
.source "MyBitOutputStream.java"

# interfaces
.implements Lorg/apache/sanselan/common/BinaryConstants;


# instance fields
.field private bitCache:I

.field private bitsInCache:I

.field private final byteOrder:I

.field private bytesWritten:I

.field private final os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "byteOrder"    # I

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 40
    iput v0, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitsInCache:I

    .line 41
    iput v0, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitCache:I

    .line 85
    iput v0, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bytesWritten:I

    .line 31
    iput p2, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->byteOrder:I

    .line 32
    iput-object p1, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->os:Ljava/io/OutputStream;

    .line 33
    return-void
.end method

.method private actualWrite(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 90
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bytesWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bytesWritten:I

    .line 91
    return-void
.end method


# virtual methods
.method public flushCache()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 95
    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitsInCache:I

    if-lez v2, :cond_0

    .line 97
    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitsInCache:I

    shl-int/2addr v2, v3

    add-int/lit8 v1, v2, -0x1

    .line 98
    .local v1, "bitMask":I
    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitCache:I

    and-int v0, v1, v2

    .line 100
    .local v0, "b":I
    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->byteOrder:I

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_1

    .line 102
    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitsInCache:I

    rsub-int/lit8 v2, v2, 0x8

    shl-int/2addr v0, v2

    .line 103
    iget-object v2, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 111
    .end local v0    # "b":I
    .end local v1    # "bitMask":I
    :cond_0
    :goto_0
    iput v4, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitsInCache:I

    .line 112
    iput v4, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitCache:I

    .line 113
    return-void

    .line 105
    .restart local v0    # "b":I
    .restart local v1    # "bitMask":I
    :cond_1
    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->byteOrder:I

    const/16 v3, 0x49

    if-ne v2, v3, :cond_0

    .line 107
    iget-object v2, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public getBytesWritten()I
    .locals 2

    .prologue
    .line 117
    iget v1, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bytesWritten:I

    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitsInCache:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public write(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->writeBits(II)V

    .line 38
    return-void
.end method

.method public writeBits(II)V
    .locals 8
    .param p1, "value"    # I
    .param p2, "SampleBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x4d

    const/16 v6, 0x49

    const/4 v5, 0x1

    .line 47
    shl-int v3, v5, p2

    add-int/lit8 v2, v3, -0x1

    .line 48
    .local v2, "sampleMask":I
    and-int/2addr p1, v2

    .line 50
    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->byteOrder:I

    if-ne v3, v7, :cond_1

    .line 52
    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitCache:I

    shl-int/2addr v3, p2

    or-int/2addr v3, p1

    iput v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitCache:I

    .line 60
    :goto_0
    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitsInCache:I

    add-int/2addr v3, p2

    iput v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitsInCache:I

    .line 62
    :goto_1
    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitsInCache:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_4

    .line 64
    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->byteOrder:I

    if-ne v3, v7, :cond_3

    .line 66
    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitCache:I

    iget v4, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitsInCache:I

    add-int/lit8 v4, v4, -0x8

    shr-int/2addr v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 67
    .local v0, "b":I
    invoke-direct {p0, v0}, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->actualWrite(I)V

    .line 69
    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitsInCache:I

    add-int/lit8 v3, v3, -0x8

    iput v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitsInCache:I

    .line 79
    .end local v0    # "b":I
    :cond_0
    :goto_2
    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitsInCache:I

    shl-int v3, v5, v3

    add-int/lit8 v1, v3, -0x1

    .line 80
    .local v1, "remainderMask":I
    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitCache:I

    and-int/2addr v3, v1

    iput v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitCache:I

    goto :goto_1

    .line 54
    .end local v1    # "remainderMask":I
    :cond_1
    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->byteOrder:I

    if-ne v3, v6, :cond_2

    .line 56
    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitCache:I

    iget v4, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitsInCache:I

    shl-int v4, p1, v4

    or-int/2addr v3, v4

    iput v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitCache:I

    goto :goto_0

    .line 59
    :cond_2
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unknown byte order: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->byteOrder:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    :cond_3
    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->byteOrder:I

    if-ne v3, v6, :cond_0

    .line 73
    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitCache:I

    and-int/lit16 v0, v3, 0xff

    .line 74
    .restart local v0    # "b":I
    invoke-direct {p0, v0}, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->actualWrite(I)V

    .line 76
    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitCache:I

    shr-int/lit8 v3, v3, 0x8

    iput v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitCache:I

    .line 77
    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitsInCache:I

    add-int/lit8 v3, v3, -0x8

    iput v3, p0, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->bitsInCache:I

    goto :goto_2

    .line 83
    .end local v0    # "b":I
    :cond_4
    return-void
.end method
