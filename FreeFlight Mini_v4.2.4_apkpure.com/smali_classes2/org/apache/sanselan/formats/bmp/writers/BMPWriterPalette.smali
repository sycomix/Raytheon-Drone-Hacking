.class public Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;
.super Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;
.source "BMPWriterPalette.java"


# instance fields
.field private final bitsPerSample:I

.field private final palette:Lorg/apache/sanselan/palette/SimplePalette;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/palette/SimplePalette;)V
    .locals 2
    .param p1, "palette"    # Lorg/apache/sanselan/palette/SimplePalette;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->palette:Lorg/apache/sanselan/palette/SimplePalette;

    .line 35
    invoke-virtual {p1}, Lorg/apache/sanselan/palette/SimplePalette;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->bitsPerSample:I

    .line 41
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Lorg/apache/sanselan/palette/SimplePalette;->length()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    .line 38
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->bitsPerSample:I

    goto :goto_0

    .line 40
    :cond_1
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->bitsPerSample:I

    goto :goto_0
.end method


# virtual methods
.method public getBitsPerPixel()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->bitsPerSample:I

    return v0
.end method

.method public getImageData(Ljava/awt/image/BufferedImage;)[B
    .locals 13
    .param p1, "src"    # Ljava/awt/image/BufferedImage;

    .prologue
    const/16 v12, 0x8

    .line 72
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    .line 73
    .local v8, "width":I
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    .line 75
    .local v5, "height":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 77
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 78
    .local v2, "bit_cache":I
    const/4 v3, 0x0

    .line 80
    .local v3, "bits_in_cache":I
    const/4 v4, 0x0

    .line 81
    .local v4, "bytecount":I
    add-int/lit8 v10, v5, -0x1

    .local v10, "y":I
    :goto_0
    if-ltz v10, :cond_5

    .line 83
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_1
    if-ge v9, v8, :cond_2

    .line 85
    invoke-virtual {p1, v9, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v0

    .line 86
    .local v0, "argb":I
    const v11, 0xffffff

    and-int v7, v11, v0

    .line 88
    .local v7, "rgb":I
    iget-object v11, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->palette:Lorg/apache/sanselan/palette/SimplePalette;

    invoke-virtual {v11, v7}, Lorg/apache/sanselan/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v6

    .line 90
    .local v6, "index":I
    iget v11, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->bitsPerSample:I

    if-ne v11, v12, :cond_1

    .line 92
    and-int/lit16 v11, v6, 0xff

    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 93
    add-int/lit8 v4, v4, 0x1

    .line 83
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 97
    :cond_1
    iget v11, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->bitsPerSample:I

    shl-int v11, v2, v11

    or-int v2, v11, v6

    .line 98
    iget v11, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->bitsPerSample:I

    add-int/2addr v3, v11

    .line 99
    if-lt v3, v12, :cond_0

    .line 101
    and-int/lit16 v11, v2, 0xff

    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 102
    add-int/lit8 v4, v4, 0x1

    .line 103
    const/4 v2, 0x0

    .line 104
    const/4 v3, 0x0

    goto :goto_2

    .line 109
    .end local v0    # "argb":I
    .end local v6    # "index":I
    .end local v7    # "rgb":I
    :cond_2
    if-lez v3, :cond_3

    .line 111
    rsub-int/lit8 v11, v3, 0x8

    shl-int/2addr v2, v11

    .line 113
    and-int/lit16 v11, v2, 0xff

    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 114
    add-int/lit8 v4, v4, 0x1

    .line 115
    const/4 v2, 0x0

    .line 116
    const/4 v3, 0x0

    .line 119
    :cond_3
    :goto_3
    rem-int/lit8 v11, v4, 0x4

    if-eqz v11, :cond_4

    .line 121
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 81
    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 126
    .end local v9    # "x":I
    :cond_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    return-object v11
.end method

.method public getPaletteSize()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->palette:Lorg/apache/sanselan/palette/SimplePalette;

    invoke-virtual {v0}, Lorg/apache/sanselan/palette/SimplePalette;->length()I

    move-result v0

    return v0
.end method

.method public writePalette(Lorg/apache/sanselan/common/BinaryOutputStream;)V
    .locals 6
    .param p1, "bos"    # Lorg/apache/sanselan/common/BinaryOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->palette:Lorg/apache/sanselan/palette/SimplePalette;

    invoke-virtual {v5}, Lorg/apache/sanselan/palette/SimplePalette;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 57
    iget-object v5, p0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;->palette:Lorg/apache/sanselan/palette/SimplePalette;

    invoke-virtual {v5, v2}, Lorg/apache/sanselan/palette/SimplePalette;->getEntry(I)I

    move-result v4

    .line 59
    .local v4, "rgb":I
    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v3, v5, 0xff

    .line 60
    .local v3, "red":I
    shr-int/lit8 v5, v4, 0x8

    and-int/lit16 v1, v5, 0xff

    .line 61
    .local v1, "green":I
    shr-int/lit8 v5, v4, 0x0

    and-int/lit16 v0, v5, 0xff

    .line 63
    .local v0, "blue":I
    invoke-virtual {p1, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 64
    invoke-virtual {p1, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 65
    invoke-virtual {p1, v3}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 66
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "blue":I
    .end local v1    # "green":I
    .end local v3    # "red":I
    .end local v4    # "rgb":I
    :cond_0
    return-void
.end method
