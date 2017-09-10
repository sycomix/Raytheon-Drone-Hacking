.class public Lorg/apache/sanselan/formats/bmp/writers/BMPWriterRGB;
.super Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;
.source "BMPWriterRGB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitsPerPixel()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x18

    return v0
.end method

.method public getImageData(Ljava/awt/image/BufferedImage;)[B
    .locals 12
    .param p1, "src"    # Ljava/awt/image/BufferedImage;

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    .line 52
    .local v8, "width":I
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    .line 54
    .local v5, "height":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 58
    .local v3, "bytecount":I
    add-int/lit8 v10, v5, -0x1

    .local v10, "y":I
    :goto_0
    if-ltz v10, :cond_2

    .line 61
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_1
    if-ge v9, v8, :cond_0

    .line 63
    invoke-virtual {p1, v9, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v0

    .line 64
    .local v0, "argb":I
    const v11, 0xffffff

    and-int v7, v11, v0

    .line 66
    .local v7, "rgb":I
    shr-int/lit8 v11, v7, 0x10

    and-int/lit16 v6, v11, 0xff

    .line 67
    .local v6, "red":I
    shr-int/lit8 v11, v7, 0x8

    and-int/lit16 v4, v11, 0xff

    .line 68
    .local v4, "green":I
    shr-int/lit8 v11, v7, 0x0

    and-int/lit16 v2, v11, 0xff

    .line 70
    .local v2, "blue":I
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 71
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 72
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 73
    add-int/lit8 v3, v3, 0x3

    .line 61
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 75
    .end local v0    # "argb":I
    .end local v2    # "blue":I
    .end local v4    # "green":I
    .end local v6    # "red":I
    .end local v7    # "rgb":I
    :cond_0
    :goto_2
    rem-int/lit8 v11, v3, 0x4

    if-eqz v11, :cond_1

    .line 77
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 58
    :cond_1
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 82
    .end local v9    # "x":I
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    return-object v11
.end method

.method public getPaletteSize()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public writePalette(Lorg/apache/sanselan/common/BinaryOutputStream;)V
    .locals 0
    .param p1, "bos"    # Lorg/apache/sanselan/common/BinaryOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    return-void
.end method
