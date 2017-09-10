.class public Lorg/apache/sanselan/formats/png/BitParser;
.super Ljava/lang/Object;
.source "BitParser.java"


# instance fields
.field private final bitDepth:I

.field private final bitsPerPixel:I

.field private final bytes:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "bitsPerPixel"    # I
    .param p3, "bitDepth"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/sanselan/formats/png/BitParser;->bytes:[B

    .line 32
    iput p2, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitsPerPixel:I

    .line 33
    iput p3, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitDepth:I

    .line 34
    return-void
.end method


# virtual methods
.method public getSample(II)I
    .locals 9
    .param p1, "pixelIndexInScanline"    # I
    .param p2, "sampleIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 39
    iget v6, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitsPerPixel:I

    mul-int v3, v6, p1

    .line 40
    .local v3, "pixelIndexBits":I
    iget v6, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitDepth:I

    mul-int/2addr v6, p2

    add-int v4, v3, v6

    .line 41
    .local v4, "sampleIndexBits":I
    shr-int/lit8 v5, v4, 0x3

    .line 43
    .local v5, "sampleIndexBytes":I
    iget v6, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitDepth:I

    if-ne v6, v7, :cond_0

    .line 44
    iget-object v6, p0, Lorg/apache/sanselan/formats/png/BitParser;->bytes:[B

    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    .line 55
    :goto_0
    return v6

    .line 45
    :cond_0
    iget v6, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitDepth:I

    if-ge v6, v7, :cond_1

    .line 47
    iget-object v6, p0, Lorg/apache/sanselan/formats/png/BitParser;->bytes:[B

    aget-byte v6, v6, v5

    and-int/lit16 v0, v6, 0xff

    .line 48
    .local v0, "b":I
    and-int/lit8 v6, v3, 0x7

    iget v7, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitDepth:I

    add-int/2addr v6, v7

    rsub-int/lit8 v2, v6, 0x8

    .line 49
    .local v2, "bitsToShift":I
    shr-int/2addr v0, v2

    .line 51
    const/4 v6, 0x1

    iget v7, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitDepth:I

    shl-int/2addr v6, v7

    add-int/lit8 v1, v6, -0x1

    .line 52
    .local v1, "bitmask":I
    and-int v6, v0, v1

    goto :goto_0

    .line 53
    .end local v0    # "b":I
    .end local v1    # "bitmask":I
    .end local v2    # "bitsToShift":I
    :cond_1
    iget v6, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitDepth:I

    const/16 v7, 0x10

    if-ne v6, v7, :cond_2

    .line 55
    iget-object v6, p0, Lorg/apache/sanselan/formats/png/BitParser;->bytes:[B

    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    iget-object v7, p0, Lorg/apache/sanselan/formats/png/BitParser;->bytes:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    goto :goto_0

    .line 58
    :cond_2
    new-instance v6, Lorg/apache/sanselan/ImageReadException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "PNG: bad BitDepth: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitDepth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getSampleAsByte(II)I
    .locals 3
    .param p1, "pixelIndexInScanline"    # I
    .param p2, "sampleIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lorg/apache/sanselan/formats/png/BitParser;->getSample(II)I

    move-result v1

    .line 66
    .local v1, "sample":I
    iget v2, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitDepth:I

    rsub-int/lit8 v0, v2, 0x8

    .line 67
    .local v0, "rot":I
    if-lez v0, :cond_1

    .line 68
    shl-int/2addr v1, v0

    .line 72
    :cond_0
    :goto_0
    and-int/lit16 v2, v1, 0xff

    return v2

    .line 69
    :cond_1
    if-gez v0, :cond_0

    .line 70
    neg-int v2, v0

    shr-int/2addr v1, v2

    goto :goto_0
.end method
