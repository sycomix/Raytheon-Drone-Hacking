.class public Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;
.super Lorg/apache/sanselan/common/byteSources/ByteSource;
.source "ByteSourceInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$1;,
        Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;,
        Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0x400


# instance fields
.field private cacheHead:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

.field private final is:Ljava/io/InputStream;

.field private length:Ljava/lang/Long;

.field private readBuffer:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p2}, Lorg/apache/sanselan/common/byteSources/ByteSource;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->cacheHead:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    .line 60
    iput-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->readBuffer:[B

    .line 188
    iput-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->length:Ljava/lang/Long;

    .line 33
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->is:Ljava/io/InputStream;

    .line 34
    return-void
.end method

.method static access$000(Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;)Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->readBlock()Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    move-result-object v0

    return-object v0
.end method

.method static access$100(Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;)Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->getFirstBlock()Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    move-result-object v0

    return-object v0
.end method

.method private getFirstBlock()Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->cacheHead:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    if-nez v0, :cond_0

    .line 89
    invoke-direct {p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->readBlock()Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->cacheHead:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->cacheHead:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    return-object v0
.end method

.method private readBlock()Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x400

    const/4 v5, 0x0

    .line 64
    iget-object v3, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->readBuffer:[B

    if-nez v3, :cond_0

    .line 65
    new-array v3, v6, [B

    iput-object v3, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->readBuffer:[B

    .line 67
    :cond_0
    iget-object v3, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->is:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->readBuffer:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 68
    .local v0, "read":I
    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    .line 82
    :goto_0
    return-object v2

    .line 70
    :cond_1
    if-ge v0, v6, :cond_2

    .line 73
    new-array v1, v0, [B

    .line 74
    .local v1, "result":[B
    iget-object v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->readBuffer:[B

    invoke-static {v2, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    new-instance v2, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    invoke-direct {v2, p0, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;-><init>(Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;[B)V

    goto :goto_0

    .line 80
    .end local v1    # "result":[B
    :cond_2
    iget-object v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->readBuffer:[B

    .line 81
    .restart local v1    # "result":[B
    iput-object v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->readBuffer:[B

    .line 82
    new-instance v2, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    invoke-direct {v2, p0, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;-><init>(Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;[B)V

    goto :goto_0
.end method


# virtual methods
.method public getAll()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 208
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->getFirstBlock()Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    move-result-object v1

    .line 209
    .local v1, "block":Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;
    :goto_0
    if-eqz v1, :cond_0

    .line 211
    iget-object v2, v1, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->bytes:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 212
    invoke-virtual {v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->getNext()Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    move-result-object v1

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public getBlock(II)[B
    .locals 6
    .param p1, "start"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 173
    .local v1, "is":Ljava/io/InputStream;
    int-to-long v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 175
    new-array v0, p2, [B

    .line 176
    .local v0, "bytes":[B
    const/4 v3, 0x0

    .line 179
    .local v3, "total":I
    :cond_0
    array-length v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 180
    .local v2, "read":I
    const/4 v4, 0x1

    if-ge v2, v4, :cond_1

    .line 181
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Could not read block."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 182
    :cond_1
    add-int/2addr v3, v2

    .line 183
    if-lt v3, p2, :cond_0

    .line 184
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Inputstream: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheReadingInputStream;-><init>(Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$1;)V

    return-object v0
.end method

.method public getLength()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->length:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->length:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 201
    :goto_0
    return-wide v2

    .line 195
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 196
    .local v0, "is":Ljava/io/InputStream;
    const-wide/16 v2, 0x0

    .line 198
    .local v2, "result":J
    :goto_1
    const-wide/16 v6, 0x400

    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .local v4, "skipped":J
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 199
    add-long/2addr v2, v4

    goto :goto_1

    .line 200
    :cond_1
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->length:Ljava/lang/Long;

    goto :goto_0
.end method
