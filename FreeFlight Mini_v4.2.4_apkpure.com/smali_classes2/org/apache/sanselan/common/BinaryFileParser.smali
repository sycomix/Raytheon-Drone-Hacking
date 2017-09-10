.class public Lorg/apache/sanselan/common/BinaryFileParser;
.super Lorg/apache/sanselan/common/BinaryFileFunctions;
.source "BinaryFileParser.java"


# instance fields
.field private byteOrder:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileFunctions;-><init>()V

    .line 37
    const/16 v0, 0x4d

    iput v0, p0, Lorg/apache/sanselan/common/BinaryFileParser;->byteOrder:I

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "byteOrder"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileFunctions;-><init>()V

    .line 37
    const/16 v0, 0x4d

    iput v0, p0, Lorg/apache/sanselan/common/BinaryFileParser;->byteOrder:I

    .line 28
    iput p1, p0, Lorg/apache/sanselan/common/BinaryFileParser;->byteOrder:I

    .line 29
    return-void
.end method

.method public static byteArrayHasPrefix([B[B)Z
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "prefix"    # [B

    .prologue
    const/4 v1, 0x0

    .line 109
    if-eqz p0, :cond_0

    array-length v2, p0

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 113
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final convertByteArrayToInt(Ljava/lang/String;I[B)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "bytes"    # [B

    .prologue
    .line 69
    iget v0, p0, Lorg/apache/sanselan/common/BinaryFileParser;->byteOrder:I

    invoke-virtual {p0, p1, p3, p2, v0}, Lorg/apache/sanselan/common/BinaryFileParser;->convertByteArrayToInt(Ljava/lang/String;[BII)I

    move-result v0

    return v0
.end method

.method protected final convertByteArrayToInt(Ljava/lang/String;[B)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 74
    iget v0, p0, Lorg/apache/sanselan/common/BinaryFileParser;->byteOrder:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/common/BinaryFileParser;->convertByteArrayToInt(Ljava/lang/String;[BI)I

    move-result v0

    return v0
.end method

.method public final convertByteArrayToShort(Ljava/lang/String;I[B)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 86
    iget v0, p0, Lorg/apache/sanselan/common/BinaryFileParser;->byteOrder:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/sanselan/common/BinaryFileParser;->convertByteArrayToShort(Ljava/lang/String;I[BI)I

    move-result v0

    return v0
.end method

.method public final convertByteArrayToShort(Ljava/lang/String;[B)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 80
    iget v0, p0, Lorg/apache/sanselan/common/BinaryFileParser;->byteOrder:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/common/BinaryFileParser;->convertByteArrayToShort(Ljava/lang/String;[BI)I

    move-result v0

    return v0
.end method

.method protected getByteOrder()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/apache/sanselan/common/BinaryFileParser;->byteOrder:I

    return v0
.end method

.method protected final int2ToByteArray(I)[B
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 121
    iget v0, p0, Lorg/apache/sanselan/common/BinaryFileParser;->byteOrder:I

    invoke-static {p1, v0}, Lorg/apache/sanselan/common/BinaryFileParser;->int2ToByteArray(II)[B

    move-result-object v0

    return-object v0
.end method

.method public final read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget v0, p0, Lorg/apache/sanselan/common/BinaryFileParser;->byteOrder:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/sanselan/common/BinaryFileParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final read3Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget v0, p0, Lorg/apache/sanselan/common/BinaryFileParser;->byteOrder:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/sanselan/common/BinaryFileParser;->read3Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget v0, p0, Lorg/apache/sanselan/common/BinaryFileParser;->byteOrder:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/sanselan/common/BinaryFileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected setByteOrder(I)V
    .locals 0
    .param p1, "byteOrder"    # I

    .prologue
    .line 58
    iput p1, p0, Lorg/apache/sanselan/common/BinaryFileParser;->byteOrder:I

    .line 59
    return-void
.end method

.method protected setByteOrder(II)V
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    if-eq p1, p2, :cond_0

    .line 45
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

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

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    const/16 v0, 0x4d

    if-ne p1, v0, :cond_1

    .line 49
    iput p1, p0, Lorg/apache/sanselan/common/BinaryFileParser;->byteOrder:I

    .line 54
    :goto_0
    return-void

    .line 50
    :cond_1
    const/16 v0, 0x49

    if-ne p1, v0, :cond_2

    .line 51
    iput p1, p0, Lorg/apache/sanselan/common/BinaryFileParser;->byteOrder:I

    goto :goto_0

    .line 53
    :cond_2
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown Byte Order hint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
