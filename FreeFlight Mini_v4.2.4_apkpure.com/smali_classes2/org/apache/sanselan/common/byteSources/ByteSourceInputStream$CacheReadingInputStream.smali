.class Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;
.super Ljava/io/InputStream;
.source "ByteSourceInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheReadingInputStream"
.end annotation


# instance fields
.field private block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

.field private blockIndex:I

.field private readFirst:Z

.field private final this$0:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;


# direct methods
.method private constructor <init>(Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iput-object p1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->this$0:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    .line 96
    iput-boolean v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->readFirst:Z

    .line 97
    iput v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    return-void
.end method

.method constructor <init>(Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;
    .param p2, "x1"    # Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$1;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;-><init>(Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 101
    iget-object v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    if-nez v1, :cond_2

    .line 103
    iget-boolean v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->readFirst:Z

    if-eqz v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    iget-object v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->this$0:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-static {v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->access$100(Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;)Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->readFirst:Z

    .line 109
    :cond_2
    iget-object v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    iget-object v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    iget-object v2, v2, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 111
    iget-object v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    invoke-virtual {v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->getNext()Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    .line 112
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    .line 115
    :cond_3
    iget-object v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    if-eqz v1, :cond_0

    .line 118
    iget v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    iget-object v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    iget-object v2, v2, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 121
    iget-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    iget-object v0, v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->bytes:[B

    iget v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 129
    :cond_0
    if-ltz p2, :cond_1

    array-length v2, p1

    if-gt p2, v2, :cond_1

    if-ltz p3, :cond_1

    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_1

    add-int v2, p2, p3

    if-gez v2, :cond_2

    .line 131
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 132
    :cond_2
    if-nez p3, :cond_3

    .line 160
    :goto_0
    return v0

    .line 137
    :cond_3
    iget-object v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    if-nez v2, :cond_5

    .line 139
    iget-boolean v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->readFirst:Z

    if-eqz v2, :cond_4

    move v0, v1

    .line 140
    goto :goto_0

    .line 141
    :cond_4
    iget-object v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->this$0:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-static {v2}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->access$100(Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;)Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    .line 142
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->readFirst:Z

    .line 145
    :cond_5
    iget-object v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    iget-object v3, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    iget-object v3, v3, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_6

    .line 147
    iget-object v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    invoke-virtual {v2}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->getNext()Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    .line 148
    iput v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    .line 151
    :cond_6
    iget-object v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    if-nez v2, :cond_7

    move v0, v1

    .line 152
    goto :goto_0

    .line 154
    :cond_7
    iget v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    iget-object v3, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    iget-object v3, v3, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_8

    move v0, v1

    .line 155
    goto :goto_0

    .line 157
    :cond_8
    iget-object v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    iget-object v1, v1, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v1, v1

    iget v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 158
    .local v0, "readSize":I
    iget-object v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    iget-object v1, v1, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->bytes:[B

    iget v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    goto :goto_0
.end method
