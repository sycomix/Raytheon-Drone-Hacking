.class public Lorg/apache/sanselan/common/BitInputStreamFlexible;
.super Ljava/io/InputStream;
.source "BitInputStreamFlexible.java"

# interfaces
.implements Lorg/apache/sanselan/common/BinaryConstants;


# instance fields
.field private bytesRead:J

.field private cache:I

.field private cacheBitsRemaining:I

.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cacheBitsRemaining:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->bytesRead:J

    .line 32
    iput-object p1, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->is:Ljava/io/InputStream;

    .line 34
    return-void
.end method


# virtual methods
.method public flushCache()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cacheBitsRemaining:I

    .line 108
    return-void
.end method

.method public getBytesRead()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->bytesRead:J

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
    .line 38
    iget v0, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cacheBitsRemaining:I

    if-lez v0, :cond_0

    .line 39
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BitInputStream: incomplete bit read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->is:Ljava/io/InputStream;

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

    const/4 v4, 0x1

    .line 50
    const/16 v1, 0x20

    if-gt p1, v1, :cond_6

    .line 52
    const/4 v0, 0x0

    .line 55
    .local v0, "result":I
    iget v1, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cacheBitsRemaining:I

    if-lez v1, :cond_0

    .line 57
    iget v1, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cacheBitsRemaining:I

    if-lt p1, v1, :cond_1

    .line 59
    iget v1, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cacheBitsRemaining:I

    shl-int v1, v4, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cache:I

    and-int v0, v1, v2

    .line 60
    iget v1, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cacheBitsRemaining:I

    sub-int/2addr p1, v1

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cacheBitsRemaining:I

    .line 71
    :cond_0
    :goto_0
    const/16 v1, 0x8

    if-lt p1, v1, :cond_3

    .line 73
    iget-object v1, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cache:I

    .line 74
    iget v1, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cache:I

    if-gez v1, :cond_2

    .line 75
    new-instance v1, Ljava/io/IOException;

    const-string v2, "couldn\'t read bits"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_1
    iget v1, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cacheBitsRemaining:I

    sub-int/2addr v1, p1

    iput v1, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cacheBitsRemaining:I

    .line 67
    shl-int v1, v4, p1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cache:I

    iget v3, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cacheBitsRemaining:I

    shr-int/2addr v2, v3

    and-int v0, v1, v2

    .line 68
    const/4 p1, 0x0

    goto :goto_0

    .line 76
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "cache 1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cache:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cache:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cache:I

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    iget-wide v2, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->bytesRead:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->bytesRead:J

    .line 80
    shl-int/lit8 v1, v0, 0x8

    iget v2, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cache:I

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 81
    add-int/lit8 p1, p1, -0x8

    goto :goto_0

    .line 83
    :cond_3
    if-lez p1, :cond_5

    .line 85
    iget-object v1, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cache:I

    .line 86
    iget v1, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cache:I

    if-gez v1, :cond_4

    .line 87
    new-instance v1, Ljava/io/IOException;

    const-string v2, "couldn\'t read bits"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "cache 2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cache:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cache:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cache:I

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    iget-wide v2, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->bytesRead:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->bytesRead:J

    .line 92
    rsub-int/lit8 v1, p1, 0x8

    iput v1, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cacheBitsRemaining:I

    .line 93
    shl-int v1, v0, p1

    shl-int v2, v4, p1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cache:I

    iget v4, p0, Lorg/apache/sanselan/common/BitInputStreamFlexible;->cacheBitsRemaining:I

    shr-int/2addr v3, v4

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .line 95
    const/4 p1, 0x0

    .line 98
    :cond_5
    return v0

    .line 101
    .end local v0    # "result":I
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "BitInputStream: unknown error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
