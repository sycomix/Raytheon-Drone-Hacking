.class public Lorg/apache/sanselan/common/BinaryOutputStream;
.super Ljava/io/OutputStream;
.source "BinaryOutputStream.java"

# interfaces
.implements Lorg/apache/sanselan/common/BinaryConstants;


# instance fields
.field private byteOrder:I

.field private count:I

.field protected debug:Z

.field private final os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 26
    iput-boolean v0, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->debug:Z

    .line 27
    iput v0, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->count:I

    .line 53
    const/16 v0, 0x4d

    iput v0, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->byteOrder:I

    .line 49
    iput-object p1, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->os:Ljava/io/OutputStream;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "byteOrder"    # I

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 26
    iput-boolean v0, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->debug:Z

    .line 27
    iput v0, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->count:I

    .line 53
    const/16 v0, 0x4d

    iput v0, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->byteOrder:I

    .line 43
    iput p2, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->byteOrder:I

    .line 44
    iput-object p1, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->os:Ljava/io/OutputStream;

    .line 45
    return-void
.end method

.method private convertValueToByteArray(II)[B
    .locals 5
    .param p1, "value"    # I
    .param p2, "n"    # I

    .prologue
    .line 149
    new-array v2, p2, [B

    .line 151
    .local v2, "result":[B
    iget v3, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->byteOrder:I

    const/16 v4, 0x4d

    if-ne v3, v4, :cond_0

    .line 153
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 155
    sub-int v3, p2, v1

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v0, v3, 0xff

    .line 156
    .local v0, "b":I
    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "b":I
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, p2, :cond_1

    .line 162
    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v0, v3, 0xff

    .line 163
    .restart local v0    # "b":I
    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 167
    .end local v0    # "b":I
    :cond_1
    return-object v2
.end method

.method private final writeNBytes(II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lorg/apache/sanselan/common/BinaryOutputStream;->convertValueToByteArray(II)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write([B)V

    .line 174
    return-void
.end method


# virtual methods
.method public getByteCount()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->count:I

    return v0
.end method

.method public getByteOrder()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->byteOrder:I

    return v0
.end method

.method public final getDebug()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->debug:Z

    return v0
.end method

.method protected setByteOrder(I)V
    .locals 0
    .param p1, "byteOrder"    # I

    .prologue
    .line 72
    iput p1, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->byteOrder:I

    .line 73
    return-void
.end method

.method protected setByteOrder(II)V
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    if-eq p1, p2, :cond_0

    .line 59
    new-instance v0, Lorg/apache/sanselan/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Byte Order bytes don\'t match ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    const/16 v0, 0x4d

    if-ne p1, v0, :cond_1

    .line 63
    iput p1, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->byteOrder:I

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_1
    const/16 v0, 0x49

    if-ne p1, v0, :cond_2

    .line 65
    iput p1, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->byteOrder:I

    goto :goto_0

    .line 67
    :cond_2
    new-instance v0, Lorg/apache/sanselan/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown Byte Order hint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setDebug(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->debug:Z

    .line 32
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 83
    iget v0, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->count:I

    .line 84
    return-void
.end method

.method public final write2ByteInteger(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget v0, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->byteOrder:I

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_0

    .line 132
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 133
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 137
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    goto :goto_0
.end method

.method public final write2Bytes(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->writeNBytes(II)V

    .line 107
    return-void
.end method

.method public final write3Bytes(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->writeNBytes(II)V

    .line 101
    return-void
.end method

.method public final write4ByteInteger(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget v0, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->byteOrder:I

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_0

    .line 114
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 115
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 116
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 117
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_0
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 121
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 122
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 123
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    goto :goto_0
.end method

.method public final write4Bytes(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->writeNBytes(II)V

    .line 95
    return-void
.end method

.method public final writeByteArray([B)V
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->os:Ljava/io/OutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 144
    iget v0, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->count:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/sanselan/common/BinaryOutputStream;->count:I

    .line 145
    return-void
.end method
