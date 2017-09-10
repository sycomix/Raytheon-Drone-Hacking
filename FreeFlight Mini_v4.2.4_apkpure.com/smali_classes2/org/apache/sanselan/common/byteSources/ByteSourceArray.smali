.class public Lorg/apache/sanselan/common/byteSources/ByteSourceArray;
.super Lorg/apache/sanselan/common/byteSources/ByteSource;
.source "ByteSourceArray.java"


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;->bytes:[B

    .line 31
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sanselan/common/byteSources/ByteSource;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;->bytes:[B

    .line 37
    return-void
.end method


# virtual methods
.method public getAll()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;->bytes:[B

    return-object v0
.end method

.method public getBlock(II)[B
    .locals 4
    .param p1, "start"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    add-int v1, p1, p2

    iget-object v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;->bytes:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 47
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not read block (block start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", block length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", data length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;->bytes:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    new-array v0, p2, [B

    .line 52
    .local v0, "result":[B
    iget-object v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;->bytes:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " byte array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;->bytes:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
