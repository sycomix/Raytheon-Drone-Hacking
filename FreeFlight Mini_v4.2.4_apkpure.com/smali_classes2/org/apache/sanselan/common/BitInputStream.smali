.class public Lorg/apache/sanselan/common/BitInputStream;
.super Ljava/io/InputStream;
.source "BitInputStream.java"

# interfaces
.implements Lorg/apache/sanselan/common/BinaryConstants;


# instance fields
.field private bytes_read:J

.field private cache:I

.field private cacheBitsRemaining:I

.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/sanselan/common/BitInputStream;->cacheBitsRemaining:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/sanselan/common/BitInputStream;->bytes_read:J

    .line 30
    iput-object p1, p0, Lorg/apache/sanselan/common/BitInputStream;->is:Ljava/io/InputStream;

    .line 32
    return-void
.end method


# virtual methods
.method public flushCache()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/sanselan/common/BitInputStream;->cacheBitsRemaining:I

    .line 117
    return-void
.end method

.method public getBytesRead()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lorg/apache/sanselan/common/BitInputStream;->bytes_read:J

    return-wide v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget v0, p0, Lorg/apache/sanselan/common/BitInputStream;->cacheBitsRemaining:I

    if-lez v0, :cond_0

    .line 37
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BitInputStream: incomplete bit read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/common/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public final readBits(I)I
    .locals 8
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    const/16 v4, 0x8

    .line 47
    if-ge p1, v4, :cond_2

    .line 49
    iget v1, p0, Lorg/apache/sanselan/common/BitInputStream;->cacheBitsRemaining:I

    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lorg/apache/sanselan/common/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/common/BitInputStream;->cache:I

    .line 53
    iput v4, p0, Lorg/apache/sanselan/common/BitInputStream;->cacheBitsRemaining:I

    .line 54
    iget-wide v2, p0, Lorg/apache/sanselan/common/BitInputStream;->bytes_read:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/apache/sanselan/common/BitInputStream;->bytes_read:J

    .line 56
    :cond_0
    iget v1, p0, Lorg/apache/sanselan/common/BitInputStream;->cacheBitsRemaining:I

    if-le p1, v1, :cond_1

    .line 57
    new-instance v1, Ljava/io/IOException;

    const-string v2, "BitInputStream: can\'t read bit fields across bytes"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_1
    iget v1, p0, Lorg/apache/sanselan/common/BitInputStream;->cacheBitsRemaining:I

    sub-int/2addr v1, p1

    iput v1, p0, Lorg/apache/sanselan/common/BitInputStream;->cacheBitsRemaining:I

    .line 62
    iget v1, p0, Lorg/apache/sanselan/common/BitInputStream;->cache:I

    iget v2, p0, Lorg/apache/sanselan/common/BitInputStream;->cacheBitsRemaining:I

    shr-int v0, v1, v2

    .line 64
    .local v0, "bits":I
    packed-switch p1, :pswitch_data_0

    .line 83
    .end local v0    # "bits":I
    :cond_2
    iget v1, p0, Lorg/apache/sanselan/common/BitInputStream;->cacheBitsRemaining:I

    if-lez v1, :cond_3

    .line 84
    new-instance v1, Ljava/io/IOException;

    const-string v2, "BitInputStream: incomplete bit read"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    .restart local v0    # "bits":I
    :pswitch_0
    and-int/lit8 v1, v0, 0x1

    .line 107
    .end local v0    # "bits":I
    :goto_0
    return v1

    .line 69
    .restart local v0    # "bits":I
    :pswitch_1
    and-int/lit8 v1, v0, 0x3

    goto :goto_0

    .line 71
    :pswitch_2
    and-int/lit8 v1, v0, 0x7

    goto :goto_0

    .line 73
    :pswitch_3
    and-int/lit8 v1, v0, 0xf

    goto :goto_0

    .line 75
    :pswitch_4
    and-int/lit8 v1, v0, 0x1f

    goto :goto_0

    .line 77
    :pswitch_5
    and-int/lit8 v1, v0, 0x3f

    goto :goto_0

    .line 79
    :pswitch_6
    and-int/lit8 v1, v0, 0x7f

    goto :goto_0

    .line 86
    .end local v0    # "bits":I
    :cond_3
    if-ne p1, v4, :cond_4

    .line 88
    iget-wide v2, p0, Lorg/apache/sanselan/common/BitInputStream;->bytes_read:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/apache/sanselan/common/BitInputStream;->bytes_read:J

    .line 89
    iget-object v1, p0, Lorg/apache/sanselan/common/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0

    .line 92
    :cond_4
    const/16 v1, 0x10

    if-ne p1, v1, :cond_5

    .line 94
    iget-wide v2, p0, Lorg/apache/sanselan/common/BitInputStream;->bytes_read:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/sanselan/common/BitInputStream;->bytes_read:J

    .line 95
    iget-object v1, p0, Lorg/apache/sanselan/common/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/apache/sanselan/common/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x0

    or-int/2addr v1, v2

    goto :goto_0

    .line 98
    :cond_5
    const/16 v1, 0x18

    if-ne p1, v1, :cond_6

    .line 100
    iget-wide v2, p0, Lorg/apache/sanselan/common/BitInputStream;->bytes_read:J

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/sanselan/common/BitInputStream;->bytes_read:J

    .line 101
    iget-object v1, p0, Lorg/apache/sanselan/common/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Lorg/apache/sanselan/common/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/sanselan/common/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x0

    or-int/2addr v1, v2

    goto :goto_0

    .line 104
    :cond_6
    const/16 v1, 0x20

    if-ne p1, v1, :cond_7

    .line 106
    iget-wide v2, p0, Lorg/apache/sanselan/common/BitInputStream;->bytes_read:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/sanselan/common/BitInputStream;->bytes_read:J

    .line 107
    iget-object v1, p0, Lorg/apache/sanselan/common/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lorg/apache/sanselan/common/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/sanselan/common/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/sanselan/common/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x0

    or-int/2addr v1, v2

    goto/16 :goto_0

    .line 111
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "BitInputStream: unknown error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
