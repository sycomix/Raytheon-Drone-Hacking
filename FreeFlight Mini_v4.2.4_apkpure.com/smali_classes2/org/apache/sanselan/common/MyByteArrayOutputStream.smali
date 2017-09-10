.class public Lorg/apache/sanselan/common/MyByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "MyByteArrayOutputStream.java"


# instance fields
.field private final bytes:[B

.field private count:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    .line 29
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->bytes:[B

    .line 30
    return-void
.end method


# virtual methods
.method public getBytesWritten()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    iget v1, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    iget-object v2, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->bytes:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 48
    iget v1, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    new-array v0, v1, [B

    .line 49
    .local v0, "result":[B
    iget-object v1, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->bytes:[B

    iget v2, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .end local v0    # "result":[B
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->bytes:[B

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget v0, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    iget-object v1, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 37
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Write exceeded expected length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->bytes:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->bytes:[B

    iget v1, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 41
    iget v0, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    .line 42
    return-void
.end method
